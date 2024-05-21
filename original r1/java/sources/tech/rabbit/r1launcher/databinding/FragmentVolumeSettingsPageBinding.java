package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.settings.volume.VolumeAdjustCard;
import tech.rabbit.r1launcher.widget.SettingTitle;
import tech.rabbit.r1launcher.widget.UntouchableFrameLayout;

/* loaded from: classes3.dex */
public final class FragmentVolumeSettingsPageBinding implements ViewBinding {
    public final VolumeAdjustCard cardVolume;
    public final UntouchableFrameLayout flVolumeRootLayout;
    private final UntouchableFrameLayout rootView;
    public final RecyclerView rvVolumeItems;
    public final SettingTitle volumeTitleSettings;

    @Override // androidx.viewbinding.ViewBinding
    public UntouchableFrameLayout getRoot() {
        return this.rootView;
    }

    private FragmentVolumeSettingsPageBinding(UntouchableFrameLayout untouchableFrameLayout, VolumeAdjustCard volumeAdjustCard, UntouchableFrameLayout untouchableFrameLayout2, RecyclerView recyclerView, SettingTitle settingTitle) {
        this.rootView = untouchableFrameLayout;
        this.cardVolume = volumeAdjustCard;
        this.flVolumeRootLayout = untouchableFrameLayout2;
        this.rvVolumeItems = recyclerView;
        this.volumeTitleSettings = settingTitle;
    }

    public static FragmentVolumeSettingsPageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentVolumeSettingsPageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_volume_settings_page, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentVolumeSettingsPageBinding bind(View view) {
        int i = R.id.card_volume;
        VolumeAdjustCard volumeAdjustCard = (VolumeAdjustCard) ViewBindings.findChildViewById(view, i);
        if (volumeAdjustCard != null) {
            UntouchableFrameLayout untouchableFrameLayout = (UntouchableFrameLayout) view;
            i = R.id.rv_volume_items;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
            if (recyclerView != null) {
                i = R.id.volume_title_settings;
                SettingTitle settingTitle = (SettingTitle) ViewBindings.findChildViewById(view, i);
                if (settingTitle != null) {
                    return new FragmentVolumeSettingsPageBinding(untouchableFrameLayout, volumeAdjustCard, untouchableFrameLayout, recyclerView, settingTitle);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
