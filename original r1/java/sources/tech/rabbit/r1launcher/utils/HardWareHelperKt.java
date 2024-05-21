package tech.rabbit.r1launcher.utils;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.BatteryManager;
import defpackage.AppConfig;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HardWareHelper.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u000e\u0010\f\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u000e\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\"\u001b\u0010\u0000\u001a\u00020\u00018FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u000e"}, d2 = {"batteryManager", "Landroid/os/BatteryManager;", "getBatteryManager", "()Landroid/os/BatteryManager;", "batteryManager$delegate", "Lkotlin/Lazy;", "batteryLevel", "", "isCharging", "", "context", "Landroid/content/Context;", "isNetworkConnected", "isWifiConnected", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class HardWareHelperKt {
    private static final Lazy batteryManager$delegate = LazyKt.lazy(new Function0<BatteryManager>() { // from class: tech.rabbit.r1launcher.utils.HardWareHelperKt$batteryManager$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final BatteryManager invoke() {
            Object systemService = AppConfig.INSTANCE.getAppContext().getSystemService("batterymanager");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.BatteryManager");
            return (BatteryManager) systemService;
        }
    });

    public static final BatteryManager getBatteryManager() {
        return (BatteryManager) batteryManager$delegate.getValue();
    }

    public static final int batteryLevel() {
        return getBatteryManager().getIntProperty(4);
    }

    public static final boolean isCharging(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        int intExtra = registerReceiver != null ? registerReceiver.getIntExtra("status", -1) : -1;
        return intExtra == 2 || intExtra == 5 || intExtra == 4;
    }

    public static final boolean isNetworkConnected(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public static final boolean isWifiConnected(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1;
    }
}
