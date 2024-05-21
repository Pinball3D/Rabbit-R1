.class public final Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;
.super Ljava/lang/Object;
.source "SimStateReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSimStateReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SimStateReceiver.kt\ntech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;",
        "",
        "()V",
        "ACTION_SIM_STATE_CHANGED",
        "",
        "EXTRA_SIM_STATE",
        "INSTANCE",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;",
        "getINSTANCE",
        "()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;",
        "INSTANCE$delegate",
        "Lkotlin/Lazy;",
        "VALUE_SIM_STATE_LOADED",
        "isRegister",
        "",
        "register",
        "",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;",
        "unregister",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;
    .locals 0

    .line 22
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$getINSTANCE$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;

    return-object p0
.end method

.method public static synthetic register$default(Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V

    return-void
.end method


# virtual methods
.method public final register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$isRegister$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->unregister(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$setRegister$cp(Z)V

    .line 28
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;

    move-result-object v0

    invoke-static {v0, p2}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$setOnSimStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V

    .line 29
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$isRegister$cp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 35
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$setRegister$cp(Z)V

    .line 36
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->access$setOnSimStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V

    .line 37
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
