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
import tech.rabbit.r1launcher.initstep.widget.NumberPickerView;

/* loaded from: classes3.dex */
public final class FragmentVerifyPasscodeBinding implements ViewBinding {
    public final FrameLayout flContinueContainer;
    public final LinearLayout llBackContainer;
    public final LinearLayout llTipContainer;
    public final NumberPickerView npvPicker;
    private final FrameLayout rootView;
    public final TextView tvBackTitle;
    public final TextView tvConfirmPasscode;
    public final TextView tvContinue;
    public final TextView tvRetry;
    public final TextView tvTip;
    public final TextView tvTitle;
    public final TextView tvToFinish;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentVerifyPasscodeBinding(FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout, LinearLayout linearLayout2, NumberPickerView numberPickerView, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7) {
        this.rootView = frameLayout;
        this.flContinueContainer = frameLayout2;
        this.llBackContainer = linearLayout;
        this.llTipContainer = linearLayout2;
        this.npvPicker = numberPickerView;
        this.tvBackTitle = textView;
        this.tvConfirmPasscode = textView2;
        this.tvContinue = textView3;
        this.tvRetry = textView4;
        this.tvTip = textView5;
        this.tvTitle = textView6;
        this.tvToFinish = textView7;
    }

    public static FragmentVerifyPasscodeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentVerifyPasscodeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_verify_passcode, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentVerifyPasscodeBinding bind(View view) {
        int i = R.id.fl_continue_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.ll_back_container;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null) {
                i = R.id.ll_tip_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                if (linearLayout2 != null) {
                    i = R.id.npv_picker;
                    NumberPickerView numberPickerView = (NumberPickerView) ViewBindings.findChildViewById(view, i);
                    if (numberPickerView != null) {
                        i = R.id.tv_back_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView != null) {
                            i = R.id.tv_confirm_passcode;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView2 != null) {
                                i = R.id.tv_continue;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView3 != null) {
                                    i = R.id.tv_retry;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView4 != null) {
                                        i = R.id.tv_tip;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView5 != null) {
                                            i = R.id.tv_title;
                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView6 != null) {
                                                i = R.id.tv_to_finish;
                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView7 != null) {
                                                    return new FragmentVerifyPasscodeBinding((FrameLayout) view, frameLayout, linearLayout, linearLayout2, numberPickerView, textView, textView2, textView3, textView4, textView5, textView6, textView7);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
