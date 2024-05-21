package com.airbnb.lottie.value;

import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;

/* loaded from: classes2.dex */
abstract class LottieInterpolatedValue<T> extends LottieValueCallback<T> {
    private final T endValue;
    private final Interpolator interpolator;
    private final T startValue;

    abstract T interpolateValue(T t, T t2, float f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public LottieInterpolatedValue(T t, T t2) {
        this(t, t2, new LinearInterpolator());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LottieInterpolatedValue(T t, T t2, Interpolator interpolator) {
        this.startValue = t;
        this.endValue = t2;
        this.interpolator = interpolator;
    }

    @Override // com.airbnb.lottie.value.LottieValueCallback
    public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
        return interpolateValue(this.startValue, this.endValue, this.interpolator.getInterpolation(lottieFrameInfo.getOverallProgress()));
    }
}
