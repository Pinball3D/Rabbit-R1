package com.google.android.material.progressindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;

/* loaded from: classes2.dex */
abstract class DrawingDelegate<S extends BaseProgressIndicatorSpec> {
    protected DrawableWithAnimatedVisibilityChange drawable;
    S spec;

    abstract void adjustCanvas(Canvas canvas, Rect rect, float f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void fillIndicator(Canvas canvas, Paint paint, float f, float f2, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void fillTrack(Canvas canvas, Paint paint);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getPreferredHeight();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getPreferredWidth();

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerDrawable(DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange) {
        this.drawable = drawableWithAnimatedVisibilityChange;
    }

    public DrawingDelegate(S s) {
        this.spec = s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void validateSpecAndAdjustCanvas(Canvas canvas, Rect rect, float f) {
        this.spec.validateSpec();
        adjustCanvas(canvas, rect, f);
    }
}
