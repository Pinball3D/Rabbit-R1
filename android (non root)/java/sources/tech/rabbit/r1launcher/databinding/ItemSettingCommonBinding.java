package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ItemSettingCommonBinding implements ViewBinding {
    private final AppCompatTextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public AppCompatTextView getRoot() {
        return this.rootView;
    }

    private ItemSettingCommonBinding(AppCompatTextView appCompatTextView) {
        this.rootView = appCompatTextView;
    }

    public static ItemSettingCommonBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSettingCommonBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_setting_common, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemSettingCommonBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        return new ItemSettingCommonBinding((AppCompatTextView) view);
    }
}
