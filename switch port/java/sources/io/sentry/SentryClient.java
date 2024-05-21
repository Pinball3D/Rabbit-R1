package io.sentry;

import io.sentry.Scope;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.clientreport.DiscardReason;
import io.sentry.exception.SentryEnvelopeException;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.Backfillable;
import io.sentry.hints.DiskFlushNotification;
import io.sentry.hints.TransactionEnd;
import io.sentry.metrics.EncodedMetrics;
import io.sentry.metrics.IMetricsClient;
import io.sentry.metrics.NoopMetricsAggregator;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.ITransport;
import io.sentry.transport.RateLimiter;
import io.sentry.util.CheckInUtils;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import io.sentry.util.TracingUtils;
import java.io.Closeable;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class SentryClient implements ISentryClient, IMetricsClient {
    static final String SENTRY_PROTOCOL_VERSION = "7";
    private final IMetricsAggregator metricsAggregator;
    private final SentryOptions options;
    private final SecureRandom random;
    private final ITransport transport;
    private final SortBreadcrumbsByDate sortBreadcrumbsByDate = new SortBreadcrumbsByDate();
    private boolean enabled = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$captureEvent$0(Session session) {
    }

    @Override // io.sentry.ISentryClient
    public IMetricsAggregator getMetricsAggregator() {
        return this.metricsAggregator;
    }

    @Override // io.sentry.ISentryClient
    public boolean isEnabled() {
        return this.enabled;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public SentryClient(SentryOptions sentryOptions) {
        IMetricsAggregator noopMetricsAggregator;
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "SentryOptions is required.");
        ITransportFactory transportFactory = sentryOptions.getTransportFactory();
        if (transportFactory instanceof NoOpTransportFactory) {
            transportFactory = new AsyncHttpTransportFactory();
            sentryOptions.setTransportFactory(transportFactory);
        }
        this.transport = transportFactory.create(sentryOptions, new RequestDetailsResolver(sentryOptions).resolve());
        if (sentryOptions.isEnableMetrics()) {
            noopMetricsAggregator = new MetricsAggregator(sentryOptions, this);
        } else {
            noopMetricsAggregator = NoopMetricsAggregator.getInstance();
        }
        this.metricsAggregator = noopMetricsAggregator;
        this.random = sentryOptions.getSampleRate() != null ? new SecureRandom() : null;
    }

    private boolean shouldApplyScopeData(SentryBaseEvent sentryBaseEvent, Hint hint) {
        if (HintUtils.shouldApplyScopeData(hint)) {
            return true;
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Event was cached so not applying scope: %s", sentryBaseEvent.getEventId());
        return false;
    }

    private boolean shouldApplyScopeData(CheckIn checkIn, Hint hint) {
        if (HintUtils.shouldApplyScopeData(hint)) {
            return true;
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Check-in was cached so not applying scope: %s", checkIn.getCheckInId());
        return false;
    }

    @Override // io.sentry.ISentryClient
    public SentryId captureEvent(SentryEvent sentryEvent, IScope iScope, Hint hint) {
        SentryEvent sentryEvent2;
        Session session;
        ITransaction transaction;
        TraceContext traceContext;
        TraceContext traceContext2;
        Throwable throwable;
        Objects.requireNonNull(sentryEvent, "SentryEvent is required.");
        if (hint == null) {
            hint = new Hint();
        }
        if (shouldApplyScopeData(sentryEvent, hint)) {
            addScopeAttachmentsToHint(iScope, hint);
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Capturing event: %s", sentryEvent.getEventId());
        if (sentryEvent != null && (throwable = sentryEvent.getThrowable()) != null && this.options.containsIgnoredExceptionForType(throwable)) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Event was dropped as the exception %s is ignored", throwable.getClass());
            this.options.getClientReportRecorder().recordLostEvent(DiscardReason.EVENT_PROCESSOR, DataCategory.Error);
            return SentryId.EMPTY_ID;
        }
        if (shouldApplyScopeData(sentryEvent, hint) && (sentryEvent = applyScope(sentryEvent, iScope, hint)) == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Event was dropped by applyScope", new Object[0]);
            return SentryId.EMPTY_ID;
        }
        SentryEvent processEvent = processEvent(sentryEvent, hint, this.options.getEventProcessors());
        if (processEvent != null && (processEvent = executeBeforeSend(processEvent, hint)) == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Event was dropped by beforeSend", new Object[0]);
            this.options.getClientReportRecorder().recordLostEvent(DiscardReason.BEFORE_SEND, DataCategory.Error);
        }
        if (processEvent == null) {
            return SentryId.EMPTY_ID;
        }
        Session withSession = iScope != null ? iScope.withSession(new Scope.IWithSession() { // from class: io.sentry.SentryClient$$ExternalSyntheticLambda0
            @Override // io.sentry.Scope.IWithSession
            public final void accept(Session session2) {
                SentryClient.lambda$captureEvent$0(session2);
            }
        }) : null;
        if (processEvent != null) {
            Session updateSessionData = (withSession == null || !withSession.isTerminated()) ? updateSessionData(processEvent, hint, iScope) : null;
            if (sample()) {
                sentryEvent2 = processEvent;
            } else {
                this.options.getLogger().log(SentryLevel.DEBUG, "Event %s was dropped due to sampling decision.", processEvent.getEventId());
                this.options.getClientReportRecorder().recordLostEvent(DiscardReason.SAMPLE_RATE, DataCategory.Error);
                sentryEvent2 = null;
            }
            session = updateSessionData;
        } else {
            sentryEvent2 = processEvent;
            session = null;
        }
        boolean shouldSendSessionUpdateForDroppedEvent = shouldSendSessionUpdateForDroppedEvent(withSession, session);
        if (sentryEvent2 == null && !shouldSendSessionUpdateForDroppedEvent) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Not sending session update for dropped event as it did not cause the session health to change.", new Object[0]);
            return SentryId.EMPTY_ID;
        }
        SentryId sentryId = SentryId.EMPTY_ID;
        if (sentryEvent2 != null && sentryEvent2.getEventId() != null) {
            sentryId = sentryEvent2.getEventId();
        }
        try {
            if (HintUtils.hasType(hint, Backfillable.class)) {
                if (sentryEvent2 != null) {
                    traceContext = Baggage.fromEvent(sentryEvent2, this.options).toTraceContext();
                    traceContext2 = traceContext;
                }
                traceContext2 = null;
            } else {
                if (iScope != null) {
                    ITransaction transaction2 = iScope.getTransaction();
                    if (transaction2 != null) {
                        traceContext = transaction2.traceContext();
                    } else {
                        traceContext = TracingUtils.maybeUpdateBaggage(iScope, this.options).traceContext();
                    }
                    traceContext2 = traceContext;
                }
                traceContext2 = null;
            }
            SentryEnvelope buildEnvelope = buildEnvelope(sentryEvent2, sentryEvent2 != null ? getAttachments(hint) : null, session, traceContext2, null);
            hint.clear();
            if (buildEnvelope != null) {
                sentryId = sendEnvelope(buildEnvelope, hint);
            }
        } catch (SentryEnvelopeException | IOException e) {
            this.options.getLogger().log(SentryLevel.WARNING, e, "Capturing event %s failed.", sentryId);
            sentryId = SentryId.EMPTY_ID;
        }
        if (iScope != null && (transaction = iScope.getTransaction()) != null && HintUtils.hasType(hint, TransactionEnd.class)) {
            Object sentrySdkHint = HintUtils.getSentrySdkHint(hint);
            if (sentrySdkHint instanceof DiskFlushNotification) {
                ((DiskFlushNotification) sentrySdkHint).setFlushable(transaction.getEventId());
                transaction.forceFinish(SpanStatus.ABORTED, false, hint);
            } else {
                transaction.forceFinish(SpanStatus.ABORTED, false, null);
            }
        }
        return sentryId;
    }

    private void addScopeAttachmentsToHint(IScope iScope, Hint hint) {
        if (iScope != null) {
            hint.addAttachments(iScope.getAttachments());
        }
    }

    private boolean shouldSendSessionUpdateForDroppedEvent(Session session, Session session2) {
        if (session2 == null) {
            return false;
        }
        if (session == null) {
            return true;
        }
        if (session2.getStatus() != Session.State.Crashed || session.getStatus() == Session.State.Crashed) {
            return session2.errorCount() > 0 && session.errorCount() <= 0;
        }
        return true;
    }

    private List<Attachment> getAttachments(Hint hint) {
        List<Attachment> attachments = hint.getAttachments();
        Attachment screenshot = hint.getScreenshot();
        if (screenshot != null) {
            attachments.add(screenshot);
        }
        Attachment viewHierarchy = hint.getViewHierarchy();
        if (viewHierarchy != null) {
            attachments.add(viewHierarchy);
        }
        Attachment threadDump = hint.getThreadDump();
        if (threadDump != null) {
            attachments.add(threadDump);
        }
        return attachments;
    }

    private SentryEnvelope buildEnvelope(SentryBaseEvent sentryBaseEvent, List<Attachment> list, Session session, TraceContext traceContext, ProfilingTraceData profilingTraceData) throws IOException, SentryEnvelopeException {
        SentryId sentryId;
        ArrayList arrayList = new ArrayList();
        if (sentryBaseEvent != null) {
            arrayList.add(SentryEnvelopeItem.fromEvent(this.options.getSerializer(), sentryBaseEvent));
            sentryId = sentryBaseEvent.getEventId();
        } else {
            sentryId = null;
        }
        if (session != null) {
            arrayList.add(SentryEnvelopeItem.fromSession(this.options.getSerializer(), session));
        }
        if (profilingTraceData != null) {
            arrayList.add(SentryEnvelopeItem.fromProfilingTrace(profilingTraceData, this.options.getMaxTraceFileSize(), this.options.getSerializer()));
            if (sentryId == null) {
                sentryId = new SentryId(profilingTraceData.getProfileId());
            }
        }
        if (list != null) {
            Iterator<Attachment> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(SentryEnvelopeItem.fromAttachment(this.options.getSerializer(), this.options.getLogger(), it.next(), this.options.getMaxAttachmentSize()));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new SentryEnvelope(new SentryEnvelopeHeader(sentryId, this.options.getSdkVersion(), traceContext), arrayList);
    }

    private SentryEvent processEvent(SentryEvent sentryEvent, Hint hint, List<EventProcessor> list) {
        Iterator<EventProcessor> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EventProcessor next = it.next();
            try {
                boolean z = next instanceof BackfillingEventProcessor;
                boolean hasType = HintUtils.hasType(hint, Backfillable.class);
                if (hasType && z) {
                    sentryEvent = next.process(sentryEvent, hint);
                } else if (!hasType && !z) {
                    sentryEvent = next.process(sentryEvent, hint);
                }
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, th, "An exception occurred while processing event by processor: %s", next.getClass().getName());
            }
            if (sentryEvent == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "Event was dropped by a processor: %s", next.getClass().getName());
                this.options.getClientReportRecorder().recordLostEvent(DiscardReason.EVENT_PROCESSOR, DataCategory.Error);
                break;
            }
        }
        return sentryEvent;
    }

    private SentryTransaction processTransaction(SentryTransaction sentryTransaction, Hint hint, List<EventProcessor> list) {
        Iterator<EventProcessor> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EventProcessor next = it.next();
            try {
                sentryTransaction = next.process(sentryTransaction, hint);
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, th, "An exception occurred while processing transaction by processor: %s", next.getClass().getName());
            }
            if (sentryTransaction == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "Transaction was dropped by a processor: %s", next.getClass().getName());
                this.options.getClientReportRecorder().recordLostEvent(DiscardReason.EVENT_PROCESSOR, DataCategory.Transaction);
                break;
            }
        }
        return sentryTransaction;
    }

    @Override // io.sentry.ISentryClient
    public void captureUserFeedback(UserFeedback userFeedback) {
        Objects.requireNonNull(userFeedback, "SentryEvent is required.");
        if (SentryId.EMPTY_ID.equals(userFeedback.getEventId())) {
            this.options.getLogger().log(SentryLevel.WARNING, "Capturing userFeedback without a Sentry Id.", new Object[0]);
            return;
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Capturing userFeedback: %s", userFeedback.getEventId());
        try {
            sendEnvelope(buildEnvelope(userFeedback), null);
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.WARNING, e, "Capturing user feedback %s failed.", userFeedback.getEventId());
        }
    }

    private SentryEnvelope buildEnvelope(UserFeedback userFeedback) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SentryEnvelopeItem.fromUserFeedback(this.options.getSerializer(), userFeedback));
        return new SentryEnvelope(new SentryEnvelopeHeader(userFeedback.getEventId(), this.options.getSdkVersion()), arrayList);
    }

    private SentryEnvelope buildEnvelope(CheckIn checkIn, TraceContext traceContext) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(SentryEnvelopeItem.fromCheckIn(this.options.getSerializer(), checkIn));
        return new SentryEnvelope(new SentryEnvelopeHeader(checkIn.getCheckInId(), this.options.getSdkVersion(), traceContext), arrayList);
    }

    Session updateSessionData(final SentryEvent sentryEvent, final Hint hint, IScope iScope) {
        if (HintUtils.shouldApplyScopeData(hint)) {
            if (iScope != null) {
                return iScope.withSession(new Scope.IWithSession() { // from class: io.sentry.SentryClient$$ExternalSyntheticLambda1
                    @Override // io.sentry.Scope.IWithSession
                    public final void accept(Session session) {
                        SentryClient.this.m5628lambda$updateSessionData$1$iosentrySentryClient(sentryEvent, hint, session);
                    }
                });
            }
            this.options.getLogger().log(SentryLevel.INFO, "Scope is null on client.captureEvent", new Object[0]);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateSessionData$1$io-sentry-SentryClient, reason: not valid java name */
    public /* synthetic */ void m5628lambda$updateSessionData$1$iosentrySentryClient(SentryEvent sentryEvent, Hint hint, Session session) {
        if (session != null) {
            String str = null;
            Session.State state = sentryEvent.isCrashed() ? Session.State.Crashed : null;
            boolean z = Session.State.Crashed == state || sentryEvent.isErrored();
            String str2 = (sentryEvent.getRequest() == null || sentryEvent.getRequest().getHeaders() == null || !sentryEvent.getRequest().getHeaders().containsKey("user-agent")) ? null : sentryEvent.getRequest().getHeaders().get("user-agent");
            Object sentrySdkHint = HintUtils.getSentrySdkHint(hint);
            if (sentrySdkHint instanceof AbnormalExit) {
                str = ((AbnormalExit) sentrySdkHint).mechanism();
                state = Session.State.Abnormal;
            }
            if (session.update(state, str2, z, str) && session.isTerminated()) {
                session.end();
                return;
            }
            return;
        }
        this.options.getLogger().log(SentryLevel.INFO, "Session is null on scope.withSession", new Object[0]);
    }

    @Override // io.sentry.ISentryClient
    public void captureSession(Session session, Hint hint) {
        Objects.requireNonNull(session, "Session is required.");
        if (session.getRelease() == null || session.getRelease().isEmpty()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Sessions can't be captured without setting a release.", new Object[0]);
            return;
        }
        try {
            captureEnvelope(SentryEnvelope.from(this.options.getSerializer(), session, this.options.getSdkVersion()), hint);
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.ERROR, "Failed to capture session.", e);
        }
    }

    @Override // io.sentry.ISentryClient
    public SentryId captureEnvelope(SentryEnvelope sentryEnvelope, Hint hint) {
        Objects.requireNonNull(sentryEnvelope, "SentryEnvelope is required.");
        if (hint == null) {
            hint = new Hint();
        }
        try {
            hint.clear();
            return sendEnvelope(sentryEnvelope, hint);
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.ERROR, "Failed to capture envelope.", e);
            return SentryId.EMPTY_ID;
        }
    }

    private SentryId sendEnvelope(SentryEnvelope sentryEnvelope, Hint hint) throws IOException {
        SentryOptions.BeforeEnvelopeCallback beforeEnvelopeCallback = this.options.getBeforeEnvelopeCallback();
        if (beforeEnvelopeCallback != null) {
            try {
                beforeEnvelopeCallback.execute(sentryEnvelope, hint);
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, "The BeforeEnvelope callback threw an exception.", th);
            }
        }
        if (hint == null) {
            this.transport.send(sentryEnvelope);
        } else {
            this.transport.send(sentryEnvelope, hint);
        }
        SentryId eventId = sentryEnvelope.getHeader().getEventId();
        return eventId != null ? eventId : SentryId.EMPTY_ID;
    }

    @Override // io.sentry.ISentryClient
    public SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext, IScope iScope, Hint hint, ProfilingTraceData profilingTraceData) {
        Objects.requireNonNull(sentryTransaction, "Transaction is required.");
        if (hint == null) {
            hint = new Hint();
        }
        if (shouldApplyScopeData(sentryTransaction, hint)) {
            addScopeAttachmentsToHint(iScope, hint);
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Capturing transaction: %s", sentryTransaction.getEventId());
        SentryId sentryId = SentryId.EMPTY_ID;
        if (sentryTransaction.getEventId() != null) {
            sentryId = sentryTransaction.getEventId();
        }
        if (shouldApplyScopeData(sentryTransaction, hint)) {
            sentryTransaction = (SentryTransaction) applyScope((SentryClient) sentryTransaction, iScope);
            if (sentryTransaction != null && iScope != null) {
                sentryTransaction = processTransaction(sentryTransaction, hint, iScope.getEventProcessors());
            }
            if (sentryTransaction == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "Transaction was dropped by applyScope", new Object[0]);
            }
        }
        if (sentryTransaction != null) {
            sentryTransaction = processTransaction(sentryTransaction, hint, this.options.getEventProcessors());
        }
        if (sentryTransaction == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Transaction was dropped by Event processors.", new Object[0]);
            return SentryId.EMPTY_ID;
        }
        SentryTransaction executeBeforeSendTransaction = executeBeforeSendTransaction(sentryTransaction, hint);
        if (executeBeforeSendTransaction == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Transaction was dropped by beforeSendTransaction.", new Object[0]);
            this.options.getClientReportRecorder().recordLostEvent(DiscardReason.BEFORE_SEND, DataCategory.Transaction);
            return SentryId.EMPTY_ID;
        }
        try {
            SentryEnvelope buildEnvelope = buildEnvelope(executeBeforeSendTransaction, filterForTransaction(getAttachments(hint)), null, traceContext, profilingTraceData);
            hint.clear();
            return buildEnvelope != null ? sendEnvelope(buildEnvelope, hint) : sentryId;
        } catch (SentryEnvelopeException | IOException e) {
            this.options.getLogger().log(SentryLevel.WARNING, e, "Capturing transaction %s failed.", sentryId);
            return SentryId.EMPTY_ID;
        }
    }

    @Override // io.sentry.ISentryClient
    public SentryId captureCheckIn(CheckIn checkIn, IScope iScope, Hint hint) {
        TraceContext traceContext;
        if (hint == null) {
            hint = new Hint();
        }
        if (checkIn.getEnvironment() == null) {
            checkIn.setEnvironment(this.options.getEnvironment());
        }
        if (checkIn.getRelease() == null) {
            checkIn.setRelease(this.options.getRelease());
        }
        if (shouldApplyScopeData(checkIn, hint)) {
            checkIn = applyScope(checkIn, iScope);
        }
        if (CheckInUtils.isIgnored(this.options.getIgnoredCheckIns(), checkIn.getMonitorSlug())) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Check-in was dropped as slug %s is ignored", checkIn.getMonitorSlug());
            return SentryId.EMPTY_ID;
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "Capturing check-in: %s", checkIn.getCheckInId());
        SentryId checkInId = checkIn.getCheckInId();
        if (iScope != null) {
            try {
                ITransaction transaction = iScope.getTransaction();
                if (transaction != null) {
                    traceContext = transaction.traceContext();
                } else {
                    traceContext = TracingUtils.maybeUpdateBaggage(iScope, this.options).traceContext();
                }
            } catch (IOException e) {
                this.options.getLogger().log(SentryLevel.WARNING, e, "Capturing check-in %s failed.", checkInId);
                return SentryId.EMPTY_ID;
            }
        } else {
            traceContext = null;
        }
        SentryEnvelope buildEnvelope = buildEnvelope(checkIn, traceContext);
        hint.clear();
        return sendEnvelope(buildEnvelope, hint);
    }

    private List<Attachment> filterForTransaction(List<Attachment> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Attachment attachment : list) {
            if (attachment.isAddToTransactions()) {
                arrayList.add(attachment);
            }
        }
        return arrayList;
    }

    private SentryEvent applyScope(SentryEvent sentryEvent, IScope iScope, Hint hint) {
        if (iScope == null) {
            return sentryEvent;
        }
        applyScope((SentryClient) sentryEvent, iScope);
        if (sentryEvent.getTransaction() == null) {
            sentryEvent.setTransaction(iScope.getTransactionName());
        }
        if (sentryEvent.getFingerprints() == null) {
            sentryEvent.setFingerprints(iScope.getFingerprint());
        }
        if (iScope.getLevel() != null) {
            sentryEvent.setLevel(iScope.getLevel());
        }
        ISpan span = iScope.getSpan();
        if (sentryEvent.getContexts().getTrace() == null) {
            if (span == null) {
                sentryEvent.getContexts().setTrace(TransactionContext.fromPropagationContext(iScope.getPropagationContext()));
            } else {
                sentryEvent.getContexts().setTrace(span.getSpanContext());
            }
        }
        return processEvent(sentryEvent, hint, iScope.getEventProcessors());
    }

    private CheckIn applyScope(CheckIn checkIn, IScope iScope) {
        if (iScope != null) {
            ISpan span = iScope.getSpan();
            if (checkIn.getContexts().getTrace() == null) {
                if (span == null) {
                    checkIn.getContexts().setTrace(TransactionContext.fromPropagationContext(iScope.getPropagationContext()));
                } else {
                    checkIn.getContexts().setTrace(span.getSpanContext());
                }
            }
        }
        return checkIn;
    }

    private <T extends SentryBaseEvent> T applyScope(T t, IScope iScope) {
        if (iScope != null) {
            if (t.getRequest() == null) {
                t.setRequest(iScope.getRequest());
            }
            if (t.getUser() == null) {
                t.setUser(iScope.getUser());
            }
            if (t.getTags() == null) {
                t.setTags(new HashMap(iScope.getTags()));
            } else {
                for (Map.Entry<String, String> entry : iScope.getTags().entrySet()) {
                    if (!t.getTags().containsKey(entry.getKey())) {
                        t.getTags().put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (t.getBreadcrumbs() == null) {
                t.setBreadcrumbs(new ArrayList(iScope.getBreadcrumbs()));
            } else {
                sortBreadcrumbsByDate(t, iScope.getBreadcrumbs());
            }
            if (t.getExtras() == null) {
                t.setExtras(new HashMap(iScope.getExtras()));
            } else {
                for (Map.Entry<String, Object> entry2 : iScope.getExtras().entrySet()) {
                    if (!t.getExtras().containsKey(entry2.getKey())) {
                        t.getExtras().put(entry2.getKey(), entry2.getValue());
                    }
                }
            }
            Contexts contexts = t.getContexts();
            for (Map.Entry<String, Object> entry3 : new Contexts(iScope.getContexts()).entrySet()) {
                if (!contexts.containsKey(entry3.getKey())) {
                    contexts.put(entry3.getKey(), entry3.getValue());
                }
            }
        }
        return t;
    }

    private void sortBreadcrumbsByDate(SentryBaseEvent sentryBaseEvent, Collection<Breadcrumb> collection) {
        List<Breadcrumb> breadcrumbs = sentryBaseEvent.getBreadcrumbs();
        if (breadcrumbs == null || collection.isEmpty()) {
            return;
        }
        breadcrumbs.addAll(collection);
        Collections.sort(breadcrumbs, this.sortBreadcrumbsByDate);
    }

    private SentryEvent executeBeforeSend(SentryEvent sentryEvent, Hint hint) {
        SentryOptions.BeforeSendCallback beforeSend = this.options.getBeforeSend();
        if (beforeSend == null) {
            return sentryEvent;
        }
        try {
            return beforeSend.execute(sentryEvent, hint);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "The BeforeSend callback threw an exception. It will be added as breadcrumb and continue.", th);
            return null;
        }
    }

    private SentryTransaction executeBeforeSendTransaction(SentryTransaction sentryTransaction, Hint hint) {
        SentryOptions.BeforeSendTransactionCallback beforeSendTransaction = this.options.getBeforeSendTransaction();
        if (beforeSendTransaction == null) {
            return sentryTransaction;
        }
        try {
            return beforeSendTransaction.execute(sentryTransaction, hint);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "The BeforeSendTransaction callback threw an exception. It will be added as breadcrumb and continue.", th);
            return null;
        }
    }

    @Override // io.sentry.ISentryClient
    public void close() {
        close(false);
    }

    @Override // io.sentry.ISentryClient
    public void close(boolean z) {
        long shutdownTimeoutMillis;
        this.options.getLogger().log(SentryLevel.INFO, "Closing SentryClient.", new Object[0]);
        try {
            this.metricsAggregator.close();
        } catch (IOException e) {
            this.options.getLogger().log(SentryLevel.WARNING, "Failed to close the metrics aggregator.", e);
        }
        if (z) {
            shutdownTimeoutMillis = 0;
        } else {
            try {
                shutdownTimeoutMillis = this.options.getShutdownTimeoutMillis();
            } catch (IOException e2) {
                this.options.getLogger().log(SentryLevel.WARNING, "Failed to close the connection to the Sentry Server.", e2);
            }
        }
        flush(shutdownTimeoutMillis);
        this.transport.close(z);
        for (EventProcessor eventProcessor : this.options.getEventProcessors()) {
            if (eventProcessor instanceof Closeable) {
                try {
                    ((Closeable) eventProcessor).close();
                } catch (IOException e3) {
                    this.options.getLogger().log(SentryLevel.WARNING, "Failed to close the event processor {}.", eventProcessor, e3);
                }
            }
        }
        this.enabled = false;
    }

    @Override // io.sentry.ISentryClient
    public void flush(long j) {
        this.transport.flush(j);
    }

    @Override // io.sentry.ISentryClient
    public RateLimiter getRateLimiter() {
        return this.transport.getRateLimiter();
    }

    @Override // io.sentry.ISentryClient
    public boolean isHealthy() {
        return this.transport.isHealthy();
    }

    private boolean sample() {
        return this.options.getSampleRate() == null || this.random == null || this.options.getSampleRate().doubleValue() >= this.random.nextDouble();
    }

    @Override // io.sentry.metrics.IMetricsClient
    public SentryId captureMetrics(EncodedMetrics encodedMetrics) {
        SentryId captureEnvelope = captureEnvelope(new SentryEnvelope(new SentryEnvelopeHeader(new SentryId(), this.options.getSdkVersion(), null), Collections.singleton(SentryEnvelopeItem.fromMetrics(encodedMetrics))));
        return captureEnvelope != null ? captureEnvelope : SentryId.EMPTY_ID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class SortBreadcrumbsByDate implements Comparator<Breadcrumb> {
        private SortBreadcrumbsByDate() {
        }

        @Override // java.util.Comparator
        public int compare(Breadcrumb breadcrumb, Breadcrumb breadcrumb2) {
            return breadcrumb.getTimestamp().compareTo(breadcrumb2.getTimestamp());
        }
    }
}
