package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.util.concurrent.AggregateFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class CombinedFuture<V> extends AggregateFuture<Object, V> {

    @CheckForNull
    private CombinedFuture<V>.CombinedFutureInterruptibleTask<?> task;

    @Override // com.google.common.util.concurrent.AggregateFuture
    void collectOneValue(int i, @CheckForNull Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CombinedFuture(ImmutableCollection<? extends ListenableFuture<?>> immutableCollection, boolean z, Executor executor, AsyncCallable<V> asyncCallable) {
        super(immutableCollection, z, false);
        this.task = new AsyncCallableInterruptibleTask(asyncCallable, executor);
        init();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CombinedFuture(ImmutableCollection<? extends ListenableFuture<?>> immutableCollection, boolean z, Executor executor, Callable<V> callable) {
        super(immutableCollection, z, false);
        this.task = new CallableInterruptibleTask(callable, executor);
        init();
    }

    @Override // com.google.common.util.concurrent.AggregateFuture
    void handleAllCompleted() {
        CombinedFuture<V>.CombinedFutureInterruptibleTask<?> combinedFutureInterruptibleTask = this.task;
        if (combinedFutureInterruptibleTask != null) {
            combinedFutureInterruptibleTask.execute();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.util.concurrent.AggregateFuture
    public void releaseResources(AggregateFuture.ReleaseResourcesReason releaseResourcesReason) {
        super.releaseResources(releaseResourcesReason);
        if (releaseResourcesReason == AggregateFuture.ReleaseResourcesReason.OUTPUT_FUTURE_DONE) {
            this.task = null;
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    protected void interruptTask() {
        CombinedFuture<V>.CombinedFutureInterruptibleTask<?> combinedFutureInterruptibleTask = this.task;
        if (combinedFutureInterruptibleTask != null) {
            combinedFutureInterruptibleTask.interruptTask();
        }
    }

    /* loaded from: classes3.dex */
    private abstract class CombinedFutureInterruptibleTask<T> extends InterruptibleTask<T> {
        private final Executor listenerExecutor;

        abstract void setValue(@ParametricNullness T t);

        CombinedFutureInterruptibleTask(Executor executor) {
            this.listenerExecutor = (Executor) Preconditions.checkNotNull(executor);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final boolean isDone() {
            return CombinedFuture.this.isDone();
        }

        final void execute() {
            try {
                this.listenerExecutor.execute(this);
            } catch (RejectedExecutionException e) {
                CombinedFuture.this.setException(e);
            }
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final void afterRanInterruptiblySuccess(@ParametricNullness T t) {
            CombinedFuture.this.task = null;
            setValue(t);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final void afterRanInterruptiblyFailure(Throwable th) {
            CombinedFuture.this.task = null;
            if (th instanceof ExecutionException) {
                CombinedFuture.this.setException(((ExecutionException) th).getCause());
            } else if (th instanceof CancellationException) {
                CombinedFuture.this.cancel(false);
            } else {
                CombinedFuture.this.setException(th);
            }
        }
    }

    /* loaded from: classes3.dex */
    private final class AsyncCallableInterruptibleTask extends CombinedFuture<V>.CombinedFutureInterruptibleTask<ListenableFuture<V>> {
        private final AsyncCallable<V> callable;

        AsyncCallableInterruptibleTask(AsyncCallable<V> asyncCallable, Executor executor) {
            super(executor);
            this.callable = (AsyncCallable) Preconditions.checkNotNull(asyncCallable);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.InterruptibleTask
        public ListenableFuture<V> runInterruptibly() throws Exception {
            return (ListenableFuture) Preconditions.checkNotNull(this.callable.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.callable);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.CombinedFuture.CombinedFutureInterruptibleTask
        public void setValue(ListenableFuture<V> listenableFuture) {
            CombinedFuture.this.setFuture(listenableFuture);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        String toPendingString() {
            return this.callable.toString();
        }
    }

    /* loaded from: classes3.dex */
    private final class CallableInterruptibleTask extends CombinedFuture<V>.CombinedFutureInterruptibleTask<V> {
        private final Callable<V> callable;

        CallableInterruptibleTask(Callable<V> callable, Executor executor) {
            super(executor);
            this.callable = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        @ParametricNullness
        V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.CombinedFuture.CombinedFutureInterruptibleTask
        void setValue(@ParametricNullness V v) {
            CombinedFuture.this.set(v);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        String toPendingString() {
            return this.callable.toString();
        }
    }
}
