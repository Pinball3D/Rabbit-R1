package tech.rabbit.r1launcher.constant;

import kotlin.Metadata;

/* compiled from: EventInterceptor.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, d2 = {"Ltech/rabbit/r1launcher/constant/EventInterceptor;", "", "()V", "needIntercept", "", "getNeedIntercept", "()Z", "setNeedIntercept", "(Z)V", "transaltor", "getTransaltor", "setTransaltor", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class EventInterceptor {
    private static boolean needIntercept;
    private static boolean transaltor;
    public static final EventInterceptor INSTANCE = new EventInterceptor();
    public static final int $stable = 8;

    public final boolean getNeedIntercept() {
        return needIntercept;
    }

    public final boolean getTransaltor() {
        return transaltor;
    }

    public final void setNeedIntercept(boolean z) {
        needIntercept = z;
    }

    public final void setTransaltor(boolean z) {
        transaltor = z;
    }

    private EventInterceptor() {
    }
}
