.class public final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceMonitor.kt"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->startA2dpServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "tech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1",
        "Landroid/bluetooth/BluetoothProfile$ServiceListener;",
        "onServiceConnected",
        "",
        "profile",
        "",
        "proxy",
        "Landroid/bluetooth/BluetoothProfile;",
        "onServiceDisconnected",
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
.field final synthetic $cc:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->$cc:Lkotlinx/coroutines/CancellableContinuation;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    const-string v0, "proxy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 72
    invoke-virtual {v1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->setProxy(Landroid/bluetooth/BluetoothProfile;)V

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 73
    invoke-static {p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getTAG$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "onServiceConnected"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->$cc:Lkotlinx/coroutines/CancellableContinuation;

    .line 74
    invoke-interface {p2}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->$cc:Lkotlinx/coroutines/CancellableContinuation;

    .line 75
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 78
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->setProfile(I)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->setProxy(Landroid/bluetooth/BluetoothProfile;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->this$0:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 86
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getTAG$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onServiceDisconnected"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->$cc:Lkotlinx/coroutines/CancellableContinuation;

    .line 87
    invoke-interface {p1}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;->$cc:Lkotlinx/coroutines/CancellableContinuation;

    const/4 p1, 0x0

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_0
    return-void
.end method
