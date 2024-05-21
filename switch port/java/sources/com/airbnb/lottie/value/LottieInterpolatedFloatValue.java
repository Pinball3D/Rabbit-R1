package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes2.dex */
public class LottieInterpolatedFloatValue extends LottieInterpolatedValue<Float> {
    @Override // com.airbnb.lottie.value.LottieInterpolatedValue, com.airbnb.lottie.value.LottieValueCallback
    public /* bridge */ /* synthetic */ Object getValue(LottieFrameInfo lottieFrameInfo) {
        return super.getValue(lottieFrameInfo);
    }

    public LottieInterpolatedFloatValue(Float f, Float f2) {
        super(f, f2);
    }

    public LottieInterpolatedFloatValue(Float f, Float f2, Interpolator interpolator) {
        super(f, f2, interpolator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.value.LottieInterpolatedValue
    public Float interpolateValue(Float f, Float f2, float f3) {
        return Float.valueOf(MiscUtils.lerp(f.floatValue(), f2.floatValue(), f3));
    }
}
