package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class LayoutBaseValueAdjustBinding implements ViewBinding {
    public final FrameLayout flFullHeightView;
    public final FrameLayout flValueCounter;
    public final ImageView ivIcon;
    private final LinearLayout rootView;
    public final TextView tvSettingsTitle;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private LayoutBaseValueAdjustBinding(LinearLayout linearLayout, FrameLayout frameLayout, FrameLayout frameLayout2, ImageView imageView, TextView textView) {
        this.rootView = linearLayout;
        this.flFullHeightView = frameLayout;
        this.flValueCounter = frameLayout2;
        this.ivIcon = imageView;
        this.tvSettingsTitle = textView;
    }

    public static LayoutBaseValueAdjustBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static LayoutBaseValueAdjustBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.layout_base_value_adjust, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutBaseValueAdjustBinding bind(View view) {
        int i = R.id.fl_full_height_view;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = R.id.fl_value_counter;
            FrameLayout frameLayout2 = (FrameLayout) ViewBindings.findChildViewById(view, i);
            if (frameLayout2 != null) {
                i = R.id.iv_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView != null) {
                    i = R.id.tv_settings_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        return new LayoutBaseValueAdjustBinding((LinearLayout) view, frameLayout, frameLayout2, imageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
