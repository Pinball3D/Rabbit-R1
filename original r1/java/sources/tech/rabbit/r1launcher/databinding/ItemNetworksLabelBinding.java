package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingLoading;

/* loaded from: classes3.dex */
public final class ItemNetworksLabelBinding implements ViewBinding {
    private final LinearLayoutCompat rootView;
    public final SettingLoading slLoading;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    private ItemNetworksLabelBinding(LinearLayoutCompat linearLayoutCompat, SettingLoading settingLoading) {
        this.rootView = linearLayoutCompat;
        this.slLoading = settingLoading;
    }

    public static ItemNetworksLabelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemNetworksLabelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_networks_label, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemNetworksLabelBinding bind(View view) {
        int i = R.id.sl_loading;
        SettingLoading settingLoading = (SettingLoading) ViewBindings.findChildViewById(view, i);
        if (settingLoading != null) {
            return new ItemNetworksLabelBinding((LinearLayoutCompat) view, settingLoading);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
