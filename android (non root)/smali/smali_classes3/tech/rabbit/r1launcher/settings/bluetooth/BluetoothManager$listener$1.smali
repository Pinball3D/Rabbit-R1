.class final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/content/Context;",
        "Landroid/bluetooth/BluetoothDevice;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "context",
        "Landroid/content/Context;",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "isConnected",
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


# static fields
.field public static final INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    check-cast p1, Landroid/content/Context;

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;->invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bluetoothDevice"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 52
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object p3

    const-string v1, "bluetooth device binded"

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object p3, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {p3, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 55
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getConnectingListener$p()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    sget-object p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1$1;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$setConnectingListener$p(Lkotlin/jvm/functions/Function1;)V

    .line 57
    sget-object p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->getTimeoutJob()Lkotlinx/coroutines/Job;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2, p0, p1, p0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    const-string p3, "bluetooth device unbind"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getDisconnectingListener$p()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    sget-object p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1$2;

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$setDisconnectingListener$p(Lkotlin/jvm/functions/Function1;)V

    .line 63
    sget-object p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->getTimeoutJob()Lkotlinx/coroutines/Job;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2, p0, p1, p0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
