package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes2.dex */
class AnimatorUtils {

    /* loaded from: classes2.dex */
    interface AnimatorPauseListenerCompat {
        void onAnimationPause(Animator animator);

        void onAnimationResume(Animator animator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addPauseListener(Animator animator, AnimatorListenerAdapter animatorListenerAdapter) {
        animator.addPauseListener(animatorListenerAdapter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void pause(Animator animator) {
        animator.pause();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void resume(Animator animator) {
        animator.resume();
    }

    private AnimatorUtils() {
    }
}
