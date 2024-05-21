package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ItemSettingBrightnessBinding implements ViewBinding {
    private final LinearLayoutCompat rootView;
    public final AppCompatTextView tvHold;
    public final AppCompatTextView tvLabel;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    private ItemSettingBrightnessBinding(LinearLayoutCompat linearLayoutCompat, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.rootView = linearLayoutCompat;
        this.tvHold = appCompatTextView;
        this.tvLabel = appCompatTextView2;
    }

    public static ItemSettingBrightnessBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSettingBrightnessBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_setting_brightness, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemSettingBrightnessBinding bind(View view) {
        int i = R.id.tv_hold;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
        if (appCompatTextView != null) {
            i = R.id.tv_label;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
            if (appCompatTextView2 != null) {
                return new ItemSettingBrightnessBinding((LinearLayoutCompat) view, appCompatTextView, appCompatTextView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
