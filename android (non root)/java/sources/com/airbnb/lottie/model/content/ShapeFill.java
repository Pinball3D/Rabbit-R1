package com.airbnb.lottie.model.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;

/* loaded from: classes2.dex */
public class ShapeFill implements ContentModel {
    private final AnimatableColorValue color;
    private final boolean fillEnabled;
    private final Path.FillType fillType;
    private final boolean hidden;
    private final String name;
    private final AnimatableIntegerValue opacity;

    public AnimatableColorValue getColor() {
        return this.color;
    }

    public Path.FillType getFillType() {
        return this.fillType;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public ShapeFill(String str, boolean z, Path.FillType fillType, AnimatableColorValue animatableColorValue, AnimatableIntegerValue animatableIntegerValue, boolean z2) {
        this.name = str;
        this.fillEnabled = z;
        this.fillType = fillType;
        this.color = animatableColorValue;
        this.opacity = animatableIntegerValue;
        this.hidden = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.fillEnabled + '}';
    }
}
