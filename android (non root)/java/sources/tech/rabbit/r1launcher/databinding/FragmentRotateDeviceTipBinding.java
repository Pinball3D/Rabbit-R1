package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentRotateDeviceTipBinding implements ViewBinding {
    private final FrameLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentRotateDeviceTipBinding(FrameLayout frameLayout) {
        this.rootView = frameLayout;
    }

    public static FragmentRotateDeviceTipBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentRotateDeviceTipBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rotate_device_tip, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentRotateDeviceTipBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        return new FragmentRotateDeviceTipBinding((FrameLayout) view);
    }
}
