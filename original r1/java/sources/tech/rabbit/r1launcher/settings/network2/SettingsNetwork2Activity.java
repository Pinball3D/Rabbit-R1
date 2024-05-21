package tech.rabbit.r1launcher.settings.network2;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.appcompat.app.AppCompatActivity;
import androidx.autofill.HintConstants;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryThread;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.initstep.process.RotateDeviceTipFragment;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel;
import tech.rabbit.r1launcher.settings.network2.detail.WifiDetailFragment;
import tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment;
import tech.rabbit.r1launcher.settings.network2.password.EnterWifiPasswordFragment;
import tech.rabbit.r1launcher.settings.network2.receiver.ConnectivityStateReceiver;
import tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver;
import tech.rabbit.r1launcher.settings.network2.receiver.WifiStateReceiver;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;

/* compiled from: SettingsNetwork2Activity.kt */
@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 I2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001IB\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0016J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020*J\u001a\u0010.\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\n\b\u0002\u0010/\u001a\u0004\u0018\u000100J\u0010\u00101\u001a\u00020&2\u0006\u00102\u001a\u000203H\u0002J\u001a\u00104\u001a\u00020*2\b\u00105\u001a\u0004\u0018\u00010\b2\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020:H\u0016J\u0012\u0010;\u001a\u00020*2\b\u0010<\u001a\u0004\u0018\u00010=H\u0014J\b\u0010>\u001a\u00020*H\u0014J\b\u0010?\u001a\u00020*H\u0014J\b\u0010@\u001a\u00020*H\u0014J\u0010\u0010A\u001a\u00020*2\u0006\u0010B\u001a\u00020CH\u0017J\b\u0010D\u001a\u00020*H\u0016J\b\u0010E\u001a\u00020*H\u0016J\b\u0010F\u001a\u00020*H\u0016J\b\u0010G\u001a\u00020*H\u0016J\f\u0010H\u001a\u00020**\u000203H\u0007R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u000e\u001a\u0004\b\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010\u000e\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u000e\u001a\u0004\b\"\u0010#¨\u0006J"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;", "Landroidx/appcompat/app/AppCompatActivity;", "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;", "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;", "Landroid/hardware/SensorEventListener;", "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;", "()V", "accelerometer", "Landroid/hardware/Sensor;", "enterWifiPasswordFragment", "Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;", "getEnterWifiPasswordFragment", "()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;", "enterWifiPasswordFragment$delegate", "Lkotlin/Lazy;", "networkManagerFragment", "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;", "getNetworkManagerFragment", "()Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;", "networkManagerFragment$delegate", "rotateDeviceTipFragment", "Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;", "getRotateDeviceTipFragment", "()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;", "rotateDeviceTipFragment$delegate", "sensorManager", "Landroid/hardware/SensorManager;", "viewModel", "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "getViewModel", "()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "viewModel$delegate", "wifiDetailFragment", "Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;", "getWifiDetailFragment", "()Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;", "wifiDetailFragment$delegate", "dispatchTouchEvent", "", "ev", "Landroid/view/MotionEvent;", "gotoEnterPassword", "", "wifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "gotoNetworkManager", "gotoWifiDetail", HintConstants.AUTOFILL_HINT_PASSWORD, "", "isCurrentContent", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "onAccuracyChanged", "sensor", "accuracy", "", "onConnectivityStateChange", SentryThread.JsonKeys.STATE, "Landroid/net/NetworkInfo$State;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onPause", "onResume", "onSensorChanged", NotificationCompat.CATEGORY_EVENT, "Landroid/hardware/SensorEvent;", "onSimStateChangeToLoaded", "onSimStateChangeToNotLoaded", "onWifiStateChangeToDisable", "onWifiStateChangeToEnable", "goto", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingsNetwork2Activity extends AppCompatActivity implements SimStateReceiver.OnSimStateListener, WifiStateReceiver.OnWifiStateListener, SensorEventListener, ConnectivityStateReceiver.OnConnectivityStateListener {
    private Sensor accelerometer;
    private SensorManager sensorManager;

    /* renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* renamed from: networkManagerFragment$delegate, reason: from kotlin metadata */
    private final Lazy networkManagerFragment = LazyKt.lazy(new Function0<NetworkManagerFragment>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$networkManagerFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final NetworkManagerFragment invoke() {
            return new NetworkManagerFragment();
        }
    });

    /* renamed from: wifiDetailFragment$delegate, reason: from kotlin metadata */
    private final Lazy wifiDetailFragment = LazyKt.lazy(new Function0<WifiDetailFragment>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$wifiDetailFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final WifiDetailFragment invoke() {
            return new WifiDetailFragment();
        }
    });

    /* renamed from: rotateDeviceTipFragment$delegate, reason: from kotlin metadata */
    private final Lazy rotateDeviceTipFragment = LazyKt.lazy(new Function0<RotateDeviceTipFragment>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$rotateDeviceTipFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final RotateDeviceTipFragment invoke() {
            return new RotateDeviceTipFragment();
        }
    });

    /* renamed from: enterWifiPasswordFragment$delegate, reason: from kotlin metadata */
    private final Lazy enterWifiPasswordFragment = LazyKt.lazy(new Function0<EnterWifiPasswordFragment>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$enterWifiPasswordFragment$2
        @Override // kotlin.jvm.functions.Function0
        public final EnterWifiPasswordFragment invoke() {
            return new EnterWifiPasswordFragment();
        }
    });

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        return false;
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
    }

    public SettingsNetwork2Activity() {
        final SettingsNetwork2Activity settingsNetwork2Activity = this;
        final Function0 function0 = null;
        this.viewModel = new ViewModelLazy(Reflection.getOrCreateKotlinClass(SettingsNetwork2ViewModel.class), new Function0<ViewModelStore>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return ComponentActivity.this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                SettingsNetwork2ViewModel.Companion companion = SettingsNetwork2ViewModel.INSTANCE;
                Application application = SettingsNetwork2Activity.this.getApplication();
                Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
                return companion.provideFactory(application, SettingsNetwork2Activity.this);
            }
        }, new Function0<CreationExtras>() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$special$$inlined$viewModels$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function02 = Function0.this;
                return (function02 == null || (creationExtras = (CreationExtras) function02.invoke()) == null) ? settingsNetwork2Activity.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    /* compiled from: SettingsNetwork2Activity.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;", "", "()V", "launch", "", "activity", "Landroid/app/Activity;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void launch(Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            activity.startActivity(new Intent(activity, (Class<?>) SettingsNetwork2Activity.class));
        }
    }

    private final SettingsNetwork2ViewModel getViewModel() {
        return (SettingsNetwork2ViewModel) this.viewModel.getValue();
    }

    private final NetworkManagerFragment getNetworkManagerFragment() {
        return (NetworkManagerFragment) this.networkManagerFragment.getValue();
    }

    private final WifiDetailFragment getWifiDetailFragment() {
        return (WifiDetailFragment) this.wifiDetailFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RotateDeviceTipFragment getRotateDeviceTipFragment() {
        return (RotateDeviceTipFragment) this.rotateDeviceTipFragment.getValue();
    }

    private final EnterWifiPasswordFragment getEnterWifiPasswordFragment() {
        return (EnterWifiPasswordFragment) this.enterWifiPasswordFragment.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        SettingsNetwork2Activity settingsNetwork2Activity = this;
        SimStateReceiver.INSTANCE.register(settingsNetwork2Activity, this);
        WifiStateReceiver.INSTANCE.register(settingsNetwork2Activity, this);
        ConnectivityStateReceiver.INSTANCE.register(settingsNetwork2Activity, this);
        Object systemService = getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        SensorManager sensorManager = (SensorManager) systemService;
        this.sensorManager = sensorManager;
        if (sensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
            sensorManager = null;
        }
        this.accelerometer = sensorManager.getDefaultSensor(1);
        gotoNetworkManager();
        getViewModel().scanWifiIfEnable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
            sensorManager = null;
        }
        sensorManager.registerListener(this, this.accelerometer, 3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        SensorManager sensorManager = this.sensorManager;
        if (sensorManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorManager");
            sensorManager = null;
        }
        sensorManager.unregisterListener(this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        SettingsNetwork2Activity settingsNetwork2Activity = this;
        SimStateReceiver.INSTANCE.unregister(settingsNetwork2Activity);
        WifiStateReceiver.INSTANCE.unregister(settingsNetwork2Activity);
        ConnectivityStateReceiver.INSTANCE.unregister(settingsNetwork2Activity);
        super.onDestroy();
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver.OnSimStateListener
    public void onSimStateChangeToLoaded() {
        SettingsNetwork2ViewModel viewModel = getViewModel();
        SystemControllerUtil systemControllerUtil = SystemControllerUtil.INSTANCE;
        Application application = getApplication();
        Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
        viewModel.updateCellularUIState(systemControllerUtil.isCellularEnabled(application));
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver.OnSimStateListener
    public void onSimStateChangeToNotLoaded() {
        getViewModel().updateCellularUIState(false);
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.WifiStateReceiver.OnWifiStateListener
    public void onWifiStateChangeToEnable() {
        getViewModel().resetScanWifi();
        getViewModel().scanWifiIfEnable();
        getViewModel().updateWifiUIState(true);
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.WifiStateReceiver.OnWifiStateListener
    public void onWifiStateChangeToDisable() {
        getViewModel().resetScanWifi();
        getViewModel().clearScanWifiResult();
        getViewModel().updateWifiUIState(false);
    }

    @Override // tech.rabbit.r1launcher.settings.network2.receiver.ConnectivityStateReceiver.OnConnectivityStateListener
    public void onConnectivityStateChange(NetworkInfo.State state) {
        Intrinsics.checkNotNullParameter(state, "state");
        if (state == NetworkInfo.State.CONNECTED || state == NetworkInfo.State.DISCONNECTED) {
            getViewModel().resetScanWifi();
            getViewModel().scanWifiIfEnable();
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.sensor.getType() != 1) {
            return;
        }
        float f = event.values[0];
        if (f < -8.0f) {
            if (getRequestedOrientation() == 1 && isCurrentContent(getRotateDeviceTipFragment())) {
                setRequestedOrientation(8);
                m7489goto(getEnterWifiPasswordFragment());
                return;
            }
            return;
        }
        if (f > 0.0f && getRequestedOrientation() == 8 && isCurrentContent(getEnterWifiPasswordFragment())) {
            setRequestedOrientation(1);
            gotoWifiDetail$default(this, getEnterWifiPasswordFragment().getWifi(), null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCurrentContent(Fragment fragment) {
        return getSupportFragmentManager().getFragments().indexOf(fragment) >= 0;
    }

    public static /* synthetic */ void gotoWifiDetail$default(SettingsNetwork2Activity settingsNetwork2Activity, Wifi wifi, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        settingsNetwork2Activity.gotoWifiDetail(wifi, str);
    }

    public final void gotoWifiDetail(Wifi wifi, String password) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        getViewModel().saveLastSelectedWifi(wifi);
        getWifiDetailFragment().setWifi(wifi);
        getWifiDetailFragment().setPassword(password);
        m7489goto(getWifiDetailFragment());
    }

    public final void gotoNetworkManager() {
        m7489goto(getNetworkManagerFragment());
    }

    public final void gotoEnterPassword(final Wifi wifi) {
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        getEnterWifiPasswordFragment().setWifi(wifi);
        m7489goto(getRotateDeviceTipFragment());
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        decorView.postDelayed(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                RotateDeviceTipFragment rotateDeviceTipFragment;
                boolean isCurrentContent;
                SettingsNetwork2Activity settingsNetwork2Activity = SettingsNetwork2Activity.this;
                rotateDeviceTipFragment = settingsNetwork2Activity.getRotateDeviceTipFragment();
                isCurrentContent = settingsNetwork2Activity.isCurrentContent(rotateDeviceTipFragment);
                if (isCurrentContent) {
                    SettingsNetwork2Activity.gotoWifiDetail$default(SettingsNetwork2Activity.this, wifi, null, 2, null);
                }
            }
        }, 30000L);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m7489goto(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        getSupportFragmentManager().beginTransaction().replace(R.id.content, fragment).commitNowAllowingStateLoss();
    }
}
