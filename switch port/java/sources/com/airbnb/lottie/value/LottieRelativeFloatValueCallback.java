package com.airbnb.lottie.value;

import com.airbnb.lottie.utils.MiscUtils;

/* loaded from: classes2.dex */
public class LottieRelativeFloatValueCallback extends LottieValueCallback<Float> {
    public LottieRelativeFloatValueCallback() {
    }

    public LottieRelativeFloatValueCallback(Float f) {
        super(f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public Float getValue(LottieFrameInfo<Float> lottieFrameInfo) {
        return Float.valueOf(MiscUtils.lerp(lottieFrameInfo.getStartValue().floatValue(), lottieFrameInfo.getEndValue().floatValue(), lottieFrameInfo.getInterpolatedKeyframeProgress()) + getOffset(lottieFrameInfo).floatValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Float getOffset(LottieFrameInfo<Float> lottieFrameInfo) {
        if (this.value == 0) {
            throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
        }
        return (Float) this.value;
    }
}
