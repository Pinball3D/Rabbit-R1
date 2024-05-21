package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ActivityBluetoothBinding implements ViewBinding {
    public final FrameLayout flContainer;
    private final FrameLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private ActivityBluetoothBinding(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.flContainer = frameLayout2;
    }

    public static ActivityBluetoothBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityBluetoothBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_bluetooth, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityBluetoothBinding bind(View view) {
        int i = R.id.fl_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            return new ActivityBluetoothBinding((FrameLayout) view, frameLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
