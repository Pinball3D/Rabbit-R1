package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class LayoutSettingSwitchBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final View vThumb;
    public final View vTrack;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private LayoutSettingSwitchBinding(FrameLayout frameLayout, View view, View view2) {
        this.rootView = frameLayout;
        this.vThumb = view;
        this.vTrack = view2;
    }

    public static LayoutSettingSwitchBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutSettingSwitchBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.layout_setting_switch, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutSettingSwitchBinding bind(View view) {
        View findChildViewById;
        int i = R.id.v_thumb;
        View findChildViewById2 = ViewBindings.findChildViewById(view, i);
        if (findChildViewById2 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.v_track))) != null) {
            return new LayoutSettingSwitchBinding((FrameLayout) view, findChildViewById2, findChildViewById);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
