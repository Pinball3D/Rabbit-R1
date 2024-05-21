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
public final class FragmentSystemInfoBinding implements ViewBinding {
    public final FrameLayout flDeviceInfo;
    public final FrameLayout flDeviceInfoContent;
    public final FrameLayout flImeiInfo;
    public final FrameLayout flLauncherInfo;
    public final FrameLayout flLuancherImeiContent;
    public final FrameLayout flLuancherInfoContent;
    private final LinearLayout rootView;
    public final SettingTitle settingTitle;
    public final TextView tvDeviceInfo;
    public final TextView tvDeviceInfoContent;
    public final TextView tvImeiInfo;
    public final TextView tvLauncherImeiContent;
    public final TextView tvLauncherInfo;
    public final TextView tvLauncherInfoContent;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentSystemInfoBinding(LinearLayout linearLayout, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, FrameLayout frameLayout5, FrameLayout frameLayout6, SettingTitle settingTitle, TextView textView, TextView textView2, TextView textView3, TextView textView4, TextView textView5, TextView textView6) {
        this.rootView = linearLayout;
        this.flDeviceInfo = frameLayout;
        this.flDeviceInfoContent = frameLayout2;
        this.flImeiInfo = frameLayout3;
        this.flLauncherInfo = frameLayout4;
        this.flLuancherImeiContent = frameLayout5;
        this.flLuancherInfoContent = frameLayout6;
        this.settingTitle = settingTitle;
        this.tvDeviceInfo = textView;
        this.tvDeviceInfoContent = textView2;
        this.tvImeiInfo = textView3;
        this.tvLauncherImeiContent = textView4;
        this.tvLauncherInfo = textView5;
        this.tvLauncherInfoContent = textView6;
    }

    public static FragmentSystemInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSystemInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_system_info, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentSystemInfoBinding bind(View view) {
        int i = R.id.fl_device_info;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.fl_device_info_content;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout2 != null) {
                i = R.id.fl_imei_info;
                FrameLayout frameLayout3 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                if (frameLayout3 != null) {
                    i = R.id.fl_launcher_info;
                    FrameLayout frameLayout4 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                    if (frameLayout4 != null) {
                        i = R.id.fl_luancher_imei_content;
                        FrameLayout frameLayout5 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                        if (frameLayout5 != null) {
                            i = R.id.fl_luancher_info_content;
                            FrameLayout frameLayout6 = (FrameLayout) ViewBindings.findChildViewById(view, i);
                            if (frameLayout6 != null) {
                                i = R.id.setting_title;
                                SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
                                if (settingTitle != null) {
                                    i = R.id.tv_device_info;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView != null) {
                                        i = R.id.tv_device_info_content;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView2 != null) {
                                            i = R.id.tv_imei_info;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView3 != null) {
                                                i = R.id.tv_launcher_imei_content;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView4 != null) {
                                                    i = R.id.tv_launcher_info;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView5 != null) {
                                                        i = R.id.tv_launcher_info_content;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView6 != null) {
                                                            return new FragmentSystemInfoBinding((LinearLayout) view, frameLayout, frameLayout2, frameLayout3, frameLayout4, frameLayout5, frameLayout6, settingTitle, textView, textView2, textView3, textView4, textView5, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
