.class public final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothScanReceiver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\r\u001a\u00020\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "()V",
        "TAG",
        "",
        "onDeviceFound",
        "Lkotlin/Function1;",
        "Landroid/bluetooth/BluetoothDevice;",
        "",
        "getOnDeviceFound",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnDeviceFound",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onReceive",
        "context",
        "Landroid/content/Context;",
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
.field private final TAG:Ljava/lang/String;

.field private onDeviceFound:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
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

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "BluetoothScanReceiver"

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver$onDeviceFound$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver$onDeviceFound$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->onDeviceFound:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final getOnDeviceFound()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->onDeviceFound:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x459717c3

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 22
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-nez p1, :cond_2

    return-void

    .line 25
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->onDeviceFound:Lkotlin/jvm/functions/Function1;

    .line 26
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->TAG:Ljava/lang/String;

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onReceive: found bluetooth device: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public final setOnDeviceFound(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->onDeviceFound:Lkotlin/jvm/functions/Function1;

    return-void
.end method
