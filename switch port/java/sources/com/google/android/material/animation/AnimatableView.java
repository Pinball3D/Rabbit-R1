package com.google.android.material.animation;

/* loaded from: classes2.dex */
public interface AnimatableView {

    /* loaded from: classes2.dex */
    public interface Listener {
        void onAnimationEnd();
    }

    void startAnimation(Listener listener);

    void stopAnimation();
}
