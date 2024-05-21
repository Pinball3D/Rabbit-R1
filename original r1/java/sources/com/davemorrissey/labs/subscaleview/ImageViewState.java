package com.davemorrissey.labs.subscaleview;

import android.graphics.PointF;
import java.io.Serializable;

/* loaded from: classes2.dex */
public class ImageViewState implements Serializable {
    private final float centerX;
    private final float centerY;
    private final int orientation;
    private final float scale;

    public int getOrientation() {
        return this.orientation;
    }

    public float getScale() {
        return this.scale;
    }

    public ImageViewState(float f, PointF pointF, int i) {
        this.scale = f;
        this.centerX = pointF.x;
        this.centerY = pointF.y;
        this.orientation = i;
    }

    public PointF getCenter() {
        return new PointF(this.centerX, this.centerY);
    }
}
