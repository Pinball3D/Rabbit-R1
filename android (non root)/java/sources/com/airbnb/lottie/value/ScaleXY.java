package com.airbnb.lottie.value;

import io.sentry.protocol.ViewHierarchyNode;

/* loaded from: classes2.dex */
public class ScaleXY {
    private float scaleX;
    private float scaleY;

    public boolean equals(float f, float f2) {
        return this.scaleX == f && this.scaleY == f2;
    }

    public float getScaleX() {
        return this.scaleX;
    }

    public float getScaleY() {
        return this.scaleY;
    }

    public void set(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public ScaleXY(float f, float f2) {
        this.scaleX = f;
        this.scaleY = f2;
    }

    public ScaleXY() {
        this(1.0f, 1.0f);
    }

    public String toString() {
        return getScaleX() + ViewHierarchyNode.JsonKeys.X + getScaleY();
    }
}
