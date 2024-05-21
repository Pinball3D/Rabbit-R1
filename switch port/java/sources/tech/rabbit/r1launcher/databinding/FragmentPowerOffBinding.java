package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingTitle;

/* loaded from: classes3.dex */
public final class FragmentPowerOffBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final SettingTitle settingTitle;
    public final TextView tvConfirm;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentPowerOffBinding(LinearLayout linearLayout, SettingTitle settingTitle, TextView textView) {
        this.rootView = linearLayout;
        this.settingTitle = settingTitle;
        this.tvConfirm = textView;
    }

    public static FragmentPowerOffBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentPowerOffBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_power_off, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentPowerOffBinding bind(View view) {
        int i = R.id.setting_title;
        SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
        if (settingTitle != null) {
            i = R.id.tv_confirm;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new FragmentPowerOffBinding((LinearLayout) view, settingTitle, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
