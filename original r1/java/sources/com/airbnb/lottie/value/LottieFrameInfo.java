package com.airbnb.lottie.value;

/* loaded from: classes2.dex */
public class LottieFrameInfo<T> {
    private float endFrame;
    private T endValue;
    private float interpolatedKeyframeProgress;
    private float linearKeyframeProgress;
    private float overallProgress;
    private float startFrame;
    private T startValue;

    public float getEndFrame() {
        return this.endFrame;
    }

    public T getEndValue() {
        return this.endValue;
    }

    public float getInterpolatedKeyframeProgress() {
        return this.interpolatedKeyframeProgress;
    }

    public float getLinearKeyframeProgress() {
        return this.linearKeyframeProgress;
    }

    public float getOverallProgress() {
        return this.overallProgress;
    }

    public float getStartFrame() {
        return this.startFrame;
    }

    public T getStartValue() {
        return this.startValue;
    }

    public LottieFrameInfo<T> set(float f, float f2, T t, T t2, float f3, float f4, float f5) {
        this.startFrame = f;
        this.endFrame = f2;
        this.startValue = t;
        this.endValue = t2;
        this.linearKeyframeProgress = f3;
        this.interpolatedKeyframeProgress = f4;
        this.overallProgress = f5;
        return this;
    }
}
