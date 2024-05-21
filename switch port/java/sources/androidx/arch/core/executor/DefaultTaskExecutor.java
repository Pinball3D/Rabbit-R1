package androidx.arch.core.executor;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class DefaultTaskExecutor extends TaskExecutor {
    private volatile Handler mMainHandler;
    private final Object mLock = new Object();
    private final ExecutorService mDiskIO = Executors.newFixedThreadPool(4, new ThreadFactory() { // from class: androidx.arch.core.executor.DefaultTaskExecutor.1
        private static final String THREAD_NAME_STEM = "arch_disk_io_";
        private final AtomicInteger mThreadId = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(THREAD_NAME_STEM + this.mThreadId.getAndIncrement());
            return thread;
        }
    });

    @Override // androidx.arch.core.executor.TaskExecutor
    public void executeOnDiskIO(Runnable runnable) {
        this.mDiskIO.execute(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public void postToMainThread(Runnable runnable) {
        if (this.mMainHandler == null) {
            synchronized (this.mLock) {
                if (this.mMainHandler == null) {
                    this.mMainHandler = createAsync(Looper.getMainLooper());
                }
            }
        }
        this.mMainHandler.post(runnable);
    }

    @Override // androidx.arch.core.executor.TaskExecutor
    public boolean isMainThread() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    private static Handler createAsync(Looper looper) {
        return Api28Impl.createAsync(looper);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        public static Handler createAsync(Looper looper) {
            return Handler.createAsync(looper);
        }
    }
}
