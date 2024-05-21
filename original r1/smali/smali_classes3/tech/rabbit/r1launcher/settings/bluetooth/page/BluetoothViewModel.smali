.class public final Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "BluetoothViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "state",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;",
        "getState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "realConnectToDevice",
        "",
        "context",
        "Landroid/content/Context;",
        "device",
        "Landroid/bluetooth/BluetoothDevice;",
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
.field private final state:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;",
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

    .line 16
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->state:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final getState()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->state:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final realConnectToDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-virtual {v0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->state:Landroidx/lifecycle/MutableLiveData;

    .line 24
    sget-object v1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->DISCONNECTED:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;->state:Landroidx/lifecycle/MutableLiveData;

    .line 27
    sget-object v1, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;->CONNECTING:Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 30
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel$realConnectToDevice$1;-><init>(ZLandroid/bluetooth/BluetoothDevice;Landroid/content/Context;Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v6, v9

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 p0, 0x3

    const/4 p1, 0x0

    move-object v3, v0

    move-object v4, v7

    move-object v5, v8

    move v7, p0

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
