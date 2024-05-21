package tech.rabbit.r1launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.widget.CanBackLabelView;
import tech.rabbit.r1launcher.widget.SettingRing;

/* loaded from: classes3.dex */
public final class FragmentWifiDetailBinding implements ViewBinding {
    public final CanBackLabelView cblvTitle;
    public final LinearLayoutCompat llStateContainer;
    private final LinearLayoutCompat rootView;
    public final SettingRing srLoading;
    public final AppCompatTextView tvConnectFailureTips;
    public final AppCompatTextView tvForgetOrRetry;
    public final AppCompatTextView tvState;

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayoutCompat getRoot() {
        return this.rootView;
    }

    private FragmentWifiDetailBinding(LinearLayoutCompat linearLayoutCompat, CanBackLabelView canBackLabelView, LinearLayoutCompat linearLayoutCompat2, SettingRing settingRing, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.rootView = linearLayoutCompat;
        this.cblvTitle = canBackLabelView;
        this.llStateContainer = linearLayoutCompat2;
        this.srLoading = settingRing;
        this.tvConnectFailureTips = appCompatTextView;
        this.tvForgetOrRetry = appCompatTextView2;
        this.tvState = appCompatTextView3;
    }

    public static FragmentWifiDetailBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentWifiDetailBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_wifi_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentWifiDetailBinding bind(View view) {
        int i = R.id.cblv_title;
        CanBackLabelView canBackLabelView = (CanBackLabelView) ViewBindings.findChildViewById(view, i);
        if (canBackLabelView != null) {
            i = R.id.ll_state_container;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) ViewBindings.findChildViewById(view, i);
            if (linearLayoutCompat != null) {
                i = R.id.sr_loading;
                SettingRing settingRing = (SettingRing) ViewBindings.findChildViewById(view, i);
                if (settingRing != null) {
                    i = R.id.tv_connect_failure_tips;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                    if (appCompatTextView != null) {
                        i = R.id.tv_forget_or_retry;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                        if (appCompatTextView2 != null) {
                            i = R.id.tv_state;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) ViewBindings.findChildViewById(view, i);
                            if (appCompatTextView3 != null) {
                                return new FragmentWifiDetailBinding((LinearLayoutCompat) view, canBackLabelView, linearLayoutCompat, settingRing, appCompatTextView, appCompatTextView2, appCompatTextView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
