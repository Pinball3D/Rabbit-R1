package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.JdkFutureAdapters;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class JdkFutureAdapters {
    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future) {
        if (future instanceof ListenableFuture) {
            return (ListenableFuture) future;
        }
        return new ListenableFutureAdapter(future);
    }

    public static <V> ListenableFuture<V> listenInPoolThread(Future<V> future, Executor executor) {
        Preconditions.checkNotNull(executor);
        if (future instanceof ListenableFuture) {
            return (ListenableFuture) future;
        }
        return new ListenableFutureAdapter(future, executor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ListenableFutureAdapter<V> extends ForwardingFuture<V> implements ListenableFuture<V> {
        private static final Executor defaultAdapterExecutor;
        private static final ThreadFactory threadFactory;
        private final Executor adapterExecutor;
        private final Future<V> delegate;
        private final ExecutionList executionList;
        private final AtomicBoolean hasListeners;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.util.concurrent.ForwardingFuture, com.google.common.collect.ForwardingObject
        public Future<V> delegate() {
            return this.delegate;
        }

        static {
            ThreadFactory build = new ThreadFactoryBuilder().setDaemon(true).setNameFormat("ListenableFutureAdapter-thread-%d").build();
            threadFactory = build;
            defaultAdapterExecutor = Executors.newCachedThreadPool(build);
        }

        ListenableFutureAdapter(Future<V> future) {
            this(future, defaultAdapterExecutor);
        }

        ListenableFutureAdapter(Future<V> future, Executor executor) {
            this.executionList = new ExecutionList();
            this.hasListeners = new AtomicBoolean(false);
            this.delegate = (Future) Preconditions.checkNotNull(future);
            this.adapterExecutor = (Executor) Preconditions.checkNotNull(executor);
        }

        @Override // com.google.common.util.concurrent.ListenableFuture
        public void addListener(Runnable runnable, Executor executor) {
            this.executionList.add(runnable, executor);
            if (this.hasListeners.compareAndSet(false, true)) {
                if (this.delegate.isDone()) {
                    this.executionList.execute();
                } else {
                    this.adapterExecutor.execute(new Runnable() { // from class: com.google.common.util.concurrent.JdkFutureAdapters$ListenableFutureAdapter$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            JdkFutureAdapters.ListenableFutureAdapter.this.m5581x6e801c7a();
                        }
                    });
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$addListener$0$com-google-common-util-concurrent-JdkFutureAdapters$ListenableFutureAdapter, reason: not valid java name */
        public /* synthetic */ void m5581x6e801c7a() {
            try {
                Uninterruptibles.getUninterruptibly(this.delegate);
            } catch (Throwable unused) {
            }
            this.executionList.execute();
        }
    }

    private JdkFutureAdapters() {
    }
}
