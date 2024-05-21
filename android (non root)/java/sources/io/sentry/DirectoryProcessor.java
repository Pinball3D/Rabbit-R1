package io.sentry;

import io.sentry.hints.Cached;
import io.sentry.hints.Enqueable;
import io.sentry.hints.Flushable;
import io.sentry.hints.Retryable;
import io.sentry.hints.SubmissionResult;
import io.sentry.transport.RateLimiter;
import io.sentry.util.HintUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Queue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class DirectoryProcessor {
    private static final long ENVELOPE_PROCESSING_DELAY = 100;
    private final long flushTimeoutMillis;
    private final IHub hub;
    private final ILogger logger;
    private final Queue<String> processedEnvelopes;

    protected abstract boolean isRelevantFileName(String str);

    protected abstract void processFile(File file, Hint hint);

    /* JADX INFO: Access modifiers changed from: package-private */
    public DirectoryProcessor(IHub iHub, ILogger iLogger, long j, int i) {
        this.hub = iHub;
        this.logger = iLogger;
        this.flushTimeoutMillis = j;
        this.processedEnvelopes = SynchronizedQueue.synchronizedQueue(new CircularFifoQueue(i));
    }

    public void processDirectory(File file) {
        try {
            this.logger.log(SentryLevel.DEBUG, "Processing dir. %s", file.getAbsolutePath());
            if (!file.exists()) {
                this.logger.log(SentryLevel.WARNING, "Directory '%s' doesn't exist. No cached events to send.", file.getAbsolutePath());
                return;
            }
            if (!file.isDirectory()) {
                this.logger.log(SentryLevel.ERROR, "Cache dir %s is not a directory.", file.getAbsolutePath());
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                this.logger.log(SentryLevel.ERROR, "Cache dir %s is null.", file.getAbsolutePath());
                return;
            }
            File[] listFiles2 = file.listFiles(new FilenameFilter() { // from class: io.sentry.DirectoryProcessor$$ExternalSyntheticLambda0
                @Override // java.io.FilenameFilter
                public final boolean accept(File file2, String str) {
                    return DirectoryProcessor.this.m5614lambda$processDirectory$0$iosentryDirectoryProcessor(file2, str);
                }
            });
            ILogger iLogger = this.logger;
            SentryLevel sentryLevel = SentryLevel.DEBUG;
            Object[] objArr = new Object[2];
            objArr[0] = Integer.valueOf(listFiles2 != null ? listFiles2.length : 0);
            objArr[1] = file.getAbsolutePath();
            iLogger.log(sentryLevel, "Processing %d items from cache dir %s", objArr);
            for (File file2 : listFiles) {
                if (!file2.isFile()) {
                    this.logger.log(SentryLevel.DEBUG, "File %s is not a File.", file2.getAbsolutePath());
                } else {
                    String absolutePath = file2.getAbsolutePath();
                    if (this.processedEnvelopes.contains(absolutePath)) {
                        this.logger.log(SentryLevel.DEBUG, "File '%s' has already been processed so it will not be processed again.", absolutePath);
                    } else {
                        RateLimiter rateLimiter = this.hub.getRateLimiter();
                        if (rateLimiter != null && rateLimiter.isActiveForCategory(DataCategory.All)) {
                            this.logger.log(SentryLevel.INFO, "DirectoryProcessor, rate limiting active.", new Object[0]);
                            return;
                        } else {
                            this.logger.log(SentryLevel.DEBUG, "Processing file: %s", absolutePath);
                            processFile(file2, HintUtils.createWithTypeCheckHint(new SendCachedEnvelopeHint(this.flushTimeoutMillis, this.logger, absolutePath, this.processedEnvelopes)));
                            Thread.sleep(100L);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            this.logger.log(SentryLevel.ERROR, th, "Failed processing '%s'", file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$processDirectory$0$io-sentry-DirectoryProcessor, reason: not valid java name */
    public /* synthetic */ boolean m5614lambda$processDirectory$0$iosentryDirectoryProcessor(File file, String str) {
        return isRelevantFileName(str);
    }

    /* loaded from: classes3.dex */
    private static final class SendCachedEnvelopeHint implements Cached, Retryable, SubmissionResult, Flushable, Enqueable {
        private final String filePath;
        private final long flushTimeoutMillis;
        private final ILogger logger;
        private final Queue<String> processedEnvelopes;
        boolean retry = false;
        boolean succeeded = false;
        private final CountDownLatch latch = new CountDownLatch(1);

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

        public SendCachedEnvelopeHint(long j, ILogger iLogger, String str, Queue<String> queue) {
            this.flushTimeoutMillis = j;
            this.filePath = str;
            this.processedEnvelopes = queue;
            this.logger = iLogger;
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

        @Override // io.sentry.hints.Enqueable
        public void markEnqueued() {
            this.processedEnvelopes.add(this.filePath);
        }
    }
}
