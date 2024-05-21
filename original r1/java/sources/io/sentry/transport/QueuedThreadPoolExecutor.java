package io.sentry.transport;

import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.SentryDate;
import io.sentry.SentryDateProvider;
import io.sentry.SentryLevel;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
final class QueuedThreadPoolExecutor extends ThreadPoolExecutor {
    private static final long RECENT_THRESHOLD = DateUtils.millisToNanos(2000);
    private final SentryDateProvider dateProvider;
    private SentryDate lastRejectTimestamp;
    private final ILogger logger;
    private final int maxQueueSize;
    private final ReusableCountLatch unfinishedTasksCount;

    public QueuedThreadPoolExecutor(int i, int i2, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler, ILogger iLogger, SentryDateProvider sentryDateProvider) {
        super(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, rejectedExecutionHandler);
        this.lastRejectTimestamp = null;
        this.unfinishedTasksCount = new ReusableCountLatch();
        this.maxQueueSize = i2;
        this.logger = iLogger;
        this.dateProvider = sentryDateProvider;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        if (isSchedulingAllowed()) {
            this.unfinishedTasksCount.increment();
            return super.submit(runnable);
        }
        this.lastRejectTimestamp = this.dateProvider.now();
        this.logger.log(SentryLevel.WARNING, "Submit cancelled", new Object[0]);
        return new CancelledFuture();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        try {
            super.afterExecute(runnable, th);
        } finally {
            this.unfinishedTasksCount.decrement();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void waitTillIdle(long j) {
        try {
            this.unfinishedTasksCount.waitTillZero(j, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            this.logger.log(SentryLevel.ERROR, "Failed to wait till idle", e);
            Thread.currentThread().interrupt();
        }
    }

    public boolean isSchedulingAllowed() {
        return this.unfinishedTasksCount.getCount() < this.maxQueueSize;
    }

    public boolean didRejectRecently() {
        SentryDate sentryDate = this.lastRejectTimestamp;
        return sentryDate != null && this.dateProvider.now().diff(sentryDate) < RECENT_THRESHOLD;
    }

    /* loaded from: classes3.dex */
    static final class CancelledFuture<T> implements Future<T> {
        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return true;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }

        CancelledFuture() {
        }

        @Override // java.util.concurrent.Future
        public T get() {
            throw new CancellationException();
        }

        @Override // java.util.concurrent.Future
        public T get(long j, TimeUnit timeUnit) {
            throw new CancellationException();
        }
    }
}
