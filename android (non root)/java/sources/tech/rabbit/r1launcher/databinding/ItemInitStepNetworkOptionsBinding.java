package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ItemInitStepNetworkOptionsBinding implements ViewBinding {
    public final ImageView ivItemIcon;
    public final LinearLayout llItemContainer;
    private final LinearLayout rootView;
    public final TextView tvItemName;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    private ItemInitStepNetworkOptionsBinding(LinearLayout linearLayout, ImageView imageView, LinearLayout linearLayout2, TextView textView) {
        this.rootView = linearLayout;
        this.ivItemIcon = imageView;
        this.llItemContainer = linearLayout2;
        this.tvItemName = textView;
    }

    public static ItemInitStepNetworkOptionsBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemInitStepNetworkOptionsBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_init_step_network_options, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemInitStepNetworkOptionsBinding bind(View view) {
        int i = R.id.iv_item_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            int i2 = R.id.tv_item_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i2);
            if (textView != null) {
                return new ItemInitStepNetworkOptionsBinding(linearLayout, imageView, linearLayout, textView);
            }
            i = i2;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
