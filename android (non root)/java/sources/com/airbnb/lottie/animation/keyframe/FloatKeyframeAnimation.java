package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* loaded from: classes2.dex */
public class FloatKeyframeAnimation extends KeyframeAnimation<Float> {
    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<Float>) keyframe, f);
    }

    public FloatKeyframeAnimation(List<Keyframe<Float>> list) {
        super(list);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    Float getValue(Keyframe<Float> keyframe, float f) {
        return Float.valueOf(getFloatValue(keyframe, f));
    }

    float getFloatValue(Keyframe<Float> keyframe, float f) {
        Float f2;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        if (this.valueCallback != null && (f2 = (Float) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), keyframe.startValue, keyframe.endValue, f, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return f2.floatValue();
        }
        return MiscUtils.lerp(keyframe.getStartValueFloat(), keyframe.getEndValueFloat(), f);
    }

    public float getFloatValue() {
        return getFloatValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
