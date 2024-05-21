package io.sentry;

import com.google.android.exoplayer2.C;
import io.sentry.cache.EnvelopeCache;
import io.sentry.hints.Flushable;
import io.sentry.hints.Resettable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.util.CollectionUtils;
import io.sentry.util.HintUtils;
import io.sentry.util.LogUtils;
import io.sentry.util.Objects;
import io.sentry.util.SampleRateUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class OutboxSender extends DirectoryProcessor implements IEnvelopeSender {
    private static final Charset UTF_8 = Charset.forName(C.UTF8_NAME);
    private final IEnvelopeReader envelopeReader;
    private final IHub hub;
    private final ILogger logger;
    private final ISerializer serializer;

    @Override // io.sentry.DirectoryProcessor
    public /* bridge */ /* synthetic */ void processDirectory(File file) {
        super.processDirectory(file);
    }

    public OutboxSender(IHub iHub, IEnvelopeReader iEnvelopeReader, ISerializer iSerializer, ILogger iLogger, long j, int i) {
        super(iHub, iLogger, j, i);
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required.");
        this.envelopeReader = (IEnvelopeReader) Objects.requireNonNull(iEnvelopeReader, "Envelope reader is required.");
        this.serializer = (ISerializer) Objects.requireNonNull(iSerializer, "Serializer is required.");
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "Logger is required.");
    }

    @Override // io.sentry.DirectoryProcessor
    protected void processFile(final File file, Hint hint) {
        Class<Retryable> cls;
        ILogger iLogger;
        HintUtils.SentryConsumer sentryConsumer;
        BufferedInputStream bufferedInputStream;
        Objects.requireNonNull(file, "File is required.");
        try {
            if (!isRelevantFileName(file.getName())) {
                this.logger.log(SentryLevel.DEBUG, "File '%s' should be ignored.", file.getAbsolutePath());
                return;
            }
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (IOException e) {
                this.logger.log(SentryLevel.ERROR, "Error processing envelope.", e);
                cls = Retryable.class;
                iLogger = this.logger;
                sentryConsumer = new HintUtils.SentryConsumer() { // from class: io.sentry.OutboxSender$$ExternalSyntheticLambda0
                    @Override // io.sentry.util.HintUtils.SentryConsumer
                    public final void accept(Object obj) {
                        OutboxSender.this.m5625lambda$processFile$0$iosentryOutboxSender(file, (Retryable) obj);
                    }
                };
            }
            try {
                SentryEnvelope read = this.envelopeReader.read(bufferedInputStream);
                if (read == null) {
                    this.logger.log(SentryLevel.ERROR, "Stream from path %s resulted in a null envelope.", file.getAbsolutePath());
                } else {
                    processEnvelope(read, hint);
                    this.logger.log(SentryLevel.DEBUG, "File '%s' is done.", file.getAbsolutePath());
                }
                bufferedInputStream.close();
                cls = Retryable.class;
                iLogger = this.logger;
                sentryConsumer = new HintUtils.SentryConsumer() { // from class: io.sentry.OutboxSender$$ExternalSyntheticLambda0
                    @Override // io.sentry.util.HintUtils.SentryConsumer
                    public final void accept(Object obj) {
                        OutboxSender.this.m5625lambda$processFile$0$iosentryOutboxSender(file, (Retryable) obj);
                    }
                };
                HintUtils.runIfHasTypeLogIfNot(hint, cls, iLogger, sentryConsumer);
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            HintUtils.runIfHasTypeLogIfNot(hint, Retryable.class, this.logger, new HintUtils.SentryConsumer() { // from class: io.sentry.OutboxSender$$ExternalSyntheticLambda0
                @Override // io.sentry.util.HintUtils.SentryConsumer
                public final void accept(Object obj) {
                    OutboxSender.this.m5625lambda$processFile$0$iosentryOutboxSender(file, (Retryable) obj);
                }
            });
            throw th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$processFile$0$io-sentry-OutboxSender, reason: not valid java name */
    public /* synthetic */ void m5625lambda$processFile$0$iosentryOutboxSender(File file, Retryable retryable) {
        if (retryable.isRetry()) {
            return;
        }
        try {
            if (file.delete()) {
                return;
            }
            this.logger.log(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
        } catch (RuntimeException e) {
            this.logger.log(SentryLevel.ERROR, e, "Failed to delete: %s", file.getAbsolutePath());
        }
    }

    @Override // io.sentry.DirectoryProcessor
    protected boolean isRelevantFileName(String str) {
        return (str == null || str.startsWith(EnvelopeCache.PREFIX_CURRENT_SESSION_FILE) || str.startsWith(EnvelopeCache.PREFIX_PREVIOUS_SESSION_FILE) || str.startsWith(EnvelopeCache.STARTUP_CRASH_MARKER_FILE)) ? false : true;
    }

    @Override // io.sentry.IEnvelopeSender
    public void processEnvelopeFile(String str, Hint hint) {
        Objects.requireNonNull(str, "Path is required.");
        processFile(new File(str), hint);
    }

    private void processEnvelope(SentryEnvelope sentryEnvelope, Hint hint) throws IOException {
        BufferedReader bufferedReader;
        Object sentrySdkHint;
        this.logger.log(SentryLevel.DEBUG, "Processing Envelope with %d item(s)", Integer.valueOf(CollectionUtils.size(sentryEnvelope.getItems())));
        int i = 0;
        for (SentryEnvelopeItem sentryEnvelopeItem : sentryEnvelope.getItems()) {
            i++;
            if (sentryEnvelopeItem.getHeader() == null) {
                this.logger.log(SentryLevel.ERROR, "Item %d has no header", Integer.valueOf(i));
            } else if (SentryItemType.Event.equals(sentryEnvelopeItem.getHeader().getType())) {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.getData()), UTF_8));
                } catch (Throwable th) {
                    this.logger.log(SentryLevel.ERROR, "Item failed to process.", th);
                }
                try {
                    SentryEvent sentryEvent = (SentryEvent) this.serializer.deserialize(bufferedReader, SentryEvent.class);
                    if (sentryEvent == null) {
                        logEnvelopeItemNull(sentryEnvelopeItem, i);
                    } else {
                        if (sentryEvent.getSdk() != null) {
                            HintUtils.setIsFromHybridSdk(hint, sentryEvent.getSdk().getName());
                        }
                        if (sentryEnvelope.getHeader().getEventId() != null && !sentryEnvelope.getHeader().getEventId().equals(sentryEvent.getEventId())) {
                            logUnexpectedEventId(sentryEnvelope, sentryEvent.getEventId(), i);
                            bufferedReader.close();
                        } else {
                            this.hub.captureEvent(sentryEvent, hint);
                            logItemCaptured(i);
                            if (!waitFlush(hint)) {
                                logTimeout(sentryEvent.getEventId());
                                bufferedReader.close();
                                return;
                            }
                        }
                    }
                    bufferedReader.close();
                    sentrySdkHint = HintUtils.getSentrySdkHint(hint);
                    if (!(sentrySdkHint instanceof SubmissionResult) && !((SubmissionResult) sentrySdkHint).isSuccess()) {
                        this.logger.log(SentryLevel.WARNING, "Envelope had a failed capture at item %d. No more items will be sent.", Integer.valueOf(i));
                        return;
                    }
                    HintUtils.runIfHasType(hint, Resettable.class, new HintUtils.SentryConsumer() { // from class: io.sentry.OutboxSender$$ExternalSyntheticLambda1
                        @Override // io.sentry.util.HintUtils.SentryConsumer
                        public final void accept(Object obj) {
                            ((Resettable) obj).reset();
                        }
                    });
                } finally {
                }
            } else {
                if (SentryItemType.Transaction.equals(sentryEnvelopeItem.getHeader().getType())) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(sentryEnvelopeItem.getData()), UTF_8));
                        try {
                            SentryTransaction sentryTransaction = (SentryTransaction) this.serializer.deserialize(bufferedReader, SentryTransaction.class);
                            if (sentryTransaction == null) {
                                logEnvelopeItemNull(sentryEnvelopeItem, i);
                            } else if (sentryEnvelope.getHeader().getEventId() != null && !sentryEnvelope.getHeader().getEventId().equals(sentryTransaction.getEventId())) {
                                logUnexpectedEventId(sentryEnvelope, sentryTransaction.getEventId(), i);
                                bufferedReader.close();
                            } else {
                                TraceContext traceContext = sentryEnvelope.getHeader().getTraceContext();
                                if (sentryTransaction.getContexts().getTrace() != null) {
                                    sentryTransaction.getContexts().getTrace().setSamplingDecision(extractSamplingDecision(traceContext));
                                }
                                this.hub.captureTransaction(sentryTransaction, traceContext, hint);
                                logItemCaptured(i);
                                if (!waitFlush(hint)) {
                                    logTimeout(sentryTransaction.getEventId());
                                    bufferedReader.close();
                                    return;
                                }
                            }
                            bufferedReader.close();
                        } finally {
                        }
                    } catch (Throwable th2) {
                        this.logger.log(SentryLevel.ERROR, "Item failed to process.", th2);
                    }
                } else {
                    this.hub.captureEnvelope(new SentryEnvelope(sentryEnvelope.getHeader().getEventId(), sentryEnvelope.getHeader().getSdkVersion(), sentryEnvelopeItem), hint);
                    this.logger.log(SentryLevel.DEBUG, "%s item %d is being captured.", sentryEnvelopeItem.getHeader().getType().getItemType(), Integer.valueOf(i));
                    if (!waitFlush(hint)) {
                        this.logger.log(SentryLevel.WARNING, "Timed out waiting for item type submission: %s", sentryEnvelopeItem.getHeader().getType().getItemType());
                        return;
                    }
                }
                sentrySdkHint = HintUtils.getSentrySdkHint(hint);
                if (!(sentrySdkHint instanceof SubmissionResult)) {
                }
                HintUtils.runIfHasType(hint, Resettable.class, new HintUtils.SentryConsumer() { // from class: io.sentry.OutboxSender$$ExternalSyntheticLambda1
                    @Override // io.sentry.util.HintUtils.SentryConsumer
                    public final void accept(Object obj) {
                        ((Resettable) obj).reset();
                    }
                });
            }
        }
    }

    private TracesSamplingDecision extractSamplingDecision(TraceContext traceContext) {
        String sampleRate;
        if (traceContext != null && (sampleRate = traceContext.getSampleRate()) != null) {
            try {
                Double valueOf = Double.valueOf(Double.parseDouble(sampleRate));
                if (!SampleRateUtils.isValidTracesSampleRate(valueOf, false)) {
                    this.logger.log(SentryLevel.ERROR, "Invalid sample rate parsed from TraceContext: %s", sampleRate);
                } else {
                    return new TracesSamplingDecision(true, valueOf);
                }
            } catch (Exception unused) {
                this.logger.log(SentryLevel.ERROR, "Unable to parse sample rate from TraceContext: %s", sampleRate);
            }
        }
        return new TracesSamplingDecision(true);
    }

    private void logEnvelopeItemNull(SentryEnvelopeItem sentryEnvelopeItem, int i) {
        this.logger.log(SentryLevel.ERROR, "Item %d of type %s returned null by the parser.", Integer.valueOf(i), sentryEnvelopeItem.getHeader().getType());
    }

    private void logUnexpectedEventId(SentryEnvelope sentryEnvelope, SentryId sentryId, int i) {
        this.logger.log(SentryLevel.ERROR, "Item %d of has a different event id (%s) to the envelope header (%s)", Integer.valueOf(i), sentryEnvelope.getHeader().getEventId(), sentryId);
    }

    private void logItemCaptured(int i) {
        this.logger.log(SentryLevel.DEBUG, "Item %d is being captured.", Integer.valueOf(i));
    }

    private void logTimeout(SentryId sentryId) {
        this.logger.log(SentryLevel.WARNING, "Timed out waiting for event id submission: %s", sentryId);
    }

    private boolean waitFlush(Hint hint) {
        Object sentrySdkHint = HintUtils.getSentrySdkHint(hint);
        if (sentrySdkHint instanceof Flushable) {
            return ((Flushable) sentrySdkHint).waitFlush();
        }
        LogUtils.logNotInstanceOf(Flushable.class, sentrySdkHint, this.logger);
        return true;
    }
}
