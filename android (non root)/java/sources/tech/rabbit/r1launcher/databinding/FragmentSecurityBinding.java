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
import tech.rabbit.r1launcher.widget.SettingTitle;

/* loaded from: classes3.dex */
public final class FragmentSecurityBinding implements ViewBinding {
    public final FrameLayout flChangePasscode;
    private final LinearLayout rootView;
    public final SettingTitle settingTitle;
    public final TextView tvPassCode;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentSecurityBinding(LinearLayout linearLayout, FrameLayout frameLayout, SettingTitle settingTitle, TextView textView) {
        this.rootView = linearLayout;
        this.flChangePasscode = frameLayout;
        this.settingTitle = settingTitle;
        this.tvPassCode = textView;
    }

    public static FragmentSecurityBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSecurityBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_security, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentSecurityBinding bind(View view) {
        int i = R.id.fl_change_passcode;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.setting_title;
            SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
            if (settingTitle != null) {
                i = R.id.tv_pass_code;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new FragmentSecurityBinding((LinearLayout) view, frameLayout, settingTitle, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
