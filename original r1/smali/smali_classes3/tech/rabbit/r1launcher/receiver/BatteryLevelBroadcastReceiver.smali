.class public final Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryLevelBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;,
        Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000b\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "listener",
        "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;",
        "(Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;)V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "intent",
        "Landroid/content/Intent;",
        "Companion",
        "OnBatteryChargingStateChangeListener",
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

.field public static final Companion:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;


# instance fields
.field private final listener:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->Companion:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->$stable:I

    return-void
.end method

.method public constructor <init>(Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "plugged"

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq v0, p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, p2, :cond_1

    iget-object p0, p0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;

    .line 36
    invoke-interface {p0}, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;->onCharging()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iget-object p0, p0, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;->listener:Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;

    .line 37
    invoke-interface {p0}, Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;->onDisCharging()V

    :cond_2
    :goto_1
    return-void
.end method
