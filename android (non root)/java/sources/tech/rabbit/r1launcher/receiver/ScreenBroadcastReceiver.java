package tech.rabbit.r1launcher.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ScreenBroadcastReceiver.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;", "Landroid/content/BroadcastReceiver;", "listener", "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;", "(Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;)V", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "OnScreenStateChangeListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ScreenBroadcastReceiver extends BroadcastReceiver {
    private final OnScreenStateChangeListener listener;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    /* compiled from: ScreenBroadcastReceiver.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&¨\u0006\u0006"}, d2 = {"Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;", "", "onScreenOff", "", "onScreenOn", "onScreenUnlock", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnScreenStateChangeListener {
        void onScreenOff();

        void onScreenOn();

        void onScreenUnlock();
    }

    public ScreenBroadcastReceiver(OnScreenStateChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    /* compiled from: ScreenBroadcastReceiver.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$Companion;", "", "()V", "register", "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver;", "context", "Landroid/content/Context;", "listener", "Ltech/rabbit/r1launcher/receiver/ScreenBroadcastReceiver$OnScreenStateChangeListener;", "unregister", "", "receiver", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ScreenBroadcastReceiver register(Context context, OnScreenStateChangeListener listener) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(listener, "listener");
            ScreenBroadcastReceiver screenBroadcastReceiver = new ScreenBroadcastReceiver(listener);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            context.registerReceiver(screenBroadcastReceiver, intentFilter);
            return screenBroadcastReceiver;
        }

        public final void unregister(Context context, ScreenBroadcastReceiver receiver) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            context.unregisterReceiver(receiver);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String action = intent.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode == -2128145023) {
                if (action.equals("android.intent.action.SCREEN_OFF")) {
                    this.listener.onScreenOff();
                }
            } else if (hashCode == -1454123155) {
                if (action.equals("android.intent.action.SCREEN_ON")) {
                    this.listener.onScreenOn();
                }
            } else if (hashCode == 823795052 && action.equals("android.intent.action.USER_PRESENT")) {
                this.listener.onScreenUnlock();
            }
        }
    }
}
