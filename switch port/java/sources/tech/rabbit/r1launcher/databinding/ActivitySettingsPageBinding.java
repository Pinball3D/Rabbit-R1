package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.viewbinding.ViewBinding;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.UntouchableFrameLayout;

/* loaded from: classes3.dex */
public final class ActivitySettingsPageBinding implements ViewBinding {
    public final UntouchableFrameLayout rootLayout;
    private final UntouchableFrameLayout rootView;

    @Override // androidx.viewbinding.ViewBinding
    public UntouchableFrameLayout getRoot() {
        return this.rootView;
    }

    private ActivitySettingsPageBinding(UntouchableFrameLayout untouchableFrameLayout, UntouchableFrameLayout untouchableFrameLayout2) {
        this.rootView = untouchableFrameLayout;
        this.rootLayout = untouchableFrameLayout2;
    }

    public static ActivitySettingsPageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivitySettingsPageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_settings_page, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivitySettingsPageBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        UntouchableFrameLayout untouchableFrameLayout = (UntouchableFrameLayout) view;
        return new ActivitySettingsPageBinding(untouchableFrameLayout, untouchableFrameLayout);
    }
}
