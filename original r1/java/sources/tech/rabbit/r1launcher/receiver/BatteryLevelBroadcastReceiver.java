package tech.rabbit.r1launcher.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BatteryLevelBroadcastReceiver.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "listener", "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;", "(Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;)V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "OnBatteryChargingStateChangeListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BatteryLevelBroadcastReceiver extends BroadcastReceiver {
    private final OnBatteryChargingStateChangeListener listener;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: BatteryLevelBroadcastReceiver.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;", "", "onCharging", "", "onDisCharging", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnBatteryChargingStateChangeListener {
        void onCharging();

        void onDisCharging();
    }

    public BatteryLevelBroadcastReceiver(OnBatteryChargingStateChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    /* compiled from: BatteryLevelBroadcastReceiver.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;", "", "()V", "register", "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;", "context", "Landroid/content/Context;", "listener", "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;", "unregister", "", "receiver", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final BatteryLevelBroadcastReceiver register(Context context, OnBatteryChargingStateChangeListener listener) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(listener, "listener");
            BatteryLevelBroadcastReceiver batteryLevelBroadcastReceiver = new BatteryLevelBroadcastReceiver(listener);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            context.registerReceiver(batteryLevelBroadcastReceiver, intentFilter);
            return batteryLevelBroadcastReceiver;
        }

        public final void unregister(Context context, BatteryLevelBroadcastReceiver receiver) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            context.unregisterReceiver(receiver);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        int intExtra = intent.getIntExtra("plugged", -1);
        boolean z = (intExtra == 0 || -1 == intExtra) ? false : true;
        if (z) {
            this.listener.onCharging();
        } else {
            if (z) {
                return;
            }
            this.listener.onDisCharging();
        }
    }
}
