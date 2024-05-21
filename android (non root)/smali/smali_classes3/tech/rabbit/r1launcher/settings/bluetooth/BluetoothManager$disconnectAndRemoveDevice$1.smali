.class final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "BluetoothManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->disconnectAndRemoveDevice(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager"
    f = "BluetoothManager.kt"
    i = {
        0x0
    }
    l = {
        0xaa,
        0xb3
    }
    m = "disconnectAndRemoveDevice"
    n = {
        "device"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->result:Ljava/lang/Object;

    iget p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    const/4 v0, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->disconnectAndRemoveDevice(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
