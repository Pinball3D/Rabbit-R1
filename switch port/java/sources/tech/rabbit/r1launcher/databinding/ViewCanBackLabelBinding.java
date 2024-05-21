package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.ota.MarqueeTextView;

/* loaded from: classes3.dex */
public final class ViewCanBackLabelBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final AppCompatTextView tvFocused;
    public final MarqueeTextView tvUnfocused;
    public final View vFadeBackground;

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    private ViewCanBackLabelBinding(FrameLayout frameLayout, AppCompatTextView appCompatTextView, MarqueeTextView marqueeTextView, View view) {
        this.rootView = frameLayout;
        this.tvFocused = appCompatTextView;
        this.tvUnfocused = marqueeTextView;
        this.vFadeBackground = view;
    }

    public static ViewCanBackLabelBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ViewCanBackLabelBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.view_can_back_label, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ViewCanBackLabelBinding bind(View view) {
        View findChildViewById;
        int i = R.id.tv_focused;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            i = R.id.tv_unfocused;
            MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
            if (marqueeTextView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.v_fade_background))) != null) {
                return new ViewCanBackLabelBinding((FrameLayout) view, appCompatTextView, marqueeTextView, findChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
