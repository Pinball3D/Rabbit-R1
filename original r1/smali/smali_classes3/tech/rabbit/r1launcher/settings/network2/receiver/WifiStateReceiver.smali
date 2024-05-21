.class public final Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;,
        Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onWifiStateListener",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "OnWifiStateListener",
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

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static isRegister:Z


# instance fields
.field private onWifiStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->$stable:I

    .line 19
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion$INSTANCE$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion$INSTANCE$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$delegate$cp()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->INSTANCE$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$isRegister$cp()Z
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->isRegister:Z

    return v0
.end method

.method public static final synthetic access$setOnWifiStateListener$p(Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;)V
    .locals 0

    .line 9
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->onWifiStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;

    return-void
.end method

.method public static final synthetic access$setRegister$cp(Z)V
    .locals 0

    sput-boolean p0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->isRegister:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string p1, "wifi_state"

    const/4 v0, 0x4

    .line 43
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->onWifiStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;

    if-eqz p0, :cond_4

    .line 44
    invoke-interface {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;->onWifiStateChangeToEnable()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->onWifiStateListener:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;

    if-eqz p0, :cond_4

    .line 45
    invoke-interface {p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;->onWifiStateChangeToDisable()V

    :cond_4
    :goto_1
    return-void
.end method
