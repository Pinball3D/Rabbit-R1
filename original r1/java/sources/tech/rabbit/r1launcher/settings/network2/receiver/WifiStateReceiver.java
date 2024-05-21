package tech.rabbit.r1launcher.settings.network2.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WifiStateReceiver.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\fB\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onWifiStateListener", "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "OnWifiStateListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WifiStateReceiver extends BroadcastReceiver {
    private static boolean isRegister;
    private OnWifiStateListener onWifiStateListener;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Lazy<WifiStateReceiver> INSTANCE$delegate = LazyKt.lazy(new Function0<WifiStateReceiver>() { // from class: tech.rabbit.r1launcher.settings.network2.receiver.WifiStateReceiver$Companion$INSTANCE$2
        @Override // kotlin.jvm.functions.Function0
        public final WifiStateReceiver invoke() {
            return new WifiStateReceiver();
        }
    });

    /* compiled from: WifiStateReceiver.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;", "", "onWifiStateChangeToDisable", "", "onWifiStateChangeToEnable", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnWifiStateListener {
        void onWifiStateChangeToDisable();

        void onWifiStateChangeToEnable();
    }

    /* compiled from: WifiStateReceiver.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;", "", "()V", "INSTANCE", "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;", "getINSTANCE", "()Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;", "INSTANCE$delegate", "Lkotlin/Lazy;", "isRegister", "", "register", "", "context", "Landroid/content/Context;", "listener", "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;", "unregister", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final WifiStateReceiver getINSTANCE() {
            return (WifiStateReceiver) WifiStateReceiver.INSTANCE$delegate.getValue();
        }

        public static /* synthetic */ void register$default(Companion companion, Context context, OnWifiStateListener onWifiStateListener, int i, Object obj) {
            if ((i & 2) != 0) {
                onWifiStateListener = null;
            }
            companion.register(context, onWifiStateListener);
        }

        public final void register(Context context, OnWifiStateListener listener) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (WifiStateReceiver.isRegister) {
                unregister(context);
            }
            WifiStateReceiver.isRegister = true;
            getINSTANCE().onWifiStateListener = listener;
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion companion2 = this;
                Result.m5698constructorimpl(context.registerReceiver(getINSTANCE(), new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED")));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m5698constructorimpl(ResultKt.createFailure(th));
            }
        }

        public final void unregister(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (WifiStateReceiver.isRegister) {
                WifiStateReceiver.isRegister = false;
                getINSTANCE().onWifiStateListener = null;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Companion companion2 = this;
                    context.unregisterReceiver(getINSTANCE());
                    Result.m5698constructorimpl(Unit.INSTANCE);
                } catch (Throwable th) {
                    Result.Companion companion3 = Result.INSTANCE;
                    Result.m5698constructorimpl(ResultKt.createFailure(th));
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        OnWifiStateListener onWifiStateListener;
        Intrinsics.checkNotNullParameter(context, "context");
        if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, "android.net.wifi.WIFI_STATE_CHANGED")) {
            int intExtra = intent.getIntExtra("wifi_state", 4);
            if (intExtra != 1) {
                if (intExtra == 3 && (onWifiStateListener = this.onWifiStateListener) != null) {
                    onWifiStateListener.onWifiStateChangeToEnable();
                    return;
                }
                return;
            }
            OnWifiStateListener onWifiStateListener2 = this.onWifiStateListener;
            if (onWifiStateListener2 != null) {
                onWifiStateListener2.onWifiStateChangeToDisable();
            }
        }
    }
}
