package com.journeyapps.barcodescanner.camera;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class CameraThread {
    private static final String TAG = "CameraThread";
    private static CameraThread instance;
    private Handler handler;
    private HandlerThread thread;
    private int openCount = 0;
    private final Object LOCK = new Object();

    public static CameraThread getInstance() {
        if (instance == null) {
            instance = new CameraThread();
        }
        return instance;
    }

    private CameraThread() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void enqueue(Runnable runnable) {
        synchronized (this.LOCK) {
            checkRunning();
            this.handler.post(runnable);
        }
    }

    protected void enqueueDelayed(Runnable runnable, long j) {
        synchronized (this.LOCK) {
            checkRunning();
            this.handler.postDelayed(runnable, j);
        }
    }

    private void checkRunning() {
        synchronized (this.LOCK) {
            if (this.handler == null) {
                if (this.openCount <= 0) {
                    throw new IllegalStateException("CameraThread is not open");
                }
                HandlerThread handlerThread = new HandlerThread(TAG);
                this.thread = handlerThread;
                handlerThread.start();
                this.handler = new Handler(this.thread.getLooper());
            }
        }
    }

    private void quit() {
        synchronized (this.LOCK) {
            this.thread.quit();
            this.thread = null;
            this.handler = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void decrementInstances() {
        synchronized (this.LOCK) {
            int i = this.openCount - 1;
            this.openCount = i;
            if (i == 0) {
                quit();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void incrementAndEnqueue(Runnable runnable) {
        synchronized (this.LOCK) {
            this.openCount++;
            enqueue(runnable);
        }
    }
}
