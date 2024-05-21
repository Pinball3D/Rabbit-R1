package androidx.work.impl.utils;

import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class SerialExecutorImpl implements SerialExecutor {
    private Runnable mActive;
    private final Executor mExecutor;
    private final ArrayDeque<Task> mTasks = new ArrayDeque<>();
    final Object mLock = new Object();

    public Executor getDelegatedExecutor() {
        return this.mExecutor;
    }

    public SerialExecutorImpl(Executor executor) {
        this.mExecutor = executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        synchronized (this.mLock) {
            this.mTasks.add(new Task(this, command));
            if (this.mActive == null) {
                scheduleNext();
            }
        }
    }

    void scheduleNext() {
        Task poll = this.mTasks.poll();
        this.mActive = poll;
        if (poll != null) {
            this.mExecutor.execute(poll);
        }
    }

    @Override // androidx.work.impl.utils.taskexecutor.SerialExecutor
    public boolean hasPendingTasks() {
        boolean z;
        synchronized (this.mLock) {
            z = !this.mTasks.isEmpty();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Task implements Runnable {
        final Runnable mRunnable;
        final SerialExecutorImpl mSerialExecutor;

        Task(SerialExecutorImpl serialExecutor, Runnable runnable) {
            this.mSerialExecutor = serialExecutor;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mRunnable.run();
                synchronized (this.mSerialExecutor.mLock) {
                    this.mSerialExecutor.scheduleNext();
                }
            } catch (Throwable th) {
                synchronized (this.mSerialExecutor.mLock) {
                    this.mSerialExecutor.scheduleNext();
                    throw th;
                }
            }
        }
    }
}
