package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ItemNetworkManagerWifiBinding implements ViewBinding {
    private final AppCompatTextView rootView;
    public final AppCompatTextView tvWifiSsid;

    @Override // androidx.viewbinding.ViewBinding
    public AppCompatTextView getRoot() {
        return this.rootView;
    }

    private ItemNetworkManagerWifiBinding(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = appCompatTextView;
        this.tvWifiSsid = appCompatTextView2;
    }

    public static ItemNetworkManagerWifiBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemNetworkManagerWifiBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_network_manager_wifi, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemNetworkManagerWifiBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) view;
        return new ItemNetworkManagerWifiBinding(appCompatTextView, appCompatTextView);
    }
}
