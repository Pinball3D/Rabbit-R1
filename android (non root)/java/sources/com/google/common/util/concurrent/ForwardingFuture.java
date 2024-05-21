package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.ForwardingObject;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingFuture<V> extends ForwardingObject implements Future<V> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingObject
    public abstract Future<? extends V> delegate();

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return delegate().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return delegate().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return delegate().isDone();
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get() throws InterruptedException, ExecutionException {
        return delegate().get();
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return delegate().get(j, timeUnit);
    }

    /* loaded from: classes3.dex */
    public static abstract class SimpleForwardingFuture<V> extends ForwardingFuture<V> {
        private final Future<V> delegate;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public final Future<V> delegate() {
            return this.delegate;
        }

        protected SimpleForwardingFuture(Future<V> future) {
            this.delegate = (Future) Preconditions.checkNotNull(future);
        }
    }
}
