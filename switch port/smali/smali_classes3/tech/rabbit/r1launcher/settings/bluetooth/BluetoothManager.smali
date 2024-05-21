.class public final Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBluetoothManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BluetoothManager.kt\ntech/rabbit/r1launcher/settings/bluetooth/BluetoothManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,483:1\n1549#2:484\n1620#2,3:485\n314#3,11:488\n*S KotlinDebug\n*F\n+ 1 BluetoothManager.kt\ntech/rabbit/r1launcher/settings/bluetooth/BluetoothManager\n*L\n133#1:484\n133#1:485,3\n348#1:488,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u00102\u001a\u00020\u00112\u0006\u00103\u001a\u00020\u0016H\u0002J5\u00104\u001a\u00020\u00112-\u0010\u0013\u001a)\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00110\u0014J\u0010\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0003J\u001e\u00107\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0082@\u00a2\u0006\u0002\u00109J4\u0010:\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\u00152\u0008\u00106\u001a\u0004\u0018\u00010\u00162\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0087@\u00a2\u0006\u0002\u0010<J\u0010\u0010=\u001a\u00020>2\u0006\u00106\u001a\u00020\u0016H\u0002J\u0018\u0010?\u001a\u00020\u00102\u0008\u00106\u001a\u0004\u0018\u00010\u0016H\u0087@\u00a2\u0006\u0002\u0010@J\u0016\u0010A\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0087@\u00a2\u0006\u0002\u0010@J\u0010\u0010B\u001a\u00020>2\u0006\u00106\u001a\u00020\u0016H\u0002J\u000e\u0010C\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0015J,\u0010D\u001a\u00020\u00102\n\u0010E\u001a\u0006\u0012\u0002\u0008\u00030F2\u0006\u0010G\u001a\u00020H2\u0006\u00108\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u0016H\u0002J\u0006\u0010I\u001a\u00020\u0010J\u0012\u0010J\u001a\u00020\u00102\u0008\u00106\u001a\u0004\u0018\u00010\u0016H\u0007J\u0012\u0010K\u001a\u00020\u00102\u0008\u00106\u001a\u0004\u0018\u00010\u0016H\u0007J\u000e\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00160MH\u0007J5\u0010N\u001a\u00020\u00112-\u0010\u0013\u001a)\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00110\u0014J \u0010O\u001a\u00020\u00112\u0006\u0010P\u001a\u00020Q2\u0006\u00106\u001a\u00020\u00162\u0006\u0010R\u001a\u00020>H\u0002J8\u0010S\u001a\u00020\u00112\u0008\u0008\u0002\u0010T\u001a\u00020\u00072\u0008\u0008\u0002\u0010U\u001a\u00020\u00072\u0006\u00106\u001a\u00020\u00162\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0002J\u0010\u0010V\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0015H\u0007J\u000e\u0010W\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u0015J$\u0010X\u001a\u00020\u00112\u0006\u0010Y\u001a\u00020\u00162\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fH\u0007J\u0018\u0010Z\u001a\u00020\u00112\u0006\u0010;\u001a\u00020\u00152\u0006\u0010[\u001a\u00020\u0010H\u0007J\u0010\u0010\\\u001a\u00020\u00112\u0008\u00106\u001a\u0004\u0018\u00010\u0016R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082D\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u0005*\u0004\u0018\u00010\u000b0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R5\u0010\u0013\u001a)\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u00110\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R&\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R&\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00110\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00160+j\u0008\u0012\u0004\u0012\u00020\u0016`,X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010-\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101\u00a8\u0006]"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;",
        "",
        "()V",
        "MY_UUID",
        "Ljava/util/UUID;",
        "kotlin.jvm.PlatformType",
        "SCAN_TIME",
        "",
        "TAG",
        "",
        "bluetoothAdapter",
        "Landroid/bluetooth/BluetoothAdapter;",
        "bluetoothScanReceiver",
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;",
        "connectingListener",
        "Lkotlin/Function1;",
        "",
        "",
        "disconnectingListener",
        "listener",
        "Lkotlin/Function3;",
        "Landroid/content/Context;",
        "Landroid/bluetooth/BluetoothDevice;",
        "Lkotlin/ParameterName;",
        "name",
        "isConnected",
        "monitor",
        "Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;",
        "needScan",
        "onDeviceBond",
        "getOnDeviceBond",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnDeviceBond",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onDeviceScanResultChange",
        "getOnDeviceScanResultChange",
        "setOnDeviceScanResultChange",
        "onDeviceUnbind",
        "getOnDeviceUnbind",
        "setOnDeviceUnbind",
        "scanJob",
        "Lkotlinx/coroutines/Job;",
        "scanList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "timeoutJob",
        "getTimeoutJob",
        "()Lkotlinx/coroutines/Job;",
        "setTimeoutJob",
        "(Lkotlinx/coroutines/Job;)V",
        "addIntoList",
        "it",
        "addOnDeviceConnectedListener",
        "adjustDeviceType",
        "device",
        "changeDeviceConnection",
        "connect",
        "(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "connectDevice",
        "context",
        "(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "connectDeviceInternal",
        "",
        "disconnectAndRemoveDevice",
        "(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disconnectDevice",
        "disconnectDeviceInternal",
        "initMonitor",
        "invokeMethod",
        "clz",
        "Ljava/lang/Class;",
        "obj",
        "Landroid/bluetooth/BluetoothProfile;",
        "isBluetoothOpened",
        "isDeviceBonded",
        "isDeviceConnected",
        "queryMyDevices",
        "",
        "removeOnDeviceConnectedListener",
        "setPriority",
        "a2dp",
        "Landroid/bluetooth/BluetoothA2dp;",
        "priority",
        "startCheckConnectionWithTimeout",
        "timeout",
        "interval",
        "startScan",
        "stopScan",
        "testDeviceInConnection",
        "targetDevice",
        "toggleBluetooth",
        "open",
        "unbindDevice",
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
.field public static final $stable:I

.field public static final INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

.field private static final MY_UUID:Ljava/util/UUID;

.field private static final SCAN_TIME:J

.field private static final TAG:Ljava/lang/String;

.field private static final bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static bluetoothScanReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;

.field private static connectingListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static disconnectingListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static final listener:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

.field private static needScan:Z

.field private static onDeviceBond:Lkotlin/jvm/functions/Function1;
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

.field private static onDeviceScanResultChange:Lkotlin/jvm/functions/Function1;
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

.field private static onDeviceUnbind:Lkotlin/jvm/functions/Function1;
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

.field private static scanJob:Lkotlinx/coroutines/Job;

.field private static final scanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static timeoutJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    const-string v0, "BluetoothManager"

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->scanList:Ljava/util/ArrayList;

    .line 37
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 39
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 40
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$onDeviceScanResultChange$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$onDeviceScanResultChange$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceScanResultChange:Lkotlin/jvm/functions/Function1;

    .line 41
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$onDeviceUnbind$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$onDeviceUnbind$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceUnbind:Lkotlin/jvm/functions/Function1;

    .line 42
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$onDeviceBond$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$onDeviceBond$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceBond:Lkotlin/jvm/functions/Function1;

    .line 43
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectingListener$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectingListener$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->connectingListener:Lkotlin/jvm/functions/Function1;

    .line 44
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectingListener$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectingListener$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->disconnectingListener:Lkotlin/jvm/functions/Function1;

    const-wide/16 v0, 0x2710

    sput-wide v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->SCAN_TIME:J

    const-string v0, "00001101-0000-1000-8000-00805F9B34FB"

    .line 48
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->MY_UUID:Ljava/util/UUID;

    .line 50
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$listener$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->listener:Lkotlin/jvm/functions/Function3;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addIntoList(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->addIntoList(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static final synthetic access$changeDeviceConnection(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->changeDeviceConnection(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBluetoothAdapter$p()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public static final synthetic access$getConnectingListener$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->connectingListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getDisconnectingListener$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->disconnectingListener:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getMonitor$p()Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    return-object v0
.end method

.method public static final synthetic access$getNeedScan$p()Z
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->needScan:Z

    return v0
.end method

.method public static final synthetic access$getSCAN_TIME$p()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->SCAN_TIME:J

    return-wide v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$invokeMethod(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;ZLandroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->invokeMethod(Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setConnectingListener$p(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->connectingListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$setDisconnectingListener$p(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->disconnectingListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final addIntoList(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->scanList:Ljava/util/ArrayList;

    .line 133
    check-cast p0, Ljava/lang/Iterable;

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 485
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 486
    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 133
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 486
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 487
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 133
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->scanList:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceScanResultChange:Lkotlin/jvm/functions/Function1;

    .line 136
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private final adjustDeviceType(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 279
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[connect] adjustDeviceType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x434

    if-eq p0, p1, :cond_1

    const/16 p1, 0x420

    if-eq p0, p1, :cond_1

    const/16 p1, 0x408

    if-eq p0, p1, :cond_1

    const/16 p1, 0x418

    if-eq p0, p1, :cond_1

    const/16 p1, 0x428

    if-eq p0, p1, :cond_1

    const/16 p1, 0x414

    if-eq p0, p1, :cond_1

    const/16 p1, 0x410

    if-eq p0, p1, :cond_1

    const/16 p1, 0x41c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x424

    if-eq p0, p1, :cond_1

    const/16 p1, 0x400

    if-eq p0, p1, :cond_1

    const/16 p1, 0x42c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x430

    if-eq p0, p1, :cond_1

    const/16 p1, 0x440

    if-eq p0, p1, :cond_1

    const/16 p1, 0x43c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x448

    if-eq p0, p1, :cond_1

    const/16 p1, 0x438

    if-eq p0, p1, :cond_1

    const/16 p1, 0x404

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final changeDeviceConnection(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 489
    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 495
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 496
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CancellableContinuation;

    sget-object v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 349
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 350
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getMonitor$p()Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    move-result-object v5

    invoke-virtual {v5}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->getProxy()Landroid/bluetooth/BluetoothProfile;

    move-result-object v5

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    .line 352
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getMonitor$p()Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    move-result-object v5

    invoke-virtual {v5}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->getProfile()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 353
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "changeDeviceConnection: device:HEADSET"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-class v5, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getMonitor$p()Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    move-result-object v6

    invoke-virtual {v6}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->getProxy()Landroid/bluetooth/BluetoothProfile;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v5, v6, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$invokeMethod(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    goto :goto_0

    .line 356
    :cond_1
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object v5

    const-string v6, "changeDeviceConnection: device:A2DP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-class v5, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getMonitor$p()Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    move-result-object v6

    invoke-virtual {v6}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->getProxy()Landroid/bluetooth/BluetoothProfile;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2, v5, v6, p1, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$invokeMethod(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;ZLandroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 360
    :goto_0
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "[connect]"

    const-string v9, "[disconnect]"

    if-eqz p1, :cond_2

    move-object v10, v8

    goto :goto_1

    :cond_2
    move-object v10, v9

    :goto_1
    :try_start_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " Internal: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x3e8

    .line 361
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    if-eqz p1, :cond_3

    .line 363
    invoke-virtual {v2, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_2

    .line 365
    :cond_3
    invoke-virtual {v2, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    .line 367
    :goto_2
    invoke-static {}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move-object v8, v9

    :goto_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " double check: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    .line 369
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    goto :goto_4

    .line 371
    :cond_6
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 373
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 349
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 373
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 374
    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isCompleted()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v0}, Lkotlinx/coroutines/CancellableContinuation;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 375
    :cond_7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 497
    :cond_8
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 488
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_9

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_9
    return-object p0
.end method

.method private final connectDeviceInternal(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    const-class p0, Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "connect"

    .line 391
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x1

    .line 392
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 393
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[disconnect]: method called result ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private final disconnectDeviceInternal(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    const-class p0, Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "disconnect"

    .line 383
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v1, 0x1

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 385
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[connect]: method called result ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private final invokeMethod(Ljava/lang/Class;Landroid/bluetooth/BluetoothProfile;ZLandroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/bluetooth/BluetoothProfile;",
            "Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")Z"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p3, :cond_0

    new-array p3, v0, [Ljava/lang/Class;

    .line 408
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    aput-object v1, p3, p0

    const-string p0, "disconnect"

    .line 406
    invoke-virtual {p1, p0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p3, v0, [Ljava/lang/Class;

    .line 413
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    aput-object v1, p3, p0

    const-string p0, "connect"

    .line 411
    invoke-virtual {p1, p0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 416
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 417
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final setPriority(Landroid/bluetooth/BluetoothA2dp;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    .line 427
    :try_start_0
    const-class p0, Landroid/bluetooth/BluetoothA2dp;

    const-string v0, "setPriority"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 430
    const-class v3, Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 428
    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 432
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v4

    .line 433
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final startCheckConnectionWithTimeout(JJLandroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 304
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v11, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;

    const/4 v10, 0x0

    move-object v3, v11

    move-wide v4, p3

    move-object/from16 v6, p5

    move-wide v7, p1

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startCheckConnectionWithTimeout$1;-><init>(JLandroid/bluetooth/BluetoothDevice;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v3, v11

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object p0, v0

    move-object p1, v1

    move-object p2, v2

    move-object p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->timeoutJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic startCheckConnectionWithTimeout$default(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;JJLandroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const-wide/16 p1, 0x1388

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    const-wide/16 p3, 0x1f4

    :cond_1
    move-wide v3, p3

    move-object v0, p0

    move-object v5, p5

    move-object v6, p6

    .line 303
    invoke-direct/range {v0 .. v6}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->startCheckConnectionWithTimeout(JJLandroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final addOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V
    .locals 0
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

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 441
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->addOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final connectDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    instance-of v4, v3, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;

    iget v5, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;

    invoke-direct {v4, v0, v3}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 221
    iget v6, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v6, :cond_7

    if-eq v6, v11, :cond_6

    if-eq v6, v10, :cond_5

    if-eq v6, v9, :cond_4

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->I$0:I

    iget-object v1, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v2, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v16, v2

    move-object v2, v1

    move-object v1, v6

    move-object/from16 v6, v16

    goto/16 :goto_7

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    iget v0, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->I$0:I

    iget-object v1, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object v2, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v6, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    check-cast v6, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    goto :goto_1

    :cond_7
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez v1, :cond_8

    .line 226
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 227
    :cond_8
    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->adjustDeviceType(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 229
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v3, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 233
    invoke-virtual {v3}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->isA2DPServerAlive()Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 234
    iput-object v0, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    iput v11, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    invoke-virtual {v3, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->startA2dpServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_a

    return-object v5

    :cond_a
    :goto_1
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    .line 236
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_b
    move-object v6, v1

    move-object v1, v0

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "connectDevice:"

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v14, 0xa

    if-ne v3, v14, :cond_c

    sput-object v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->connectingListener:Lkotlin/jvm/functions/Function1;

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device not bond :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1f4

    sget-object v7, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->connectingListener:Lkotlin/jvm/functions/Function1;

    .line 246
    invoke-direct/range {v1 .. v7}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->startCheckConnectionWithTimeout(JJLandroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_8

    .line 247
    :cond_c
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v14, 0xc

    if-ne v3, v14, :cond_13

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "device already bond :"

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ",address="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    :goto_2
    if-lez v0, :cond_12

    .line 253
    iput-object v1, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    iput-object v6, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    iput v0, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->I$0:I

    iput v10, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    invoke-direct {v1, v11, v6, v4}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->changeDeviceConnection(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_d

    return-object v5

    :cond_d
    move-object/from16 v16, v6

    move-object v6, v1

    move-object v1, v2

    move-object/from16 v2, v16

    :goto_3
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v14, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 255
    invoke-virtual {v14}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->getProxy()Landroid/bluetooth/BluetoothProfile;

    move-result-object v14

    if-eqz v14, :cond_e

    invoke-interface {v14, v2}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v14

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_4

    :cond_e
    move-object v14, v13

    :goto_4
    if-nez v14, :cond_f

    goto :goto_6

    .line 256
    :cond_f
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v10, :cond_11

    .line 257
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$2;

    invoke-direct {v2, v1, v3, v13}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$2;-><init>(Lkotlin/jvm/functions/Function1;ZLkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object v13, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    iput-object v13, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    iput v9, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    invoke-static {v0, v2, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_10

    return-object v5

    .line 260
    :cond_10
    :goto_5
    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 263
    :cond_11
    :goto_6
    iput-object v6, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    iput-object v1, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    iput v0, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->I$0:I

    iput v8, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    const-wide/16 v14, 0x3e8

    invoke-static {v14, v15, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_3

    return-object v5

    :goto_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 266
    :cond_12
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$3;

    invoke-direct {v1, v2, v13}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v13, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$1:Ljava/lang/Object;

    iput-object v13, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->L$2:Ljava/lang/Object;

    iput v7, v4, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$connectDevice$1;->label:I

    invoke-static {v0, v1, v4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_13

    return-object v5

    .line 274
    :cond_13
    :goto_8
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final disconnectAndRemoveDevice(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;

    iget v1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;

    invoke-direct {v0, p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 163
    iget v2, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->L$0:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p1, :cond_4

    .line 166
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 167
    :cond_4
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "call disconnectDevice: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "BluetoothManager"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_1
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    .line 170
    iput-object p1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    invoke-direct {p0, v5, p1, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->changeDeviceConnection(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 169
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 171
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "[connect]Device:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " fail reason = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "TAG"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 p2, 0xc

    if-eq p0, p2, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    const/16 p2, 0xb

    if-ne p0, p2, :cond_8

    :cond_7
    const-class p0, Landroid/bluetooth/BluetoothDevice;

    const-string p2, "removeBond"

    new-array v2, v5, [Ljava/lang/Class;

    .line 176
    invoke-virtual {p0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string p2, "getDeclaredMethod(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v5, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    new-instance p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$4;

    const/4 v2, 0x0

    invoke-direct {p2, p1, v2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$4;-><init>(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectAndRemoveDevice$1;->label:I

    invoke-static {p0, p2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    .line 182
    :cond_9
    :goto_4
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final disconnectDevice(Landroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;

    iget v1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p0, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->label:I

    sub-int/2addr p0, v2

    iput p0, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;

    invoke-direct {v0, p0, p2}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;-><init>(Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p0, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    .line 186
    iget v1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 187
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->isA2DPServerAlive()Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 188
    iput-object p1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->label:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->startA2dpServer(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_4

    return-object p2

    :cond_4
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_5

    .line 190
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 193
    :cond_5
    :try_start_1
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    .line 194
    iput-object p1, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$disconnectDevice$1;->label:I

    invoke-direct {p0, v4, p1, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->changeDeviceConnection(ZLandroid/bluetooth/BluetoothDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, p2, :cond_6

    return-object p2

    :cond_6
    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 195
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 196
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[disconnect]Device:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " fail reason = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TAG"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final getOnDeviceBond()Lkotlin/jvm/functions/Function1;
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

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceBond:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnDeviceScanResultChange()Lkotlin/jvm/functions/Function1;
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

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceScanResultChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnDeviceUnbind()Lkotlin/jvm/functions/Function1;
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

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceUnbind:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getTimeoutJob()Lkotlinx/coroutines/Job;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->timeoutJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public final initMonitor(Landroid/content/Context;)V
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->listener:Lkotlin/jvm/functions/Function3;

    .line 71
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->addOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 72
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->startMonitor(Landroid/content/Context;)V

    return-void
.end method

.method public final isBluetoothOpened()Z
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 154
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final isDeviceBonded(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final isDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 205
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->getProxy()Landroid/bluetooth/BluetoothProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/4 p0, 0x1

    :cond_3
    :goto_1
    return p0
.end method

.method public final queryMyDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 145
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->TAG:Ljava/lang/String;

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryMyDevices: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final removeOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V
    .locals 0
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

    const-string p0, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->monitor:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;

    .line 445
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothDeviceMonitor;->removeOnDeviceConnectedListener(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final setOnDeviceBond(Lkotlin/jvm/functions/Function1;)V
    .locals 0
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

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceBond:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnDeviceScanResultChange(Lkotlin/jvm/functions/Function1;)V
    .locals 0
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

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceScanResultChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnDeviceUnbind(Lkotlin/jvm/functions/Function1;)V
    .locals 0
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

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->onDeviceUnbind:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setTimeoutJob(Lkotlinx/coroutines/Job;)V
    .locals 0

    sput-object p1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->timeoutJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final startScan(Landroid/content/Context;)V
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;-><init>()V

    .line 83
    sget-object v1, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startScan$1$1;->INSTANCE:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startScan$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;->setOnDeviceFound(Lkotlin/jvm/functions/Function1;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothScanReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;

    .line 87
    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 88
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->needScan:Z

    .line 92
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startScan$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$startScan$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    sput-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->scanJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stopScan(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothScanReceiver:Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;

    if-nez p0, :cond_0

    return-void

    .line 108
    :cond_0
    check-cast p0, Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->scanList:Ljava/util/ArrayList;

    .line 110
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    const/4 p0, 0x0

    sput-boolean p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->needScan:Z

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->scanJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0, p1, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final testDeviceInConnection(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "targetDevice"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "listener"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 451
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p0

    .line 454
    new-instance v0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;

    invoke-direct {v0, p1, p2, p0}, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager$testDeviceInConnection$scanCallback$1;-><init>(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function1;Landroid/bluetooth/le/BluetoothLeScanner;)V

    check-cast v0, Landroid/bluetooth/le/ScanCallback;

    .line 481
    invoke-virtual {p0, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V

    return-void
.end method

.method public final toggleBluetooth(Landroid/content/Context;Z)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 123
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 125
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :goto_0
    return-void
.end method

.method public final unbindDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 330
    :try_start_0
    const-class p0, Landroid/bluetooth/BluetoothDevice;

    const-string v0, "removeBond"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 332
    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string v0, "getMethod(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
