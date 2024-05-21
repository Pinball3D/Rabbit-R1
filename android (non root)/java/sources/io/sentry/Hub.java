package io.sentry;

import io.sentry.Scope;
import io.sentry.Stack;
import io.sentry.clientreport.DiscardReason;
import io.sentry.hints.SessionEndHint;
import io.sentry.hints.SessionStartHint;
import io.sentry.metrics.LocalMetricsAggregator;
import io.sentry.metrics.MetricsApi;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.transport.RateLimiter;
import io.sentry.util.ExceptionUtils;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import io.sentry.util.Pair;
import io.sentry.util.TracingUtils;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class Hub implements IHub, MetricsApi.IMetricsInterface {
    private volatile boolean isEnabled;
    private volatile SentryId lastEventId;
    private final MetricsApi metricsApi;
    private final SentryOptions options;
    private final Stack stack;
    private final Map<Throwable, Pair<WeakReference<ISpan>, String>> throwableToSpan;
    private final TracesSampler tracesSampler;
    private final TransactionPerformanceCollector transactionPerformanceCollector;

    @Override // io.sentry.IHub
    public SentryId getLastEventId() {
        return this.lastEventId;
    }

    @Override // io.sentry.IHub
    public boolean isEnabled() {
        return this.isEnabled;
    }

    @Override // io.sentry.IHub
    public MetricsApi metrics() {
        return this.metricsApi;
    }

    public Hub(SentryOptions sentryOptions) {
        this(sentryOptions, createRootStackItem(sentryOptions));
    }

    private Hub(SentryOptions sentryOptions, Stack stack) {
        this.throwableToSpan = Collections.synchronizedMap(new WeakHashMap());
        validateOptions(sentryOptions);
        this.options = sentryOptions;
        this.tracesSampler = new TracesSampler(sentryOptions);
        this.stack = stack;
        this.lastEventId = SentryId.EMPTY_ID;
        this.transactionPerformanceCollector = sentryOptions.getTransactionPerformanceCollector();
        this.isEnabled = true;
        this.metricsApi = new MetricsApi(this);
    }

    private Hub(SentryOptions sentryOptions, Stack.StackItem stackItem) {
        this(sentryOptions, new Stack(sentryOptions.getLogger(), stackItem));
    }

    private static void validateOptions(SentryOptions sentryOptions) {
        Objects.requireNonNull(sentryOptions, "SentryOptions is required.");
        if (sentryOptions.getDsn() == null || sentryOptions.getDsn().isEmpty()) {
            throw new IllegalArgumentException("Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available.");
        }
    }

    private static Stack.StackItem createRootStackItem(SentryOptions sentryOptions) {
        validateOptions(sentryOptions);
        return new Stack.StackItem(sentryOptions, new SentryClient(sentryOptions), new Scope(sentryOptions));
    }

    @Override // io.sentry.IHub
    public SentryId captureEvent(SentryEvent sentryEvent, Hint hint) {
        return captureEventInternal(sentryEvent, hint, null);
    }

    @Override // io.sentry.IHub
    public SentryId captureEvent(SentryEvent sentryEvent, Hint hint, ScopeCallback scopeCallback) {
        return captureEventInternal(sentryEvent, hint, scopeCallback);
    }

    private SentryId captureEventInternal(SentryEvent sentryEvent, Hint hint, ScopeCallback scopeCallback) {
        SentryId sentryId = SentryId.EMPTY_ID;
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureEvent' call is a no-op.", new Object[0]);
            return sentryId;
        }
        if (sentryEvent == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "captureEvent called with null parameter.", new Object[0]);
            return sentryId;
        }
        try {
            assignTraceContext(sentryEvent);
            Stack.StackItem peek = this.stack.peek();
            sentryId = peek.getClient().captureEvent(sentryEvent, buildLocalScope(peek.getScope(), scopeCallback), hint);
            this.lastEventId = sentryId;
            return sentryId;
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing event with id: " + sentryEvent.getEventId(), th);
            return sentryId;
        }
    }

    @Override // io.sentry.IHub
    public SentryId captureMessage(String str, SentryLevel sentryLevel) {
        return captureMessageInternal(str, sentryLevel, null);
    }

    @Override // io.sentry.IHub
    public SentryId captureMessage(String str, SentryLevel sentryLevel, ScopeCallback scopeCallback) {
        return captureMessageInternal(str, sentryLevel, scopeCallback);
    }

    private SentryId captureMessageInternal(String str, SentryLevel sentryLevel, ScopeCallback scopeCallback) {
        SentryId sentryId = SentryId.EMPTY_ID;
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureMessage' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "captureMessage called with null parameter.", new Object[0]);
        } else {
            try {
                Stack.StackItem peek = this.stack.peek();
                sentryId = peek.getClient().captureMessage(str, sentryLevel, buildLocalScope(peek.getScope(), scopeCallback));
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing message: " + str, th);
            }
        }
        this.lastEventId = sentryId;
        return sentryId;
    }

    @Override // io.sentry.IHub
    public SentryId captureEnvelope(SentryEnvelope sentryEnvelope, Hint hint) {
        Objects.requireNonNull(sentryEnvelope, "SentryEnvelope is required.");
        SentryId sentryId = SentryId.EMPTY_ID;
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureEnvelope' call is a no-op.", new Object[0]);
            return sentryId;
        }
        try {
            SentryId captureEnvelope = this.stack.peek().getClient().captureEnvelope(sentryEnvelope, hint);
            return captureEnvelope != null ? captureEnvelope : sentryId;
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing envelope.", th);
            return sentryId;
        }
    }

    @Override // io.sentry.IHub
    public SentryId captureException(Throwable th, Hint hint) {
        return captureExceptionInternal(th, hint, null);
    }

    @Override // io.sentry.IHub
    public SentryId captureException(Throwable th, Hint hint, ScopeCallback scopeCallback) {
        return captureExceptionInternal(th, hint, scopeCallback);
    }

    private SentryId captureExceptionInternal(Throwable th, Hint hint, ScopeCallback scopeCallback) {
        SentryId sentryId = SentryId.EMPTY_ID;
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureException' call is a no-op.", new Object[0]);
        } else if (th == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "captureException called with null parameter.", new Object[0]);
        } else {
            try {
                Stack.StackItem peek = this.stack.peek();
                SentryEvent sentryEvent = new SentryEvent(th);
                assignTraceContext(sentryEvent);
                sentryId = peek.getClient().captureEvent(sentryEvent, buildLocalScope(peek.getScope(), scopeCallback), hint);
            } catch (Throwable th2) {
                this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing exception: " + th.getMessage(), th2);
            }
        }
        this.lastEventId = sentryId;
        return sentryId;
    }

    private void assignTraceContext(SentryEvent sentryEvent) {
        Pair<WeakReference<ISpan>, String> pair;
        ISpan iSpan;
        if (!this.options.isTracingEnabled() || sentryEvent.getThrowable() == null || (pair = this.throwableToSpan.get(ExceptionUtils.findRootCause(sentryEvent.getThrowable()))) == null) {
            return;
        }
        WeakReference<ISpan> first = pair.getFirst();
        if (sentryEvent.getContexts().getTrace() == null && first != null && (iSpan = first.get()) != null) {
            sentryEvent.getContexts().setTrace(iSpan.getSpanContext());
        }
        String second = pair.getSecond();
        if (sentryEvent.getTransaction() != null || second == null) {
            return;
        }
        sentryEvent.setTransaction(second);
    }

    @Override // io.sentry.IHub
    public void captureUserFeedback(UserFeedback userFeedback) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureUserFeedback' call is a no-op.", new Object[0]);
            return;
        }
        try {
            this.stack.peek().getClient().captureUserFeedback(userFeedback);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing captureUserFeedback: " + userFeedback.toString(), th);
        }
    }

    @Override // io.sentry.IHub
    public void startSession() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'startSession' call is a no-op.", new Object[0]);
            return;
        }
        Stack.StackItem peek = this.stack.peek();
        Scope.SessionPair startSession = peek.getScope().startSession();
        if (startSession != null) {
            if (startSession.getPrevious() != null) {
                peek.getClient().captureSession(startSession.getPrevious(), HintUtils.createWithTypeCheckHint(new SessionEndHint()));
            }
            peek.getClient().captureSession(startSession.getCurrent(), HintUtils.createWithTypeCheckHint(new SessionStartHint()));
            return;
        }
        this.options.getLogger().log(SentryLevel.WARNING, "Session could not be started.", new Object[0]);
    }

    @Override // io.sentry.IHub
    public void endSession() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'endSession' call is a no-op.", new Object[0]);
            return;
        }
        Stack.StackItem peek = this.stack.peek();
        Session endSession = peek.getScope().endSession();
        if (endSession != null) {
            peek.getClient().captureSession(endSession, HintUtils.createWithTypeCheckHint(new SessionEndHint()));
        }
    }

    @Override // io.sentry.IHub
    public void close() {
        close(false);
    }

    @Override // io.sentry.IHub
    public void close(boolean z) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'close' call is a no-op.", new Object[0]);
            return;
        }
        try {
            for (Integration integration : this.options.getIntegrations()) {
                if (integration instanceof Closeable) {
                    try {
                        ((Closeable) integration).close();
                    } catch (IOException e) {
                        this.options.getLogger().log(SentryLevel.WARNING, "Failed to close the integration {}.", integration, e);
                    }
                }
            }
            configureScope(new ScopeCallback() { // from class: io.sentry.Hub$$ExternalSyntheticLambda2
                @Override // io.sentry.ScopeCallback
                public final void run(IScope iScope) {
                    iScope.clear();
                }
            });
            this.options.getTransactionProfiler().close();
            this.options.getTransactionPerformanceCollector().close();
            final ISentryExecutorService executorService = this.options.getExecutorService();
            if (z) {
                executorService.submit(new Runnable() { // from class: io.sentry.Hub$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        Hub.this.m5619lambda$close$1$iosentryHub(executorService);
                    }
                });
            } else {
                executorService.close(this.options.getShutdownTimeoutMillis());
            }
            this.stack.peek().getClient().close(z);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error while closing the Hub.", th);
        }
        this.isEnabled = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$close$1$io-sentry-Hub, reason: not valid java name */
    public /* synthetic */ void m5619lambda$close$1$iosentryHub(ISentryExecutorService iSentryExecutorService) {
        iSentryExecutorService.close(this.options.getShutdownTimeoutMillis());
    }

    @Override // io.sentry.IHub
    public void addBreadcrumb(Breadcrumb breadcrumb, Hint hint) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'addBreadcrumb' call is a no-op.", new Object[0]);
        } else if (breadcrumb == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "addBreadcrumb called with null parameter.", new Object[0]);
        } else {
            this.stack.peek().getScope().addBreadcrumb(breadcrumb, hint);
        }
    }

    @Override // io.sentry.IHub
    public void addBreadcrumb(Breadcrumb breadcrumb) {
        addBreadcrumb(breadcrumb, new Hint());
    }

    @Override // io.sentry.IHub
    public void setLevel(SentryLevel sentryLevel) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'setLevel' call is a no-op.", new Object[0]);
        } else {
            this.stack.peek().getScope().setLevel(sentryLevel);
        }
    }

    @Override // io.sentry.IHub
    public void setTransaction(String str) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'setTransaction' call is a no-op.", new Object[0]);
        } else if (str != null) {
            this.stack.peek().getScope().setTransaction(str);
        } else {
            this.options.getLogger().log(SentryLevel.WARNING, "Transaction cannot be null", new Object[0]);
        }
    }

    @Override // io.sentry.IHub
    public void setUser(User user) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'setUser' call is a no-op.", new Object[0]);
        } else {
            this.stack.peek().getScope().setUser(user);
        }
    }

    @Override // io.sentry.IHub
    public void setFingerprint(List<String> list) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'setFingerprint' call is a no-op.", new Object[0]);
        } else if (list == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "setFingerprint called with null parameter.", new Object[0]);
        } else {
            this.stack.peek().getScope().setFingerprint(list);
        }
    }

    @Override // io.sentry.IHub
    public void clearBreadcrumbs() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'clearBreadcrumbs' call is a no-op.", new Object[0]);
        } else {
            this.stack.peek().getScope().clearBreadcrumbs();
        }
    }

    @Override // io.sentry.IHub
    public void setTag(String str, String str2) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'setTag' call is a no-op.", new Object[0]);
        } else if (str == null || str2 == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "setTag called with null parameter.", new Object[0]);
        } else {
            this.stack.peek().getScope().setTag(str, str2);
        }
    }

    @Override // io.sentry.IHub
    public void removeTag(String str) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'removeTag' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "removeTag called with null parameter.", new Object[0]);
        } else {
            this.stack.peek().getScope().removeTag(str);
        }
    }

    @Override // io.sentry.IHub
    public void setExtra(String str, String str2) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'setExtra' call is a no-op.", new Object[0]);
        } else if (str == null || str2 == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "setExtra called with null parameter.", new Object[0]);
        } else {
            this.stack.peek().getScope().setExtra(str, str2);
        }
    }

    @Override // io.sentry.IHub
    public void removeExtra(String str) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'removeExtra' call is a no-op.", new Object[0]);
        } else if (str == null) {
            this.options.getLogger().log(SentryLevel.WARNING, "removeExtra called with null parameter.", new Object[0]);
        } else {
            this.stack.peek().getScope().removeExtra(str);
        }
    }

    @Override // io.sentry.IHub
    public void pushScope() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'pushScope' call is a no-op.", new Object[0]);
            return;
        }
        Stack.StackItem peek = this.stack.peek();
        this.stack.push(new Stack.StackItem(this.options, peek.getClient(), peek.getScope().m5624clone()));
    }

    @Override // io.sentry.IHub
    public SentryOptions getOptions() {
        return this.stack.peek().getOptions();
    }

    @Override // io.sentry.IHub
    public Boolean isCrashedLastRun() {
        return SentryCrashLastRunState.getInstance().isCrashedLastRun(this.options.getCacheDirPath(), !this.options.isEnableAutoSessionTracking());
    }

    @Override // io.sentry.IHub
    public void reportFullyDisplayed() {
        if (this.options.isEnableTimeToFullDisplayTracing()) {
            this.options.getFullyDisplayedReporter().reportFullyDrawn();
        }
    }

    @Override // io.sentry.IHub
    public void popScope() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'popScope' call is a no-op.", new Object[0]);
        } else {
            this.stack.pop();
        }
    }

    @Override // io.sentry.IHub
    public void withScope(ScopeCallback scopeCallback) {
        if (!isEnabled()) {
            try {
                scopeCallback.run(NoOpScope.getInstance());
                return;
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, "Error in the 'withScope' callback.", th);
                return;
            }
        }
        pushScope();
        try {
            scopeCallback.run(this.stack.peek().getScope());
        } catch (Throwable th2) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error in the 'withScope' callback.", th2);
        }
        popScope();
    }

    @Override // io.sentry.IHub
    public void configureScope(ScopeCallback scopeCallback) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'configureScope' call is a no-op.", new Object[0]);
            return;
        }
        try {
            scopeCallback.run(this.stack.peek().getScope());
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error in the 'configureScope' callback.", th);
        }
    }

    @Override // io.sentry.IHub
    public void bindClient(ISentryClient iSentryClient) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'bindClient' call is a no-op.", new Object[0]);
            return;
        }
        Stack.StackItem peek = this.stack.peek();
        if (iSentryClient != null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "New client bound to scope.", new Object[0]);
            peek.setClient(iSentryClient);
        } else {
            this.options.getLogger().log(SentryLevel.DEBUG, "NoOp client bound to scope.", new Object[0]);
            peek.setClient(NoOpSentryClient.getInstance());
        }
    }

    @Override // io.sentry.IHub
    public boolean isHealthy() {
        return this.stack.peek().getClient().isHealthy();
    }

    @Override // io.sentry.IHub
    public void flush(long j) {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'flush' call is a no-op.", new Object[0]);
            return;
        }
        try {
            this.stack.peek().getClient().flush(j);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error in the 'client.flush'.", th);
        }
    }

    @Override // io.sentry.IHub
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public IHub m5620clone() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Disabled Hub cloned.", new Object[0]);
        }
        return new Hub(this.options, new Stack(this.stack));
    }

    @Override // io.sentry.IHub
    public SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        Objects.requireNonNull(sentryTransaction, "transaction is required");
        SentryId sentryId = SentryId.EMPTY_ID;
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureTransaction' call is a no-op.", new Object[0]);
            return sentryId;
        }
        if (!sentryTransaction.isFinished()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Transaction: %s is not finished and this 'captureTransaction' call is a no-op.", sentryTransaction.getEventId());
            return sentryId;
        }
        if (!Boolean.TRUE.equals(Boolean.valueOf(sentryTransaction.isSampled()))) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Transaction %s was dropped due to sampling decision.", sentryTransaction.getEventId());
            if (this.options.getBackpressureMonitor().getDownsampleFactor() > 0) {
                this.options.getClientReportRecorder().recordLostEvent(DiscardReason.BACKPRESSURE, DataCategory.Transaction);
                return sentryId;
            }
            this.options.getClientReportRecorder().recordLostEvent(DiscardReason.SAMPLE_RATE, DataCategory.Transaction);
            return sentryId;
        }
        try {
            Stack.StackItem peek = this.stack.peek();
            return peek.getClient().captureTransaction(sentryTransaction, traceContext, peek.getScope(), hint, profilingTraceData);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing transaction with id: " + sentryTransaction.getEventId(), th);
            return sentryId;
        }
    }

    @Override // io.sentry.IHub
    public ITransaction startTransaction(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        return createTransaction(transactionContext, transactionOptions);
    }

    private ITransaction createTransaction(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        final ITransaction iTransaction;
        Objects.requireNonNull(transactionContext, "transactionContext is required");
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
            iTransaction = NoOpTransaction.getInstance();
        } else if (!this.options.getInstrumenter().equals(transactionContext.getInstrumenter())) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s", transactionContext.getInstrumenter(), this.options.getInstrumenter());
            iTransaction = NoOpTransaction.getInstance();
        } else if (!this.options.isTracingEnabled()) {
            this.options.getLogger().log(SentryLevel.INFO, "Tracing is disabled and this 'startTransaction' returns a no-op.", new Object[0]);
            iTransaction = NoOpTransaction.getInstance();
        } else {
            TracesSamplingDecision sample = this.tracesSampler.sample(new SamplingContext(transactionContext, transactionOptions.getCustomSamplingContext()));
            transactionContext.setSamplingDecision(sample);
            SentryTracer sentryTracer = new SentryTracer(transactionContext, this, transactionOptions, this.transactionPerformanceCollector);
            if (sample.getSampled().booleanValue() && sample.getProfileSampled().booleanValue()) {
                ITransactionProfiler transactionProfiler = this.options.getTransactionProfiler();
                if (!transactionProfiler.isRunning()) {
                    transactionProfiler.start();
                    transactionProfiler.bindTransaction(sentryTracer);
                } else if (transactionOptions.isAppStartTransaction()) {
                    transactionProfiler.bindTransaction(sentryTracer);
                }
            }
            iTransaction = sentryTracer;
        }
        if (transactionOptions.isBindToScope()) {
            configureScope(new ScopeCallback() { // from class: io.sentry.Hub$$ExternalSyntheticLambda1
                @Override // io.sentry.ScopeCallback
                public final void run(IScope iScope) {
                    iScope.setTransaction(ITransaction.this);
                }
            });
        }
        return iTransaction;
    }

    @Override // io.sentry.IHub
    @Deprecated
    public SentryTraceHeader traceHeaders() {
        return getTraceparent();
    }

    @Override // io.sentry.IHub
    public ISpan getSpan() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'getSpan' call is a no-op.", new Object[0]);
            return null;
        }
        return this.stack.peek().getScope().getSpan();
    }

    @Override // io.sentry.IHub
    public ITransaction getTransaction() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'getTransaction' call is a no-op.", new Object[0]);
            return null;
        }
        return this.stack.peek().getScope().getTransaction();
    }

    @Override // io.sentry.IHub
    public void setSpanContext(Throwable th, ISpan iSpan, String str) {
        Objects.requireNonNull(th, "throwable is required");
        Objects.requireNonNull(iSpan, "span is required");
        Objects.requireNonNull(str, "transactionName is required");
        Throwable findRootCause = ExceptionUtils.findRootCause(th);
        if (this.throwableToSpan.containsKey(findRootCause)) {
            return;
        }
        this.throwableToSpan.put(findRootCause, new Pair<>(new WeakReference(iSpan), str));
    }

    SpanContext getSpanContext(Throwable th) {
        WeakReference<ISpan> first;
        ISpan iSpan;
        Objects.requireNonNull(th, "throwable is required");
        Pair<WeakReference<ISpan>, String> pair = this.throwableToSpan.get(ExceptionUtils.findRootCause(th));
        if (pair == null || (first = pair.getFirst()) == null || (iSpan = first.get()) == null) {
            return null;
        }
        return iSpan.getSpanContext();
    }

    private IScope buildLocalScope(IScope iScope, ScopeCallback scopeCallback) {
        if (scopeCallback != null) {
            try {
                IScope m5624clone = iScope.m5624clone();
                scopeCallback.run(m5624clone);
                return m5624clone;
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, "Error in the 'ScopeCallback' callback.", th);
            }
        }
        return iScope;
    }

    @Override // io.sentry.IHub
    public TransactionContext continueTrace(String str, List<String> list) {
        final PropagationContext fromHeaders = PropagationContext.fromHeaders(getOptions().getLogger(), str, list);
        configureScope(new ScopeCallback() { // from class: io.sentry.Hub$$ExternalSyntheticLambda0
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                iScope.setPropagationContext(PropagationContext.this);
            }
        });
        if (this.options.isTracingEnabled()) {
            return TransactionContext.fromPropagationContext(fromHeaders);
        }
        return null;
    }

    @Override // io.sentry.IHub
    public SentryTraceHeader getTraceparent() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'getTraceparent' call is a no-op.", new Object[0]);
        } else {
            TracingUtils.TracingHeaders trace = TracingUtils.trace(this, null, getSpan());
            if (trace != null) {
                return trace.getSentryTraceHeader();
            }
        }
        return null;
    }

    @Override // io.sentry.IHub
    public BaggageHeader getBaggage() {
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'getBaggage' call is a no-op.", new Object[0]);
        } else {
            TracingUtils.TracingHeaders trace = TracingUtils.trace(this, null, getSpan());
            if (trace != null) {
                return trace.getBaggageHeader();
            }
        }
        return null;
    }

    @Override // io.sentry.IHub
    public SentryId captureCheckIn(CheckIn checkIn) {
        SentryId sentryId = SentryId.EMPTY_ID;
        if (!isEnabled()) {
            this.options.getLogger().log(SentryLevel.WARNING, "Instance is disabled and this 'captureCheckIn' call is a no-op.", new Object[0]);
        } else {
            try {
                Stack.StackItem peek = this.stack.peek();
                sentryId = peek.getClient().captureCheckIn(checkIn, peek.getScope(), null);
            } catch (Throwable th) {
                this.options.getLogger().log(SentryLevel.ERROR, "Error while capturing check-in for slug", th);
            }
        }
        this.lastEventId = sentryId;
        return sentryId;
    }

    @Override // io.sentry.IHub
    public RateLimiter getRateLimiter() {
        return this.stack.peek().getClient().getRateLimiter();
    }

    @Override // io.sentry.metrics.MetricsApi.IMetricsInterface
    public IMetricsAggregator getMetricsAggregator() {
        return this.stack.peek().getClient().getMetricsAggregator();
    }

    @Override // io.sentry.metrics.MetricsApi.IMetricsInterface
    public Map<String, String> getDefaultTagsForMetrics() {
        if (!this.options.isEnableDefaultTagsForMetrics()) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        String release = this.options.getRelease();
        if (release != null) {
            hashMap.put("release", release);
        }
        String environment = this.options.getEnvironment();
        if (environment != null) {
            hashMap.put("environment", environment);
        }
        String transactionName = this.stack.peek().getScope().getTransactionName();
        if (transactionName != null) {
            hashMap.put("transaction", transactionName);
        }
        return Collections.unmodifiableMap(hashMap);
    }

    @Override // io.sentry.metrics.MetricsApi.IMetricsInterface
    public ISpan startSpanForMetric(String str, String str2) {
        ISpan span = getSpan();
        if (span != null) {
            return span.startChild(str, str2);
        }
        return null;
    }

    @Override // io.sentry.metrics.MetricsApi.IMetricsInterface
    public LocalMetricsAggregator getLocalMetricsAggregator() {
        ISpan span;
        if (this.options.isEnableSpanLocalMetricAggregation() && (span = getSpan()) != null) {
            return span.getLocalMetricsAggregator();
        }
        return null;
    }
}
