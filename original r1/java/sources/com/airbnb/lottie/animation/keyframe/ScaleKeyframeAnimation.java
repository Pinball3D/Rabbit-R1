package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.ScaleXY;
import java.util.List;

/* loaded from: classes2.dex */
public class ScaleKeyframeAnimation extends KeyframeAnimation<ScaleXY> {
    private final ScaleXY scaleXY;

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<ScaleXY>) keyframe, f);
    }

    public ScaleKeyframeAnimation(List<Keyframe<ScaleXY>> list) {
        super(list);
        this.scaleXY = new ScaleXY();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public ScaleXY getValue(Keyframe<ScaleXY> keyframe, float f) {
        ScaleXY scaleXY;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        ScaleXY scaleXY2 = keyframe.startValue;
        ScaleXY scaleXY3 = keyframe.endValue;
        if (this.valueCallback != null && (scaleXY = (ScaleXY) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), scaleXY2, scaleXY3, f, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return scaleXY;
        }
        this.scaleXY.set(MiscUtils.lerp(scaleXY2.getScaleX(), scaleXY3.getScaleX(), f), MiscUtils.lerp(scaleXY2.getScaleY(), scaleXY3.getScaleY(), f));
        return this.scaleXY;
    }
}
