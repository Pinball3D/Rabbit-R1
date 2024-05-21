package com.google.android.material.progressindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.Property;
import android.view.animation.Interpolator;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class LinearIndeterminateDisjointAnimatorDelegate extends IndeterminateAnimatorDelegate<ObjectAnimator> {
    private static final int TOTAL_DURATION_IN_MS = 1800;
    private float animationFraction;
    private ObjectAnimator animator;
    Animatable2Compat.AnimationCallback animatorCompleteCallback;
    private final BaseProgressIndicatorSpec baseSpec;
    private ObjectAnimator completeEndAnimator;
    private boolean dirtyColors;
    private int indicatorColorIndex;
    private final Interpolator[] interpolatorArray;
    private static final int[] DURATION_TO_MOVE_SEGMENT_ENDS = {533, 567, 850, 750};
    private static final int[] DELAY_TO_MOVE_SEGMENT_ENDS = {1267, 1000, 333, 0};
    private static final Property<LinearIndeterminateDisjointAnimatorDelegate, Float> ANIMATION_FRACTION = new Property<LinearIndeterminateDisjointAnimatorDelegate, Float>(Float.class, "animationFraction") { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.3
        @Override // android.util.Property
        public Float get(LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate) {
            return Float.valueOf(linearIndeterminateDisjointAnimatorDelegate.getAnimationFraction());
        }

        @Override // android.util.Property
        public void set(LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate, Float f) {
            linearIndeterminateDisjointAnimatorDelegate.setAnimationFraction(f.floatValue());
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public float getAnimationFraction() {
        return this.animationFraction;
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public void registerAnimatorsCompleteCallback(Animatable2Compat.AnimationCallback animationCallback) {
        this.animatorCompleteCallback = animationCallback;
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public void unregisterAnimatorsCompleteCallback() {
        this.animatorCompleteCallback = null;
    }

    public LinearIndeterminateDisjointAnimatorDelegate(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        super(2);
        this.indicatorColorIndex = 0;
        this.animatorCompleteCallback = null;
        this.baseSpec = linearProgressIndicatorSpec;
        this.interpolatorArray = new Interpolator[]{AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line1_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line1_tail_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line2_head_interpolator), AnimationUtilsCompat.loadInterpolator(context, R.anim.linear_indeterminate_line2_tail_interpolator)};
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public void startAnimator() {
        maybeInitializeAnimators();
        resetPropertiesForNewStart();
        this.animator.start();
    }

    private void maybeInitializeAnimators() {
        if (this.animator == null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, ANIMATION_FRACTION, 0.0f, 1.0f);
            this.animator = ofFloat;
            ofFloat.setDuration(1800L);
            this.animator.setInterpolator(null);
            this.animator.setRepeatCount(-1);
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    super.onAnimationRepeat(animator);
                    LinearIndeterminateDisjointAnimatorDelegate linearIndeterminateDisjointAnimatorDelegate = LinearIndeterminateDisjointAnimatorDelegate.this;
                    linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex = (linearIndeterminateDisjointAnimatorDelegate.indicatorColorIndex + 1) % LinearIndeterminateDisjointAnimatorDelegate.this.baseSpec.indicatorColors.length;
                    LinearIndeterminateDisjointAnimatorDelegate.this.dirtyColors = true;
                }
            });
        }
        if (this.completeEndAnimator == null) {
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, ANIMATION_FRACTION, 1.0f);
            this.completeEndAnimator = ofFloat2;
            ofFloat2.setDuration(1800L);
            this.completeEndAnimator.setInterpolator(null);
            this.completeEndAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.progressindicator.LinearIndeterminateDisjointAnimatorDelegate.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    LinearIndeterminateDisjointAnimatorDelegate.this.cancelAnimatorImmediately();
                    if (LinearIndeterminateDisjointAnimatorDelegate.this.animatorCompleteCallback != null) {
                        LinearIndeterminateDisjointAnimatorDelegate.this.animatorCompleteCallback.onAnimationEnd(LinearIndeterminateDisjointAnimatorDelegate.this.drawable);
                    }
                }
            });
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public void cancelAnimatorImmediately() {
        ObjectAnimator objectAnimator = this.animator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public void requestCancelAnimatorAfterCurrentCycle() {
        ObjectAnimator objectAnimator = this.completeEndAnimator;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        cancelAnimatorImmediately();
        if (this.drawable.isVisible()) {
            this.completeEndAnimator.setFloatValues(this.animationFraction, 1.0f);
            this.completeEndAnimator.setDuration((1.0f - this.animationFraction) * 1800.0f);
            this.completeEndAnimator.start();
        }
    }

    @Override // com.google.android.material.progressindicator.IndeterminateAnimatorDelegate
    public void invalidateSpecValues() {
        resetPropertiesForNewStart();
    }

    private void updateSegmentPositions(int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            this.segmentPositions[i2] = Math.max(0.0f, Math.min(1.0f, this.interpolatorArray[i2].getInterpolation(getFractionInRange(i, DELAY_TO_MOVE_SEGMENT_ENDS[i2], DURATION_TO_MOVE_SEGMENT_ENDS[i2]))));
        }
    }

    private void maybeUpdateSegmentColors() {
        if (this.dirtyColors) {
            Arrays.fill(this.segmentColors, MaterialColors.compositeARGBWithAlpha(this.baseSpec.indicatorColors[this.indicatorColorIndex], this.drawable.getAlpha()));
            this.dirtyColors = false;
        }
    }

    void resetPropertiesForNewStart() {
        this.indicatorColorIndex = 0;
        int compositeARGBWithAlpha = MaterialColors.compositeARGBWithAlpha(this.baseSpec.indicatorColors[0], this.drawable.getAlpha());
        this.segmentColors[0] = compositeARGBWithAlpha;
        this.segmentColors[1] = compositeARGBWithAlpha;
    }

    void setAnimationFraction(float f) {
        this.animationFraction = f;
        updateSegmentPositions((int) (f * 1800.0f));
        maybeUpdateSegmentColors();
        this.drawable.invalidateSelf();
    }
}
