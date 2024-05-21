package com.google.android.material.drawable;

import android.graphics.drawable.Drawable;
import androidx.appcompat.graphics.drawable.DrawableWrapperCompat;

/* loaded from: classes2.dex */
public class ScaledDrawableWrapper extends DrawableWrapperCompat {
    private final int height;
    private final int width;

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.height;
    }

    @Override // androidx.appcompat.graphics.drawable.DrawableWrapperCompat, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.width;
    }

    public ScaledDrawableWrapper(Drawable drawable, int i, int i2) {
        super(drawable);
        this.width = i;
        this.height = i2;
    }
}
