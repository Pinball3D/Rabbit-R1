.class public final Ltech/rabbit/r1launcher/initstep/InitStepActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "InitStepActivity.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInitStepActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InitStepActivity.kt\ntech/rabbit/r1launcher/initstep/InitStepActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,397:1\n1#2:398\n162#3,8:399\n262#3,2:407\n262#3,2:409\n262#3,2:411\n262#3,2:413\n193#3,3:415\n193#3,3:418\n193#3,3:421\n193#3,3:424\n95#4,14:427\n95#4,14:441\n*S KotlinDebug\n*F\n+ 1 InitStepActivity.kt\ntech/rabbit/r1launcher/initstep/InitStepActivity\n*L\n204#1:399,8\n208#1:407,2\n213#1:409,2\n218#1:411,2\n223#1:413,2\n245#1:415,3\n253#1:418,3\n271#1:421,3\n282#1:424,3\n331#1:427,14\n355#1:441,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u0091\u00012\u00020\u00012\u00020\u0002:\u0002\u0091\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020BH\u0002J\u0018\u0010V\u001a\u00020T2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0007J \u0010[\u001a\u00020T2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010\\\u001a\u00020]H\u0007J\u0010\u0010^\u001a\u00020T2\u0006\u0010_\u001a\u00020ZH\u0007J\u0012\u0010`\u001a\u0002072\u0008\u0010a\u001a\u0004\u0018\u00010bH\u0016J\u000e\u0010c\u001a\u00020T2\u0006\u0010W\u001a\u00020XJ\u0008\u0010d\u001a\u00020TH\u0016J\u0010\u0010e\u001a\u00020T2\u0006\u0010U\u001a\u00020BH\u0003J\u000e\u0010f\u001a\u00020T2\u0006\u0010g\u001a\u00020hJ\u0012\u0010i\u001a\u00020T2\n\u0008\u0002\u0010j\u001a\u0004\u0018\u00010ZJ\u000e\u0010k\u001a\u00020T2\u0006\u0010l\u001a\u00020mJ\u0006\u0010n\u001a\u00020TJ\u0006\u0010o\u001a\u00020TJ\u0006\u0010p\u001a\u00020TJ\u0006\u0010q\u001a\u00020TJ\u0006\u0010r\u001a\u00020TJ\u0008\u0010s\u001a\u00020TH\u0002J\u0006\u0010t\u001a\u000207J\u0010\u0010u\u001a\u0002072\u0006\u0010U\u001a\u00020BH\u0002J\u001a\u0010v\u001a\u00020T2\u0008\u0010w\u001a\u0004\u0018\u00010\u00052\u0006\u0010x\u001a\u00020yH\u0016J\"\u0010z\u001a\u00020T2\u0006\u0010{\u001a\u00020y2\u0006\u0010|\u001a\u00020y2\u0008\u0010}\u001a\u0004\u0018\u00010~H\u0014J\u0014\u0010\u007f\u001a\u00020T2\n\u0010\u0080\u0001\u001a\u0005\u0018\u00010\u0081\u0001H\u0014J\u001e\u0010\u0082\u0001\u001a\u0002072\u0007\u0010\u0083\u0001\u001a\u00020y2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0016J\u001e\u0010\u0086\u0001\u001a\u0002072\u0007\u0010\u0083\u0001\u001a\u00020y2\n\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0016J\t\u0010\u0087\u0001\u001a\u00020TH\u0014J\t\u0010\u0088\u0001\u001a\u00020TH\u0014J\u0013\u0010\u0089\u0001\u001a\u00020T2\u0008\u0010\u0084\u0001\u001a\u00030\u008a\u0001H\u0017J#\u0010\u008b\u0001\u001a\u00020T2\u0006\u0010{\u001a\u00020y2\u0006\u0010|\u001a\u00020y2\u0008\u0010}\u001a\u0004\u0018\u00010~H\u0002J\u0011\u0010\u008c\u0001\u001a\u00020T2\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001J\u0012\u0010\u008f\u0001\u001a\u00020T2\t\u0008\u0001\u0010\u0090\u0001\u001a\u00020yR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0008\u001a\u00020\t8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\r\u001a\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\r\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\r\u001a\u0004\u0008\u001f\u0010 R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\r\u001a\u0004\u0008$\u0010%R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\r\u001a\u0004\u0008)\u0010*R\u001b\u0010,\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00080\u0010\r\u001a\u0004\u0008.\u0010/R\u001b\u00101\u001a\u0002028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u0010\r\u001a\u0004\u00083\u00104R\u000e\u00106\u001a\u000207X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u00108\u001a\u0002098BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010\r\u001a\u0004\u0008:\u0010;R\u000e\u0010=\u001a\u00020>X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010?\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020B0A0@X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010C\u001a\u00020D8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008G\u0010\r\u001a\u0004\u0008E\u0010FR\u000e\u0010H\u001a\u00020IX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010J\u001a\u00020K8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008N\u0010\r\u001a\u0004\u0008L\u0010MR\u000e\u0010O\u001a\u00020PX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020RX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0092\u0001"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/InitStepActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Landroid/hardware/SensorEventListener;",
        "()V",
        "accelerometer",
        "Landroid/hardware/Sensor;",
        "backAnimator",
        "Landroid/animation/ValueAnimator;",
        "connectNetworkFragment",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;",
        "getConnectNetworkFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;",
        "connectNetworkFragment$delegate",
        "Lkotlin/Lazy;",
        "connectRabbitAccountFailureFragment",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;",
        "getConnectRabbitAccountFailureFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;",
        "connectRabbitAccountFailureFragment$delegate",
        "connectRabbitAccountFragment",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;",
        "getConnectRabbitAccountFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;",
        "connectRabbitAccountFragment$delegate",
        "connectRabbitAccountSuccessFragment",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;",
        "getConnectRabbitAccountSuccessFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;",
        "connectRabbitAccountSuccessFragment$delegate",
        "connectWifiSuccessFragment",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;",
        "getConnectWifiSuccessFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;",
        "connectWifiSuccessFragment$delegate",
        "connectingWifiFragment",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;",
        "getConnectingWifiFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;",
        "connectingWifiFragment$delegate",
        "guidePasscodeFragment",
        "Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;",
        "getGuidePasscodeFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;",
        "guidePasscodeFragment$delegate",
        "initStepFinalGuideAnimationFragment",
        "Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;",
        "getInitStepFinalGuideAnimationFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;",
        "initStepFinalGuideAnimationFragment$delegate",
        "initStepGuideAnimationFragment",
        "Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;",
        "getInitStepGuideAnimationFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;",
        "initStepGuideAnimationFragment$delegate",
        "isLandscape",
        "",
        "landscapeEnterWifiPasswordFragment",
        "Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;",
        "getLandscapeEnterWifiPasswordFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;",
        "landscapeEnterWifiPasswordFragment$delegate",
        "llBackContainer",
        "Landroid/widget/LinearLayout;",
        "noPaddingFragments",
        "",
        "Lkotlin/reflect/KClass;",
        "Landroidx/fragment/app/Fragment;",
        "rotateDeviceTipFragment",
        "Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;",
        "getRotateDeviceTipFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;",
        "rotateDeviceTipFragment$delegate",
        "sensorManager",
        "Landroid/hardware/SensorManager;",
        "setPasscodeFragment",
        "Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;",
        "getSetPasscodeFragment",
        "()Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;",
        "setPasscodeFragment$delegate",
        "spivStepProgressIndicator",
        "Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;",
        "tvBackTitle",
        "Landroid/widget/TextView;",
        "autoCheckShowInitStepProgressIndicator",
        "",
        "fragment",
        "connectToWifi",
        "wifi",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "password",
        "",
        "connectWifiFailure",
        "errorCode",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;",
        "connectWifiSuccess",
        "ssid",
        "dispatchTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "enterPasswordToConnectWifi",
        "finish",
        "goto",
        "gotoConnectAccountFailure",
        "errorType",
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;",
        "gotoConnectAccountSuccess",
        "username",
        "gotoConnectNetwork",
        "showType",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;",
        "gotoConnectRabbitAccount",
        "gotoFinalGuideAnimation",
        "gotoGuidePasscode",
        "gotoSetPasscode",
        "hideBack",
        "initViews",
        "isBackShowing",
        "isCurrentContent",
        "onAccuracyChanged",
        "sensor",
        "accuracy",
        "",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onPause",
        "onResume",
        "onSensorChanged",
        "Landroid/hardware/SensorEvent;",
        "parserScanQrLoginResult",
        "setStepProgressIndicatorAlpha",
        "alpha",
        "",
        "showBack",
        "backTitleResId",
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

.field public static final Companion:Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;


# instance fields
.field private accelerometer:Landroid/hardware/Sensor;

.field private backAnimator:Landroid/animation/ValueAnimator;

.field private final connectNetworkFragment$delegate:Lkotlin/Lazy;

.field private final connectRabbitAccountFailureFragment$delegate:Lkotlin/Lazy;

.field private final connectRabbitAccountFragment$delegate:Lkotlin/Lazy;

.field private final connectRabbitAccountSuccessFragment$delegate:Lkotlin/Lazy;

.field private final connectWifiSuccessFragment$delegate:Lkotlin/Lazy;

.field private final connectingWifiFragment$delegate:Lkotlin/Lazy;

.field private final guidePasscodeFragment$delegate:Lkotlin/Lazy;

.field private final initStepFinalGuideAnimationFragment$delegate:Lkotlin/Lazy;

.field private final initStepGuideAnimationFragment$delegate:Lkotlin/Lazy;

.field private isLandscape:Z

.field private final landscapeEnterWifiPasswordFragment$delegate:Lkotlin/Lazy;

.field private llBackContainer:Landroid/widget/LinearLayout;

.field private final noPaddingFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final rotateDeviceTipFragment$delegate:Lkotlin/Lazy;

.field private sensorManager:Landroid/hardware/SensorManager;

.field private final setPasscodeFragment$delegate:Lkotlin/Lazy;

.field private spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

.field private tvBackTitle:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$QChUfxqcVmjx4GkqJcpqMr4mpwY(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack$lambda$12$lambda$9(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8l0DIjPQVi02pyTppFxTpeCMTA(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack$lambda$16$lambda$14(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJIzgORraQT-GETqjZk9vCUK70c(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->onCreate$lambda$0(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->Companion:Ltech/rabbit/r1launcher/initstep/InitStepActivity$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 53
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_init_step:I

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 63
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$initStepGuideAnimationFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$initStepGuideAnimationFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->initStepGuideAnimationFragment$delegate:Lkotlin/Lazy;

    .line 64
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$initStepFinalGuideAnimationFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$initStepFinalGuideAnimationFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->initStepFinalGuideAnimationFragment$delegate:Lkotlin/Lazy;

    .line 66
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectNetworkFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectNetworkFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectNetworkFragment$delegate:Lkotlin/Lazy;

    .line 67
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$rotateDeviceTipFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$rotateDeviceTipFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->rotateDeviceTipFragment$delegate:Lkotlin/Lazy;

    .line 68
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$landscapeEnterWifiPasswordFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$landscapeEnterWifiPasswordFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->landscapeEnterWifiPasswordFragment$delegate:Lkotlin/Lazy;

    .line 69
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectingWifiFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectingWifiFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectingWifiFragment$delegate:Lkotlin/Lazy;

    .line 70
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiSuccessFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiSuccessFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectWifiSuccessFragment$delegate:Lkotlin/Lazy;

    .line 72
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectRabbitAccountFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectRabbitAccountFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectRabbitAccountFragment$delegate:Lkotlin/Lazy;

    .line 73
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectRabbitAccountFailureFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectRabbitAccountFailureFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectRabbitAccountFailureFragment$delegate:Lkotlin/Lazy;

    .line 74
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectRabbitAccountSuccessFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectRabbitAccountSuccessFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectRabbitAccountSuccessFragment$delegate:Lkotlin/Lazy;

    .line 76
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$guidePasscodeFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$guidePasscodeFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->guidePasscodeFragment$delegate:Lkotlin/Lazy;

    .line 77
    sget-object v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$setPasscodeFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/initstep/InitStepActivity$setPasscodeFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setPasscodeFragment$delegate:Lkotlin/Lazy;

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/reflect/KClass;

    .line 90
    const-class v1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 89
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->noPaddingFragments:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getConnectWifiSuccessFragment(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;
    .locals 0

    .line 53
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectWifiSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLandscapeEnterWifiPasswordFragment(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;
    .locals 0

    .line 53
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getLandscapeEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTvBackTitle$p(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->tvBackTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$goto(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static final synthetic access$setLandscape$p(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isLandscape:Z

    return-void
.end method

.method private final autoCheckShowInitStepProgressIndicator(Landroidx/fragment/app/Fragment;)V
    .locals 8

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    const/4 v1, 0x0

    const-string v2, "spivStepProgressIndicator"

    if-nez v0, :cond_0

    .line 201
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    instance-of v3, p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    invoke-virtual {v0, v3}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->changeShadowHeight(Z)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->noPaddingFragments:Ljava/util/Set;

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/16 v0, 0x4e

    invoke-static {v0}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result v0

    .line 204
    :goto_0
    sget v4, Ltech/rabbit/r1launcher/R$id;->fl_content_container:I

    invoke-virtual {p0, v4}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "findViewById(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    .line 402
    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 403
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 405
    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 207
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectNetworkFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectWifiSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectingWifiFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p1, :cond_4

    .line 208
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_4
    check-cast p1, Landroid/view/View;

    .line 407
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p0, :cond_5

    .line 209
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, p0

    :goto_2
    invoke-virtual {v1, v3}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setStepIndex(I)V

    goto/16 :goto_8

    .line 212
    :cond_6
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountFailureFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p1, :cond_9

    .line 213
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_9
    check-cast p1, Landroid/view/View;

    .line 409
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p0, :cond_a

    .line 214
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v1, p0

    :goto_4
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setStepIndex(I)V

    goto :goto_8

    .line 217
    :cond_b
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getGuidePasscodeFragment()Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSetPasscodeFragment()Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    :goto_5
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p1, :cond_d

    .line 218
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_d
    check-cast p1, Landroid/view/View;

    .line 411
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p0, :cond_e

    .line 219
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    move-object v1, p0

    :goto_6
    const/4 p0, 0x2

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setStepIndex(I)V

    goto :goto_8

    :cond_f
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p0, :cond_10

    .line 223
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    move-object v1, p0

    :goto_7
    check-cast v1, Landroid/view/View;

    const/16 p0, 0x8

    .line 413
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method private final getConnectNetworkFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectNetworkFragment$delegate:Lkotlin/Lazy;

    .line 66
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    return-object p0
.end method

.method private final getConnectRabbitAccountFailureFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectRabbitAccountFailureFragment$delegate:Lkotlin/Lazy;

    .line 73
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;

    return-object p0
.end method

.method private final getConnectRabbitAccountFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectRabbitAccountFragment$delegate:Lkotlin/Lazy;

    .line 72
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;

    return-object p0
.end method

.method private final getConnectRabbitAccountSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectRabbitAccountSuccessFragment$delegate:Lkotlin/Lazy;

    .line 74
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;

    return-object p0
.end method

.method private final getConnectWifiSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectWifiSuccessFragment$delegate:Lkotlin/Lazy;

    .line 70
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectWifiSuccessFragment;

    return-object p0
.end method

.method private final getConnectingWifiFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->connectingWifiFragment$delegate:Lkotlin/Lazy;

    .line 69
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;

    return-object p0
.end method

.method private final getGuidePasscodeFragment()Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->guidePasscodeFragment$delegate:Lkotlin/Lazy;

    .line 76
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;

    return-object p0
.end method

.method private final getInitStepFinalGuideAnimationFragment()Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->initStepFinalGuideAnimationFragment$delegate:Lkotlin/Lazy;

    .line 64
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;

    return-object p0
.end method

.method private final getInitStepGuideAnimationFragment()Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->initStepGuideAnimationFragment$delegate:Lkotlin/Lazy;

    .line 63
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;

    return-object p0
.end method

.method private final getLandscapeEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->landscapeEnterWifiPasswordFragment$delegate:Lkotlin/Lazy;

    .line 68
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;

    return-object p0
.end method

.method private final getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->rotateDeviceTipFragment$delegate:Lkotlin/Lazy;

    .line 67
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    return-object p0
.end method

.method private final getSetPasscodeFragment()Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setPasscodeFragment$delegate:Lkotlin/Lazy;

    .line 77
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    return-object p0
.end method

.method private final goto(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 193
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->autoCheckShowInitStepProgressIndicator(Landroidx/fragment/app/Fragment;)V

    .line 195
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 196
    sget v0, Ltech/rabbit/r1launcher/R$id;->fl_content_container:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public static synthetic gotoConnectAccountSuccess$default(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 310
    :cond_0
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountSuccess(Ljava/lang/String;)V

    return-void
.end method

.method private static final hideBack$lambda$16$lambda$14(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 352
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "spivStepProgressIndicator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setAlpha(F)V

    .line 353
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->llBackContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    const-string p0, "llBackContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private final initViews()V
    .locals 6

    .line 118
    sget v0, Ltech/rabbit/r1launcher/R$id;->spiv_step_progress_indicator:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez v0, :cond_0

    const-string v0, "spivStepProgressIndicator"

    .line 119
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v2, 0x3

    new-array v2, v2, [Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    .line 121
    new-instance v3, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    sget v4, Ltech/rabbit/r1launcher/R$string;->text_init_step_1_name:I

    invoke-virtual {p0, v4}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 122
    new-instance v3, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    sget v4, Ltech/rabbit/r1launcher/R$string;->text_init_step_2_name:I

    invoke-virtual {p0, v4}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 123
    new-instance v3, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;

    sget v4, Ltech/rabbit/r1launcher/R$string;->text_init_step_3_name:I

    invoke-virtual {p0, v4}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView$Step;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 120
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setSteps(Ljava/util/List;)V

    .line 126
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_back_title:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->tvBackTitle:Landroid/widget/TextView;

    .line 127
    sget v0, Ltech/rabbit/r1launcher/R$id;->ll_back_container:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->llBackContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private final isCurrentContent(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    .line 233
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

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

.method private static final onCreate$lambda$0(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    const-string v0, "getInsetsController(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 103
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private final parserScanQrLoginResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    const-string p2, "EXTRA_SCAN_QR_CODE_RESULT"

    .line 176
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    instance-of p3, p2, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    if-eqz p3, :cond_2

    check-cast p2, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    goto :goto_1

    :cond_2
    move-object p2, p1

    :goto_1
    if-nez p2, :cond_3

    .line 179
    sget-object p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->ResultError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountFailure(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V

    goto :goto_2

    .line 180
    :cond_3
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getErrorType()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 181
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getErrorType()Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountFailure(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V

    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getActualUserId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-static {p3}, Ltech/rabbit/r1launcher/wss/Constant;->setUserId(Ljava/lang/String;)V

    .line 184
    :cond_5
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getAccountKey()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-static {p3}, Ltech/rabbit/r1launcher/wss/Constant;->saveLoginToken(Ljava/lang/String;)V

    .line 185
    :cond_6
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;->getUsername()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountSuccess(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_7
    if-nez p1, :cond_8

    move-object p1, p0

    check-cast p1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    .line 186
    sget-object p1, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->ResultError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountFailure(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private static final showBack$lambda$12$lambda$9(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 328
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "spivStepProgressIndicator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setAlpha(F)V

    .line 329
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->llBackContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    const-string p0, "llBackContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public final connectToWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V
    .locals 2

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setRequestedOrientation(I)V

    .line 371
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectingWifiFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectingWifiFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    .line 373
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiUtils;->withActivity(Landroid/app/Activity;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;

    move-result-object v0

    .line 374
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiUtilsBuilder;->connectWith(Ljava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;

    move-result-object v0

    .line 375
    new-instance v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;

    invoke-direct {v1, p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectToWifi$1;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    check-cast v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;

    invoke-interface {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder$WifiSuccessListener;->onConnectionResult(Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionSuccessListener;)Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;

    move-result-object p0

    .line 384
    invoke-interface {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WifiConnectorBuilder;->start()V

    return-void
.end method

.method public final connectWifiFailure(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
    .locals 2

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setRequestedOrientation(I)V

    .line 282
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    new-instance v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;

    invoke-direct {v1, p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiFailure$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 p0, 0xc8

    .line 425
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final connectWifiSuccess(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setRequestedOrientation(I)V

    .line 271
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    new-instance v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiSuccess$$inlined$postDelayed$1;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$connectWifiSuccess$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 p0, 0xc8

    .line 422
    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 141
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectNetworkFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isCurrentContent(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final enterPasswordToConnectWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 1

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getLandscapeEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;->setNeedConnectWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    .line 264
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 388
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    .line 389
    sget v0, Ltech/rabbit/r1launcher/R$anim;->anim_fade_in:I

    sget v1, Ltech/rabbit/r1launcher/R$anim;->anim_fade_out:I

    invoke-virtual {p0, v0, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public final gotoConnectAccountFailure(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V
    .locals 1

    const-string v0, "errorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountFailureFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;->setErrorType(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;)V

    .line 307
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountFailureFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFailureFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoConnectAccountSuccess(Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;->setUsername(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountSuccessFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountSuccessFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoConnectNetwork(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;)V
    .locals 1

    const-string v0, "showType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectNetworkFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;->setShowType(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;)V

    .line 296
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectNetworkFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoConnectRabbitAccount()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getConnectRabbitAccountFragment()Ltech/rabbit/r1launcher/initstep/process/ConnectRabbitAccountFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoFinalGuideAnimation()V
    .locals 1

    .line 316
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getInitStepFinalGuideAnimationFragment()Ltech/rabbit/r1launcher/initstep/process/InitStepFinalGuideAnimationFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoGuidePasscode()V
    .locals 1

    .line 299
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getGuidePasscodeFragment()Ltech/rabbit/r1launcher/initstep/process/GuidePasscodeFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final gotoSetPasscode()V
    .locals 1

    .line 301
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSetPasscodeFragment()Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public final hideBack()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "llBackContainer"

    .line 345
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez v0, :cond_2

    const-string v0, "spivStepProgressIndicator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 347
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 350
    new-instance v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 447
    new-instance v2, Ltech/rabbit/r1launcher/initstep/InitStepActivity$hideBack$lambda$16$$inlined$addListener$default$1;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$hideBack$lambda$16$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;)V

    .line 453
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->backAnimator:Landroid/animation/ValueAnimator;

    .line 361
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final isBackShowing()Z
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "llBackContainer"

    .line 365
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_2

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p0, :cond_1

    const-string p0, "spivStepProgressIndicator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->getAlpha()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0xc0de

    if-ne p1, v0, :cond_0

    .line 165
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->parserScanQrLoginResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    const-string v0, "getFragments(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const-string p1, "sensor"

    .line 107
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez p1, :cond_0

    const-string p1, "sensorManager"

    .line 108
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->accelerometer:Landroid/hardware/Sensor;

    .line 110
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->initViews()V

    .line 112
    sget-object p1, Ltech/rabbit/r1launcher/utils/PermissionUtils;->INSTANCE:Ltech/rabbit/r1launcher/utils/PermissionUtils;

    move-object v0, p0

    check-cast v0, Landroidx/core/app/ComponentActivity;

    invoke-virtual {p1, v0}, Ltech/rabbit/r1launcher/utils/PermissionUtils;->checkAndAutoRequestPermissions(Landroidx/core/app/ComponentActivity;)V

    .line 114
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getInitStepGuideAnimationFragment()Ltech/rabbit/r1launcher/initstep/process/InitStepGuideAnimationFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->goto(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 145
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    const-string v0, "getFragments(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;

    if-eqz v0, :cond_0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 148
    :cond_1
    invoke-interface {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;->onKeyDown(ILandroid/view/KeyEvent;)V

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 153
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    const-string v0, "getFragments(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;

    if-eqz v0, :cond_0

    check-cast p0, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 156
    :cond_1
    invoke-interface {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;->onKeyUp(ILandroid/view/KeyEvent;)V

    return v0
.end method

.method protected onPause()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensorManager"

    .line 137
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast p0, Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 131
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensorManager"

    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    move-object v1, p0

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->accelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v0, -0x3f000000    # -8.0f

    cmpg-float v0, p1, v0

    const-wide/16 v2, 0xc8

    const-string v4, "getDecorView(...)"

    if-gez v0, :cond_2

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isLandscape:Z

    if-nez v0, :cond_2

    .line 242
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getRotateDeviceTipFragment()Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isCurrentContent(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 p1, 0x8

    .line 244
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setRequestedOrientation(I)V

    .line 245
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    new-instance v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$onSensorChanged$$inlined$postDelayed$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$onSensorChanged$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 416
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isLandscape:Z

    if-eqz p1, :cond_4

    .line 250
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getLandscapeEnterWifiPasswordFragment()Ltech/rabbit/r1launcher/initstep/process/LandscapeEnterWifiPasswordFragment;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isCurrentContent(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 252
    :cond_3
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setRequestedOrientation(I)V

    .line 253
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    new-instance v0, Ltech/rabbit/r1launcher/initstep/InitStepActivity$onSensorChanged$$inlined$postDelayed$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$onSensorChanged$$inlined$postDelayed$2;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 419
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final setStepProgressIndicatorAlpha(F)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez p0, :cond_0

    const-string p0, "spivStepProgressIndicator"

    .line 229
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->setAlpha(F)V

    return-void
.end method

.method public final showBack(I)V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->backAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "llBackContainer"

    .line 321
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->spivStepProgressIndicator:Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;

    if-nez v0, :cond_2

    const-string v0, "spivStepProgressIndicator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Ltech/rabbit/r1launcher/initstep/widget/StepProgressIndicatorView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 323
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 324
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 326
    new-instance v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 331
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 433
    new-instance v2, Ltech/rabbit/r1launcher/initstep/InitStepActivity$showBack$lambda$12$$inlined$addListener$default$1;

    invoke-direct {v2, v0, p0, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity$showBack$lambda$12$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/InitStepActivity;I)V

    .line 439
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->backAnimator:Landroid/animation/ValueAnimator;

    .line 340
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
