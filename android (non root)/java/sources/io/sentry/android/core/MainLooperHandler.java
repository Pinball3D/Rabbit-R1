package io.sentry.android.core;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes3.dex */
final class MainLooperHandler {
    private final Handler handler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MainLooperHandler() {
        this(Looper.getMainLooper());
    }

    MainLooperHandler(Looper looper) {
        this.handler = new Handler(looper);
    }

    public void post(Runnable runnable) {
        this.handler.post(runnable);
    }

    public Thread getThread() {
        return this.handler.getLooper().getThread();
    }
}
