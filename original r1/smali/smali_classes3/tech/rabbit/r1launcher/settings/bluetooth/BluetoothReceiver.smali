.class public final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R,\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR,\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR,\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00070\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "onDeviceBonded",
        "Lkotlin/Function2;",
        "Landroid/content/Context;",
        "Landroid/bluetooth/BluetoothDevice;",
        "",
        "getOnDeviceBonded",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnDeviceBonded",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onDeviceUnbonded",
        "getOnDeviceUnbonded",
        "setOnDeviceUnbonded",
        "onStateChanged",
        "",
        "getOnStateChanged",
        "setOnStateChanged",
        "onReceive",
        "context",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final $stable:I = 0x8


# instance fields
.field private onDeviceBonded:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onDeviceUnbonded:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onStateChanged:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver$onDeviceBonded$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver$onDeviceBonded$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceBonded:Lkotlin/jvm/functions/Function2;

    .line 20
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver$onDeviceUnbonded$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver$onDeviceUnbonded$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceUnbonded:Lkotlin/jvm/functions/Function2;

    .line 21
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver$onStateChanged$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver$onStateChanged$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onStateChanged:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getOnDeviceBonded()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceBonded:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnDeviceUnbonded()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceUnbonded:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnStateChanged()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onStateChanged:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 26
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_2

    .line 29
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceBonded:Lkotlin/jvm/functions/Function2;

    .line 30
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 31
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceUnbonded:Lkotlin/jvm/functions/Function2;

    .line 35
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 36
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onStateChanged:Lkotlin/jvm/functions/Function2;

    .line 38
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_0
    return-void
.end method

.method public final setOnDeviceBonded(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceBonded:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnDeviceUnbonded(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onDeviceUnbonded:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnStateChanged(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->onStateChanged:Lkotlin/jvm/functions/Function2;

    return-void
.end method
