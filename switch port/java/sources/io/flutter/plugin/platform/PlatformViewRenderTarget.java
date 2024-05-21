package io.flutter.plugin.platform;

import android.graphics.Canvas;
import android.view.Surface;

/* loaded from: classes3.dex */
public interface PlatformViewRenderTarget {
    int getHeight();

    long getId();

    Surface getSurface();

    int getWidth();

    boolean isReleased();

    Canvas lockHardwareCanvas();

    void release();

    void resize(int i, int i2);

    void unlockCanvasAndPost(Canvas canvas);
}
