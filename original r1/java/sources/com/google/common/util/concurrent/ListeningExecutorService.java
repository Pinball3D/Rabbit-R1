package com.google.common.util.concurrent;

import com.google.errorprone.annotations.DoNotMock;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@DoNotMock("Use TestingExecutors.sameThreadScheduledExecutor, or wrap a real Executor from java.util.concurrent.Executors with MoreExecutors.listeningDecorator")
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public interface ListeningExecutorService extends ExecutorService {
    @Override // java.util.concurrent.ExecutorService
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException;

    @Override // java.util.concurrent.ExecutorService
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException;

    @Override // java.util.concurrent.ExecutorService, com.google.common.util.concurrent.ListeningExecutorService
    ListenableFuture<?> submit(Runnable runnable);

    <T> ListenableFuture<T> submit(Runnable runnable, @ParametricNullness T t);

    @Override // java.util.concurrent.ExecutorService, com.google.common.util.concurrent.ListeningExecutorService
    <T> ListenableFuture<T> submit(Callable<T> callable);

    /* bridge */ /* synthetic */ default Future submit(Runnable runnable, @ParametricNullness Object obj) {
        return submit(runnable, (Runnable) obj);
    }
}
