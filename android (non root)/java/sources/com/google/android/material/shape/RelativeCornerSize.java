package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class RelativeCornerSize implements CornerSize {
    private final float percent;

    public float getRelativePercent() {
        return this.percent;
    }

    public static RelativeCornerSize createFromCornerSize(RectF rectF, CornerSize cornerSize) {
        if (cornerSize instanceof RelativeCornerSize) {
            return (RelativeCornerSize) cornerSize;
        }
        return new RelativeCornerSize(cornerSize.getCornerSize(rectF) / getMaxCornerSize(rectF));
    }

    private static float getMaxCornerSize(RectF rectF) {
        return Math.min(rectF.width(), rectF.height());
    }

    public RelativeCornerSize(float f) {
        this.percent = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public float getCornerSize(RectF rectF) {
        return this.percent * getMaxCornerSize(rectF);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof RelativeCornerSize) && this.percent == ((RelativeCornerSize) obj).percent;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.percent)});
    }
}
