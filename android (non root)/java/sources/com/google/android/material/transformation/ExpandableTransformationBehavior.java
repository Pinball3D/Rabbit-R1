package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

@Deprecated
/* loaded from: classes2.dex */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {
    private AnimatorSet currentAnimation;

    protected abstract AnimatorSet onCreateExpandedStateChangeAnimation(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    public boolean onExpandedStateChange(View view, View view2, boolean z, boolean z2) {
        AnimatorSet animatorSet = this.currentAnimation;
        boolean z3 = animatorSet != null;
        if (z3) {
            animatorSet.cancel();
        }
        AnimatorSet onCreateExpandedStateChangeAnimation = onCreateExpandedStateChangeAnimation(view, view2, z, z3);
        this.currentAnimation = onCreateExpandedStateChangeAnimation;
        onCreateExpandedStateChangeAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.ExpandableTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExpandableTransformationBehavior.this.currentAnimation = null;
            }
        });
        this.currentAnimation.start();
        if (!z2) {
            this.currentAnimation.end();
        }
        return true;
    }
}
