.class public final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SettingsNetwork2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsNetwork2ViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsNetwork2ViewModel.kt\ntech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Handler.kt\nandroidx/core/os/HandlerKt\n*L\n1#1,309:1\n766#2:310\n857#2,2:311\n1655#2,8:313\n1549#2:321\n1620#2,3:322\n1655#2,8:325\n766#2:333\n857#2,2:334\n1549#2:336\n1620#2,3:337\n1655#2,8:340\n1549#2:348\n1620#2,3:349\n1549#2:352\n1620#2,3:353\n33#3,12:356\n*S KotlinDebug\n*F\n+ 1 SettingsNetwork2ViewModel.kt\ntech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel\n*L\n120#1:310\n120#1:311,2\n121#1:313,8\n122#1:321\n122#1:322,3\n132#1:325,8\n135#1:333\n135#1:334,2\n136#1:336\n136#1:337,3\n143#1:340,8\n91#1:348\n91#1:349,3\n98#1:352\n98#1:353,3\n101#1:356,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0007\u0018\u0000 62\u00020\u0001:\u00016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u001eJ*\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\r0\t2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0\tH\u0002J\u0016\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\r2\u0006\u0010$\u001a\u00020%J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\rH\u0007J\u000e\u0010\'\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\rJ\u0018\u0010(\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\r2\u0008\u0008\u0002\u0010)\u001a\u00020\u0007J\u0008\u0010*\u001a\u0004\u0018\u00010\rJ\u0008\u0010+\u001a\u0004\u0018\u00010\rJ\u0006\u0010,\u001a\u00020\u0007J\u0006\u0010-\u001a\u00020\u001eJ\u000e\u0010.\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\rJ\u0006\u0010/\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u001eJ\u0006\u00101\u001a\u00020\u001eJ\u000e\u00102\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u0007J\u0018\u00104\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\r2\u0008\u0010$\u001a\u0004\u0018\u00010%J\u000e\u00105\u001a\u00020\u001e2\u0006\u00103\u001a\u00020\u0007R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R#\u0010\u0017\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000c0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0013\u00a8\u00067"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "_cellularUIState",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "_scanWifiItems",
        "",
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "_wifiConnectState",
        "Lkotlin/Pair;",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
        "_wifiUIState",
        "cellularUIState",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getCellularUIState",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "lastSelectedWifi",
        "scanWifiItems",
        "getScanWifiItems",
        "wifiConnectState",
        "getWifiConnectState",
        "wifiScanTimer",
        "Landroid/os/Handler;",
        "wifiUIState",
        "getWifiUIState",
        "clearScanWifiResult",
        "",
        "clearWifiItems",
        "savedWifiItemsFromSystem",
        "scanResults",
        "connectWifiAtPassword",
        "wifi",
        "password",
        "",
        "connectWifiAtSavedWifi",
        "disconnectWifi",
        "forgetWifi",
        "needNotifyUI",
        "getAndClearLastSelectedWifi",
        "getLastSelectedWifi",
        "hasLastSelectedWifiCache",
        "resetScanWifi",
        "saveLastSelectedWifi",
        "scanWifiIfEnable",
        "switchCellularState",
        "switchWifiState",
        "updateCellularUIState",
        "isEnable",
        "updateWifiConnectStateFromNetworkItem",
        "updateWifiUIState",
        "Companion",
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

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;


# instance fields
.field private final _cellularUIState:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _scanWifiItems:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _wifiUIState:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final application:Landroid/app/Application;

.field private final cellularUIState:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private lastSelectedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

.field private final scanWifiItems:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wifiConnectState:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final wifiScanTimer:Landroid/os/Handler;

.field private final wifiUIState:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$rylR94qYSa3PEyMG-NsmnFpfzJ8(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiIfEnable$lambda$5(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->Companion:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 7

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 47
    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v4

    .line 49
    sget-object v5, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    sget-object v5, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    move-object v6, p1

    check-cast v6, Landroid/content/Context;

    invoke-virtual {v5, v6}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isCellularEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 48
    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    iput-object v4, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_cellularUIState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 53
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v4, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->cellularUIState:Lkotlinx/coroutines/flow/SharedFlow;

    .line 68
    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v4

    .line 69
    sget-object v5, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v5, p1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isWifiEnable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v4, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    iput-object v4, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiUIState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 71
    check-cast v4, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object v4, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiUIState:Lkotlinx/coroutines/flow/SharedFlow;

    .line 82
    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_scanWifiItems:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 83
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiItems:Lkotlinx/coroutines/flow/SharedFlow;

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiScanTimer:Landroid/os/Handler;

    .line 171
    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 172
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiConnectState:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$get_wifiConnectState$p(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method private final clearWifiItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            ">;",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            ">;)",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;"
        }
    .end annotation

    .line 117
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    move-object/from16 v1, p0

    iget-object v1, v1, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getCurrentConnectedWifi(Landroid/content/Context;)Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v0

    .line 119
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 311
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 120
    sget-object v5, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;->isAvailableSSID(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 311
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_1
    check-cast v2, Ljava/util/List;

    .line 310
    check-cast v2, Ljava/lang/Iterable;

    .line 313
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 314
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 315
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 316
    move-object v5, v4

    check-cast v5, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 121
    invoke-virtual {v5}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->hashCode(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 317
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 318
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    :cond_3
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 322
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 323
    check-cast v4, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 123
    new-instance v7, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    if-eqz v0, :cond_4

    .line 128
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getNetworkId()I

    move-result v8

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getNetworkId()I

    move-result v9

    if-ne v8, v9, :cond_4

    .line 129
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move v5, v6

    :goto_3
    const/16 v8, 0x309

    .line 123
    invoke-direct {v7, v8, v4, v6, v5}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;-><init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)V

    .line 323
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 324
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 321
    check-cast v1, Ljava/lang/Iterable;

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 326
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 328
    move-object v8, v4

    check-cast v8, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    .line 132
    invoke-virtual {v8}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_7
    move-object v9, v7

    :goto_5
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v6

    :goto_6
    invoke-virtual {v8}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_9
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_7

    :cond_a
    move v7, v6

    :goto_7
    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 329
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 330
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 332
    :cond_b
    check-cast v3, Ljava/util/List;

    .line 134
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 334
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 135
    sget-object v9, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    invoke-virtual {v8}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;->isAvailableSSID(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 334
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 335
    :cond_d
    check-cast v1, Ljava/util/List;

    .line 333
    check-cast v1, Ljava/lang/Iterable;

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 337
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 338
    move-object v10, v2

    check-cast v10, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 137
    new-instance v2, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    const/16 v9, 0x309

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;-><init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 338
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 339
    :cond_e
    check-cast v0, Ljava/util/List;

    .line 336
    check-cast v0, Ljava/lang/Iterable;

    .line 340
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 343
    move-object v8, v4

    check-cast v8, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    .line 143
    invoke-virtual {v8}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_10
    move-object v9, v7

    :goto_b
    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    goto :goto_c

    :cond_11
    move v9, v6

    :goto_c
    invoke-virtual {v8}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-virtual {v8}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_d

    :cond_12
    move-object v8, v7

    :goto_d
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_e

    :cond_13
    move v8, v6

    :goto_e
    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 344
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 345
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 347
    :cond_14
    check-cast v2, Ljava/util/List;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 146
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 148
    new-instance v4, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    const/16 v6, 0x3e7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xe

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;-><init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_15
    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    const/16 v13, 0x378

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;-><init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    check-cast v2, Ljava/lang/Iterable;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static synthetic forgetWifi$default(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ltech/rabbit/r1launcher/initstep/model/Wifi;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 251
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->forgetWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;Z)V

    return-void
.end method

.method private static final scanWifiIfEnable$lambda$5(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ljava/util/List;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scanResults"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scanWifiIfEnable, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 349
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 350
    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 91
    sget-object v5, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;->adapt(Landroid/net/wifi/ScanResult;)Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v4

    .line 350
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 351
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 348
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3f

    const/4 v11, 0x0

    .line 91
    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsNetwork2ViewModel"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isWifiEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    .line 96
    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    .line 95
    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getSavedWifiListFromSystem(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 353
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 354
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 98
    sget-object v3, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;->adapt(Landroid/net/wifi/ScanResult;)Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v2

    .line 354
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 94
    invoke-direct {p0, v0, v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->clearWifiItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 100
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_scanWifiItems:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiScanTimer:Landroid/os/Handler;

    .line 361
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$scanWifiIfEnable$lambda$5$$inlined$postDelayed$default$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$scanWifiIfEnable$lambda$5$$inlined$postDelayed$default$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    .line 363
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->clearScanWifiResult()V

    :goto_2
    return-void
.end method


# virtual methods
.method public final clearScanWifiResult()V
    .locals 2

    const-string v0, "SettingsNetwork2ViewModel"

    const-string v1, "clearScanWifiResult"

    .line 167
    invoke-static {v0, v1}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_scanWifiItems:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 168
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final connectWifiAtPassword(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V
    .locals 3

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 200
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    .line 201
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->withContext(Landroid/content/Context;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getBssid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {v0, v1, v2, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;->connectWith(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;

    move-result-object p2

    .line 202
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$connectWifiAtPassword$1;

    invoke-direct {v0, p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$connectWifiAtPassword$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    check-cast v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    invoke-interface {p2, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;->onConnectionResult(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;

    move-result-object p0

    .line 216
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;->start()V

    return-void
.end method

.method public final connectWifiAtSavedWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 2

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 221
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    .line 222
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->withContext(Landroid/content/Context;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;->connectWith(Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;

    move-result-object v0

    .line 223
    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$connectWifiAtSavedWifi$1;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$connectWifiAtSavedWifi$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    check-cast v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    .line 222
    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;->onConnectionResult(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;

    move-result-object p0

    .line 234
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;->start()V

    return-void
.end method

.method public final disconnectWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 2

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 239
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Disconnecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 241
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->disconnectWifi(Landroid/content/Context;Ltech/rabbit/r1launcher/initstep/model/Wifi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 242
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->NoConnect:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 244
    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connected:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 247
    :goto_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->resetScanWifi()V

    .line 248
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiIfEnable()V

    return-void
.end method

.method public final forgetWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;Z)V
    .locals 4

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    .line 252
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->withContext(Landroid/content/Context;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getBssid()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    new-instance v3, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;

    invoke-direct {v3, p2, p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$forgetWifi$1;-><init>(ZLtech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    check-cast v3, Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;

    invoke-interface {v0, v1, v2, v3}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;->remove(Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiRemove/RemoveSuccessListener;)V

    return-void
.end method

.method public final getAndClearLastSelectedWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->lastSelectedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    const/4 v1, 0x0

    iput-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->lastSelectedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object v0
.end method

.method public final getCellularUIState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->cellularUIState:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getLastSelectedWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->lastSelectedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object p0
.end method

.method public final getScanWifiItems()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiItems:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getWifiConnectState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiConnectState:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getWifiUIState()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiUIState:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final hasLastSelectedWifiCache()Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->lastSelectedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final resetScanWifi()V
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->wifiScanTimer:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final saveLastSelectedWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 1

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->lastSelectedWifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-void
.end method

.method public final scanWifiIfEnable()V
    .locals 2

    .line 87
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isWifiEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    .line 89
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->withContext(Landroid/content/Context;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;

    move-result-object v0

    .line 90
    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;)V

    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;->scanWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;->start()V

    return-void
.end method

.method public final switchCellularState()V
    .locals 3

    .line 60
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isCellularEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 63
    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->setCellularEnable(Landroid/content/Context;Z)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->updateCellularUIState(Z)V

    return-void
.end method

.method public final switchWifiState()V
    .locals 7

    .line 78
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isWifiEnable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 79
    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->setWifiEnable$default(Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;Landroid/content/Context;ZLtech/rabbit/r1launcher/components/wifiutils/wifiState/WifiStateListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateCellularUIState(Z)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_cellularUIState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateWifiConnectStateFromNetworkItem(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V
    .locals 5

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getSavedWifiListFromSystem(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 176
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 177
    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result v2

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getDpmWifiSecurity()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 176
    :goto_0
    check-cast v1, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-nez v1, :cond_4

    .line 181
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 184
    sget-object p2, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 182
    sget-object p2, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->NoConnect:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_2

    .line 187
    :cond_4
    sget-object p2, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->application:Landroid/app/Application;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getCurrentConnectedWifi(Landroid/content/Context;)Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 189
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getNetworkId()I

    move-result v0

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getNetworkId()I

    move-result v2

    if-ne v0, v2, :cond_5

    .line 190
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 192
    sget-object p2, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connected:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiConnectState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 194
    sget-object p2, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->NoConnect:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final updateWifiUIState(Z)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->_wifiUIState:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 74
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    return-void
.end method
