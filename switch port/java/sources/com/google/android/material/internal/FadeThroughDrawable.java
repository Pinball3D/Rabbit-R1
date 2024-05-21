package com.google.android.material.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* loaded from: classes2.dex */
public class FadeThroughDrawable extends Drawable {
    private final float[] alphas;
    private final Drawable fadeInDrawable;
    private final Drawable fadeOutDrawable;
    private float progress;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public FadeThroughDrawable(Drawable drawable, Drawable drawable2) {
        this.fadeOutDrawable = drawable.getConstantState().newDrawable().mutate();
        Drawable mutate = drawable2.getConstantState().newDrawable().mutate();
        this.fadeInDrawable = mutate;
        mutate.setAlpha(0);
        this.alphas = new float[2];
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.fadeOutDrawable.draw(canvas);
        this.fadeInDrawable.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i, int i2, int i3, int i4) {
        super.setBounds(i, i2, i3, i4);
        this.fadeOutDrawable.setBounds(i, i2, i3, i4);
        this.fadeInDrawable.setBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.fadeOutDrawable.getIntrinsicWidth(), this.fadeInDrawable.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.fadeOutDrawable.getIntrinsicHeight(), this.fadeInDrawable.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return Math.max(this.fadeOutDrawable.getMinimumWidth(), this.fadeInDrawable.getMinimumWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return Math.max(this.fadeOutDrawable.getMinimumHeight(), this.fadeInDrawable.getMinimumHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.progress <= 0.5f) {
            this.fadeOutDrawable.setAlpha(i);
            this.fadeInDrawable.setAlpha(0);
        } else {
            this.fadeOutDrawable.setAlpha(0);
            this.fadeInDrawable.setAlpha(i);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.fadeOutDrawable.setColorFilter(colorFilter);
        this.fadeInDrawable.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.fadeOutDrawable.isStateful() || this.fadeInDrawable.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.fadeOutDrawable.setState(iArr) || this.fadeInDrawable.setState(iArr);
    }

    public void setProgress(float f) {
        if (this.progress != f) {
            this.progress = f;
            FadeThroughUtils.calculateFadeOutAndInAlphas(f, this.alphas);
            this.fadeOutDrawable.setAlpha((int) (this.alphas[0] * 255.0f));
            this.fadeInDrawable.setAlpha((int) (this.alphas[1] * 255.0f));
            invalidateSelf();
        }
    }
}
