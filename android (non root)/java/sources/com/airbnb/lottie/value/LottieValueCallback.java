package com.airbnb.lottie.value;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;

/* loaded from: classes2.dex */
public class LottieValueCallback<T> {
    private BaseKeyframeAnimation<?, ?> animation;
    private final LottieFrameInfo<T> frameInfo;
    protected T value;

    public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
        return this.value;
    }

    public final void setAnimation(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        this.animation = baseKeyframeAnimation;
    }

    public LottieValueCallback() {
        this.frameInfo = new LottieFrameInfo<>();
        this.value = null;
    }

    public LottieValueCallback(T t) {
        this.frameInfo = new LottieFrameInfo<>();
        this.value = t;
    }

    public final void setValue(T t) {
        this.value = t;
        BaseKeyframeAnimation<?, ?> baseKeyframeAnimation = this.animation;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.notifyListeners();
        }
    }

    public final T getValueInternal(float f, float f2, T t, T t2, float f3, float f4, float f5) {
        return getValue(this.frameInfo.set(f, f2, t, t2, f3, f4, f5));
    }
}
