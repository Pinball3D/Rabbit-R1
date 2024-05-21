.class public final Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;
.super Landroidx/fragment/app/Fragment;
.source "ConnectNetworkFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;
.implements Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectNetworkFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectNetworkFragment.kt\ntech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 5 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Handler.kt\nandroidx/core/os/HandlerKt\n*L\n1#1,573:1\n1549#2:574\n1620#2,3:575\n766#2:614\n857#2,2:615\n1655#2,8:617\n1054#2:625\n1549#2:690\n1620#2,3:691\n329#3,2:578\n331#3,2:588\n329#3,2:590\n331#3,2:600\n329#3,2:602\n331#3,2:612\n350#3:626\n368#3:627\n350#3:628\n350#3:629\n350#3:630\n350#3:646\n350#3:647\n350#3:662\n368#3:663\n350#3:664\n329#3,2:665\n331#3,2:675\n350#3:677\n329#3,2:678\n331#3,2:688\n329#3,2:706\n331#3,2:716\n329#3,2:718\n331#3,2:728\n142#4,8:580\n142#4,8:592\n142#4,8:604\n142#4,8:667\n142#4,8:680\n142#4,8:708\n142#4,8:720\n95#5,14:631\n95#5,14:648\n1#6:645\n33#7,12:694\n*S KotlinDebug\n*F\n+ 1 ConnectNetworkFragment.kt\ntech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment\n*L\n176#1:574\n176#1:575,3\n308#1:614\n308#1:615,2\n309#1:617,8\n310#1:625\n271#1:690\n271#1:691,3\n204#1:578,2\n204#1:588,2\n248#1:590,2\n248#1:600,2\n255#1:602,2\n255#1:612,2\n361#1:626\n363#1:627\n366#1:628\n367#1:629\n368#1:630\n382#1:646\n383#1:647\n436#1:662\n438#1:663\n442#1:664\n443#1:665,2\n443#1:675,2\n446#1:677\n447#1:678,2\n447#1:688,2\n372#1:706,2\n372#1:716,2\n392#1:718,2\n392#1:728,2\n205#1:580,8\n249#1:592,8\n256#1:604,8\n444#1:667,8\n448#1:680,8\n373#1:708,8\n393#1:720,8\n377#1:631,14\n397#1:648,14\n272#1:694,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001YB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u00101\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u000cH\u0002J\"\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u00102\u0006\u00106\u001a\u00020\u00102\u0008\u00107\u001a\u0004\u0018\u000108H\u0016J\u0010\u00109\u001a\u0002042\u0006\u0010:\u001a\u00020;H\u0016J&\u0010<\u001a\u0004\u0018\u00010=2\u0006\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0008\u0010D\u001a\u000204H\u0016J\u0008\u0010E\u001a\u000204H\u0016J\u001a\u0010F\u001a\u0002042\u0006\u0010G\u001a\u00020\u00102\u0008\u0010H\u001a\u0004\u0018\u00010IH\u0016J\u0008\u0010J\u001a\u000204H\u0016J\u0008\u0010K\u001a\u000204H\u0016J\u0008\u0010L\u001a\u000204H\u0016J\u0008\u0010M\u001a\u000204H\u0016J\u001a\u0010N\u001a\u0002042\u0006\u0010O\u001a\u00020=2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0016\u0010P\u001a\u0002042\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\"H\u0002J\u0008\u0010R\u001a\u000204H\u0002J\u000e\u0010S\u001a\u0002042\u0006\u0010+\u001a\u00020,J\u0008\u0010T\u001a\u000204H\u0002J\u0008\u0010U\u001a\u000204H\u0002J\u0010\u0010V\u001a\u00020\u00102\u0006\u0010W\u001a\u00020\u0010H\u0002J\u0008\u0010X\u001a\u000204H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\'\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012R\'\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0012R\'\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u0019\u0010\u0012R\'\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001c\u0010\u0012R\'\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0014\u001a\u0004\u0008\u001f\u0010\u0012R-\u0010!\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e0\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u0014\u001a\u0004\u0008#\u0010$R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;",
        "()V",
        "adapter",
        "Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;",
        "fmvvLauncher",
        "Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;",
        "isClickedUseWifi",
        "",
        "lvNetworkOptions",
        "Landroid/widget/ListView;",
        "optionChangeNetwork",
        "Lkotlin/Pair;",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "",
        "getOptionChangeNetwork",
        "()Lkotlin/Pair;",
        "optionChangeNetwork$delegate",
        "Lkotlin/Lazy;",
        "optionConnectToWifi",
        "getOptionConnectToWifi",
        "optionConnectToWifi$delegate",
        "optionReEnter",
        "getOptionReEnter",
        "optionReEnter$delegate",
        "optionRetry",
        "getOptionRetry",
        "optionRetry$delegate",
        "optionUseCellular",
        "getOptionUseCellular",
        "optionUseCellular$delegate",
        "options",
        "",
        "getOptions",
        "()Ljava/util/List;",
        "options$delegate",
        "scanWifiResultCache",
        "",
        "scrollAnimator",
        "Landroid/animation/ValueAnimator;",
        "scrollTopMargin",
        "showType",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;",
        "tvTip",
        "Landroid/widget/TextView;",
        "wifiScanTimer",
        "Landroid/os/Handler;",
        "getItemsHeightOfListView",
        "listView",
        "onActivityResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onDetach",
        "onKeyUp",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onPause",
        "onResume",
        "onSimStateChangeToLoaded",
        "onSimStateChangeToNotLoaded",
        "onViewCreated",
        "view",
        "onWifiScanResult",
        "result",
        "scanWifiList",
        "setShowType",
        "setupUI",
        "showScanWifiResult",
        "switchSignalLevelResId",
        "level",
        "updateTipsTopMargin",
        "ShowType",
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
.field private final adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

.field private fmvvLauncher:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

.field private isClickedUseWifi:Z

.field private lvNetworkOptions:Landroid/widget/ListView;

.field private final optionChangeNetwork$delegate:Lkotlin/Lazy;

.field private final optionConnectToWifi$delegate:Lkotlin/Lazy;

.field private final optionReEnter$delegate:Lkotlin/Lazy;

.field private final optionRetry$delegate:Lkotlin/Lazy;

.field private final optionUseCellular$delegate:Lkotlin/Lazy;

.field private final options$delegate:Lkotlin/Lazy;

.field private final scanWifiResultCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            ">;"
        }
    .end annotation
.end field

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollTopMargin:I

.field private showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

.field private tvTip:Landroid/widget/TextView;

.field private final wifiScanTimer:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$0bXFIrYK9wsmmjIIQCMPpYxEHXc(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->onKeyUp$lambda$19$lambda$17(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MvGmqEW0fXH3Q5tl72LUoymFFtI(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->onCreateView$lambda$0(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SCBsCUOE6_ZgBZ6xRlwFHxJlANQ(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiList$lambda$7(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SzCJzOVLsPTB-T3yPhT4onavr34(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->onKeyUp$lambda$14$lambda$12(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 44
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_connect_network:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 57
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionUseCellular$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionUseCellular$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionUseCellular$delegate:Lkotlin/Lazy;

    .line 60
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionConnectToWifi$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionConnectToWifi$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionConnectToWifi$delegate:Lkotlin/Lazy;

    .line 63
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionRetry$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionRetry$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionRetry$delegate:Lkotlin/Lazy;

    .line 66
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionReEnter$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionReEnter$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionReEnter$delegate:Lkotlin/Lazy;

    .line 69
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionChangeNetwork$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$optionChangeNetwork$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionChangeNetwork$delegate:Lkotlin/Lazy;

    .line 73
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$options$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->options$delegate:Lkotlin/Lazy;

    const/4 v0, 0x7

    .line 83
    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v0

    iput v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->wifiScanTimer:Landroid/os/Handler;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiResultCache:Ljava/util/List;

    .line 87
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 90
    sget-object v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    check-cast v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    return-void
.end method

.method public static final synthetic access$getOptionChangeNetwork(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOptionConnectToWifi(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionConnectToWifi()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOptionReEnter(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionReEnter()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOptionRetry(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionRetry()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOptionUseCellular(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)Lkotlin/Pair;
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionUseCellular()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$scanWifiList(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiList()V

    return-void
.end method

.method private final getItemsHeightOfListView(Landroid/widget/ListView;)I
    .locals 6

    const/4 p0, 0x0

    .line 408
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 410
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const-string v2, "getAdapter(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    move v3, p0

    :goto_0
    if-ge p0, v2, :cond_0

    const/4 v4, 0x0

    .line 413
    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v1, p0, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const-string v5, "getView(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v4, v0, v0}, Landroid/view/View;->measure(II)V

    .line 415
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method private final getOptionChangeNetwork()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionChangeNetwork$delegate:Lkotlin/Lazy;

    .line 69
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final getOptionConnectToWifi()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionConnectToWifi$delegate:Lkotlin/Lazy;

    .line 60
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final getOptionReEnter()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionReEnter$delegate:Lkotlin/Lazy;

    .line 66
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final getOptionRetry()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionRetry$delegate:Lkotlin/Lazy;

    .line 63
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final getOptionUseCellular()Lkotlin/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->optionUseCellular$delegate:Lkotlin/Lazy;

    .line 57
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    return-object p0
.end method

.method private final getOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->options$delegate:Lkotlin/Lazy;

    .line 73
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final onCreateView$lambda$0(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    invoke-virtual {p1, p3}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Pair<tech.rabbit.r1launcher.initstep.model.Wifi, kotlin.Int>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/Pair;

    .line 118
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p3, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    if-nez p2, :cond_2

    return-void

    .line 120
    :cond_2
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionConnectToWifi()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 p5, 0x1

    if-nez p3, :cond_4

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move p3, p5

    :goto_2
    iput-boolean p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->isClickedUseWifi:Z

    .line 122
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionUseCellular()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 123
    sget-object p0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    move-object p1, p2

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1, p5}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->setCellularEnable(Landroid/content/Context;Z)Z

    .line 124
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectRabbitAccount()V

    goto/16 :goto_5

    .line 125
    :cond_5
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionConnectToWifi()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    .line 131
    :cond_6
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionReEnter()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 132
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    instance-of p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    if-eqz p1, :cond_7

    move-object p4, p0

    check-cast p4, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    :cond_7
    if-nez p4, :cond_8

    return-void

    .line 134
    :cond_8
    invoke-virtual {p4}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    invoke-virtual {p2, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->enterPasswordToConnectWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    goto :goto_5

    .line 135
    :cond_9
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionRetry()Lkotlin/Pair;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 136
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    instance-of p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    if-eqz p1, :cond_a

    move-object p4, p0

    check-cast p4, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    :cond_a
    if-nez p4, :cond_b

    return-void

    .line 138
    :cond_b
    invoke-virtual {p4}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    invoke-virtual {p4}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectToWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    goto :goto_5

    .line 140
    :cond_c
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-virtual {p2, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->enterPasswordToConnectWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    goto :goto_5

    .line 126
    :cond_d
    :goto_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_e

    const-string p1, "tvTip"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p4

    :cond_e
    sget p2, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_no_inserted_sim:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 127
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptions()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->isContainsItem(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 128
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez p1, :cond_f

    const-string p1, "lvNetworkOptions"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p4

    goto :goto_4

    :cond_f
    move-object v1, p1

    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData$default(Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;Landroid/widget/ListView;Ljava/util/List;IILjava/lang/Object;)V

    .line 130
    :cond_10
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showScanWifiResult()V

    :goto_5
    return-void
.end method

.method private static final onKeyUp$lambda$14$lambda$12(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTip"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Landroid/view/View;

    .line 706
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 707
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 373
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 709
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 711
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 712
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 714
    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 716
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 706
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final onKeyUp$lambda$19$lambda$17(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTip"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Landroid/view/View;

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 719
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 393
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 721
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 723
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 724
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 726
    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 728
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 718
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final onWifiScanResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 304
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiResultCache:Ljava/util/List;

    .line 306
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiResultCache:Ljava/util/List;

    .line 308
    check-cast p1, Ljava/lang/Iterable;

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 615
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 308
    sget-object v4, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    invoke-virtual {v3}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;->isAvailableSSID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 615
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 614
    check-cast v1, Ljava/lang/Iterable;

    .line 617
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 618
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 620
    move-object v4, v3

    check-cast v4, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 309
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v4

    .line 621
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 622
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 624
    :cond_5
    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 625
    new-instance p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onWifiScanResult$$inlined$sortedByDescending$1;

    invoke-direct {p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onWifiScanResult$$inlined$sortedByDescending$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 307
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->isClickedUseWifi:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 313
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->isContainsItem(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 315
    :cond_6
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showScanWifiResult()V

    :cond_7
    :goto_2
    return-void
.end method

.method private final scanWifiList()V
    .locals 2

    .line 266
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->wifiScanTimer:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 268
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->withActivity(Landroid/app/Activity;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;

    move-result-object v0

    .line 270
    new-instance v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda3;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;->scanWifi(Ltech/rabbit/r1launcher/components/wifiutils/wifiScan/ScanResultsListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final scanWifiList$lambda$7(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    check-cast p1, Ljava/lang/Iterable;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 691
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 692
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 271
    sget-object v2, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;->adapt(Landroid/net/wifi/ScanResult;)Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v1

    .line 692
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 693
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 271
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->onWifiScanResult(Ljava/util/List;)V

    .line 272
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->wifiScanTimer:Landroid/os/Handler;

    .line 699
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$scanWifiList$lambda$7$$inlined$postDelayed$default$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$scanWifiList$lambda$7$$inlined$postDelayed$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    .line 701
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final setupUI()V
    .locals 14

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    .line 189
    sget-object v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x20

    const/16 v3, 0x51

    const-string v4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const-string v5, "lvNetworkOptions"

    const/4 v6, 0x2

    const-string v7, "requireContext(...)"

    const/4 v8, 0x1

    const-string v9, "tvTip"

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_6

    .line 190
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 191
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v11

    .line 192
    :cond_0
    sget v1, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_inserted_dynamic_operator_name:I

    .line 193
    sget-object v12, Ltech/rabbit/r1launcher/initstep/utils/Utils;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Utils;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ltech/rabbit/r1launcher/initstep/utils/Utils;->readSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 191
    invoke-virtual {p0, v1, v12}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v1, :cond_1

    .line 196
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v11

    :cond_1
    new-array v5, v6, [Lkotlin/Pair;

    .line 197
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionUseCellular()Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionConnectToWifi()Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 195
    invoke-virtual {v0, v1, v5, v10}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 201
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v11

    :cond_3
    sget v1, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_no_inserted_sim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 202
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showScanWifiResult()V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 204
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v11, v0

    :goto_1
    check-cast v11, Landroid/view/View;

    .line 578
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 579
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v3}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    .line 581
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 583
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 586
    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 588
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 578
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_6
    instance-of v1, v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    if-eqz v1, :cond_12

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    const-string v1, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.process.ConnectNetworkFragment.ShowType.WifiConnectRetry"

    .line 210
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->getErrorType()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    move-result-object v0

    .line 211
    sget-object v2, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->AUTHENTICATION_ERROR_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const/4 v3, 0x3

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_7

    .line 212
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v11

    :cond_7
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 213
    sget v12, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_incorrect_password:I

    iget-object v13, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    .line 214
    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    invoke-virtual {v13}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 212
    invoke-virtual {v2, v12, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v1, :cond_8

    .line 219
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v11

    :cond_8
    new-array v2, v3, [Lkotlin/Pair;

    .line 220
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionReEnter()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionUseCellular()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2, v10}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v1, :cond_a

    .line 225
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v11

    :cond_a
    new-array v2, v6, [Lkotlin/Pair;

    .line 226
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionReEnter()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 224
    invoke-virtual {v0, v1, v2, v10}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_c

    .line 231
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v11

    :cond_c
    sget v1, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_connect_error:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v1, :cond_d

    .line 235
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v11

    :cond_d
    new-array v2, v3, [Lkotlin/Pair;

    .line 236
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionRetry()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionUseCellular()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 234
    invoke-virtual {v0, v1, v2, v10}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    goto :goto_2

    :cond_e
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v1, :cond_f

    .line 241
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v11

    :cond_f
    new-array v2, v6, [Lkotlin/Pair;

    .line 242
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionRetry()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionChangeNetwork()Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 240
    invoke-virtual {v0, v1, v2, v10}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    :goto_2
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_10

    .line 248
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    move-object v11, v0

    :goto_3
    check-cast v11, Landroid/view/View;

    .line 590
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_11

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 591
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 249
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v2, 0x4e

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    const/16 v3, 0x15

    invoke-static {v3}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    .line 593
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 595
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 598
    invoke-virtual {v1, v4, v2, v5, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 600
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 590
    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 253
    :cond_12
    sget-object v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiScanResult;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiScanResult;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_13

    .line 254
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v11

    :cond_13
    sget v1, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_no_inserted_sim:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_14

    .line 255
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    move-object v11, v0

    :goto_4
    check-cast v11, Landroid/view/View;

    .line 602
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_15

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 603
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 256
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v3}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v3

    invoke-static {v2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v2

    .line 605
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 607
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 610
    invoke-virtual {v1, v4, v3, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 612
    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showScanWifiResult()V

    goto :goto_5

    .line 602
    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 262
    :cond_16
    :goto_5
    sget-object v0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v8

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->isClickedUseWifi:Z

    return-void
.end method

.method private final showScanWifiResult()V
    .locals 6

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v1, :cond_0

    const-string v1, "lvNetworkOptions"

    .line 175
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiResultCache:Ljava/util/List;

    .line 176
    check-cast v2, Ljava/lang/Iterable;

    .line 574
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 575
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 576
    check-cast v4, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 176
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSignalLevel()I

    move-result v5

    invoke-direct {p0, v5}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->switchSignalLevelResId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 576
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_1
    check-cast v3, Ljava/util/List;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 177
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getCount()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    .line 174
    :goto_1
    invoke-virtual {v0, v1, v3, p0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    return-void
.end method

.method private final switchSignalLevelResId(I)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 169
    sget p0, Ltech/rabbit/r1launcher/R$drawable;->ic_wifi_signal_level_3:I

    goto :goto_0

    .line 168
    :cond_0
    sget p0, Ltech/rabbit/r1launcher/R$drawable;->ic_wifi_signal_level_3:I

    goto :goto_0

    .line 167
    :cond_1
    sget p0, Ltech/rabbit/r1launcher/R$drawable;->ic_wifi_signal_level_2:I

    goto :goto_0

    .line 166
    :cond_2
    sget p0, Ltech/rabbit/r1launcher/R$drawable;->ic_wifi_signal_level_1:I

    :goto_0
    return p0
.end method

.method private final updateTipsTopMargin()V
    .locals 7

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    const-string v1, "tvTip"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 436
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/view/View;

    .line 662
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v4, :cond_3

    .line 437
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v4, :cond_4

    .line 438
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_4
    check-cast v4, Landroid/view/View;

    .line 663
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_5

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_5
    move-object v4, v2

    :goto_2
    if-eqz v4, :cond_6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    add-int/2addr v0, v4

    iget-object v4, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v4, :cond_7

    const-string v4, "lvNetworkOptions"

    .line 439
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_7
    invoke-direct {p0, v4}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getItemsHeightOfListView(Landroid/widget/ListView;)I

    move-result v4

    add-int/2addr v0, v4

    .line 440
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-ge v0, v4, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 442
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getSelectedIndex()I

    move-result v0

    const-string v4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const/4 v5, 0x2

    if-lt v0, v5, :cond_d

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    check-cast v0, Landroid/view/View;

    .line 664
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v6, :cond_a

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_a
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_d

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v0, :cond_d

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_b

    .line 443
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move-object v2, v0

    :goto_5
    check-cast v2, Landroid/view/View;

    .line 665
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 666
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 444
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    .line 668
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 670
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 671
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 673
    invoke-virtual {v1, v3, p0, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 675
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 665
    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 446
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getSelectedIndex()I

    move-result v0

    if-ge v0, v5, :cond_14

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    check-cast v0, Landroid/view/View;

    .line 677
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_f

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_f
    move-object v0, v2

    :goto_6
    if-eqz v0, :cond_10

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_10
    iget v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    if-ne v3, v0, :cond_14

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_11

    .line 447
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    move-object v2, v0

    :goto_7
    check-cast v2, Landroid/view/View;

    .line 678
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_13

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    .line 679
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 448
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    sget-object v3, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x51

    goto :goto_8

    :cond_12
    const/16 p0, 0x4e

    :goto_8
    invoke-static {p0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p0

    .line 681
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 683
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 684
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 686
    invoke-virtual {v1, v3, p0, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 688
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    .line 678
    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    :goto_9
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 295
    invoke-static {p1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->isEnableWifiRequest(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiList()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 101
    sget-object p1, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;

    invoke-virtual {p1, v0, p0}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 111
    :cond_0
    sget p3, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    .line 112
    sget p3, Ltech/rabbit/r1launcher/R$id;->lv_network_options:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    const-string v1, "lvNetworkOptions"

    if-nez p3, :cond_1

    .line 113
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_1
    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-virtual {p3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez p3, :cond_2

    .line 114
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, p2

    :cond_2
    new-instance v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    invoke-virtual {p3, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    sget p3, Ltech/rabbit/r1launcher/R$id;->fmvv_launcher:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->fmvvLauncher:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    if-nez p3, :cond_3

    const-string p3, "fmvvLauncher"

    .line 145
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p3

    :goto_0
    new-instance p3, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onCreateView$2;

    invoke-direct {p3, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onCreateView$2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    check-cast p3, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;

    invoke-virtual {p2, p3}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->setOnVerifySucceed(Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView$OnVerifySucceedListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->wifiScanTimer:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->isClickedUseWifi:Z

    .line 283
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 287
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->unregister(Landroid/content/Context;)V

    .line 288
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 44
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener$DefaultImpls;->onKeyDown(Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 10

    .line 319
    sget-object p2, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p2

    const-string v0, "requireContext(...)"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "tvTip"

    const-string v4, "lvNetworkOptions"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_a

    .line 320
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v7, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz v7, :cond_0

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_0

    :cond_0
    move-object p2, v6

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p2

    if-ne p2, v2, :cond_5

    .line 321
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v7, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz v7, :cond_1

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_1

    :cond_1
    move-object p2, v6

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    :cond_2
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p2, :cond_3

    .line 322
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    .line 323
    :cond_3
    sget v7, Ltech/rabbit/r1launcher/R$string;->text_init_step_connect_network_inserted_dynamic_operator_name:I

    .line 324
    sget-object v8, Ltech/rabbit/r1launcher/initstep/utils/Utils;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Utils;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ltech/rabbit/r1launcher/initstep/utils/Utils;->readSimOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 322
    invoke-virtual {p0, v7, v0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v0, :cond_4

    .line 327
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_4
    new-array v7, v1, [Lkotlin/Pair;

    .line 328
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionUseCellular()Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptionConnectToWifi()Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 326
    invoke-virtual {p2, v0, v7, v5}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->setNewData(Landroid/widget/ListView;Ljava/util/List;I)V

    goto/16 :goto_5

    :cond_5
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 332
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getSelectedIndex()I

    move-result p2

    if-gez p2, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v0, :cond_7

    .line 335
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_7
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v7, :cond_8

    .line 336
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v6

    :cond_8
    invoke-virtual {v7, p2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    iget-object v9, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v9, :cond_9

    .line 337
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v6

    :cond_9
    invoke-virtual {v9, v0, p2, v7, v8}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_5

    :cond_a
    const/16 p2, 0x13

    if-ne p1, p2, :cond_12

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 340
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getSelectedIndex()I

    move-result p2

    if-nez p2, :cond_10

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 341
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getOptions()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p2, v7}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->isContainsItem(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_b

    return-void

    .line 342
    :cond_b
    sget-object p2, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isSimCardExist(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_c

    return-void

    .line 344
    :cond_c
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v0, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz v0, :cond_d

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_2

    :cond_d
    move-object p2, v6

    :goto_2
    if-eqz p2, :cond_e

    sget v0, Ltech/rabbit/r1launcher/R$string;->text_cellular:I

    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    :cond_e
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v0, :cond_f

    .line 345
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_f
    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->removeSelectedState(Landroid/widget/ListView;)V

    goto :goto_5

    :cond_10
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v0, :cond_11

    .line 347
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_11
    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->selectPrev(Landroid/widget/ListView;)V

    goto :goto_5

    :cond_12
    const/16 p2, 0x14

    if-ne p1, p2, :cond_19

    .line 350
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v0, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz v0, :cond_13

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_3

    :cond_13
    move-object p2, v6

    :goto_3
    if-eqz p2, :cond_17

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p2

    if-ne p2, v2, :cond_17

    .line 351
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v0, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz v0, :cond_14

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_4

    :cond_14
    move-object p2, v6

    :goto_4
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    :cond_15
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v0, :cond_16

    .line 352
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_16
    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->resetSelectedStateToFirstItem(Landroid/widget/ListView;)V

    goto :goto_5

    :cond_17
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez v0, :cond_18

    .line 354
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_18
    invoke-virtual {p2, v0}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->selectNext(Landroid/widget/ListView;)V

    .line 358
    :cond_19
    :goto_5
    sget-object p2, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p1

    if-nez p1, :cond_36

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1a

    .line 359
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-ne p1, v2, :cond_1a

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_1a
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_1b

    .line 361
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_1b
    check-cast p1, Landroid/view/View;

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1c

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_1c
    move-object p1, v6

    :goto_6
    if-eqz p1, :cond_1d

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_1d
    move p1, v5

    :goto_7
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p2, :cond_1e

    .line 362
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_1e
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p2, :cond_1f

    .line 363
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_1f
    check-cast p2, Landroid/view/View;

    .line 627
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_20

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_8

    :cond_20
    move-object p2, v6

    :goto_8
    if-eqz p2, :cond_21

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_9

    :cond_21
    move p2, v5

    :goto_9
    add-int/2addr p1, p2

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->lvNetworkOptions:Landroid/widget/ListView;

    if-nez p2, :cond_22

    .line 364
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_22
    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->getItemsHeightOfListView(Landroid/widget/ListView;)I

    move-result p2

    add-int/2addr p1, p2

    .line 365
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->requireView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    if-lt p1, p2, :cond_36

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 366
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getSelectedIndex()I

    move-result p1

    const-wide/16 v7, 0x12c

    if-lt p1, v1, :cond_2c

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_23

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_23
    check-cast p1, Landroid/view/View;

    .line 628
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_24

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_a

    :cond_24
    move-object p1, v6

    :goto_a
    if-eqz p1, :cond_2c

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_2c

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_25

    .line 367
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_25
    check-cast p1, Landroid/view/View;

    .line 629
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_26

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_b

    :cond_26
    move-object p1, v6

    :goto_b
    if-eqz p1, :cond_27

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_c

    :cond_27
    move p1, v5

    :goto_c
    iget p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    if-ne p1, p2, :cond_28

    return-void

    :cond_28
    new-array p1, v1, [I

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p2, :cond_29

    .line 368
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v6

    :cond_29
    check-cast p2, Landroid/view/View;

    .line 630
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2a

    move-object v6, p2

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_2a
    if-eqz v6, :cond_2b

    iget p2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_d

    :cond_2b
    move p2, v5

    :goto_d
    aput p2, p1, v5

    iget p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    aput p2, p1, v2

    .line 368
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 369
    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 371
    new-instance p2, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 377
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 637
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onKeyUp$lambda$14$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onKeyUp$lambda$14$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;)V

    .line 643
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 381
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_13

    :cond_2c
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->adapter:Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;

    .line 382
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/process/NetworkOptionsAdapter;->getSelectedIndex()I

    move-result p1

    if-ge p1, v1, :cond_36

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_2d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_2d
    check-cast p1, Landroid/view/View;

    .line 646
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2e

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_e

    :cond_2e
    move-object p1, v6

    :goto_e
    if-eqz p1, :cond_2f

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_f

    :cond_2f
    move p1, v5

    :goto_f
    iget p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    if-ne p1, p2, :cond_36

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_30

    .line 383
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_30
    check-cast p1, Landroid/view/View;

    .line 647
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_31

    move-object v6, p1

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_31
    if-eqz v6, :cond_32

    iget p1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_10

    :cond_32
    move p1, v5

    :goto_10
    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    .line 383
    sget-object v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x51

    const/16 v3, 0x4e

    if-eqz p2, :cond_33

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    goto :goto_11

    :cond_33
    invoke-static {v3}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    :goto_11
    if-ne p1, p2, :cond_34

    return-void

    :cond_34
    new-array p1, v1, [I

    iget p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollTopMargin:I

    aput p2, p1, v5

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    .line 387
    sget-object v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;->INSTANCE:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$SelectNetworkType;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_35

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    goto :goto_12

    .line 388
    :cond_35
    invoke-static {v3}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    :goto_12
    aput p2, p1, v2

    .line 384
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 390
    invoke-virtual {p1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 391
    new-instance p2, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 397
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 654
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onKeyUp$lambda$19$$inlined$addListener$default$1;

    invoke-direct {v0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$onKeyUp$lambda$19$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;)V

    .line 660
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 401
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_36
    :goto_13
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->fmvvLauncher:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    if-nez v0, :cond_0

    const-string v0, "fmvvLauncher"

    .line 160
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->stopChecker()V

    .line 161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 155
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->fmvvLauncher:Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;

    if-nez p0, :cond_0

    const-string p0, "fmvvLauncher"

    .line 156
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FactoryModeVerifyView;->startChecker()V

    return-void
.end method

.method public onSimStateChangeToLoaded()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->setupUI()V

    .line 427
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->updateTipsTopMargin()V

    return-void
.end method

.method public onSimStateChangeToNotLoaded()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->setupUI()V

    .line 432
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->updateTipsTopMargin()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 184
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->scanWifiList()V

    return-void
.end method

.method public final setShowType(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;)V
    .locals 1

    const-string v0, "showType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->showType:Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;

    return-void
.end method
