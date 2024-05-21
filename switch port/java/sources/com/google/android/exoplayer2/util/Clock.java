package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes2.dex */
public interface Clock {
    public static final Clock DEFAULT = new SystemClock();

    HandlerWrapper createHandler(Looper looper, Handler.Callback callback);

    long currentTimeMillis();

    long elapsedRealtime();

    void onThreadBlocked();

    long uptimeMillis();
}
