package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentInitStepGuideAnimationBinding implements ViewBinding {
    public final LottieAnimationView lavAnimatorPartA;
    public final LottieAnimationView lavAnimatorPartB;
    public final LottieAnimationView lavAnimatorPartC;
    private final FrameLayout rootView;
    public final TextView tvClickToContinue;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentInitStepGuideAnimationBinding(FrameLayout frameLayout, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2, LottieAnimationView lottieAnimationView3, TextView textView) {
        this.rootView = frameLayout;
        this.lavAnimatorPartA = lottieAnimationView;
        this.lavAnimatorPartB = lottieAnimationView2;
        this.lavAnimatorPartC = lottieAnimationView3;
        this.tvClickToContinue = textView;
    }

    public static FragmentInitStepGuideAnimationBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentInitStepGuideAnimationBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_init_step_guide_animation, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentInitStepGuideAnimationBinding bind(View view) {
        int i = R.id.lav_animator_part_a;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, i);
        if (lottieAnimationView != null) {
            i = R.id.lav_animator_part_b;
            LottieAnimationView lottieAnimationView2 = (LottieAnimationView) ViewBindings.findChildViewById(view, i);
            if (lottieAnimationView2 != null) {
                i = R.id.lav_animator_part_c;
                LottieAnimationView lottieAnimationView3 = (LottieAnimationView) ViewBindings.findChildViewById(view, i);
                if (lottieAnimationView3 != null) {
                    i = R.id.tv_click_to_continue;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        return new FragmentInitStepGuideAnimationBinding((FrameLayout) view, lottieAnimationView, lottieAnimationView2, lottieAnimationView3, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
