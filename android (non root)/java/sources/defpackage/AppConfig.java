package defpackage;

import android.content.Context;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import tech.rabbit.common.utils.SPUtils;
import tech.rabbit.r1launcher.BuildConfig;
import tech.rabbit.r1launcher.settings.utils.SystemControllerUtil;

/* compiled from: AppConfig.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\n8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u000e\u001a\u0004\b\u0016\u0010\fR\u0011\u0010\u0018\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\f¨\u0006\u001a"}, d2 = {"LAppConfig;", "", "()V", "appContext", "Landroid/content/Context;", "getAppContext", "()Landroid/content/Context;", "setAppContext", "(Landroid/content/Context;)V", "deviceId", "", "getDeviceId", "()Ljava/lang/String;", "deviceId$delegate", "Lkotlin/Lazy;", "value", "", "isEnabledTerminal", "()Z", "setEnabledTerminal", "(Z)V", "packageName", "getPackageName", "packageName$delegate", "versionBrief", "getVersionBrief", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AppConfig {
    public static Context appContext;
    public static final AppConfig INSTANCE = new AppConfig();

    /* renamed from: packageName$delegate, reason: from kotlin metadata */
    private static final Lazy packageName = LazyKt.lazy(new Function0<String>() { // from class: AppConfig$packageName$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return AppConfig.INSTANCE.getAppContext().getPackageName();
        }
    });
    private static final String versionBrief = "VerInfo: 20240418.0-5-g4fd1bbff-dirty/2077777700/productionEnv, BuildTime: 2024-04-19 17:39:07/GMT-08:00(by jenkins), Branch: /4fd1bbff(has uncommitted change: " + BuildConfig.HAS_UNCOMMITTED_CHANGE + "), ";

    /* renamed from: deviceId$delegate, reason: from kotlin metadata */
    private static final Lazy deviceId = LazyKt.lazy(new Function0<String>() { // from class: AppConfig$deviceId$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            return SystemControllerUtil.INSTANCE.getImei(AppConfig.INSTANCE.getAppContext());
        }
    });
    public static final int $stable = 8;

    public final String getVersionBrief() {
        return versionBrief;
    }

    public final void setAppContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
        appContext = context;
    }

    private AppConfig() {
    }

    public final Context getAppContext() {
        Context context = appContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appContext");
        return null;
    }

    public final String getPackageName() {
        Object value = packageName.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (String) value;
    }

    public final boolean isEnabledTerminal() {
        return ((Boolean) SPUtils.INSTANCE.get("ENABLE_TERMINAL", false)).booleanValue();
    }

    public final void setEnabledTerminal(boolean z) {
        SPUtils.INSTANCE.put("ENABLE_TERMINAL", Boolean.valueOf(z));
    }

    public final String getDeviceId() {
        return (String) deviceId.getValue();
    }
}
