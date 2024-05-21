package io.sentry.hints;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public abstract class BlockingFlushHint implements DiskFlushNotification, Flushable {
    private final long flushTimeoutMillis;
    private final CountDownLatch latch = new CountDownLatch(1);
    private final ILogger logger;

    public BlockingFlushHint(long j, ILogger iLogger) {
        this.flushTimeoutMillis = j;
        this.logger = iLogger;
    }

    @Override // io.sentry.hints.Flushable
    public boolean waitFlush() {
        try {
            return this.latch.await(this.flushTimeoutMillis, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            this.logger.log(SentryLevel.ERROR, "Exception while awaiting for flush in BlockingFlushHint", e);
            return false;
        }
    }

    @Override // io.sentry.hints.DiskFlushNotification
    public void markFlushed() {
        this.latch.countDown();
    }
}
