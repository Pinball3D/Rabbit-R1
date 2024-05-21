package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentInitStepFinalGuideAnimationBinding implements ViewBinding {
    public final LottieAnimationView lavAnimator1;
    public final LottieAnimationView lavAnimator2;
    public final LottieAnimationView lavAnimator3;
    private final FrameLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentInitStepFinalGuideAnimationBinding(FrameLayout frameLayout, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2, LottieAnimationView lottieAnimationView3) {
        this.rootView = frameLayout;
        this.lavAnimator1 = lottieAnimationView;
        this.lavAnimator2 = lottieAnimationView2;
        this.lavAnimator3 = lottieAnimationView3;
    }

    public static FragmentInitStepFinalGuideAnimationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentInitStepFinalGuideAnimationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_init_step_final_guide_animation, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentInitStepFinalGuideAnimationBinding bind(View view) {
        int i = R.id.lav_animator_1;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, i);
        if (lottieAnimationView != null) {
            i = R.id.lav_animator_2;
            LottieAnimationView lottieAnimationView2 = (LottieAnimationView) ViewBindings.findChildViewById(view, i);
            if (lottieAnimationView2 != null) {
                i = R.id.lav_animator_3;
                LottieAnimationView lottieAnimationView3 = (LottieAnimationView) ViewBindings.findChildViewById(view, i);
                if (lottieAnimationView3 != null) {
                    return new FragmentInitStepFinalGuideAnimationBinding((FrameLayout) view, lottieAnimationView, lottieAnimationView2, lottieAnimationView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
