package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes2.dex */
public class LottieInterpolatedIntegerValue extends LottieInterpolatedValue<Integer> {
    @Override // com.airbnb.lottie.value.LottieInterpolatedValue, com.airbnb.lottie.value.LottieValueCallback
    public /* bridge */ /* synthetic */ Object getValue(LottieFrameInfo lottieFrameInfo) {
        return super.getValue(lottieFrameInfo);
    }

    public LottieInterpolatedIntegerValue(Integer num, Integer num2) {
        super(num, num2);
    }

    public LottieInterpolatedIntegerValue(Integer num, Integer num2, Interpolator interpolator) {
        super(num, num2, interpolator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.airbnb.lottie.value.LottieInterpolatedValue
    public Integer interpolateValue(Integer num, Integer num2, float f) {
        return Integer.valueOf(MiscUtils.lerp(num.intValue(), num2.intValue(), f));
    }
}
