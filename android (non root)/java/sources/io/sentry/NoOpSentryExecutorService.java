package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* loaded from: classes3.dex */
final class NoOpSentryExecutorService implements ISentryExecutorService {
    private static final NoOpSentryExecutorService instance = new NoOpSentryExecutorService();

    public static ISentryExecutorService getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$schedule$2() throws Exception {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$submit$0() throws Exception {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$submit$1() throws Exception {
        return null;
    }

    @Override // io.sentry.ISentryExecutorService
    public void close(long j) {
    }

    @Override // io.sentry.ISentryExecutorService
    public boolean isClosed() {
        return false;
    }

    private NoOpSentryExecutorService() {
    }

    @Override // io.sentry.ISentryExecutorService
    public Future<?> submit(Runnable runnable) {
        return new FutureTask(new Callable() { // from class: io.sentry.NoOpSentryExecutorService$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return NoOpSentryExecutorService.lambda$submit$0();
            }
        });
    }

    @Override // io.sentry.ISentryExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return new FutureTask(new Callable() { // from class: io.sentry.NoOpSentryExecutorService$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return NoOpSentryExecutorService.lambda$submit$1();
            }
        });
    }

    @Override // io.sentry.ISentryExecutorService
    public Future<?> schedule(Runnable runnable, long j) {
        return new FutureTask(new Callable() { // from class: io.sentry.NoOpSentryExecutorService$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return NoOpSentryExecutorService.lambda$schedule$2();
            }
        });
    }
}
