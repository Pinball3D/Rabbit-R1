package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.SettingSwitch;

/* loaded from: classes3.dex */
public final class ItemLayoutSettingsListBinding implements ViewBinding {
    public final FrameLayout flHold;
    public final ConstraintLayout itemRoot;
    private final ConstraintLayout rootView;
    public final SettingSwitch ssToggle;
    public final TextView tvHold;
    public final TextView tvItem;

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    private ItemLayoutSettingsListBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, ConstraintLayout constraintLayout2, SettingSwitch settingSwitch, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.flHold = frameLayout;
        this.itemRoot = constraintLayout2;
        this.ssToggle = settingSwitch;
        this.tvHold = textView;
        this.tvItem = textView2;
    }

    public static ItemLayoutSettingsListBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ItemLayoutSettingsListBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.item_layout_settings_list, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ItemLayoutSettingsListBinding bind(View view) {
        int i = R.id.fl_hold;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i = R.id.ss_toggle;
            SettingSwitch settingSwitch = (SettingSwitch) ViewBindings.findChildViewById(view, i);
            if (settingSwitch != null) {
                i = R.id.tv_hold;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.tv_item;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new ItemLayoutSettingsListBinding(constraintLayout, frameLayout, constraintLayout, settingSwitch, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
