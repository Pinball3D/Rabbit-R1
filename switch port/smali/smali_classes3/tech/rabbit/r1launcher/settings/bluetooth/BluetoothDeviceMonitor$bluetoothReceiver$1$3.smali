.class final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothDeviceMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/content/Context;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "context",
        "Landroid/content/Context;",
        "state",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    check-cast p1, Landroid/content/Context;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;->invoke(Landroid/content/Context;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 114
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getTAG$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBluetoothStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 115
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$onStateChanged(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/content/Context;I)V

    return-void
.end method
