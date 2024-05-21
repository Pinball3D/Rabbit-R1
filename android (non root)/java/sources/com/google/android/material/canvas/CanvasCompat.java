package com.google.android.material.canvas;

import android.graphics.Canvas;
import android.graphics.RectF;

/* loaded from: classes2.dex */
public class CanvasCompat {

    /* loaded from: classes2.dex */
    public interface CanvasOperation {
        void run(Canvas canvas);
    }

    private CanvasCompat() {
    }

    public static int saveLayerAlpha(Canvas canvas, RectF rectF, int i) {
        return canvas.saveLayerAlpha(rectF, i);
    }

    public static int saveLayerAlpha(Canvas canvas, float f, float f2, float f3, float f4, int i) {
        return canvas.saveLayerAlpha(f, f2, f3, f4, i);
    }
}
