package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.SpecialEffectsController;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DefaultSpecialEffectsController.kt */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\b"}, d2 = {"androidx/fragment/app/DefaultSpecialEffectsController$startAnimations$3", "Landroid/view/animation/Animation$AnimationListener;", "onAnimationEnd", "", "animation", "Landroid/view/animation/Animation;", "onAnimationRepeat", "onAnimationStart", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DefaultSpecialEffectsController$startAnimations$3 implements Animation.AnimationListener {
    final /* synthetic */ DefaultSpecialEffectsController.AnimationInfo $animationInfo;
    final /* synthetic */ SpecialEffectsController.Operation $operation;
    final /* synthetic */ View $viewToAnimate;
    final /* synthetic */ DefaultSpecialEffectsController this$0;

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultSpecialEffectsController$startAnimations$3(SpecialEffectsController.Operation operation, DefaultSpecialEffectsController defaultSpecialEffectsController, View view, DefaultSpecialEffectsController.AnimationInfo animationInfo) {
        this.$operation = operation;
        this.this$0 = defaultSpecialEffectsController;
        this.$viewToAnimate = view;
        this.$animationInfo = animationInfo;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animation from operation " + this.$operation + " has reached onAnimationStart.");
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        ViewGroup container = this.this$0.getContainer();
        final DefaultSpecialEffectsController defaultSpecialEffectsController = this.this$0;
        final View view = this.$viewToAnimate;
        final DefaultSpecialEffectsController.AnimationInfo animationInfo = this.$animationInfo;
        container.post(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$startAnimations$3$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DefaultSpecialEffectsController$startAnimations$3.onAnimationEnd$lambda$0(DefaultSpecialEffectsController.this, view, animationInfo);
            }
        });
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animation from operation " + this.$operation + " has ended.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onAnimationEnd$lambda$0(DefaultSpecialEffectsController this$0, View view, DefaultSpecialEffectsController.AnimationInfo animationInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animationInfo, "$animationInfo");
        this$0.getContainer().endViewTransition(view);
        animationInfo.completeSpecialEffect();
    }
}
