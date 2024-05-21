package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import tech.rabbit.r1launcher.R;

/* loaded from: classes3.dex */
public final class ItemSettingEnableTerminalBinding implements ViewBinding {
    private final AppCompatTextView rootView;

    @Override // androidx.viewbinding.ViewBinding
    public AppCompatTextView getRoot() {
        return this.rootView;
    }

    private ItemSettingEnableTerminalBinding(AppCompatTextView appCompatTextView) {
        this.rootView = appCompatTextView;
    }

    public static ItemSettingEnableTerminalBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemSettingEnableTerminalBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_setting_enable_terminal, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemSettingEnableTerminalBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        return new ItemSettingEnableTerminalBinding((AppCompatTextView) view);
    }
}
