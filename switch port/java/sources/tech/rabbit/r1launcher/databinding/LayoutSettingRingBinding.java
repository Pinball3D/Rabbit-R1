package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingLoading;

/* loaded from: classes3.dex */
public final class LayoutSettingRingBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final SettingLoading sl;
    public final View vRing;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private LayoutSettingRingBinding(FrameLayout frameLayout, SettingLoading settingLoading, View view) {
        this.rootView = frameLayout;
        this.sl = settingLoading;
        this.vRing = view;
    }

    public static LayoutSettingRingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutSettingRingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.layout_setting_ring, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutSettingRingBinding bind(View view) {
        View findChildViewById;
        int i = R.id.sl;
        SettingLoading settingLoading = (SettingLoading) ViewBindings.findChildViewById(view, i);
        if (settingLoading != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.v_ring))) != null) {
            return new LayoutSettingRingBinding((FrameLayout) view, settingLoading, findChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
