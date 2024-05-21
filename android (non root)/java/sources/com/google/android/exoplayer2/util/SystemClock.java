package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes2.dex */
public class SystemClock implements Clock {
    @Override // com.google.android.exoplayer2.util.Clock
    public void onThreadBlocked() {
    }

    @Override // com.google.android.exoplayer2.util.Clock
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.exoplayer2.util.Clock
    public long elapsedRealtime() {
        return android.os.SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.Clock
    public long uptimeMillis() {
        return android.os.SystemClock.uptimeMillis();
    }

    @Override // com.google.android.exoplayer2.util.Clock
    public HandlerWrapper createHandler(Looper looper, Handler.Callback callback) {
        return new SystemHandlerWrapper(new Handler(looper, callback));
    }
}
