package androidx.media3.common.util;

import java.lang.Exception;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public abstract class RunnableFutureTask<R, E extends Exception> implements RunnableFuture<R> {
    private boolean canceled;
    private Exception exception;
    private R result;
    private Thread workThread;
    private final ConditionVariable started = new ConditionVariable();
    private final ConditionVariable finished = new ConditionVariable();
    private final Object cancelLock = new Object();

    protected void cancelWork() {
    }

    protected abstract R doWork() throws Exception;

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.canceled;
    }

    public final void blockUntilStarted() {
        this.started.blockUninterruptible();
    }

    public final void blockUntilFinished() {
        this.finished.blockUninterruptible();
    }

    @Override // java.util.concurrent.Future
    public final R get() throws ExecutionException, InterruptedException {
        this.finished.block();
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public final R get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (!this.finished.block(TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            throw new TimeoutException();
        }
        return getResult();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this.cancelLock) {
            if (!this.canceled && !this.finished.isOpen()) {
                this.canceled = true;
                cancelWork();
                Thread thread = this.workThread;
                if (thread == null) {
                    this.started.open();
                    this.finished.open();
                } else if (z) {
                    thread.interrupt();
                }
                return true;
            }
            return false;
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.finished.isOpen();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.cancelLock) {
            if (this.canceled) {
                return;
            }
            this.workThread = Thread.currentThread();
            this.started.open();
            try {
                try {
                    this.result = doWork();
                    synchronized (this.cancelLock) {
                        this.finished.open();
                        this.workThread = null;
                        Thread.interrupted();
                    }
                } catch (Exception e) {
                    this.exception = e;
                    synchronized (this.cancelLock) {
                        this.finished.open();
                        this.workThread = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th) {
                synchronized (this.cancelLock) {
                    this.finished.open();
                    this.workThread = null;
                    Thread.interrupted();
                    throw th;
                }
            }
        }
    }

    private R getResult() throws ExecutionException {
        if (this.canceled) {
            throw new CancellationException();
        }
        if (this.exception == null) {
            return this.result;
        }
        throw new ExecutionException(this.exception);
    }
}
