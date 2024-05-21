.class public final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BluetoothManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->testDeviceInConnection(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "tech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1",
        "Landroid/bluetooth/le/ScanCallback;",
        "onBatchScanResults",
        "",
        "results",
        "",
        "Landroid/bluetooth/le/ScanResult;",
        "onScanFailed",
        "errorCode",
        "",
        "onScanResult",
        "callbackType",
        "result",
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


# instance fields
.field final synthetic $listener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field final synthetic $targetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;Landroid/bluetooth/le/BluetoothLeScanner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$targetDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$listener:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 454
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 469
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .locals 0

    .line 474
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$listener:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 476
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 458
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 459
    :goto_0
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onScanResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$targetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 461
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$listener:Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x1

    .line 463
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;->$scanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 464
    check-cast p0, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {p1, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_1
    return-void
.end method
