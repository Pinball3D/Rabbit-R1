package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes3.dex */
public interface ISentryExecutorService {
    void close(long j);

    boolean isClosed();

    Future<?> schedule(Runnable runnable, long j) throws RejectedExecutionException;

    Future<?> submit(Runnable runnable) throws RejectedExecutionException;

    <T> Future<T> submit(Callable<T> callable) throws RejectedExecutionException;
}
