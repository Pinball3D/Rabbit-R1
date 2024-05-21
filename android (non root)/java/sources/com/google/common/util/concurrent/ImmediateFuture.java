package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AbstractFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
class ImmediateFuture<V> implements ListenableFuture<V> {
    static final ListenableFuture<?> NULL = new ImmediateFuture(null);
    private static final Logger log = Logger.getLogger(ImmediateFuture.class.getName());

    @ParametricNullness
    private final V value;

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get() {
        return this.value;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmediateFuture(@ParametricNullness V v) {
        this.value = v;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = log;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            logger.log(level, new StringBuilder(String.valueOf(valueOf).length() + 57 + String.valueOf(valueOf2).length()).append("RuntimeException while executing runnable ").append(valueOf).append(" with executor ").append(valueOf2).toString(), (Throwable) e);
        }
    }

    @Override // java.util.concurrent.Future
    @ParametricNullness
    public V get(long j, TimeUnit timeUnit) throws ExecutionException {
        Preconditions.checkNotNull(timeUnit);
        return get();
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.value);
        return new StringBuilder(String.valueOf(obj).length() + 27 + String.valueOf(valueOf).length()).append(obj).append("[status=SUCCESS, result=[").append(valueOf).append("]]").toString();
    }

    /* loaded from: classes3.dex */
    static final class ImmediateFailedFuture<V> extends AbstractFuture.TrustedFuture<V> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public ImmediateFailedFuture(Throwable th) {
            setException(th);
        }
    }

    /* loaded from: classes3.dex */
    static final class ImmediateCancelledFuture<V> extends AbstractFuture.TrustedFuture<V> {
        static final ImmediateCancelledFuture<Object> INSTANCE;

        static {
            INSTANCE = AbstractFuture.GENERATE_CANCELLATION_CAUSES ? null : new ImmediateCancelledFuture<>();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ImmediateCancelledFuture() {
            cancel(false);
        }
    }
}
