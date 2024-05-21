package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* loaded from: classes2.dex */
public class GradientColorKeyframeAnimation extends KeyframeAnimation<GradientColor> {
    private final GradientColor gradientColor;

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<GradientColor>) keyframe, f);
    }

    public GradientColorKeyframeAnimation(List<Keyframe<GradientColor>> list) {
        super(list);
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            GradientColor gradientColor = list.get(i2).startValue;
            if (gradientColor != null) {
                i = Math.max(i, gradientColor.getSize());
            }
        }
        this.gradientColor = new GradientColor(new float[i], new int[i]);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    GradientColor getValue(Keyframe<GradientColor> keyframe, float f) {
        this.gradientColor.lerp(keyframe.startValue, keyframe.endValue, f);
        return this.gradientColor;
    }
}
