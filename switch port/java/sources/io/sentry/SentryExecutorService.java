package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class SentryExecutorService implements ISentryExecutorService {
    private final ScheduledExecutorService executorService;

    SentryExecutorService(ScheduledExecutorService scheduledExecutorService) {
        this.executorService = scheduledExecutorService;
    }

    public SentryExecutorService() {
        this(Executors.newSingleThreadScheduledExecutor(new SentryExecutorServiceThreadFactory()));
    }

    @Override // io.sentry.ISentryExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.executorService.submit(runnable);
    }

    @Override // io.sentry.ISentryExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.executorService.submit(callable);
    }

    @Override // io.sentry.ISentryExecutorService
    public Future<?> schedule(Runnable runnable, long j) {
        return this.executorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    @Override // io.sentry.ISentryExecutorService
    public void close(long j) {
        synchronized (this.executorService) {
            if (!this.executorService.isShutdown()) {
                this.executorService.shutdown();
                try {
                    if (!this.executorService.awaitTermination(j, TimeUnit.MILLISECONDS)) {
                        this.executorService.shutdownNow();
                    }
                } catch (InterruptedException unused) {
                    this.executorService.shutdownNow();
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    @Override // io.sentry.ISentryExecutorService
    public boolean isClosed() {
        boolean isShutdown;
        synchronized (this.executorService) {
            isShutdown = this.executorService.isShutdown();
        }
        return isShutdown;
    }

    /* loaded from: classes3.dex */
    private static final class SentryExecutorServiceThreadFactory implements ThreadFactory {
        private int cnt;

        private SentryExecutorServiceThreadFactory() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            StringBuilder sb = new StringBuilder("SentryExecutorServiceThreadFactory-");
            int i = this.cnt;
            this.cnt = i + 1;
            Thread thread = new Thread(runnable, sb.append(i).toString());
            thread.setDaemon(true);
            return thread;
        }
    }
}
