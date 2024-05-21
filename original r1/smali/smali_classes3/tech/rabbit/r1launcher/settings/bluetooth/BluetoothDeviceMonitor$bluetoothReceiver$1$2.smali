.class final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;
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
        "Landroid/bluetooth/BluetoothDevice;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "context",
        "Landroid/content/Context;",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
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

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;->invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetoothDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 109
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getTAG$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeviceUnBonded: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 110
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$onDeviceUnbind(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
