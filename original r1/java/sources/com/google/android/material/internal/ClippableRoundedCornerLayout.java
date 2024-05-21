package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/* loaded from: classes2.dex */
public class ClippableRoundedCornerLayout extends FrameLayout {
    private float cornerRadius;
    private Path path;

    public float getCornerRadius() {
        return this.cornerRadius;
    }

    public ClippableRoundedCornerLayout(Context context) {
        super(context);
    }

    public ClippableRoundedCornerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ClippableRoundedCornerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.path == null) {
            super.dispatchDraw(canvas);
            return;
        }
        int save = canvas.save();
        canvas.clipPath(this.path);
        super.dispatchDraw(canvas);
        canvas.restoreToCount(save);
    }

    public void resetClipBoundsAndCornerRadius() {
        this.path = null;
        this.cornerRadius = 0.0f;
        invalidate();
    }

    public void updateCornerRadius(float f) {
        updateClipBoundsAndCornerRadius(getLeft(), getTop(), getRight(), getBottom(), f);
    }

    public void updateClipBoundsAndCornerRadius(Rect rect, float f) {
        updateClipBoundsAndCornerRadius(rect.left, rect.top, rect.right, rect.bottom, f);
    }

    public void updateClipBoundsAndCornerRadius(float f, float f2, float f3, float f4, float f5) {
        updateClipBoundsAndCornerRadius(new RectF(f, f2, f3, f4), f5);
    }

    public void updateClipBoundsAndCornerRadius(RectF rectF, float f) {
        if (this.path == null) {
            this.path = new Path();
        }
        this.cornerRadius = f;
        this.path.reset();
        this.path.addRoundRect(rectF, f, f, Path.Direction.CW);
        this.path.close();
        invalidate();
    }
}
