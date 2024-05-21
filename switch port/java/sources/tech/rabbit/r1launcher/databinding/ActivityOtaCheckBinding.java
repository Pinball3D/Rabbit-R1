package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.ota.MarqueeTextView;

/* loaded from: classes3.dex */
public final class ActivityOtaCheckBinding implements ViewBinding {
    public final FrameLayout btnSetNetwork;
    private final ConstraintLayout rootView;
    public final MarqueeTextView tvChargingState;
    public final MarqueeTextView tvChargingStateTip;
    public final MarqueeTextView tvNetworkState;
    public final MarqueeTextView tvNetworkStateTip;
    public final MarqueeTextView tvTip;

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    private ActivityOtaCheckBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, MarqueeTextView marqueeTextView, MarqueeTextView marqueeTextView2, MarqueeTextView marqueeTextView3, MarqueeTextView marqueeTextView4, MarqueeTextView marqueeTextView5) {
        this.rootView = constraintLayout;
        this.btnSetNetwork = frameLayout;
        this.tvChargingState = marqueeTextView;
        this.tvChargingStateTip = marqueeTextView2;
        this.tvNetworkState = marqueeTextView3;
        this.tvNetworkStateTip = marqueeTextView4;
        this.tvTip = marqueeTextView5;
    }

    public static ActivityOtaCheckBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityOtaCheckBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_ota_check, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityOtaCheckBinding bind(View view) {
        int i = R.id.btn_set_network;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.tv_charging_state;
            MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
            if (marqueeTextView != null) {
                i = R.id.tv_charging_state_tip;
                MarqueeTextView marqueeTextView2 = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
                if (marqueeTextView2 != null) {
                    i = R.id.tv_network_state;
                    MarqueeTextView marqueeTextView3 = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
                    if (marqueeTextView3 != null) {
                        i = R.id.tv_network_state_tip;
                        MarqueeTextView marqueeTextView4 = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
                        if (marqueeTextView4 != null) {
                            i = R.id.tv_tip;
                            MarqueeTextView marqueeTextView5 = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
                            if (marqueeTextView5 != null) {
                                return new ActivityOtaCheckBinding((ConstraintLayout) view, frameLayout, marqueeTextView, marqueeTextView2, marqueeTextView3, marqueeTextView4, marqueeTextView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
