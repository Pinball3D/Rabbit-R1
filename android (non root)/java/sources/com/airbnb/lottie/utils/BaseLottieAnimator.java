package com.airbnb.lottie.utils;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
public abstract class BaseLottieAnimator extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> updateListeners = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> listeners = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorPauseListener> pauseListeners = new CopyOnWriteArraySet();

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setStartDelay(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    @Override // android.animation.ValueAnimator
    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.updateListeners.add(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.updateListeners.remove(animatorUpdateListener);
    }

    @Override // android.animation.ValueAnimator
    public void removeAllUpdateListeners() {
        this.updateListeners.clear();
    }

    @Override // android.animation.Animator
    public void addListener(Animator.AnimatorListener animatorListener) {
        this.listeners.add(animatorListener);
    }

    @Override // android.animation.Animator
    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.listeners.remove(animatorListener);
    }

    @Override // android.animation.Animator
    public void removeAllListeners() {
        this.listeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyStart(boolean z) {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationStart(this, z);
        }
    }

    @Override // android.animation.Animator
    public void addPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.pauseListeners.add(animatorPauseListener);
    }

    @Override // android.animation.Animator
    public void removePauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.pauseListeners.remove(animatorPauseListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyRepeat() {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationRepeat(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyEnd(boolean z) {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationEnd(this, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyCancel() {
        Iterator<Animator.AnimatorListener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationCancel(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyUpdate() {
        Iterator<ValueAnimator.AnimatorUpdateListener> it = this.updateListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationUpdate(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyPause() {
        Iterator<Animator.AnimatorPauseListener> it = this.pauseListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationPause(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyResume() {
        Iterator<Animator.AnimatorPauseListener> it = this.pauseListeners.iterator();
        while (it.hasNext()) {
            it.next().onAnimationResume(this);
        }
    }
}
