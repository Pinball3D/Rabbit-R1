package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.initstep.widget.NoScrollListView;
import tech.rabbit.r1launcher.widget.FactoryModeVerifyView;

/* loaded from: classes3.dex */
public final class FragmentConnectNetworkBinding implements ViewBinding {
    public final FactoryModeVerifyView fmvvLauncher;
    public final NoScrollListView lvNetworkOptions;
    private final FrameLayout rootView;
    public final TextView tvTip;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentConnectNetworkBinding(FrameLayout frameLayout, FactoryModeVerifyView factoryModeVerifyView, NoScrollListView noScrollListView, TextView textView) {
        this.rootView = frameLayout;
        this.fmvvLauncher = factoryModeVerifyView;
        this.lvNetworkOptions = noScrollListView;
        this.tvTip = textView;
    }

    public static FragmentConnectNetworkBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentConnectNetworkBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_connect_network, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentConnectNetworkBinding bind(View view) {
        int i = R.id.fmvv_launcher;
        FactoryModeVerifyView factoryModeVerifyView = (FactoryModeVerifyView) ViewBindings.findChildViewById(view, i);
        if (factoryModeVerifyView != null) {
            i = R.id.lv_network_options;
            NoScrollListView noScrollListView = (NoScrollListView) ViewBindings.findChildViewById(view, i);
            if (noScrollListView != null) {
                i = R.id.tv_tip;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    return new FragmentConnectNetworkBinding((FrameLayout) view, factoryModeVerifyView, noScrollListView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
