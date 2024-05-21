package tech.rabbit.r1launcher.settings.network2.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SimStateReceiver.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\fB\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onSimStateListener", "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;", "onReceive", "", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "Companion", "OnSimStateListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SimStateReceiver extends BroadcastReceiver {
    private static final String ACTION_SIM_STATE_CHANGED = "android.intent.action.SIM_STATE_CHANGED";
    private static final String EXTRA_SIM_STATE = "ss";
    private static final String VALUE_SIM_STATE_LOADED = "LOADED";
    private static boolean isRegister;
    private OnSimStateListener onSimStateListener;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private static final Lazy<SimStateReceiver> INSTANCE$delegate = LazyKt.lazy(new Function0<SimStateReceiver>() { // from class: tech.rabbit.r1launcher.settings.network2.receiver.SimStateReceiver$Companion$INSTANCE$2
        @Override // kotlin.jvm.functions.Function0
        public final SimStateReceiver invoke() {
            return new SimStateReceiver();
        }
    });

    /* compiled from: SimStateReceiver.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;", "", "onSimStateChangeToLoaded", "", "onSimStateChangeToNotLoaded", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public interface OnSimStateListener {
        void onSimStateChangeToLoaded();

        void onSimStateChangeToNotLoaded();
    }

    /* compiled from: SimStateReceiver.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\tR\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;", "", "()V", "ACTION_SIM_STATE_CHANGED", "", "EXTRA_SIM_STATE", "INSTANCE", "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;", "getINSTANCE", "()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;", "INSTANCE$delegate", "Lkotlin/Lazy;", "VALUE_SIM_STATE_LOADED", "isRegister", "", "register", "", "context", "Landroid/content/Context;", "listener", "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;", "unregister", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final SimStateReceiver getINSTANCE() {
            return (SimStateReceiver) SimStateReceiver.INSTANCE$delegate.getValue();
        }

        public static /* synthetic */ void register$default(Companion companion, Context context, OnSimStateListener onSimStateListener, int i, Object obj) {
            if ((i & 2) != 0) {
                onSimStateListener = null;
            }
            companion.register(context, onSimStateListener);
        }

        public final void register(Context context, OnSimStateListener listener) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (SimStateReceiver.isRegister) {
                unregister(context);
            }
            SimStateReceiver.isRegister = true;
            getINSTANCE().onSimStateListener = listener;
            try {
                Result.Companion companion = Result.INSTANCE;
                Companion companion2 = this;
                Result.m5698constructorimpl(context.registerReceiver(getINSTANCE(), new IntentFilter(SimStateReceiver.ACTION_SIM_STATE_CHANGED)));
            } catch (Throwable th) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m5698constructorimpl(ResultKt.createFailure(th));
            }
        }

        public final void unregister(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (SimStateReceiver.isRegister) {
                SimStateReceiver.isRegister = false;
                getINSTANCE().onSimStateListener = null;
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
        if (Intrinsics.areEqual(intent != null ? intent.getAction() : null, ACTION_SIM_STATE_CHANGED)) {
            Bundle extras = intent.getExtras();
            if (Intrinsics.areEqual(extras != null ? extras.getString(EXTRA_SIM_STATE) : null, VALUE_SIM_STATE_LOADED)) {
                OnSimStateListener onSimStateListener = this.onSimStateListener;
                if (onSimStateListener != null) {
                    onSimStateListener.onSimStateChangeToLoaded();
                    return;
                }
                return;
            }
            OnSimStateListener onSimStateListener2 = this.onSimStateListener;
            if (onSimStateListener2 != null) {
                onSimStateListener2.onSimStateChangeToNotLoaded();
            }
        }
    }
}
