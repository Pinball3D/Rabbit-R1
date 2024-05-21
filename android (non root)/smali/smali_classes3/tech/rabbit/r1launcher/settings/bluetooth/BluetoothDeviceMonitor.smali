.class public final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;
.super Ljava/lang/Object;
.source "BluetoothDeviceMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothDeviceMonitor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothDeviceMonitor.kt\ntech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n314#2,11:186\n1855#3,2:197\n1855#3,2:199\n1855#3,2:201\n*S KotlinDebug\n*F\n+ 1 BluetoothDeviceMonitor.kt\ntech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor\n*L\n67#1:186,11\n123#1:197,2\n132#1:199,2\n145#1:201,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J5\u0010\'\u001a\u00020\u00122-\u0010(\u001a)\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000bJ\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0*J\u0006\u0010+\u001a\u00020\u000eJ\u0018\u0010,\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\rH\u0003J\u0018\u0010.\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020\rH\u0003J\u0018\u0010/\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u00100\u001a\u00020\u0019H\u0002J5\u00101\u001a\u00020\u00122-\u0010(\u001a)\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000bJ\u000e\u00102\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0002\u00103J\u000e\u00104\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u00105\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000Rl\u0010\t\u001a`\u0012+\u0012)\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000b0\nj/\u0012+\u0012)\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000b`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\r0\nj\u0008\u0012\u0004\u0012\u00020\r`\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u0010\u0010$\u001a\u0004\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;",
        "",
        "()V",
        "TAG",
        "",
        "bluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "bluetoothReceiver",
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;",
        "bondListeners",
        "Ljava/util/ArrayList;",
        "Lkotlin/Function3;",
        "Landroid/content/Context;",
        "Landroid/bluetooth/BluetoothDevice;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isConnected",
        "",
        "Lkotlin/collections/ArrayList;",
        "bondedDevices",
        "context",
        "Ljava/lang/ref/WeakReference;",
        "isInit",
        "profile",
        "",
        "getProfile",
        "()I",
        "setProfile",
        "(I)V",
        "proxy",
        "Landroid/bluetooth/BluetoothProfile;",
        "getProxy",
        "()Landroid/bluetooth/BluetoothProfile;",
        "setProxy",
        "(Landroid/bluetooth/BluetoothProfile;)V",
        "serviceListener",
        "Landroid/bluetooth/BluetoothProfile$ServiceListener;",
        "weakContext",
        "addOnDeviceConnectedListener",
        "listener",
        "getConnectedDevices",
        "",
        "isA2DPServerAlive",
        "onDeviceBond",
        "device",
        "onDeviceUnbind",
        "onStateChanged",
        "state",
        "removeOnDeviceConnectedListener",
        "startA2dpServer",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startMonitor",
        "unregister",
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

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final bluetoothReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;

.field private final bondListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bondedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private isInit:Z

.field private profile:I

.field private proxy:Landroid/bluetooth/BluetoothProfile;

.field private serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
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
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondedDevices:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    const-string v0, "BluetoothDeviceMonitor"

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->TAG:Ljava/lang/String;

    .line 102
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;-><init>()V

    .line 103
    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->setOnDeviceBonded(Lkotlin/jvm/functions/Function2;)V

    .line 108
    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$2;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->setOnDeviceUnbonded(Lkotlin/jvm/functions/Function2;)V

    .line 113
    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$bluetoothReceiver$1$3;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;->setOnStateChanged(Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bluetoothReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;

    return-void
.end method

.method public static final synthetic access$getBluetoothAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method public static final synthetic access$getBondedDevices$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/util/ArrayList;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondedDevices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getServiceListener$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWeakContext$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 21
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->weakContext:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$onDeviceBond(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->onDeviceBond(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static final synthetic access$onDeviceUnbind(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->onDeviceUnbind(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static final synthetic access$onStateChanged(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/content/Context;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->onStateChanged(Landroid/content/Context;I)V

    return-void
.end method

.method public static final synthetic access$setServiceListener$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private final onDeviceBond(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondedDevices:Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->TAG:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceBonded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 132
    check-cast p0, Ljava/lang/Iterable;

    .line 199
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x1

    .line 133
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onDeviceUnbind(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondedDevices:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->TAG:Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceUnbind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 123
    check-cast p0, Ljava/lang/Iterable;

    .line 197
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function3;

    const/4 v1, 0x0

    .line 124
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onStateChanged(Landroid/content/Context;I)V
    .locals 6

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 p1, 0xd

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$onStateChanged$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$onStateChanged$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondedDevices:Ljava/util/ArrayList;

    .line 145
    check-cast p2, Ljava/lang/Iterable;

    .line 201
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 146
    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->onDeviceUnbind(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final addOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 155
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getConnectedDevices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->proxy:Landroid/bluetooth/BluetoothProfile;

    if-eqz p0, :cond_0

    .line 165
    invoke-interface {p0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public final getProfile()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->profile:I

    return p0
.end method

.method public final getProxy()Landroid/bluetooth/BluetoothProfile;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->proxy:Landroid/bluetooth/BluetoothProfile;

    return-object p0
.end method

.method public final isA2DPServerAlive()Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->proxy:Landroid/bluetooth/BluetoothProfile;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final removeOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/bluetooth/BluetoothDevice;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final setProfile(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->profile:I

    return-void
.end method

.method public final setProxy(Landroid/bluetooth/BluetoothProfile;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->proxy:Landroid/bluetooth/BluetoothProfile;

    return-void
.end method

.method public final startA2dpServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 193
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 194
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 68
    new-instance v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;

    invoke-direct {v2, p0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startA2dpServer$2$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v2, Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {p0, v2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$setServiceListener$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 94
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getBluetoothAdapter$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "bluetoothAdapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 95
    :cond_0
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getWeakContext$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 96
    :cond_1
    invoke-static {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->access$getServiceListener$p(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object p0

    const/4 v3, 0x2

    .line 94
    invoke-virtual {v1, v2, p0, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 195
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 186
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p0
.end method

.method public final startMonitor(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->TAG:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startMonitor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->isInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->weakContext:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 40
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->weakContext:Ljava/lang/ref/WeakReference;

    :cond_2
    iget-boolean v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->isInit:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->isInit:Z

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->context:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const-string v2, "getDefaultAdapter(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->TAG:Ljava/lang/String;

    const-string v2, "registerReceiver"

    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bluetoothReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;

    .line 52
    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startMonitor$1;

    invoke-direct {p1, p0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor$startMonitor$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final unregister()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->context:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 173
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->context:Ljava/lang/ref/WeakReference;

    .line 174
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bluetoothReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 173
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    const-string v1, "bluetoothAdapter"

    .line 177
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    :goto_2
    const/4 v1, 0x2

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->proxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->isInit:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondedDevices:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->bondListeners:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
