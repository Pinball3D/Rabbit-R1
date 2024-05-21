package io.sentry.android.core;

import android.os.FileObserver;
import io.sentry.IEnvelopeSender;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.hints.ApplyScopeData;
import io.sentry.hints.Cached;
import io.sentry.hints.Flushable;
import io.sentry.hints.Resettable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.util.HintUtils;
import io.sentry.util.Objects;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
final class EnvelopeFileObserver extends FileObserver {
    private final IEnvelopeSender envelopeSender;
    private final long flushTimeoutMillis;
    private final ILogger logger;
    private final String rootPath;

    /* JADX INFO: Access modifiers changed from: package-private */
    public EnvelopeFileObserver(String str, IEnvelopeSender iEnvelopeSender, ILogger iLogger, long j) {
        super(str);
        this.rootPath = str;
        this.envelopeSender = (IEnvelopeSender) Objects.requireNonNull(iEnvelopeSender, "Envelope sender is required.");
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "Logger is required.");
        this.flushTimeoutMillis = j;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i, String str) {
        if (str == null || i != 8) {
            return;
        }
        this.logger.log(SentryLevel.DEBUG, "onEvent fired for EnvelopeFileObserver with event type %d on path: %s for file %s.", Integer.valueOf(i), this.rootPath, str);
        this.envelopeSender.processEnvelopeFile(this.rootPath + File.separator + str, HintUtils.createWithTypeCheckHint(new CachedEnvelopeHint(this.flushTimeoutMillis, this.logger)));
    }

    /* loaded from: classes3.dex */
    private static final class CachedEnvelopeHint implements Cached, Retryable, SubmissionResult, Flushable, ApplyScopeData, Resettable {
        private final long flushTimeoutMillis;
        private CountDownLatch latch;
        private final ILogger logger;
        boolean retry;
        boolean succeeded;

        @Override // io.sentry.hints.Retryable
        public boolean isRetry() {
            return this.retry;
        }

        @Override // io.sentry.hints.SubmissionResult
        public boolean isSuccess() {
            return this.succeeded;
        }

        @Override // io.sentry.hints.Retryable
        public void setRetry(boolean z) {
            this.retry = z;
        }

        public CachedEnvelopeHint(long j, ILogger iLogger) {
            reset();
            this.flushTimeoutMillis = j;
            this.logger = (ILogger) Objects.requireNonNull(iLogger, "ILogger is required.");
        }

        @Override // io.sentry.hints.Flushable
        public boolean waitFlush() {
            try {
                return this.latch.await(this.flushTimeoutMillis, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                this.logger.log(SentryLevel.ERROR, "Exception while awaiting on lock.", e);
                return false;
            }
        }

        @Override // io.sentry.hints.SubmissionResult
        public void setResult(boolean z) {
            this.succeeded = z;
            this.latch.countDown();
        }

        @Override // io.sentry.hints.Resettable
        public void reset() {
            this.latch = new CountDownLatch(1);
            this.retry = false;
            this.succeeded = false;
        }
    }
}
