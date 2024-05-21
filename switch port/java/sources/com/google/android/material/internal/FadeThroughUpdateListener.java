package com.google.android.material.internal;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes2.dex */
public class FadeThroughUpdateListener implements ValueAnimator.AnimatorUpdateListener {
    private final float[] alphas = new float[2];
    private final View fadeInView;
    private final View fadeOutView;

    public FadeThroughUpdateListener(View view, View view2) {
        this.fadeOutView = view;
        this.fadeInView = view2;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        FadeThroughUtils.calculateFadeOutAndInAlphas(((Float) valueAnimator.getAnimatedValue()).floatValue(), this.alphas);
        View view = this.fadeOutView;
        if (view != null) {
            view.setAlpha(this.alphas[0]);
        }
        View view2 = this.fadeInView;
        if (view2 != null) {
            view2.setAlpha(this.alphas[1]);
        }
    }
}
