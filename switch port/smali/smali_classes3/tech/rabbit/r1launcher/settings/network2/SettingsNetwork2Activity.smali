.class public final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsNetwork2Activity.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;
.implements Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;
.implements Landroid/hardware/SensorEventListener;
.implements Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsNetwork2Activity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsNetwork2Activity.kt\ntech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,169:1\n75#2,13:170\n193#3,3:183\n*S KotlinDebug\n*F\n+ 1 SettingsNetwork2Activity.kt\ntech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity\n*L\n40#1:170,13\n158#1:183,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 I2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001IB\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,J\u0006\u0010-\u001a\u00020*J\u001a\u0010.\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u000100J\u0010\u00101\u001a\u00020&2\u0006\u00102\u001a\u000203H\u0002J\u001a\u00104\u001a\u00020*2\u0008\u00105\u001a\u0004\u0018\u00010\u00082\u0006\u00106\u001a\u000207H\u0016J\u0010\u00108\u001a\u00020*2\u0006\u00109\u001a\u00020:H\u0016J\u0012\u0010;\u001a\u00020*2\u0008\u0010<\u001a\u0004\u0018\u00010=H\u0014J\u0008\u0010>\u001a\u00020*H\u0014J\u0008\u0010?\u001a\u00020*H\u0014J\u0008\u0010@\u001a\u00020*H\u0014J\u0010\u0010A\u001a\u00020*2\u0006\u0010B\u001a\u00020CH\u0017J\u0008\u0010D\u001a\u00020*H\u0016J\u0008\u0010E\u001a\u00020*H\u0016J\u0008\u0010F\u001a\u00020*H\u0016J\u0008\u0010G\u001a\u00020*H\u0016J\u000c\u0010H\u001a\u00020**\u000203H\u0007R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u000e\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001b\u001a\u00020\u001c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u000e\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010 \u001a\u00020!8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u000e\u001a\u0004\u0008\"\u0010#\u00a8\u0006J"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;",
        "Landroid/hardware/SensorEventListener;",
        "Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;",
        "()V",
        "accelerometer",
        "Landroid/hardware/Sensor;",
        "enterWifiPasswordFragment",
        "Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;",
        "getEnterWifiPasswordFragment",
        "()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;",
        "enterWifiPasswordFragment$delegate",
        "Lkotlin/Lazy;",
        "networkManagerFragment",
        "Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;",
        "getNetworkManagerFragment",
        "()Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;",
        "networkManagerFragment$delegate",
        "rotateDeviceTipFragment",
        "Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;",
        "getRotateDeviceTipFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;",
        "rotateDeviceTipFragment$delegate",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "viewModel",
        "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "getViewModel",
        "()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;",
        "viewModel$delegate",
        "wifiDetailFragment",
        "Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;",
        "getWifiDetailFragment",
        "()Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;",
        "wifiDetailFragment$delegate",
        "dispatchTouchEvent",
        "",
        "ev",
        "Landroid/view/MotionEvent;",
        "gotoEnterPassword",
        "",
        "wifi",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "gotoNetworkManager",
        "gotoWifiDetail",
        "password",
        "",
        "isCurrentContent",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "onAccuracyChanged",
        "sensor",
        "accuracy",
        "",
        "onConnectivityStateChange",
        "state",
        "Landroid/net/NetworkInfo$State;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onPause",
        "onResume",
        "onSensorChanged",
        "event",
        "Landroid/hardware/SensorEvent;",
        "onSimStateChangeToLoaded",
        "onSimStateChangeToNotLoaded",
        "onWifiStateChangeToDisable",
        "onWifiStateChangeToEnable",
        "goto",
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

.field public static final Companion:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private final enterWifiPasswordFragment$delegate:Lkotlin/Lazy;

.field private final networkManagerFragment$delegate:Lkotlin/Lazy;

.field private final rotateDeviceTipFragment$delegate:Lkotlin/Lazy;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final viewModel$delegate:Lkotlin/Lazy;

.field private final wifiDetailFragment$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->Companion:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 40
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;-><init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 178
    new-instance v2, Landroidx/lifecycle/ViewModelLazy;

    const-class v3, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 180
    new-instance v4, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$2;

    invoke-direct {v4, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 182
    new-instance v5, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 178
    invoke-direct {v2, v3, v4, v1, v5}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/Lazy;

    iput-object v2, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->viewModel$delegate:Lkotlin/Lazy;

    .line 44
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$networkManagerFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$networkManagerFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->networkManagerFragment$delegate:Lkotlin/Lazy;

    .line 45
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$wifiDetailFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$wifiDetailFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->wifiDetailFragment$delegate:Lkotlin/Lazy;

    .line 46
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$rotateDeviceTipFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$rotateDeviceTipFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->rotateDeviceTipFragment$delegate:Lkotlin/Lazy;

    .line 47
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$enterWifiPasswordFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$enterWifiPasswordFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->enterWifiPasswordFragment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getRotateDeviceTipFragment(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;)Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;
    .locals 0

    .line 29
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isCurrentContent(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->isCurrentContent(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    return p0
.end method

.method private final getEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->enterWifiPasswordFragment$delegate:Lkotlin/Lazy;

    .line 47
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;

    return-object p0
.end method

.method private final getNetworkManagerFragment()Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->networkManagerFragment$delegate:Lkotlin/Lazy;

    .line 44
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    return-object p0
.end method

.method private final getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->rotateDeviceTipFragment$delegate:Lkotlin/Lazy;

    .line 46
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    return-object p0
.end method

.method private final getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->viewModel$delegate:Lkotlin/Lazy;

    .line 40
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    return-object p0
.end method

.method private final getWifiDetailFragment()Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->wifiDetailFragment$delegate:Lkotlin/Lazy;

    .line 45
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    return-object p0
.end method

.method public static synthetic gotoWifiDetail$default(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoWifiDetail(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    return-void
.end method

.method private final isCurrentContent(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 137
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final goto(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002

    .line 166
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public final gotoEnterPassword(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 2

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->setWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    .line 155
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->goto(Landroidx/fragment/app/Fragment;)V

    .line 158
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    new-instance v1, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 p0, 0x7530

    .line 184
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final gotoNetworkManager()V
    .locals 1

    .line 150
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getNetworkManagerFragment()Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoWifiDetail(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V
    .locals 1

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->saveLastSelectedWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    .line 144
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getWifiDetailFragment()Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    .line 145
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getWifiDetailFragment()Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    move-result-object p1

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setPassword(Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getWifiDetailFragment()Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onConnectivityStateChange(Landroid/net/NetworkInfo$State;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->resetScanWifi()V

    .line 111
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiIfEnable()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-object p1, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;

    invoke-virtual {p1, v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$OnSimStateListener;)V

    .line 56
    sget-object p1, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;

    invoke-virtual {p1, v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$OnWifiStateListener;)V

    .line 57
    sget-object p1, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;

    invoke-virtual {p1, v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->register(Landroid/content/Context;Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$OnConnectivityStateListener;)V

    const-string p1, "sensor"

    .line 59
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_0

    const-string p1, "sensorManager"

    .line 60
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->accelerometer:Landroid/hardware/Sensor;

    .line 62
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoNetworkManager()V

    .line 64
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiIfEnable()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 78
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/SimStateReceiver$Companion;->unregister(Landroid/content/Context;)V

    .line 79
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/WifiStateReceiver$Companion;->unregister(Landroid/content/Context;)V

    .line 80
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver;->Companion:Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/receiver/ConnectivityStateReceiver$Companion;->unregister(Landroid/content/Context;)V

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensorManager"

    .line 74
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast p0, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 68
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensorManager"

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v0, -0x3f000000    # -8.0f

    cmpg-float v0, p1, v0

    const/16 v2, 0x8

    if-gez v0, :cond_3

    .line 120
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getRequestedOrientation()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 121
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->isCurrentContent(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->setRequestedOrientation(I)V

    .line 125
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->goto(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 127
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getRequestedOrientation()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 128
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->isCurrentContent(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->setRequestedOrientation(I)V

    .line 132
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;

    move-result-object p1

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/settings/network2/password/EnterWifiPasswordFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoWifiDetail$default(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;ILjava/lang/Object;)V

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public onSimStateChangeToLoaded()V
    .locals 3

    .line 86
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    .line 87
    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string v2, "getApplication(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->isCellularEnabled(Landroid/content/Context;)Z

    move-result p0

    .line 86
    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->updateCellularUIState(Z)V

    return-void
.end method

.method public onSimStateChangeToNotLoaded()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->updateCellularUIState(Z)V

    return-void
.end method

.method public onWifiStateChangeToDisable()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->resetScanWifi()V

    .line 101
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->clearScanWifiResult()V

    .line 103
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->updateWifiUIState(Z)V

    return-void
.end method

.method public onWifiStateChangeToEnable()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->resetScanWifi()V

    .line 94
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->scanWifiIfEnable()V

    .line 96
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getViewModel()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->updateWifiUIState(Z)V

    return-void
.end method
