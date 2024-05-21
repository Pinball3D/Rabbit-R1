package com.airbnb.lottie.parser;

import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;

/* loaded from: classes2.dex */
public class DropShadowEffect {
    private final AnimatableColorValue color;
    private final AnimatableFloatValue direction;
    private final AnimatableFloatValue distance;
    private final AnimatableFloatValue opacity;
    private final AnimatableFloatValue radius;

    public AnimatableColorValue getColor() {
        return this.color;
    }

    public AnimatableFloatValue getDirection() {
        return this.direction;
    }

    public AnimatableFloatValue getDistance() {
        return this.distance;
    }

    public AnimatableFloatValue getOpacity() {
        return this.opacity;
    }

    public AnimatableFloatValue getRadius() {
        return this.radius;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropShadowEffect(AnimatableColorValue animatableColorValue, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4) {
        this.color = animatableColorValue;
        this.opacity = animatableFloatValue;
        this.direction = animatableFloatValue2;
        this.distance = animatableFloatValue3;
        this.radius = animatableFloatValue4;
    }
}
