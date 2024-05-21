package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class TrustedListenableFutureTask<V> extends FluentFuture.TrustedFuture<V> implements RunnableFuture<V> {

    @CheckForNull
    private volatile InterruptibleTask<?> task;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> TrustedListenableFutureTask<V> create(AsyncCallable<V> asyncCallable) {
        return new TrustedListenableFutureTask<>(asyncCallable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> TrustedListenableFutureTask<V> create(Callable<V> callable) {
        return new TrustedListenableFutureTask<>(callable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> TrustedListenableFutureTask<V> create(Runnable runnable, @ParametricNullness V v) {
        return new TrustedListenableFutureTask<>(Executors.callable(runnable, v));
    }

    TrustedListenableFutureTask(Callable<V> callable) {
        this.task = new TrustedFutureInterruptibleTask(callable);
    }

    TrustedListenableFutureTask(AsyncCallable<V> asyncCallable) {
        this.task = new TrustedFutureInterruptibleAsyncTask(asyncCallable);
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask != null) {
            interruptibleTask.run();
        }
        this.task = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        InterruptibleTask<?> interruptibleTask;
        super.afterDone();
        if (wasInterrupted() && (interruptibleTask = this.task) != null) {
            interruptibleTask.interruptTask();
        }
        this.task = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        InterruptibleTask<?> interruptibleTask = this.task;
        if (interruptibleTask != null) {
            String valueOf = String.valueOf(interruptibleTask);
            return new StringBuilder(String.valueOf(valueOf).length() + 7).append("task=[").append(valueOf).append("]").toString();
        }
        return super.pendingToString();
    }

    /* loaded from: classes3.dex */
    private final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        private final Callable<V> callable;

        TrustedFutureInterruptibleTask(Callable<V> callable) {
            this.callable = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        @ParametricNullness
        V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        void afterRanInterruptiblySuccess(@ParametricNullness V v) {
            TrustedListenableFutureTask.this.set(v);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        void afterRanInterruptiblyFailure(Throwable th) {
            TrustedListenableFutureTask.this.setException(th);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        String toPendingString() {
            return this.callable.toString();
        }
    }

    /* loaded from: classes3.dex */
    private final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<ListenableFuture<V>> {
        private final AsyncCallable<V> callable;

        TrustedFutureInterruptibleAsyncTask(AsyncCallable<V> asyncCallable) {
            this.callable = (AsyncCallable) Preconditions.checkNotNull(asyncCallable);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.InterruptibleTask
        public ListenableFuture<V> runInterruptibly() throws Exception {
            return (ListenableFuture) Preconditions.checkNotNull(this.callable.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.callable);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptiblySuccess(ListenableFuture<V> listenableFuture) {
            TrustedListenableFutureTask.this.setFuture(listenableFuture);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        void afterRanInterruptiblyFailure(Throwable th) {
            TrustedListenableFutureTask.this.setException(th);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        String toPendingString() {
            return this.callable.toString();
        }
    }
}
