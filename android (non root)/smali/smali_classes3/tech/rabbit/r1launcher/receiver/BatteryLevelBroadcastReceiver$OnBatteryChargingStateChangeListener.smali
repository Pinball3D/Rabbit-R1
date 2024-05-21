.class public interface abstract Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;
.super Ljava/lang/Object;
.source "BatteryLevelBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBatteryChargingStateChangeListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/receiver/BatteryLevelBroadcastReceiver$OnBatteryChargingStateChangeListener;",
        "",
        "onCharging",
        "",
        "onDisCharging",
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


# virtual methods
.method public abstract onCharging()V
.end method

.method public abstract onDisCharging()V
.end method
