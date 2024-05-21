package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.widget.StepProgressIndicatorView;

/* loaded from: classes3.dex */
public final class ActivityInitStepBinding implements ViewBinding {
    public final FrameLayout flContentContainer;
    public final LinearLayout llBackContainer;
    private final FrameLayout rootView;
    public final StepProgressIndicatorView spivStepProgressIndicator;
    public final TextView tvBackTitle;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private ActivityInitStepBinding(FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout, StepProgressIndicatorView stepProgressIndicatorView, TextView textView) {
        this.rootView = frameLayout;
        this.flContentContainer = frameLayout2;
        this.llBackContainer = linearLayout;
        this.spivStepProgressIndicator = stepProgressIndicatorView;
        this.tvBackTitle = textView;
    }

    public static ActivityInitStepBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityInitStepBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_init_step, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityInitStepBinding bind(View view) {
        int i = R.id.fl_content_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.ll_back_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R.id.spiv_step_progress_indicator;
                StepProgressIndicatorView stepProgressIndicatorView = (StepProgressIndicatorView) ViewBindings.findChildViewById(view, i);
                if (stepProgressIndicatorView != null) {
                    i = R.id.tv_back_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        return new ActivityInitStepBinding((FrameLayout) view, frameLayout, linearLayout, stepProgressIndicatorView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
