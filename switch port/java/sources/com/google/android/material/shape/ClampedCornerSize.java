package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class ClampedCornerSize implements CornerSize {
    private final float target;

    public static ClampedCornerSize createFromCornerSize(AbsoluteCornerSize absoluteCornerSize) {
        return new ClampedCornerSize(absoluteCornerSize.getCornerSize());
    }

    private static float getMaxCornerSize(RectF rectF) {
        return Math.min(rectF.width() / 2.0f, rectF.height() / 2.0f);
    }

    public ClampedCornerSize(float f) {
        this.target = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(RectF rectF) {
        return Math.min(this.target, getMaxCornerSize(rectF));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ClampedCornerSize) && this.target == ((ClampedCornerSize) obj).target;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.target)});
    }
}
