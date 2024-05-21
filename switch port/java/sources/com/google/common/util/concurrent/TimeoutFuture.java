package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class TimeoutFuture<V> extends FluentFuture.TrustedFuture<V> {

    @CheckForNull
    private ListenableFuture<V> delegateRef;

    @CheckForNull
    private ScheduledFuture<?> timer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> ListenableFuture<V> create(ListenableFuture<V> listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        TimeoutFuture timeoutFuture = new TimeoutFuture(listenableFuture);
        Fire fire = new Fire(timeoutFuture);
        timeoutFuture.timer = scheduledExecutorService.schedule(fire, j, timeUnit);
        listenableFuture.addListener(fire, MoreExecutors.directExecutor());
        return timeoutFuture;
    }

    private TimeoutFuture(ListenableFuture<V> listenableFuture) {
        this.delegateRef = (ListenableFuture) Preconditions.checkNotNull(listenableFuture);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class Fire<V> implements Runnable {

        @CheckForNull
        TimeoutFuture<V> timeoutFutureRef;

        Fire(TimeoutFuture<V> timeoutFuture) {
            this.timeoutFutureRef = timeoutFuture;
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<? extends V> listenableFuture;
            TimeoutFuture<V> timeoutFuture = this.timeoutFutureRef;
            if (timeoutFuture == null || (listenableFuture = ((TimeoutFuture) timeoutFuture).delegateRef) == null) {
                return;
            }
            this.timeoutFutureRef = null;
            if (!listenableFuture.isDone()) {
                try {
                    ScheduledFuture scheduledFuture = ((TimeoutFuture) timeoutFuture).timer;
                    ((TimeoutFuture) timeoutFuture).timer = null;
                    String str = "Timed out";
                    if (scheduledFuture != null) {
                        try {
                            long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                            if (abs > 10) {
                                str = new StringBuilder("Timed out".length() + 66).append("Timed out (timeout delayed by ").append(abs).append(" ms after scheduled time)").toString();
                            }
                        } catch (Throwable th) {
                            timeoutFuture.setException(new TimeoutFutureException(str));
                            throw th;
                        }
                    }
                    String valueOf = String.valueOf(str);
                    String valueOf2 = String.valueOf(listenableFuture);
                    timeoutFuture.setException(new TimeoutFutureException(new StringBuilder(String.valueOf(valueOf).length() + 2 + String.valueOf(valueOf2).length()).append(valueOf).append(": ").append(valueOf2).toString()));
                    return;
                } finally {
                    listenableFuture.cancel(true);
                }
            }
            timeoutFuture.setFuture(listenableFuture);
        }
    }

    /* loaded from: classes3.dex */
    private static final class TimeoutFutureException extends TimeoutException {
        private TimeoutFutureException(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.AbstractFuture
    @CheckForNull
    public String pendingToString() {
        ListenableFuture<V> listenableFuture = this.delegateRef;
        ScheduledFuture<?> scheduledFuture = this.timer;
        if (listenableFuture == null) {
            return null;
        }
        String valueOf = String.valueOf(listenableFuture);
        String sb = new StringBuilder(String.valueOf(valueOf).length() + 14).append("inputFuture=[").append(valueOf).append("]").toString();
        if (scheduledFuture == null) {
            return sb;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return sb;
        }
        String valueOf2 = String.valueOf(sb);
        return new StringBuilder(String.valueOf(valueOf2).length() + 43).append(valueOf2).append(", remaining delay=[").append(delay).append(" ms]").toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.util.concurrent.AbstractFuture
    public void afterDone() {
        maybePropagateCancellationTo(this.delegateRef);
        ScheduledFuture<?> scheduledFuture = this.timer;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.delegateRef = null;
        this.timer = null;
    }
}
