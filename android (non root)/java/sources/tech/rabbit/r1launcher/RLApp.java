package tech.rabbit.r1launcher;

import android.app.Application;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import defpackage.AppConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.mediasoup.droid.MediasoupClient;
import tech.rabbit.common.utils.RabbitCommon;
import tech.rabbit.r1launcher.rabbit.RabbitServices;
import tech.rabbit.r1launcher.utils.OkHttpUtil;
import tech.rabbit.r1launcher.wss.WebSocketManager;
import tech.rabbit.r1launcher.wss.rtc.RTCInstance;

/* compiled from: RLApp.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Ltech/rabbit/r1launcher/RLApp;", "Landroid/app/Application;", "()V", "getAppVersion", "", "getOSFingerprint", "onCreate", "", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RLApp extends Application {
    public static final int $stable = 0;

    @Override // android.app.Application
    public void onCreate() {
        Log.i("r1Launcher", "startUp " + AppConfig.INSTANCE.getVersionBrief());
        super.onCreate();
        RLApp rLApp = this;
        AppConfig.INSTANCE.setAppContext(rLApp);
        OkHttpUtil.setDeviceId(AppConfig.INSTANCE.getDeviceId());
        Settings.Global.putInt(getContentResolver(), "auto_time_zone", 1);
        WebSocketManager.INSTANCE.setRabbitServiceUrl(BuildConfig.RABBIT_SERVICE_URL);
        WebSocketManager.INSTANCE.setDeviceId(AppConfig.INSTANCE.getDeviceId());
        WebSocketManager.INSTANCE.setAppVersion(getAppVersion());
        WebSocketManager.INSTANCE.setOsVersion(getOSFingerprint());
        RabbitServices.INSTANCE.setup();
        RabbitCommon.INSTANCE.setSContext(rLApp);
        MediasoupClient.initialize(rLApp);
        RTCInstance.getInstance().mContext = rLApp;
    }

    private final String getAppVersion() {
        String versionName = getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        Intrinsics.checkNotNullExpressionValue(versionName, "versionName");
        return versionName;
    }

    private final String getOSFingerprint() {
        String FINGERPRINT = Build.FINGERPRINT;
        Intrinsics.checkNotNullExpressionValue(FINGERPRINT, "FINGERPRINT");
        return FINGERPRINT;
    }
}
