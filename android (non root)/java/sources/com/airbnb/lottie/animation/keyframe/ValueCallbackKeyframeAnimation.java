package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.Collections;

/* loaded from: classes2.dex */
public class ValueCallbackKeyframeAnimation<K, A> extends BaseKeyframeAnimation<K, A> {
    private final A valueCallbackValue;

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    float getEndProgress() {
        return 1.0f;
    }

    public ValueCallbackKeyframeAnimation(LottieValueCallback<A> lottieValueCallback) {
        this(lottieValueCallback, null);
    }

    public ValueCallbackKeyframeAnimation(LottieValueCallback<A> lottieValueCallback, A a) {
        super(Collections.emptyList());
        setValueCallback(lottieValueCallback);
        this.valueCallbackValue = a;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public void setProgress(float f) {
        this.progress = f;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public void notifyListeners() {
        if (this.valueCallback != null) {
            super.notifyListeners();
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public A getValue() {
        LottieValueCallback<A> lottieValueCallback = this.valueCallback;
        A a = this.valueCallbackValue;
        return lottieValueCallback.getValueInternal(0.0f, 0.0f, a, a, getProgress(), getProgress(), getProgress());
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    A getValue(Keyframe<K> keyframe, float f) {
        return getValue();
    }
}
