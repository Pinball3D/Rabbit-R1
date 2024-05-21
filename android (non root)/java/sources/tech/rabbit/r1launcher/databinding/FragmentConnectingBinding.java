package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class FragmentConnectingBinding implements ViewBinding {
    private final LinearLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private FragmentConnectingBinding(LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }

    public static FragmentConnectingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentConnectingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_connecting, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentConnectingBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        return new FragmentConnectingBinding((LinearLayout) view);
    }
}
