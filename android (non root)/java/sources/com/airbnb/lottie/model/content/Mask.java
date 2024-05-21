package com.airbnb.lottie.model.content;

import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;

/* loaded from: classes2.dex */
public class Mask {
    private final boolean inverted;
    private final MaskMode maskMode;
    private final AnimatableShapeValue maskPath;
    private final AnimatableIntegerValue opacity;

    /* loaded from: classes2.dex */
    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public MaskMode getMaskMode() {
        return this.maskMode;
    }

    public AnimatableShapeValue getMaskPath() {
        return this.maskPath;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public boolean isInverted() {
        return this.inverted;
    }

    public Mask(MaskMode maskMode, AnimatableShapeValue animatableShapeValue, AnimatableIntegerValue animatableIntegerValue, boolean z) {
        this.maskMode = maskMode;
        this.maskPath = animatableShapeValue;
        this.opacity = animatableIntegerValue;
        this.inverted = z;
    }
}
