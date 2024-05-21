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
import tech.rabbit.r1launcher.widget.SettingSwitch;

/* loaded from: classes3.dex */
public final class ItemLayoutBluetoothButtonBinding implements ViewBinding {
    public final LinearLayout llContainer;
    private final FrameLayout rootView;
    public final SettingSwitch ss;
    public final TextView tvTitle;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private ItemLayoutBluetoothButtonBinding(FrameLayout frameLayout, LinearLayout linearLayout, SettingSwitch settingSwitch, TextView textView) {
        this.rootView = frameLayout;
        this.llContainer = linearLayout;
        this.ss = settingSwitch;
        this.tvTitle = textView;
    }

    public static ItemLayoutBluetoothButtonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemLayoutBluetoothButtonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_layout_bluetooth_button, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemLayoutBluetoothButtonBinding bind(View view) {
        int i = R.id.ll_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R.id.ss;
            SettingSwitch settingSwitch = (SettingSwitch) ViewBindings.findChildViewById(view, i);
            if (settingSwitch != null) {
                i = R.id.tv_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new ItemLayoutBluetoothButtonBinding((FrameLayout) view, linearLayout, settingSwitch, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
