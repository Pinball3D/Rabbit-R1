package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientStrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;

/* loaded from: classes2.dex */
public class GradientStroke implements ContentModel {
    private final ShapeStroke.LineCapType capType;
    private final AnimatableFloatValue dashOffset;
    private final AnimatablePointValue endPoint;
    private final AnimatableGradientColorValue gradientColor;
    private final GradientType gradientType;
    private final boolean hidden;
    private final ShapeStroke.LineJoinType joinType;
    private final List<AnimatableFloatValue> lineDashPattern;
    private final float miterLimit;
    private final String name;
    private final AnimatableIntegerValue opacity;
    private final AnimatablePointValue startPoint;
    private final AnimatableFloatValue width;

    public ShapeStroke.LineCapType getCapType() {
        return this.capType;
    }

    public AnimatableFloatValue getDashOffset() {
        return this.dashOffset;
    }

    public AnimatablePointValue getEndPoint() {
        return this.endPoint;
    }

    public AnimatableGradientColorValue getGradientColor() {
        return this.gradientColor;
    }

    public GradientType getGradientType() {
        return this.gradientType;
    }

    public ShapeStroke.LineJoinType getJoinType() {
        return this.joinType;
    }

    public List<AnimatableFloatValue> getLineDashPattern() {
        return this.lineDashPattern;
    }

    public float getMiterLimit() {
        return this.miterLimit;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public AnimatablePointValue getStartPoint() {
        return this.startPoint;
    }

    public AnimatableFloatValue getWidth() {
        return this.width;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public GradientStroke(String str, GradientType gradientType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f, List<AnimatableFloatValue> list, AnimatableFloatValue animatableFloatValue2, boolean z) {
        this.name = str;
        this.gradientType = gradientType;
        this.gradientColor = animatableGradientColorValue;
        this.opacity = animatableIntegerValue;
        this.startPoint = animatablePointValue;
        this.endPoint = animatablePointValue2;
        this.width = animatableFloatValue;
        this.capType = lineCapType;
        this.joinType = lineJoinType;
        this.miterLimit = f;
        this.lineDashPattern = list;
        this.dashOffset = animatableFloatValue2;
        this.hidden = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new GradientStrokeContent(lottieDrawable, baseLayer, this);
    }
}
