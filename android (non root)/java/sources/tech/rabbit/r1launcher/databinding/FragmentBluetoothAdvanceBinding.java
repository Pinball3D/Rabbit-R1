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
import tech.rabbit.r1launcher.widget.SettingRing;
import tech.rabbit.r1launcher.widget.SettingTitle;
import tech.rabbit.r1launcher.widget.UntouchableFrameLayout;

/* loaded from: classes3.dex */
public final class FragmentBluetoothAdvanceBinding implements ViewBinding {
    public final FrameLayout flConnectError;
    public final FrameLayout flDeviceContainer;
    public final FrameLayout flRemove;
    public final LinearLayout llFocusBg;
    private final UntouchableFrameLayout rootView;
    public final SettingTitle st;
    public final TextView tvRemove;
    public final TextView tvTitleFocus;
    public final SettingRing vRing;

    @Override // androidx.viewbinding.ViewBinding
    public UntouchableFrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentBluetoothAdvanceBinding(UntouchableFrameLayout untouchableFrameLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, LinearLayout linearLayout, SettingTitle settingTitle, TextView textView, TextView textView2, SettingRing settingRing) {
        this.rootView = untouchableFrameLayout;
        this.flConnectError = frameLayout;
        this.flDeviceContainer = frameLayout2;
        this.flRemove = frameLayout3;
        this.llFocusBg = linearLayout;
        this.st = settingTitle;
        this.tvRemove = textView;
        this.tvTitleFocus = textView2;
        this.vRing = settingRing;
    }

    public static FragmentBluetoothAdvanceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentBluetoothAdvanceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_bluetooth_advance, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentBluetoothAdvanceBinding bind(View view) {
        int i = R.id.fl_connect_error;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.fl_device_container;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout2 != null) {
                i = R.id.fl_remove;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout3 != null) {
                    i = R.id.ll_focus_bg;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                    if (linearLayout != null) {
                        i = R.id.st;
                        SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
                        if (settingTitle != null) {
                            i = R.id.tv_remove;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R.id.tv_title_focus;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null) {
                                    i = R.id.v_ring;
                                    SettingRing settingRing = (SettingRing) ViewBindings.findChildViewById(view, i);
                                    if (settingRing != null) {
                                        return new FragmentBluetoothAdvanceBinding((UntouchableFrameLayout) view, frameLayout, frameLayout2, frameLayout3, linearLayout, settingTitle, textView, textView2, settingRing);
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
