package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* loaded from: classes2.dex */
public class ColorKeyframeAnimation extends KeyframeAnimation<Integer> {
    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<Integer>) keyframe, f);
    }

    public ColorKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    Integer getValue(Keyframe<Integer> keyframe, float f) {
        return Integer.valueOf(getIntValue(keyframe, f));
    }

    public int getIntValue(Keyframe<Integer> keyframe, float f) {
        Integer num;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.valueCallback != null && keyframe.endFrame != null && (num = (Integer) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), keyframe.startValue, keyframe.endValue, f, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return num.intValue();
        }
        return GammaEvaluator.evaluate(MiscUtils.clamp(f, 0.0f, 1.0f), keyframe.startValue.intValue(), keyframe.endValue.intValue());
    }

    public int getIntValue() {
        return getIntValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
