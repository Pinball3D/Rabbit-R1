package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.brightness.BrightnessAdjustCard;
import tech.rabbit.r1launcher.widget.SettingTitle;
import tech.rabbit.r1launcher.widget.UntouchableFrameLayout;

/* loaded from: classes3.dex */
public final class FragmentSettingsPageBinding implements ViewBinding {
    public final BrightnessAdjustCard cardBrightness;
    public final UntouchableFrameLayout flRootLayout;
    private final UntouchableFrameLayout rootView;
    public final RecyclerView rvSettingItems;
    public final SettingTitle titleSettings;

    @Override // androidx.viewbinding.ViewBinding
    public UntouchableFrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentSettingsPageBinding(UntouchableFrameLayout untouchableFrameLayout, BrightnessAdjustCard brightnessAdjustCard, UntouchableFrameLayout untouchableFrameLayout2, RecyclerView recyclerView, SettingTitle settingTitle) {
        this.rootView = untouchableFrameLayout;
        this.cardBrightness = brightnessAdjustCard;
        this.flRootLayout = untouchableFrameLayout2;
        this.rvSettingItems = recyclerView;
        this.titleSettings = settingTitle;
    }

    public static FragmentSettingsPageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSettingsPageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_settings_page, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentSettingsPageBinding bind(View view) {
        int i = R.id.card_brightness;
        BrightnessAdjustCard brightnessAdjustCard = (BrightnessAdjustCard) ViewBindings.findChildViewById(view, i);
        if (brightnessAdjustCard != null) {
            UntouchableFrameLayout untouchableFrameLayout = (UntouchableFrameLayout) view;
            i = R.id.rv_setting_items;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                i = R.id.title_settings;
                SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
                if (settingTitle != null) {
                    return new FragmentSettingsPageBinding(untouchableFrameLayout, brightnessAdjustCard, untouchableFrameLayout, recyclerView, settingTitle);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
