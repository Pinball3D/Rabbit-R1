.class public final Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;
.super Ljava/lang/Object;
.source "ConnectivityStateReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectivityStateReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectivityStateReceiver.kt\ntech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;",
        "",
        "()V",
        "INSTANCE",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;",
        "getINSTANCE",
        "()Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;",
        "INSTANCE$delegate",
        "Lkotlin/Lazy;",
        "isRegister",
        "",
        "register",
        "",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;
    .locals 0

    .line 21
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$getINSTANCE$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;

    return-object p0
.end method

.method public static synthetic register$default(Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 23
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;)V

    return-void
.end method


# virtual methods
.method public final register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$isRegister$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->unregister(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$setRegister$cp(Z)V

    .line 27
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;

    move-result-object v0

    invoke-static {v0, p2}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$setOnConnectivityStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;)V

    .line 28
    :try_start_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

    .line 30
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    .line 31
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    .line 28
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

    .line 37
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$isRegister$cp()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$setRegister$cp(Z)V

    .line 40
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->access$setOnConnectivityStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;)V

    .line 41
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->getINSTANCE()Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;

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
