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

/* loaded from: classes3.dex */
public final class ItemLayoutBluetoothDeviceBinding implements ViewBinding {
    public final FrameLayout flDeviceContainer;
    public final LinearLayout llFocusBg;
    private final FrameLayout rootView;
    public final TextView tvTitle;
    public final View vRing;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private ItemLayoutBluetoothDeviceBinding(FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayout linearLayout, TextView textView, View view) {
        this.rootView = frameLayout;
        this.flDeviceContainer = frameLayout2;
        this.llFocusBg = linearLayout;
        this.tvTitle = textView;
        this.vRing = view;
    }

    public static ItemLayoutBluetoothDeviceBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemLayoutBluetoothDeviceBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_layout_bluetooth_device, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemLayoutBluetoothDeviceBinding bind(View view) {
        View findChildViewById;
        FrameLayout frameLayout = (FrameLayout) view;
        int i = R.id.ll_focus_bg;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = R.id.tv_title;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.v_ring))) != null) {
                return new ItemLayoutBluetoothDeviceBinding(frameLayout, frameLayout, linearLayout, textView, findChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
