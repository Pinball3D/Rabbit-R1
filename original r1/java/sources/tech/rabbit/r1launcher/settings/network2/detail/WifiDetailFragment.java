package tech.rabbit.r1launcher.settings.network2.detail;

import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.autofill.HintConstants;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import java.util.Iterator;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.FragmentWifiDetailBinding;
import tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.utils.UiExtensionsKt;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel;
import tech.rabbit.r1launcher.settings.network2.WifiConnectState;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.CanBackLabelView;

/* compiled from: WifiDetailFragment.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\"H\u0002J\b\u0010$\u001a\u00020\"H\u0002J\b\u0010%\u001a\u00020\"H\u0002J\b\u0010&\u001a\u00020\"H\u0002J$\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\b\u0010/\u001a\u00020\"H\u0016J\u001a\u00100\u001a\u00020\"2\u0006\u00101\u001a\u00020(2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0010\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\tH\u0002J\b\u00104\u001a\u00020\"H\u0002J\b\u00105\u001a\u00020\"H\u0002J\b\u00106\u001a\u00020\"H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001c\u001a\u00020\u0015X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u00067"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;", "Landroidx/fragment/app/Fragment;", "()V", "_binding", "Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;", "binding", "getBinding", "()Ltech/rabbit/r1launcher/databinding/FragmentWifiDetailBinding;", "currentState", "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;", "hasPassword", "", "getHasPassword", "()Z", HintConstants.AUTOFILL_HINT_PASSWORD, "", "getPassword", "()Ljava/lang/String;", "setPassword", "(Ljava/lang/String;)V", "savedWifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "viewModel", "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "getViewModel", "()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "wifi", "getWifi", "()Ltech/rabbit/r1launcher/initstep/model/Wifi;", "setWifi", "(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V", "applyToConnectFailure", "", "applyToConnected", "applyToConnecting", "applyToDisconnecting", "applyToNoConnect", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onViewCreated", "view", "renderUIWithConnectState", "wifiConnectState", "setupForgetOrRetry", "setupStateContainer", "setupTitleBar", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WifiDetailFragment extends Fragment {
    public static final int $stable = 8;
    private FragmentWifiDetailBinding _binding;
    private WifiConnectState currentState;
    private String password;
    private Wifi savedWifi;

    /* renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    public Wifi wifi;

    /* compiled from: WifiDetailFragment.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WifiConnectState.values().length];
            try {
                iArr[WifiConnectState.Connecting.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WifiConnectState.Connected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WifiConnectState.Disconnecting.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WifiConnectState.NoConnect.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WifiConnectState.ConnectFailure.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[WifiConnectState.Forget.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasPassword() {
        return this.password != null;
    }

    public final String getPassword() {
        return this.password;
    }

    public final void setPassword(String str) {
        this.password = str;
    }

    public final void setWifi(Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "<set-?>");
        this.wifi = wifi;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SettingsNetwork2ViewModel getViewModel() {
        return (SettingsNetwork2ViewModel) this.viewModel.getValue();
    }

    private final FragmentWifiDetailBinding getBinding() {
        FragmentWifiDetailBinding fragmentWifiDetailBinding = this._binding;
        Intrinsics.checkNotNull(fragmentWifiDetailBinding);
        return fragmentWifiDetailBinding;
    }

    public final Wifi getWifi() {
        Wifi wifi = this.wifi;
        if (wifi != null) {
            return wifi;
        }
        Intrinsics.throwUninitializedPropertyAccessException("wifi");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentWifiDetailBinding inflate = FragmentWifiDetailBinding.inflate(inflater, container, false);
        this._binding = inflate;
        LinearLayoutCompat root = inflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Object obj;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        requireActivity().setRequestedOrientation(1);
        setupTitleBar();
        setupStateContainer();
        setupForgetOrRetry();
        SystemControllerUtil systemControllerUtil = SystemControllerUtil.INSTANCE;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        Iterator<T> it = systemControllerUtil.getSavedWifiListFromSystem(requireContext).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Wifi wifi = (Wifi) obj;
            if (Intrinsics.areEqual(wifi.getSsid(), getWifi().getSsid()) && wifi.getDpmWifiSecurity() == getWifi().getDpmWifiSecurity()) {
                break;
            }
        }
        this.savedWifi = (Wifi) obj;
        CoroutinesExtensionsKt.collectLast(this, getViewModel().getWifiConnectState(), new WifiDetailFragment$onViewCreated$2(this, null));
        getViewModel().updateWifiConnectStateFromNetworkItem(getWifi(), this.password);
        if (getHasPassword()) {
            SettingsNetwork2ViewModel viewModel = getViewModel();
            Wifi wifi2 = getWifi();
            String str = this.password;
            if (str == null) {
                str = "";
            }
            viewModel.connectWifiAtPassword(wifi2, str);
        }
    }

    private final void setupTitleBar() {
        getBinding().cblvTitle.setUnfocusedLabel(getWifi().getSsid());
        CanBackLabelView cblvTitle = getBinding().cblvTitle;
        Intrinsics.checkNotNullExpressionValue(cblvTitle, "cblvTitle");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(cblvTitle, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$setupTitleBar$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                FragmentActivity requireActivity = WifiDetailFragment.this.requireActivity();
                SettingsNetwork2Activity settingsNetwork2Activity = requireActivity instanceof SettingsNetwork2Activity ? (SettingsNetwork2Activity) requireActivity : null;
                if (settingsNetwork2Activity != null) {
                    settingsNetwork2Activity.gotoNetworkManager();
                }
            }
        });
    }

    private final void setupStateContainer() {
        getBinding().llStateContainer.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                WifiDetailFragment.setupStateContainer$lambda$3(WifiDetailFragment.this, view, z);
            }
        });
        LinearLayoutCompat llStateContainer = getBinding().llStateContainer;
        Intrinsics.checkNotNullExpressionValue(llStateContainer, "llStateContainer");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(llStateContainer, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$setupStateContainer$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                WifiConnectState wifiConnectState;
                WifiConnectState wifiConnectState2;
                WifiConnectState wifiConnectState3;
                WifiConnectState wifiConnectState4;
                WifiConnectState wifiConnectState5;
                SettingsNetwork2ViewModel viewModel;
                Wifi wifi;
                SettingsNetwork2ViewModel viewModel2;
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                wifiConnectState = WifiDetailFragment.this.currentState;
                if (wifiConnectState == null) {
                    return;
                }
                wifiConnectState2 = WifiDetailFragment.this.currentState;
                if (wifiConnectState2 != WifiConnectState.Connecting) {
                    wifiConnectState3 = WifiDetailFragment.this.currentState;
                    if (wifiConnectState3 == WifiConnectState.Disconnecting) {
                        return;
                    }
                    wifiConnectState4 = WifiDetailFragment.this.currentState;
                    if (wifiConnectState4 == WifiConnectState.NoConnect) {
                        wifi = WifiDetailFragment.this.savedWifi;
                        if (wifi != null) {
                            viewModel2 = WifiDetailFragment.this.getViewModel();
                            viewModel2.connectWifiAtSavedWifi(WifiDetailFragment.this.getWifi());
                            return;
                        }
                        FragmentActivity requireActivity = WifiDetailFragment.this.requireActivity();
                        SettingsNetwork2Activity settingsNetwork2Activity = requireActivity instanceof SettingsNetwork2Activity ? (SettingsNetwork2Activity) requireActivity : null;
                        if (settingsNetwork2Activity != null) {
                            settingsNetwork2Activity.gotoEnterPassword(WifiDetailFragment.this.getWifi());
                            return;
                        }
                        return;
                    }
                    wifiConnectState5 = WifiDetailFragment.this.currentState;
                    if (wifiConnectState5 == WifiConnectState.Connected) {
                        viewModel = WifiDetailFragment.this.getViewModel();
                        viewModel.disconnectWifi(WifiDetailFragment.this.getWifi());
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupStateContainer$lambda$3(WifiDetailFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvState.setTextSize(z ? 30.0f : 24.0f);
        this$0.getBinding().tvState.setSelected(z);
        this$0.getBinding().llStateContainer.setPadding(z ? UiExtensionsKt.getDp(6) : 0, 0, z ? UiExtensionsKt.getDp(6) : 0, 0);
        WifiConnectState wifiConnectState = this$0.currentState;
        if (wifiConnectState != null) {
            this$0.renderUIWithConnectState(wifiConnectState);
        }
    }

    private final void setupForgetOrRetry() {
        getBinding().tvForgetOrRetry.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                WifiDetailFragment.setupForgetOrRetry$lambda$4(WifiDetailFragment.this, view, z);
            }
        });
        AppCompatTextView tvForgetOrRetry = getBinding().tvForgetOrRetry;
        Intrinsics.checkNotNullExpressionValue(tvForgetOrRetry, "tvForgetOrRetry");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(tvForgetOrRetry, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$setupForgetOrRetry$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                WifiConnectState wifiConnectState;
                WifiConnectState wifiConnectState2;
                SettingsNetwork2ViewModel viewModel;
                boolean hasPassword;
                SettingsNetwork2ViewModel viewModel2;
                SettingsNetwork2ViewModel viewModel3;
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                wifiConnectState = WifiDetailFragment.this.currentState;
                if (wifiConnectState == null) {
                    return;
                }
                wifiConnectState2 = WifiDetailFragment.this.currentState;
                if (wifiConnectState2 == WifiConnectState.ConnectFailure) {
                    hasPassword = WifiDetailFragment.this.getHasPassword();
                    if (hasPassword) {
                        viewModel3 = WifiDetailFragment.this.getViewModel();
                        Wifi wifi = WifiDetailFragment.this.getWifi();
                        String password = WifiDetailFragment.this.getPassword();
                        if (password == null) {
                            password = "";
                        }
                        viewModel3.connectWifiAtPassword(wifi, password);
                        return;
                    }
                    viewModel2 = WifiDetailFragment.this.getViewModel();
                    viewModel2.connectWifiAtSavedWifi(WifiDetailFragment.this.getWifi());
                    return;
                }
                viewModel = WifiDetailFragment.this.getViewModel();
                SettingsNetwork2ViewModel.forgetWifi$default(viewModel, WifiDetailFragment.this.getWifi(), false, 2, null);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupForgetOrRetry$lambda$4(WifiDetailFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvForgetOrRetry.setTextSize(z ? 30.0f : 24.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderUIWithConnectState(WifiConnectState wifiConnectState) {
        if (this._binding == null) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[wifiConnectState.ordinal()]) {
            case 1:
                applyToConnecting();
                return;
            case 2:
                applyToConnected();
                return;
            case 3:
                applyToDisconnecting();
                return;
            case 4:
                applyToNoConnect();
                return;
            case 5:
                applyToConnectFailure();
                return;
            case 6:
                getViewModel().resetScanWifi();
                getViewModel().scanWifiIfEnable();
                FragmentActivity requireActivity = requireActivity();
                SettingsNetwork2Activity settingsNetwork2Activity = requireActivity instanceof SettingsNetwork2Activity ? (SettingsNetwork2Activity) requireActivity : null;
                if (settingsNetwork2Activity != null) {
                    settingsNetwork2Activity.gotoNetworkManager();
                    return;
                }
                return;
            default:
                return;
        }
    }

    private final void applyToNoConnect() {
        LinearLayoutCompat llStateContainer = getBinding().llStateContainer;
        Intrinsics.checkNotNullExpressionValue(llStateContainer, "llStateContainer");
        llStateContainer.setVisibility(0);
        AppCompatTextView tvConnectFailureTips = getBinding().tvConnectFailureTips;
        Intrinsics.checkNotNullExpressionValue(tvConnectFailureTips, "tvConnectFailureTips");
        tvConnectFailureTips.setVisibility(8);
        if (getBinding().llStateContainer.hasFocus()) {
            getBinding().srLoading.showOnFocus();
        } else {
            getBinding().srLoading.showOnNormal();
        }
        getBinding().tvState.setText(R.string.connect);
        getBinding().tvForgetOrRetry.setText(R.string.forget);
        AppCompatTextView tvForgetOrRetry = getBinding().tvForgetOrRetry;
        Intrinsics.checkNotNullExpressionValue(tvForgetOrRetry, "tvForgetOrRetry");
        tvForgetOrRetry.setVisibility(this.savedWifi != null ? 0 : 8);
    }

    private final void applyToConnected() {
        LinearLayoutCompat llStateContainer = getBinding().llStateContainer;
        Intrinsics.checkNotNullExpressionValue(llStateContainer, "llStateContainer");
        llStateContainer.setVisibility(0);
        AppCompatTextView tvConnectFailureTips = getBinding().tvConnectFailureTips;
        Intrinsics.checkNotNullExpressionValue(tvConnectFailureTips, "tvConnectFailureTips");
        tvConnectFailureTips.setVisibility(8);
        getBinding().srLoading.showOnConfirm();
        getBinding().tvState.setText(R.string.connected);
        getBinding().tvForgetOrRetry.setText(R.string.forget);
        AppCompatTextView tvForgetOrRetry = getBinding().tvForgetOrRetry;
        Intrinsics.checkNotNullExpressionValue(tvForgetOrRetry, "tvForgetOrRetry");
        tvForgetOrRetry.setVisibility(this.savedWifi != null ? 0 : 8);
    }

    private final void applyToConnecting() {
        LinearLayoutCompat llStateContainer = getBinding().llStateContainer;
        Intrinsics.checkNotNullExpressionValue(llStateContainer, "llStateContainer");
        llStateContainer.setVisibility(0);
        AppCompatTextView tvConnectFailureTips = getBinding().tvConnectFailureTips;
        Intrinsics.checkNotNullExpressionValue(tvConnectFailureTips, "tvConnectFailureTips");
        tvConnectFailureTips.setVisibility(8);
        if (getBinding().llStateContainer.hasFocus()) {
            getBinding().srLoading.setLoadingTint(ViewCompat.MEASURED_STATE_MASK);
        } else {
            getBinding().srLoading.setLoadingTint(requireContext().getColor(R.color.dark_414141));
        }
        getBinding().srLoading.showLoading();
        getBinding().tvState.setText(R.string.connecting);
        getBinding().tvForgetOrRetry.setText(R.string.forget);
        AppCompatTextView tvForgetOrRetry = getBinding().tvForgetOrRetry;
        Intrinsics.checkNotNullExpressionValue(tvForgetOrRetry, "tvForgetOrRetry");
        tvForgetOrRetry.setVisibility(8);
    }

    private final void applyToDisconnecting() {
        LinearLayoutCompat llStateContainer = getBinding().llStateContainer;
        Intrinsics.checkNotNullExpressionValue(llStateContainer, "llStateContainer");
        llStateContainer.setVisibility(0);
        AppCompatTextView tvConnectFailureTips = getBinding().tvConnectFailureTips;
        Intrinsics.checkNotNullExpressionValue(tvConnectFailureTips, "tvConnectFailureTips");
        tvConnectFailureTips.setVisibility(8);
        if (getBinding().llStateContainer.hasFocus()) {
            getBinding().srLoading.setLoadingTint(ViewCompat.MEASURED_STATE_MASK);
        } else {
            getBinding().srLoading.setLoadingTint(requireContext().getColor(R.color.dark_414141));
        }
        getBinding().srLoading.showLoading();
        getBinding().tvState.setText(R.string.disconnecting);
        getBinding().tvForgetOrRetry.setText(R.string.forget);
        AppCompatTextView tvForgetOrRetry = getBinding().tvForgetOrRetry;
        Intrinsics.checkNotNullExpressionValue(tvForgetOrRetry, "tvForgetOrRetry");
        tvForgetOrRetry.setVisibility(8);
    }

    private final void applyToConnectFailure() {
        LinearLayoutCompat llStateContainer = getBinding().llStateContainer;
        Intrinsics.checkNotNullExpressionValue(llStateContainer, "llStateContainer");
        llStateContainer.setVisibility(8);
        AppCompatTextView tvConnectFailureTips = getBinding().tvConnectFailureTips;
        Intrinsics.checkNotNullExpressionValue(tvConnectFailureTips, "tvConnectFailureTips");
        tvConnectFailureTips.setVisibility(0);
        getBinding().tvForgetOrRetry.setText(R.string.try_again);
        AppCompatTextView tvForgetOrRetry = getBinding().tvForgetOrRetry;
        Intrinsics.checkNotNullExpressionValue(tvForgetOrRetry, "tvForgetOrRetry");
        tvForgetOrRetry.setVisibility(this.savedWifi != null || getHasPassword() ? 0 : 8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this._binding = null;
        super.onDestroyView();
    }

    public WifiDetailFragment() {
        super(R.layout.fragment_wifi_detail);
        final WifiDetailFragment wifiDetailFragment = this;
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(wifiDetailFragment, Reflection.getOrCreateKotlinClass(SettingsNetwork2ViewModel.class), new Function0<ViewModelStore>() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = Fragment.this.requireActivity().getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<CreationExtras>() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function02 = Function0.this;
                if (function02 != null && (creationExtras = (CreationExtras) function02.invoke()) != null) {
                    return creationExtras;
                }
                CreationExtras defaultViewModelCreationExtras = wifiDetailFragment.requireActivity().getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
                return defaultViewModelCreationExtras;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                SettingsNetwork2ViewModel.Companion companion = SettingsNetwork2ViewModel.INSTANCE;
                Application application = WifiDetailFragment.this.requireActivity().getApplication();
                Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
                return companion.provideFactory(application, WifiDetailFragment.this);
            }
        });
    }
}
