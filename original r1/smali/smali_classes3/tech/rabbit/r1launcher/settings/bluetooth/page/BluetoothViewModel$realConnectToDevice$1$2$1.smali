.class final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;->$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 46
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;->$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    .line 48
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->CONNECTED:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;

    .line 50
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->getState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->FAIL:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
