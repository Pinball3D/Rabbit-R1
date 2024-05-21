package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.ota.MarqueeTextView;

/* loaded from: classes3.dex */
public final class ItemAboutInfoBinding implements ViewBinding {
    private final LinearLayoutCompat rootView;
    public final AppCompatTextView tvLabel;
    public final MarqueeTextView tvValue;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    private ItemAboutInfoBinding(LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, MarqueeTextView marqueeTextView) {
        this.rootView = linearLayoutCompat;
        this.tvLabel = appCompatTextView;
        this.tvValue = marqueeTextView;
    }

    public static ItemAboutInfoBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemAboutInfoBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_about_info, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemAboutInfoBinding bind(View view) {
        int i = R.id.tv_label;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            i = R.id.tv_value;
            MarqueeTextView marqueeTextView = (MarqueeTextView) ViewBindings.findChildViewById(view, i);
            if (marqueeTextView != null) {
                return new ItemAboutInfoBinding((LinearLayoutCompat) view, appCompatTextView, marqueeTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
