package tech.rabbit.r1launcher.settings.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Environment;
import android.os.IBinder;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.format.Formatter;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import tech.rabbit.r1launcher.components.wifiutils.WifiUtils;
import tech.rabbit.r1launcher.components.wifiutils.wifiState.WifiStateListener;
import tech.rabbit.r1launcher.initstep.model.Wifi;

/* compiled from: SystemControllerUtil.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0010\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0004J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0006\u0010\u001a\u001a\u00020\u0016¨\u0006\u001b"}, d2 = {"Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;", "", "()V", "disconnectWifi", "", "context", "Landroid/content/Context;", "wifi", "Ltech/rabbit/r1launcher/initstep/model/Wifi;", "getCurrentConnectedWifi", "getDeviceRamSize", "", "getDeviceStorage", "getImei", "getSavedWifiListFromSystem", "", "isCellularEnabled", "isSimCardExist", "isWifiEnable", "setCellularEnable", "isEnabled", "setWifiEnable", "", "isEnable", "listener", "Ltech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;", "shutdownDevice", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SystemControllerUtil {
    public static final int $stable = 0;
    public static final SystemControllerUtil INSTANCE = new SystemControllerUtil();

    private SystemControllerUtil() {
    }

    public final void shutdownDevice() {
        System.out.println((Object) "sys.shutdown");
        try {
            Object invoke = Class.forName("android.os.IPowerManager$Stub").getMethod("asInterface", IBinder.class).invoke(null, Class.forName("android.os.ServiceManager").getMethod("getService", String.class).invoke(null, "power"));
            invoke.getClass().getMethod("shutdown", Boolean.TYPE, String.class, Boolean.TYPE).invoke(invoke, false, null, true);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final String getImei(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(TelephonyManager.class);
        String imei = telephonyManager != null ? telephonyManager.getImei() : null;
        String str = imei;
        return (str == null || str.length() == 0) ? "aid" + Settings.Secure.getString(context.getContentResolver(), "android_id") : imei;
    }

    public final String getDeviceRamSize(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService(ActivityManager.class)).getMemoryInfo(memoryInfo);
        String formatFileSize = Formatter.formatFileSize(context, memoryInfo.totalMem);
        Intrinsics.checkNotNullExpressionValue(formatFileSize, "formatFileSize(...)");
        return formatFileSize;
    }

    public final String getDeviceStorage(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        String formatFileSize = Formatter.formatFileSize(context, statFs.getBlockCountLong() * statFs.getBlockSizeLong());
        Intrinsics.checkNotNullExpressionValue(formatFileSize, "formatFileSize(...)");
        return formatFileSize;
    }

    public final boolean setCellularEnable(Context context, boolean isEnabled) {
        Object m5698constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            SystemControllerUtil systemControllerUtil = this;
            ((TelephonyManager) context.getSystemService(TelephonyManager.class)).setDataEnabledForReason(0, isEnabled);
            m5698constructorimpl = Result.m5698constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        return Result.m5705isSuccessimpl(m5698constructorimpl);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isCellularEnabled(android.content.Context r3) {
        /*
            r2 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            r0 = 0
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L26
            tech.rabbit.r1launcher.settings.utils.SystemControllerUtil r2 = (tech.rabbit.r1launcher.settings.utils.SystemControllerUtil) r2     // Catch: java.lang.Throwable -> L26
            java.lang.Class<android.telephony.TelephonyManager> r2 = android.telephony.TelephonyManager.class
            java.lang.Object r2 = r3.getSystemService(r2)     // Catch: java.lang.Throwable -> L26
            android.telephony.TelephonyManager r2 = (android.telephony.TelephonyManager) r2     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto L1c
            boolean r2 = r2.isDataEnabled()     // Catch: java.lang.Throwable -> L26
            r3 = 1
            if (r2 != r3) goto L1c
            goto L1d
        L1c:
            r3 = r0
        L1d:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r3)     // Catch: java.lang.Throwable -> L26
            java.lang.Object r2 = kotlin.Result.m5698constructorimpl(r2)     // Catch: java.lang.Throwable -> L26
            goto L31
        L26:
            r2 = move-exception
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            java.lang.Object r2 = kotlin.ResultKt.createFailure(r2)
            java.lang.Object r2 = kotlin.Result.m5698constructorimpl(r2)
        L31:
            java.lang.Throwable r3 = kotlin.Result.m5701exceptionOrNullimpl(r2)
            if (r3 != 0) goto L38
            goto L3c
        L38:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r0)
        L3c:
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.utils.SystemControllerUtil.isCellularEnabled(android.content.Context):boolean");
    }

    public final boolean isSimCardExist(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(TelephonyManager.class);
        boolean z = false;
        if (telephonyManager != null && telephonyManager.getSimState() == 1) {
            z = true;
        }
        return !z;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isWifiEnable(android.content.Context r3) {
        /*
            r2 = this;
            java.lang.String r0 = "context"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            r0 = 0
            kotlin.Result$Companion r1 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L26
            tech.rabbit.r1launcher.settings.utils.SystemControllerUtil r2 = (tech.rabbit.r1launcher.settings.utils.SystemControllerUtil) r2     // Catch: java.lang.Throwable -> L26
            java.lang.Class<android.net.wifi.WifiManager> r2 = android.net.wifi.WifiManager.class
            java.lang.Object r2 = r3.getSystemService(r2)     // Catch: java.lang.Throwable -> L26
            android.net.wifi.WifiManager r2 = (android.net.wifi.WifiManager) r2     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto L1c
            boolean r2 = r2.isWifiEnabled()     // Catch: java.lang.Throwable -> L26
            r3 = 1
            if (r2 != r3) goto L1c
            goto L1d
        L1c:
            r3 = r0
        L1d:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r3)     // Catch: java.lang.Throwable -> L26
            java.lang.Object r2 = kotlin.Result.m5698constructorimpl(r2)     // Catch: java.lang.Throwable -> L26
            goto L31
        L26:
            r2 = move-exception
            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
            java.lang.Object r2 = kotlin.ResultKt.createFailure(r2)
            java.lang.Object r2 = kotlin.Result.m5698constructorimpl(r2)
        L31:
            java.lang.Throwable r3 = kotlin.Result.m5701exceptionOrNullimpl(r2)
            if (r3 != 0) goto L38
            goto L3c
        L38:
            java.lang.Boolean r2 = java.lang.Boolean.valueOf(r0)
        L3c:
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.utils.SystemControllerUtil.isWifiEnable(android.content.Context):boolean");
    }

    public static /* synthetic */ void setWifiEnable$default(SystemControllerUtil systemControllerUtil, Context context, boolean z, WifiStateListener wifiStateListener, int i, Object obj) {
        if ((i & 4) != 0) {
            wifiStateListener = null;
        }
        systemControllerUtil.setWifiEnable(context, z, wifiStateListener);
    }

    public final void setWifiEnable(Context context, boolean isEnable, WifiStateListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isEnable) {
            WifiUtils.withContext(context).enableWifi(listener);
            return;
        }
        WifiUtils.withContext(context).disableWifi();
        if (listener != null) {
            listener.isSuccess(true);
        }
    }

    public final List<Wifi> getSavedWifiListFromSystem(Context context) {
        Object m5698constructorimpl;
        List<WifiConfiguration> configuredNetworks;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Result.Companion companion = Result.INSTANCE;
            SystemControllerUtil systemControllerUtil = this;
            Field declaredField = WifiConfiguration.class.getDeclaredField("INVALID_NETWORK_ID");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(WifiConfiguration.class);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
            m5698constructorimpl = Result.m5698constructorimpl(Integer.valueOf(((Integer) obj).intValue()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            m5698constructorimpl = -1;
        }
        int intValue = ((Number) m5698constructorimpl).intValue();
        WifiManager wifiManager = (WifiManager) context.getSystemService(WifiManager.class);
        if (wifiManager == null || (configuredNetworks = wifiManager.getConfiguredNetworks()) == null) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : configuredNetworks) {
            if (((WifiConfiguration) obj2).networkId != intValue) {
                arrayList.add(obj2);
            }
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (hashSet.add(Integer.valueOf(((WifiConfiguration) obj3).networkId))) {
                arrayList2.add(obj3);
            }
        }
        ArrayList<WifiConfiguration> arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        for (WifiConfiguration wifiConfiguration : arrayList3) {
            Wifi.Companion companion3 = Wifi.INSTANCE;
            Intrinsics.checkNotNull(wifiConfiguration);
            arrayList4.add(companion3.adapt(wifiConfiguration));
        }
        return arrayList4;
    }

    public final Wifi getCurrentConnectedWifi(Context context) {
        NetworkInfo networkInfo;
        WifiManager wifiManager;
        WifiInfo connectionInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(ConnectivityManager.class);
        if (connectivityManager == null || (networkInfo = connectivityManager.getNetworkInfo(1)) == null || !networkInfo.isConnected() || (wifiManager = (WifiManager) context.getSystemService(WifiManager.class)) == null || (connectionInfo = wifiManager.getConnectionInfo()) == null) {
            return null;
        }
        return Wifi.INSTANCE.adapt(connectionInfo);
    }

    public final boolean disconnectWifi(Context context, Wifi wifi) {
        Object m5698constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(wifi, "wifi");
        try {
            Result.Companion companion = Result.INSTANCE;
            SystemControllerUtil systemControllerUtil = this;
            WifiManager wifiManager = (WifiManager) context.getSystemService(WifiManager.class);
            Method declaredMethod = WifiManager.class.getDeclaredMethod("disableEphemeralNetwork", String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(wifiManager, "\"" + StringsKt.removeSurrounding(wifi.getSsid(), (CharSequence) "\"") + Typography.quote);
            m5698constructorimpl = Result.m5698constructorimpl(Boolean.valueOf(wifiManager.disconnect()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            m5698constructorimpl = Result.m5698constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m5701exceptionOrNullimpl(m5698constructorimpl) != null) {
            m5698constructorimpl = false;
        }
        return ((Boolean) m5698constructorimpl).booleanValue();
    }
}
