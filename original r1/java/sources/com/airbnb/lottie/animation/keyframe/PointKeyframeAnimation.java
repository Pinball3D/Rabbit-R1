package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;

/* loaded from: classes2.dex */
public class PointKeyframeAnimation extends KeyframeAnimation<PointF> {
    private final PointF point;

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<PointF>) keyframe, f);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    protected /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f, float f2, float f3) {
        return getValue((Keyframe<PointF>) keyframe, f, f2, f3);
    }

    public PointKeyframeAnimation(List<Keyframe<PointF>> list) {
        super(list);
        this.point = new PointF();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public PointF getValue(Keyframe<PointF> keyframe, float f) {
        return getValue(keyframe, f, f, f);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    protected PointF getValue(Keyframe<PointF> keyframe, float f, float f2, float f3) {
        PointF pointF;
        if (keyframe.startValue == null || keyframe.endValue == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        PointF pointF2 = keyframe.startValue;
        PointF pointF3 = keyframe.endValue;
        if (this.valueCallback != null && (pointF = (PointF) this.valueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), pointF2, pointF3, f, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
            return pointF;
        }
        this.point.set(pointF2.x + (f2 * (pointF3.x - pointF2.x)), pointF2.y + (f3 * (pointF3.y - pointF2.y)));
        return this.point;
    }
}
