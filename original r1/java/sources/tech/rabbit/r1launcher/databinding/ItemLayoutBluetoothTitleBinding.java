package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingLoading;

/* loaded from: classes3.dex */
public final class ItemLayoutBluetoothTitleBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final SettingLoading slLoading;
    public final TextView tvTitle;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private ItemLayoutBluetoothTitleBinding(LinearLayout linearLayout, SettingLoading settingLoading, TextView textView) {
        this.rootView = linearLayout;
        this.slLoading = settingLoading;
        this.tvTitle = textView;
    }

    public static ItemLayoutBluetoothTitleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemLayoutBluetoothTitleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_layout_bluetooth_title, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemLayoutBluetoothTitleBinding bind(View view) {
        int i = R.id.sl_loading;
        SettingLoading settingLoading = (SettingLoading) ViewBindings.findChildViewById(view, i);
        if (settingLoading != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                return new ItemLayoutBluetoothTitleBinding((LinearLayout) view, settingLoading, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
