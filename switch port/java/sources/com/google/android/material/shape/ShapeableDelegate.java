package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import com.google.android.material.canvas.CanvasCompat;

/* loaded from: classes2.dex */
public abstract class ShapeableDelegate {
    ShapeAppearanceModel shapeAppearanceModel;
    boolean forceCompatClippingEnabled = false;
    boolean offsetZeroCornerEdgeBoundsEnabled = false;
    RectF maskBounds = new RectF();
    final Path shapePath = new Path();

    abstract void invalidateClippingMethod(View view);

    public boolean isForceCompatClippingEnabled() {
        return this.forceCompatClippingEnabled;
    }

    abstract boolean shouldUseCompatClipping();

    public static ShapeableDelegate create(View view) {
        if (Build.VERSION.SDK_INT >= 33) {
            return new ShapeableDelegateV33(view);
        }
        return new ShapeableDelegateV22(view);
    }

    public void setForceCompatClippingEnabled(View view, boolean z) {
        if (z != this.forceCompatClippingEnabled) {
            this.forceCompatClippingEnabled = z;
            invalidateClippingMethod(view);
        }
    }

    public void setOffsetZeroCornerEdgeBoundsEnabled(View view, boolean z) {
        this.offsetZeroCornerEdgeBoundsEnabled = z;
        invalidateClippingMethod(view);
    }

    public void onShapeAppearanceChanged(View view, ShapeAppearanceModel shapeAppearanceModel) {
        this.shapeAppearanceModel = shapeAppearanceModel;
        updateShapePath();
        invalidateClippingMethod(view);
    }

    public void onMaskChanged(View view, RectF rectF) {
        this.maskBounds = rectF;
        updateShapePath();
        invalidateClippingMethod(view);
    }

    private void updateShapePath() {
        if (!isMaskBoundsValid() || this.shapeAppearanceModel == null) {
            return;
        }
        ShapeAppearancePathProvider.getInstance().calculatePath(this.shapeAppearanceModel, 1.0f, this.maskBounds, this.shapePath);
    }

    private boolean isMaskBoundsValid() {
        return this.maskBounds.left <= this.maskBounds.right && this.maskBounds.top <= this.maskBounds.bottom;
    }

    public void maybeClip(Canvas canvas, CanvasCompat.CanvasOperation canvasOperation) {
        if (shouldUseCompatClipping() && !this.shapePath.isEmpty()) {
            canvas.save();
            canvas.clipPath(this.shapePath);
            canvasOperation.run(canvas);
            canvas.restore();
            return;
        }
        canvasOperation.run(canvas);
    }
}
