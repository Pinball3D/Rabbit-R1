package tech.rabbit.r1launcher;

import android.app.ActivityOptions;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.KeyEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import defpackage.AppConfig;
import defpackage.DeviceControl;
import defpackage.DeviceEventsDispatcher;
import defpackage.TaskEventReporter;
import defpackage.TaskOperationDistributor;
import defpackage.UpdateHelper;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.dart.DartExecutor;
import io.flutter.plugin.common.BinaryMessenger;
import io.sentry.Sentry;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroid;
import io.sentry.android.core.SentryAndroidOptions;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.KotlinUtilKt;
import tech.rabbit.common.utils.RLog;
import tech.rabbit.common.utils.RabbitCommon;
import tech.rabbit.common.utils.ShakeUtils;
import tech.rabbit.r1launcher.geoLocation.GeoLocationManager;
import tech.rabbit.r1launcher.initstep.InitStepActivity;
import tech.rabbit.r1launcher.platform_views.CameraPreviewViewFactory;
import tech.rabbit.r1launcher.platform_views.VideoCallPageFactory;
import tech.rabbit.r1launcher.rabbit.KeyEventHandler;
import tech.rabbit.r1launcher.rabbit.RabbitServices;
import tech.rabbit.r1launcher.rabbit.ScreenOffOp;
import tech.rabbit.r1launcher.rabbit.TTSPlayer;
import tech.rabbit.r1launcher.rabbit.VoiceRecorder;
import tech.rabbit.r1launcher.receiver.BatteryLevelBroadcastReceiver;
import tech.rabbit.r1launcher.receiver.ScreenBroadcastReceiver;
import tech.rabbit.r1launcher.settings.Settings2Activity;
import tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2Activity;
import tech.rabbit.r1launcher.utils.CameraController;
import tech.rabbit.r1launcher.utils.HardWareHelperKt;
import tech.rabbit.r1launcher.wss.Constant;
import tech.rabbit.r1launcher.wss.LoginState;
import tech.rabbit.r1launcher.wss.RabbitEngine;
import tech.rabbit.r1launcher.wss.RabbitWebSocketListener;
import tech.rabbit.r1launcher.wss.WebSocketManager;
import tech.rabbit.r1launcher.wss.WebSocketValve;
import tech.rabbit.r1launcher.wss.rtc.RTCInstance;
import tech.rabbit.r1systemupdater.model.UpdateConfig;

/* compiled from: MainActivity.kt */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010&\u001a\u00020\u0019H\u0016J\u000e\u0010'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020\u0017J\u0006\u0010)\u001a\u00020\u0019J\b\u0010*\u001a\u00020\u0019H\u0002J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010,\u001a\u00020-H\u0016J\b\u0010.\u001a\u00020\u0019H\u0016J\b\u0010/\u001a\u00020\u0019H\u0016J\b\u00100\u001a\u00020\fH\u0016J\b\u00101\u001a\u00020\u0014H\u0016J\b\u00102\u001a\u000203H\u0016J\b\u00104\u001a\u000203H\u0016J\b\u00105\u001a\u00020\u0019H\u0016J\u0012\u00106\u001a\u00020\u00192\b\u00107\u001a\u0004\u0018\u000108H\u0014J\b\u00109\u001a\u00020\u0019H\u0014J\b\u0010:\u001a\u00020\u0019H\u0016J\u001a\u0010;\u001a\u00020\f2\u0006\u0010<\u001a\u00020#2\b\u0010=\u001a\u0004\u0018\u00010>H\u0016J\u001a\u0010?\u001a\u00020\f2\u0006\u0010<\u001a\u00020#2\b\u0010=\u001a\u0004\u0018\u00010>H\u0016J\b\u0010@\u001a\u00020\u0019H\u0014J\b\u0010A\u001a\u00020\u0019H\u0014J\b\u0010B\u001a\u00020\u0019H\u0016J\b\u0010C\u001a\u00020\u0019H\u0016J\b\u0010D\u001a\u00020\u0019H\u0016J\u0010\u0010E\u001a\u00020\u00192\u0006\u0010F\u001a\u00020GH\u0016J\b\u0010H\u001a\u00020\u0019H\u0014J\b\u0010I\u001a\u00020\u0019H\u0014J\b\u0010J\u001a\u00020\u0019H\u0016J\u0010\u0010K\u001a\u00020\u00192\u0006\u0010L\u001a\u00020MH\u0002J\u0010\u0010N\u001a\u00020\u00192\u0006\u0010O\u001a\u00020\u0014H\u0016J\u0012\u0010P\u001a\u00020\u00192\b\u0010Q\u001a\u0004\u0018\u00010RH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0012\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0015\u001a\u001a\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00190\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082.¢\u0006\u0002\n\u0000¨\u0006S"}, d2 = {"Ltech/rabbit/r1launcher/MainActivity;", "Lio/flutter/embedding/android/FlutterActivity;", "LDeviceControl;", "Ltech/rabbit/common/utils/ShakeUtils$OnShakeListener;", "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;", "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;", "()V", "batteryChargingStateBroadcastReceiver", "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;", "deviceEvents", "LDeviceEventsDispatcher;", "hasInit", "", "value", "isCharging", "setCharging", "(Z)V", "isRotationEnabled", "setRotationEnabled", "lastShakeTime", "", "listener", "Lkotlin/Function3;", "Landroid/content/Context;", "Landroid/bluetooth/BluetoothDevice;", "", "orientationListener", "Landroid/view/OrientationEventListener;", "rotationMessageHandler", "Landroid/os/Handler;", "runnable", "Ljava/lang/Runnable;", "screenBroadcastReceiver", "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;", "shakeThreshold", "", "taskOperationDistributor", "LTaskOperationDistributor;", "addScreenOnFlag", "checkNetworkConnection", "context", "checkPermissions", "checkUpdate", "configureFlutterEngine", "flutterEngine", "Lio/flutter/embedding/engine/FlutterEngine;", "disableRotation", "enableRotation", "getBatteryChargingState", "getBatteryLevel", "getVersion", "", "getVersionBrief", "onCharging", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onDisCharging", "onKeyDown", "keyCode", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onKeyUp", "onPause", "onResume", "onScreenOff", "onScreenOn", "onScreenUnlock", "onShake", "speed", "", "onStart", "onStop", "removeScreenOnFlag", "setDartMessenger", "binaryMessenger", "Lio/flutter/plugin/common/BinaryMessenger;", "setVolume", "level", "startUpdateActivity", "config", "Ltech/rabbit/r1systemupdater/model/UpdateConfig;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MainActivity extends FlutterActivity implements DeviceControl, ShakeUtils.OnShakeListener, ScreenBroadcastReceiver.OnScreenStateChangeListener, BatteryLevelBroadcastReceiver.OnBatteryChargingStateChangeListener {
    public static final int $stable = 8;
    private BatteryLevelBroadcastReceiver batteryChargingStateBroadcastReceiver;
    private DeviceEventsDispatcher deviceEvents;
    private boolean hasInit;
    private boolean isCharging;
    private boolean isRotationEnabled;
    private long lastShakeTime;
    private OrientationEventListener orientationListener;
    private ScreenBroadcastReceiver screenBroadcastReceiver;
    private TaskOperationDistributor taskOperationDistributor;
    private final int shakeThreshold = 2000;
    private final Function3<Context, BluetoothDevice, Boolean, Unit> listener = new Function3<Context, BluetoothDevice, Boolean, Unit>() { // from class: tech.rabbit.r1launcher.MainActivity$listener$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice, Boolean bool) {
            invoke(context, bluetoothDevice, bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Context context, BluetoothDevice bluetoothDevice, boolean z) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bluetoothDevice, "<anonymous parameter 1>");
            if (z) {
                RTCInstance.setBluetoothScoOn(context);
            } else {
                RTCInstance.setSpeakerphoneOn(context);
            }
        }
    };
    private final Handler rotationMessageHandler = new Handler(Looper.getMainLooper());
    private Runnable runnable = new Runnable() { // from class: tech.rabbit.r1launcher.MainActivity$$ExternalSyntheticLambda2
        @Override // java.lang.Runnable
        public final void run() {
            MainActivity.runnable$lambda$0();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runnable$lambda$0() {
    }

    @Override // defpackage.DeviceControl
    public String getVersion() {
        return BuildConfig.VERSION_NAME;
    }

    @Override // tech.rabbit.r1launcher.receiver.ScreenBroadcastReceiver.OnScreenStateChangeListener
    public void onScreenUnlock() {
    }

    private final void setRotationEnabled(boolean z) {
        this.isRotationEnabled = z;
        if (z) {
            return;
        }
        setRequestedOrientation(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        long currentTimeMillis = System.currentTimeMillis();
        super.onCreate(savedInstanceState);
        getWindow().addFlags(16);
        overridePendingTransition(0, 0);
        RabbitCommon.INSTANCE.setSWeakActivity(this);
        final WindowInsetsControllerCompat insetsController = WindowCompat.getInsetsController(getWindow(), getWindow().getDecorView());
        Intrinsics.checkNotNullExpressionValue(insetsController, "getInsetsController(...)");
        insetsController.setSystemBarsBehavior(2);
        getWindow().getDecorView().setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: tech.rabbit.r1launcher.MainActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsets onCreate$lambda$1;
                onCreate$lambda$1 = MainActivity.onCreate$lambda$1(WindowInsetsControllerCompat.this, view, windowInsets);
                return onCreate$lambda$1;
            }
        });
        if (CameraController.INSTANCE.isNeedRotate(true, true)) {
            CameraController.INSTANCE.rotateToPrivacy();
        }
        RabbitServices.INSTANCE.setup();
        checkPermissions();
        MainActivity mainActivity = this;
        BluetoothManager.INSTANCE.initMonitor(mainActivity);
        BluetoothManager.INSTANCE.addOnDeviceConnectedListener(this.listener);
        this.screenBroadcastReceiver = ScreenBroadcastReceiver.INSTANCE.register(mainActivity, this);
        this.batteryChargingStateBroadcastReceiver = BatteryLevelBroadcastReceiver.INSTANCE.register(mainActivity, this);
        ShakeUtils.getInstance().setup(mainActivity);
        GeoLocationManager.INSTANCE.requestLocationDuringDeviceInit();
        Log.i("MainActivity", "onCreate cost: " + (System.currentTimeMillis() - currentTimeMillis));
        setRotationEnabled(false);
        this.orientationListener = new RBOrientationListener(mainActivity, new MainActivity$onCreate$2(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsets onCreate$lambda$1(WindowInsetsControllerCompat windowInsetsController, View view, WindowInsets windowInsets) {
        Intrinsics.checkNotNullParameter(windowInsetsController, "$windowInsetsController");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        windowInsetsController.hide(WindowInsetsCompat.Type.systemBars());
        return view.onApplyWindowInsets(windowInsets);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        BluetoothManager.INSTANCE.removeOnDeviceConnectedListener(this.listener);
        ScreenBroadcastReceiver.Companion companion = ScreenBroadcastReceiver.INSTANCE;
        MainActivity mainActivity = this;
        ScreenBroadcastReceiver screenBroadcastReceiver = this.screenBroadcastReceiver;
        if (screenBroadcastReceiver == null) {
            Intrinsics.throwUninitializedPropertyAccessException("screenBroadcastReceiver");
            screenBroadcastReceiver = null;
        }
        companion.unregister(mainActivity, screenBroadcastReceiver);
        BatteryLevelBroadcastReceiver.Companion companion2 = BatteryLevelBroadcastReceiver.INSTANCE;
        BatteryLevelBroadcastReceiver batteryLevelBroadcastReceiver = this.batteryChargingStateBroadcastReceiver;
        if (batteryLevelBroadcastReceiver == null) {
            Intrinsics.throwUninitializedPropertyAccessException("batteryChargingStateBroadcastReceiver");
            batteryLevelBroadcastReceiver = null;
        }
        companion2.unregister(mainActivity, batteryLevelBroadcastReceiver);
        WebSocketManager.INSTANCE.disconnect();
        RTCInstance.getInstance().mContext = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onResume() {
        WeakReference weakReference;
        FlutterEngine flutterEngine;
        DartExecutor dartExecutor;
        BinaryMessenger binaryMessenger;
        DartExecutor dartExecutor2;
        super.onResume();
        getWindow().clearFlags(16);
        ShakeUtils.getInstance().bindShakeListener(this);
        if (!AppConfig.INSTANCE.isEnabledTerminal()) {
            setRequestedOrientation(1);
        }
        if (!Constant.hasPasscode() || !Constant.hasLoginToken()) {
            InitStepActivity.INSTANCE.launch(this);
        } else {
            checkNetworkConnection(this);
        }
        weakReference = MainActivityKt.globalBinaryMessenger;
        Object obj = weakReference.get();
        FlutterEngine flutterEngine2 = getFlutterEngine();
        if (!Intrinsics.areEqual(obj, (flutterEngine2 == null || (dartExecutor2 = flutterEngine2.getDartExecutor()) == null) ? null : dartExecutor2.getBinaryMessenger()) && (flutterEngine = getFlutterEngine()) != null && (dartExecutor = flutterEngine.getDartExecutor()) != null && (binaryMessenger = dartExecutor.getBinaryMessenger()) != null) {
            setDartMessenger(binaryMessenger);
        }
        Log.i("MainActivity", "onResume " + AppConfig.INSTANCE.getVersionBrief());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        ShakeUtils.getInstance().unBindShakeListener(this);
        Log.i("MainActivity", "onPause " + AppConfig.INSTANCE.getVersionBrief());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        OrientationEventListener orientationEventListener = this.orientationListener;
        if (orientationEventListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("orientationListener");
            orientationEventListener = null;
        }
        orientationEventListener.enable();
        Log.i("MainActivity", "onStart " + AppConfig.INSTANCE.getVersionBrief());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        OrientationEventListener orientationEventListener = this.orientationListener;
        if (orientationEventListener == null) {
            Intrinsics.throwUninitializedPropertyAccessException("orientationListener");
            orientationEventListener = null;
        }
        orientationEventListener.disable();
        Log.i("MainActivity", "onStop " + AppConfig.INSTANCE.getVersionBrief());
    }

    @Override // io.flutter.embedding.android.FlutterActivity, io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, io.flutter.embedding.android.FlutterEngineConfigurator
    public void configureFlutterEngine(FlutterEngine flutterEngine) {
        Intrinsics.checkNotNullParameter(flutterEngine, "flutterEngine");
        long currentTimeMillis = System.currentTimeMillis();
        super.configureFlutterEngine(flutterEngine);
        flutterEngine.getPlatformViewsController().getRegistry().registerViewFactory("platform/VideoCallPage", VideoCallPageFactory.INSTANCE);
        flutterEngine.getPlatformViewsController().getRegistry().registerViewFactory("platform/CameraPreviewView", CameraPreviewViewFactory.INSTANCE);
        BinaryMessenger binaryMessenger = flutterEngine.getDartExecutor().getBinaryMessenger();
        Intrinsics.checkNotNullExpressionValue(binaryMessenger, "getBinaryMessenger(...)");
        setDartMessenger(binaryMessenger);
        Log.i("MainActivity", "configureFlutterEngine cost: " + (System.currentTimeMillis() - currentTimeMillis));
    }

    private final void setDartMessenger(BinaryMessenger binaryMessenger) {
        MainActivityKt.globalBinaryMessenger = new WeakReference(binaryMessenger);
        this.deviceEvents = new DeviceEventsDispatcher(binaryMessenger);
        this.taskOperationDistributor = new TaskOperationDistributor(binaryMessenger);
        TaskEventReporter.INSTANCE.setUp(binaryMessenger, RabbitEngine.INSTANCE);
        DeviceControl.INSTANCE.setUp(binaryMessenger, this);
        RabbitEngine rabbitEngine = RabbitEngine.INSTANCE;
        TaskOperationDistributor taskOperationDistributor = this.taskOperationDistributor;
        DeviceEventsDispatcher deviceEventsDispatcher = null;
        if (taskOperationDistributor == null) {
            Intrinsics.throwUninitializedPropertyAccessException("taskOperationDistributor");
            taskOperationDistributor = null;
        }
        rabbitEngine.setup(taskOperationDistributor);
        KeyEventHandler keyEventHandler = KeyEventHandler.INSTANCE;
        DeviceEventsDispatcher deviceEventsDispatcher2 = this.deviceEvents;
        if (deviceEventsDispatcher2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deviceEvents");
        } else {
            deviceEventsDispatcher = deviceEventsDispatcher2;
        }
        keyEventHandler.setup(deviceEventsDispatcher);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return KeyEventHandler.INSTANCE.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int keyCode, KeyEvent event) {
        return KeyEventHandler.INSTANCE.onKeyUp(keyCode, event);
    }

    @Override // defpackage.DeviceControl
    public void setVolume(long level) {
        RLog.i("MainActivity", "setVolume: " + level);
    }

    @Override // defpackage.DeviceControl
    public String getVersionBrief() {
        return AppConfig.INSTANCE.getVersionBrief() + '\n' + Build.DISPLAY;
    }

    @Override // defpackage.DeviceControl
    public long getBatteryLevel() {
        return HardWareHelperKt.batteryLevel();
    }

    @Override // defpackage.DeviceControl
    public boolean getBatteryChargingState() {
        return HardWareHelperKt.isCharging(this);
    }

    @Override // defpackage.DeviceControl
    public void enableRotation() {
        setRotationEnabled(true);
    }

    @Override // defpackage.DeviceControl
    public void disableRotation() {
        setRotationEnabled(false);
    }

    @Override // defpackage.DeviceControl
    public void addScreenOnFlag() {
        getWindow().addFlags(128);
    }

    @Override // defpackage.DeviceControl
    public void removeScreenOnFlag() {
        getWindow().clearFlags(128);
    }

    @Override // tech.rabbit.common.utils.ShakeUtils.OnShakeListener
    public void onShake(double speed) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.lastShakeTime < this.shakeThreshold) {
            String lostMode = Constant.getLostMode();
            if (lostMode == null || lostMode.length() == 0) {
                Settings2Activity.INSTANCE.launch(this);
            } else {
                SettingsNetwork2Activity.INSTANCE.launch(this);
            }
        }
        this.lastShakeTime = currentTimeMillis;
        RLog.i("MainActivity", "onShake: " + speed);
        DeviceEventsDispatcher deviceEventsDispatcher = this.deviceEvents;
        if (deviceEventsDispatcher == null) {
            Intrinsics.throwUninitializedPropertyAccessException("deviceEvents");
            deviceEventsDispatcher = null;
        }
        deviceEventsDispatcher.onShake(new Function1<Result<? extends Unit>, Unit>() { // from class: tech.rabbit.r1launcher.MainActivity$onShake$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Unit> result) {
                m7461invoke(result.getValue());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: collision with other method in class */
            public final void m7461invoke(Object obj) {
                boolean m5705isSuccessimpl = Result.m5705isSuccessimpl(obj);
                if (m5705isSuccessimpl) {
                    System.out.println((Object) "Success");
                } else {
                    if (m5705isSuccessimpl) {
                        return;
                    }
                    System.out.println((Object) "Failure");
                }
            }
        });
    }

    public final void checkPermissions() {
        if (Build.VERSION.SDK_INT >= 33) {
            MainActivity mainActivity = this;
            if (ContextCompat.checkSelfPermission(mainActivity, "android.permission.READ_MEDIA_IMAGES") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.READ_MEDIA_VIDEO") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.READ_MEDIA_AUDIO") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.RECORD_AUDIO") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.BLUETOOTH") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.BLUETOOTH_CONNECT") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.BLUETOOTH_ADMIN") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.BLUETOOTH_SCAN") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.WRITE_SETTINGS") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.ACCESS_COARSE_LOCATION") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.NEARBY_WIFI_DEVICES") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.BLUETOOTH_PRIVILEGED") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.NETWORK_SETTINGS") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.NETWORK_STACK") == 0 && ContextCompat.checkSelfPermission(mainActivity, "android.permission.NETWORK_SETUP_WIZARD") == 0) {
                return;
            }
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO", "android.permission.READ_MEDIA_AUDIO", "android.permission.RECORD_AUDIO", "android.permission.BLUETOOTH", "android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_ADMIN", "android.permission.BLUETOOTH_SCAN", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.NEARBY_WIFI_DEVICES", "android.permission.BLUETOOTH_PRIVILEGED", "android.permission.NETWORK_STACK", "android.permission.NETWORK_SETTINGS", "android.permission.NETWORK_SETUP_WIZARD"}, 1);
            return;
        }
        MainActivity mainActivity2 = this;
        if (ContextCompat.checkSelfPermission(mainActivity2, "android.permission.READ_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(mainActivity2, "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(mainActivity2, "android.permission.RECORD_AUDIO") == 0 && ContextCompat.checkSelfPermission(mainActivity2, "android.permission.ACCESS_COARSE_LOCATION") == 0 && ContextCompat.checkSelfPermission(mainActivity2, "android.permission.ACCESS_FINE_LOCATION") == 0 && ContextCompat.checkSelfPermission(mainActivity2, "android.permission.NEARBY_WIFI_DEVICES") == 0) {
            return;
        }
        ActivityCompat.requestPermissions(this, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.RECORD_AUDIO", "android.permission.RECORD_AUDIO", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION", "android.permission.NEARBY_WIFI_DEVICES"}, 1);
    }

    public final void checkNetworkConnection(final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            RabbitEngine.INSTANCE.sendLoginState(LoginState.NoNetwork);
            KotlinUtilKt.postDelayOnMainThread(1000L, new Function0<Unit>() { // from class: tech.rabbit.r1launcher.MainActivity$checkNetworkConnection$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    MainActivity.this.checkNetworkConnection(context);
                }
            });
        } else {
            if (!this.hasInit) {
                MainActivity mainActivity = this;
                SentryAndroid.init(mainActivity, (Sentry.OptionsConfiguration<SentryAndroidOptions>) new Sentry.OptionsConfiguration() { // from class: tech.rabbit.r1launcher.MainActivity$$ExternalSyntheticLambda1
                    @Override // io.sentry.Sentry.OptionsConfiguration
                    public final void configure(SentryOptions sentryOptions) {
                        MainActivity.checkNetworkConnection$lambda$3((SentryAndroidOptions) sentryOptions);
                    }
                });
                RTCInstance.getInstance().mContext = mainActivity;
                WebSocketManager.INSTANCE.addMessageListener(RabbitWebSocketListener.INSTANCE);
                VoiceRecorder.INSTANCE.init(this);
                checkUpdate();
                this.hasInit = true;
            }
            WebSocketManager.INSTANCE.connect();
        }
        String lostMode = Constant.getLostMode();
        if (lostMode == null || lostMode.length() == 0) {
            return;
        }
        RabbitEngine.INSTANCE.updateLostMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkNetworkConnection$lambda$3(SentryAndroidOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        options.setSampleRate(Double.valueOf(BuildConfig.SENTRY_SAMPLE_RATE));
    }

    @Override // tech.rabbit.r1launcher.receiver.ScreenBroadcastReceiver.OnScreenStateChangeListener
    public void onScreenOn() {
        RabbitEngine.INSTANCE.updateDeviceStatus(true);
        if (Constant.hasPasscode() && Constant.hasLoginToken() && HardWareHelperKt.isNetworkConnected(this)) {
            checkUpdate();
        }
        Log.i("MainActivity", "onScreenOn: ");
        WebSocketValve.INSTANCE.onScreenOn(this);
        ScreenOffOp.INSTANCE.setScreenOn(true);
    }

    @Override // tech.rabbit.r1launcher.receiver.ScreenBroadcastReceiver.OnScreenStateChangeListener
    public void onScreenOff() {
        RabbitEngine.INSTANCE.updateDeviceStatus(false);
        Log.i("MainActivity", "onScreenOff: ");
        WebSocketValve.INSTANCE.onScreenOff(this);
        TTSPlayer.INSTANCE.stop();
        ScreenOffOp.INSTANCE.setScreenOn(false);
    }

    private final void setCharging(boolean z) {
        RabbitEngine.INSTANCE.onChargingStateChange(z);
    }

    @Override // tech.rabbit.r1launcher.receiver.BatteryLevelBroadcastReceiver.OnBatteryChargingStateChangeListener
    public void onDisCharging() {
        setCharging(false);
        Log.i("BatteryBroadcastReceive:", "battery：noCharging...");
    }

    @Override // tech.rabbit.r1launcher.receiver.BatteryLevelBroadcastReceiver.OnBatteryChargingStateChangeListener
    public void onCharging() {
        setCharging(true);
        Log.i("BatteryBroadcastReceive:", "battery：Charging...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startUpdateActivity(UpdateConfig config) {
        Intent intent = new Intent("tech.rabbit.r1launcher.action.UPDATE_CHECK");
        intent.addFlags(268435456);
        intent.putExtra(UpdateHelper.UPDATE_CONFIG_KEY, config);
        startActivity(intent, ActivityOptions.makeCustomAnimation(this, 0, 0).toBundle());
    }

    private final void checkUpdate() {
        UpdateHelper.INSTANCE.triggerOnceCheckInSubThread(this, new Function1<UpdateConfig, Unit>() { // from class: tech.rabbit.r1launcher.MainActivity$checkUpdate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(UpdateConfig updateConfig) {
                invoke2(updateConfig);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(UpdateConfig updateConfig) {
                if (updateConfig != null) {
                    MainActivity.this.startUpdateActivity(updateConfig);
                }
            }
        });
    }
}
