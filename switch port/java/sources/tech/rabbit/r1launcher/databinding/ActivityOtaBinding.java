package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.ota.MarqueeTextView;
import tech.rabbit.r1launcher.ota.RoundRectProgressBar;

/* loaded from: classes3.dex */
public final class ActivityOtaBinding implements ViewBinding {
    public final FrameLayout btnRetry;
    public final RoundRectProgressBar progressBar;
    private final ConstraintLayout rootView;
    public final MarqueeTextView tvInfo;
    public final TextView tvProgress;
    public final TextView tvRemove;
    public final MarqueeTextView tvTip;

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    private ActivityOtaBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, RoundRectProgressBar roundRectProgressBar, MarqueeTextView marqueeTextView, TextView textView, TextView textView2, MarqueeTextView marqueeTextView2) {
        this.rootView = constraintLayout;
        this.btnRetry = frameLayout;
        this.progressBar = roundRectProgressBar;
        this.tvInfo = marqueeTextView;
        this.tvProgress = textView;
        this.tvRemove = textView2;
        this.tvTip = marqueeTextView2;
    }

    public static ActivityOtaBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityOtaBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_ota, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityOtaBinding bind(View view) {
        int i = R.id.btn_retry;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.progress_bar;
            RoundRectProgressBar roundRectProgressBar = (RoundRectProgressBar) ViewBindings.findChildViewById(view, i);
            if (roundRectProgressBar != null) {
                i = R.id.tv_info;
                MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
                if (marqueeTextView != null) {
                    i = R.id.tv_progress;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        i = R.id.tv_remove;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R.id.tv_tip;
                            MarqueeTextView marqueeTextView2 = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
                            if (marqueeTextView2 != null) {
                                return new ActivityOtaBinding((ConstraintLayout) view, frameLayout, roundRectProgressBar, marqueeTextView, textView, textView2, marqueeTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
