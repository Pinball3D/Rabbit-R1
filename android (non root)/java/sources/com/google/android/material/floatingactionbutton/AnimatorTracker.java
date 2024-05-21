package com.google.android.material.floatingactionbutton;

import android.animation.Animator;

/* loaded from: classes2.dex */
class AnimatorTracker {
    private Animator currentAnimator;

    public void clear() {
        this.currentAnimator = null;
    }

    public void onNextAnimationStart(Animator animator) {
        cancelCurrent();
        this.currentAnimator = animator;
    }

    public void cancelCurrent() {
        Animator animator = this.currentAnimator;
        if (animator != null) {
            animator.cancel();
        }
    }
}
