.class public final Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityStateReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;,
        Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onConnectivityStateListener",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "OnConnectivityStateListener",
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

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static isRegister:Z


# instance fields
.field private onConnectivityStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->$stable:I

    .line 21
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion$INSTANCE$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion$INSTANCE$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->INSTANCE$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$isRegister$cp()Z
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->isRegister:Z

    return v0
.end method

.method public static final synthetic access$setOnConnectivityStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;)V
    .locals 0

    .line 12
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->onConnectivityStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;

    return-void
.end method

.method public static final synthetic access$setRegister$cp(Z)V
    .locals 0

    sput-boolean p0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->isRegister:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 50
    :cond_1
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->onConnectivityStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;

    if-eqz p0, :cond_2

    .line 51
    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;->onConnectivityStateChange(Landroid/net/NetworkInfo$State;)V

    :cond_2
    return-void
.end method
