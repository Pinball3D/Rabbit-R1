package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes2.dex */
public class LottieInterpolatedPointValue extends LottieInterpolatedValue<PointF> {
    private final PointF point;

    @Override // com.airbnb.lottie.value.LottieInterpolatedValue, com.airbnb.lottie.value.LottieValueCallback
    public /* bridge */ /* synthetic */ Object getValue(LottieFrameInfo lottieFrameInfo) {
        return super.getValue(lottieFrameInfo);
    }

    public LottieInterpolatedPointValue(PointF pointF, PointF pointF2) {
        super(pointF, pointF2);
        this.point = new PointF();
    }

    public LottieInterpolatedPointValue(PointF pointF, PointF pointF2, Interpolator interpolator) {
        super(pointF, pointF2, interpolator);
        this.point = new PointF();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.value.LottieInterpolatedValue
    public PointF interpolateValue(PointF pointF, PointF pointF2, float f) {
        this.point.set(MiscUtils.lerp(pointF.x, pointF2.x, f), MiscUtils.lerp(pointF.y, pointF2.y, f));
        return this.point;
    }
}
