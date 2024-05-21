package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.GradientColorKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.value.Keyframe;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class AnimatableGradientColorValue extends BaseAnimatableValue<GradientColor, GradientColor> {
    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue, com.airbnb.lottie.model.animatable.AnimatableValue
    public /* bridge */ /* synthetic */ List getKeyframes() {
        return super.getKeyframes();
    }

    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue, com.airbnb.lottie.model.animatable.AnimatableValue
    public /* bridge */ /* synthetic */ boolean isStatic() {
        return super.isStatic();
    }

    @Override // com.airbnb.lottie.model.animatable.BaseAnimatableValue
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    public AnimatableGradientColorValue(List<Keyframe<GradientColor>> list) {
        super((List) ensureInterpolatableKeyframes(list));
    }

    private static List<Keyframe<GradientColor>> ensureInterpolatableKeyframes(List<Keyframe<GradientColor>> list) {
        for (int i = 0; i < list.size(); i++) {
            list.set(i, ensureInterpolatableKeyframe(list.get(i)));
        }
        return list;
    }

    private static Keyframe<GradientColor> ensureInterpolatableKeyframe(Keyframe<GradientColor> keyframe) {
        GradientColor gradientColor = keyframe.startValue;
        GradientColor gradientColor2 = keyframe.endValue;
        if (gradientColor == null || gradientColor2 == null || gradientColor.getPositions().length == gradientColor2.getPositions().length) {
            return keyframe;
        }
        float[] mergePositions = mergePositions(gradientColor.getPositions(), gradientColor2.getPositions());
        return keyframe.copyWith(gradientColor.copyWithPositions(mergePositions), gradientColor2.copyWithPositions(mergePositions));
    }

    static float[] mergePositions(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f = Float.NaN;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            float f2 = fArr3[i2];
            if (f2 != f) {
                fArr3[i] = f2;
                i++;
                f = fArr3[i2];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i);
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<GradientColor, GradientColor> createAnimation() {
        return new GradientColorKeyframeAnimation(this.keyframes);
    }
}
