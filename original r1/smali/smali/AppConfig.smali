.class public final LAppConfig;
.super Ljava/lang/Object;
.source "AppConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u00108F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u000e\u001a\u0004\u0008\u0016\u0010\u000cR\u0011\u0010\u0018\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "LAppConfig;",
        "",
        "()V",
        "appContext",
        "Landroid/content/Context;",
        "getAppContext",
        "()Landroid/content/Context;",
        "setAppContext",
        "(Landroid/content/Context;)V",
        "deviceId",
        "",
        "getDeviceId",
        "()Ljava/lang/String;",
        "deviceId$delegate",
        "Lkotlin/Lazy;",
        "value",
        "",
        "isEnabledTerminal",
        "()Z",
        "setEnabledTerminal",
        "(Z)V",
        "packageName",
        "getPackageName",
        "packageName$delegate",
        "versionBrief",
        "getVersionBrief",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:LAppConfig;

.field public static appContext:Landroid/content/Context;

.field private static final deviceId$delegate:Lkotlin/Lazy;

.field private static final packageName$delegate:Lkotlin/Lazy;

.field private static final versionBrief:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LAppConfig;

    invoke-direct {v0}, LAppConfig;-><init>()V

    sput-object v0, LAppConfig;->INSTANCE:LAppConfig;

    .line 11
    sget-object v0, LAppConfig$packageName$2;->INSTANCE:LAppConfig$packageName$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LAppConfig;->packageName$delegate:Lkotlin/Lazy;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerInfo: 20240418.0-5-g4fd1bbff-dirty/2077777700/productionEnv, BuildTime: 2024-04-19 17:39:07/GMT-08:00(by jenkins), Branch: /4fd1bbff(has uncommitted change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    sget-object v1, Ltech/rabbit/r1launcher/BuildConfig;->HAS_UNCOMMITTED_CHANGE:Ljava/lang/Boolean;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LAppConfig;->versionBrief:Ljava/lang/String;

    .line 24
    sget-object v0, LAppConfig$deviceId$2;->INSTANCE:LAppConfig$deviceId$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LAppConfig;->deviceId$delegate:Lkotlin/Lazy;

    const/16 v0, 0x8

    sput v0, LAppConfig;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppContext()Landroid/content/Context;
    .locals 0

    sget-object p0, LAppConfig;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appContext"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0

    sget-object p0, LAppConfig;->deviceId$delegate:Lkotlin/Lazy;

    .line 24
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    sget-object p0, LAppConfig;->packageName$delegate:Lkotlin/Lazy;

    .line 11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final getVersionBrief()Ljava/lang/String;
    .locals 0

    sget-object p0, LAppConfig;->versionBrief:Ljava/lang/String;

    return-object p0
.end method

.method public final isEnabledTerminal()Z
    .locals 2

    .line 19
    sget-object p0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ENABLE_TERMINAL"

    invoke-virtual {p0, v1, v0}, Ltech/rabbit/common/utils/SPUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final setAppContext(Landroid/content/Context;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, LAppConfig;->appContext:Landroid/content/Context;

    return-void
.end method

.method public final setEnabledTerminal(Z)V
    .locals 1

    .line 21
    sget-object p0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    const-string v0, "ENABLE_TERMINAL"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ltech/rabbit/common/utils/SPUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
