package tech.rabbit.r1launcher.components.wifiutils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public class WeakHandler {
    private final Handler.Callback mCallback;
    private final ExecHandler mExec;
    private Lock mLock;
    final ChainedRef mRunnables;

    public WeakHandler() {
        this.mLock = new ReentrantLock();
        this.mRunnables = new ChainedRef(this.mLock, null);
        this.mCallback = null;
        this.mExec = new ExecHandler();
    }

    public WeakHandler(Handler.Callback callback) {
        this.mLock = new ReentrantLock();
        this.mRunnables = new ChainedRef(this.mLock, null);
        this.mCallback = callback;
        this.mExec = new ExecHandler((WeakReference<Handler.Callback>) new WeakReference(callback));
    }

    public WeakHandler(Looper looper) {
        this.mLock = new ReentrantLock();
        this.mRunnables = new ChainedRef(this.mLock, null);
        this.mCallback = null;
        this.mExec = new ExecHandler(looper);
    }

    public WeakHandler(Looper looper, Handler.Callback callback) {
        this.mLock = new ReentrantLock();
        this.mRunnables = new ChainedRef(this.mLock, null);
        this.mCallback = callback;
        this.mExec = new ExecHandler(looper, new WeakReference(callback));
    }

    public final boolean post(Runnable runnable) {
        return this.mExec.post(wrapRunnable(runnable));
    }

    public final boolean postAtTime(Runnable runnable, long j) {
        return this.mExec.postAtTime(wrapRunnable(runnable), j);
    }

    public final boolean postAtTime(Runnable runnable, Object obj, long j) {
        return this.mExec.postAtTime(wrapRunnable(runnable), obj, j);
    }

    public final boolean postDelayed(Runnable runnable, long j) {
        return this.mExec.postDelayed(wrapRunnable(runnable), j);
    }

    public final boolean postAtFrontOfQueue(Runnable runnable) {
        return this.mExec.postAtFrontOfQueue(wrapRunnable(runnable));
    }

    public final void removeCallbacks(Runnable runnable) {
        WeakRunnable remove = this.mRunnables.remove(runnable);
        if (remove != null) {
            this.mExec.removeCallbacks(remove);
        }
    }

    public final void removeCallbacks(Runnable runnable, Object obj) {
        WeakRunnable remove = this.mRunnables.remove(runnable);
        if (remove != null) {
            this.mExec.removeCallbacks(remove, obj);
        }
    }

    public final boolean sendMessage(Message message) {
        return this.mExec.sendMessage(message);
    }

    public final boolean sendEmptyMessage(int i) {
        return this.mExec.sendEmptyMessage(i);
    }

    public final boolean sendEmptyMessageDelayed(int i, long j) {
        return this.mExec.sendEmptyMessageDelayed(i, j);
    }

    public final boolean sendEmptyMessageAtTime(int i, long j) {
        return this.mExec.sendEmptyMessageAtTime(i, j);
    }

    public final boolean sendMessageDelayed(Message message, long j) {
        return this.mExec.sendMessageDelayed(message, j);
    }

    public boolean sendMessageAtTime(Message message, long j) {
        return this.mExec.sendMessageAtTime(message, j);
    }

    public final boolean sendMessageAtFrontOfQueue(Message message) {
        return this.mExec.sendMessageAtFrontOfQueue(message);
    }

    public final void removeMessages(int i) {
        this.mExec.removeMessages(i);
    }

    public final void removeMessages(int i, Object obj) {
        this.mExec.removeMessages(i, obj);
    }

    public final void removeCallbacksAndMessages(Object obj) {
        this.mExec.removeCallbacksAndMessages(obj);
    }

    public final boolean hasMessages(int i) {
        return this.mExec.hasMessages(i);
    }

    public final boolean hasMessages(int i, Object obj) {
        return this.mExec.hasMessages(i, obj);
    }

    public final Looper getLooper() {
        return this.mExec.getLooper();
    }

    private WeakRunnable wrapRunnable(Runnable runnable) {
        if (runnable == null) {
            throw new NullPointerException("Runnable can't be null");
        }
        ChainedRef chainedRef = new ChainedRef(this.mLock, runnable);
        this.mRunnables.insertAfter(chainedRef);
        return chainedRef.wrapper;
    }

    /* loaded from: classes3.dex */
    private static class ExecHandler extends Handler {
        private final WeakReference<Handler.Callback> mCallback;

        ExecHandler() {
            this.mCallback = null;
        }

        ExecHandler(WeakReference<Handler.Callback> weakReference) {
            this.mCallback = weakReference;
        }

        ExecHandler(Looper looper) {
            super(looper);
            this.mCallback = null;
        }

        ExecHandler(Looper looper, WeakReference<Handler.Callback> weakReference) {
            super(looper);
            this.mCallback = weakReference;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Handler.Callback callback;
            WeakReference<Handler.Callback> weakReference = this.mCallback;
            if (weakReference == null || (callback = weakReference.get()) == null) {
                return;
            }
            callback.handleMessage(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class WeakRunnable implements Runnable {
        private final WeakReference<Runnable> mDelegate;
        private final WeakReference<ChainedRef> mReference;

        WeakRunnable(WeakReference<Runnable> weakReference, WeakReference<ChainedRef> weakReference2) {
            this.mDelegate = weakReference;
            this.mReference = weakReference2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = this.mDelegate.get();
            ChainedRef chainedRef = this.mReference.get();
            if (chainedRef != null) {
                chainedRef.remove();
            }
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ChainedRef {
        Lock lock;
        ChainedRef next;
        ChainedRef prev;
        final Runnable runnable;
        final WeakRunnable wrapper;

        public ChainedRef(Lock lock, Runnable runnable) {
            this.runnable = runnable;
            this.lock = lock;
            this.wrapper = new WeakRunnable(new WeakReference(runnable), new WeakReference(this));
        }

        public WeakRunnable remove() {
            this.lock.lock();
            try {
                ChainedRef chainedRef = this.prev;
                if (chainedRef != null) {
                    chainedRef.next = this.next;
                }
                ChainedRef chainedRef2 = this.next;
                if (chainedRef2 != null) {
                    chainedRef2.prev = chainedRef;
                }
                this.prev = null;
                this.next = null;
                this.lock.unlock();
                return this.wrapper;
            } catch (Throwable th) {
                this.lock.unlock();
                throw th;
            }
        }

        public void insertAfter(ChainedRef chainedRef) {
            this.lock.lock();
            try {
                ChainedRef chainedRef2 = this.next;
                if (chainedRef2 != null) {
                    chainedRef2.prev = chainedRef;
                }
                chainedRef.next = chainedRef2;
                this.next = chainedRef;
                chainedRef.prev = this;
            } finally {
                this.lock.unlock();
            }
        }

        public WeakRunnable remove(Runnable runnable) {
            this.lock.lock();
            try {
                for (ChainedRef chainedRef = this.next; chainedRef != null; chainedRef = chainedRef.next) {
                    if (chainedRef.runnable == runnable) {
                        return chainedRef.remove();
                    }
                }
                this.lock.unlock();
                return null;
            } finally {
                this.lock.unlock();
            }
        }
    }
}
