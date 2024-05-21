.class public final Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;
.super Landroidx/fragment/app/Fragment;
.source "SetPasscodeFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;
.implements Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetPasscodeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetPasscodeFragment.kt\ntech/rabbit/r1launcher/initstep/process/SetPasscodeFragment\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,468:1\n95#2,14:469\n95#2,14:484\n95#2,14:498\n95#2,14:512\n95#2,14:526\n95#2,14:540\n95#2,14:554\n95#2,14:568\n95#2,14:582\n95#2,14:596\n95#2,14:610\n95#2,14:624\n1#3:483\n262#4,2:638\n*S KotlinDebug\n*F\n+ 1 SetPasscodeFragment.kt\ntech/rabbit/r1launcher/initstep/process/SetPasscodeFragment\n*L\n113#1:469,14\n131#1:484,14\n161#1:498,14\n189#1:512,14\n214#1:526,14\n287#1:540,14\n318#1:554,14\n337#1:568,14\n372#1:582,14\n397#1:596,14\n439#1:610,14\n453#1:624,14\n284#1:638,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\tH\u0016J&\u0010!\u001a\u0004\u0018\u00010\"2\u0006\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0008\u0010)\u001a\u00020\u001fH\u0016J\u001a\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020\u001d2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0008\u0010.\u001a\u00020\u001fH\u0016J\u001a\u0010/\u001a\u00020\u001f2\u0006\u00100\u001a\u00020\"2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J\u0010\u00101\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0010\u00102\u001a\u00020\u001f2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00063"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;",
        "()V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "confirmedPasscodeContainer",
        "",
        "",
        "flContinueContainer",
        "Landroid/widget/FrameLayout;",
        "isEnter4Length",
        "",
        "lastTimeClicked",
        "",
        "llTipContainer",
        "Landroid/widget/LinearLayout;",
        "numberPickerView",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;",
        "tvConfirmPasscode",
        "Landroid/widget/TextView;",
        "tvContinue",
        "tvRetry",
        "tvSuccessOrWaiting",
        "tvTips",
        "tvToFinish",
        "isEqualTips",
        "stringResId",
        "",
        "onConfirmItem",
        "",
        "text",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onKeyUp",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onScroll",
        "onViewCreated",
        "view",
        "setTextToTipsView",
        "updateCurrentTipsId",
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
.field private animator:Landroid/animation/ValueAnimator;

.field private final confirmedPasscodeContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private flContinueContainer:Landroid/widget/FrameLayout;

.field private isEnter4Length:Z

.field private lastTimeClicked:J

.field private llTipContainer:Landroid/widget/LinearLayout;

.field private numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

.field private tvConfirmPasscode:Landroid/widget/TextView;

.field private tvContinue:Landroid/widget/TextView;

.field private tvRetry:Landroid/widget/TextView;

.field private tvSuccessOrWaiting:Landroid/widget/TextView;

.field private tvTips:Landroid/widget/TextView;

.field private tvToFinish:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1th3mAe85YDitqiIbhmF_6LHBHE(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onScroll$lambda$28$lambda$26(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5F_xdaf1WfDABoJXAW9nXb4Vftg(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onKeyUp$lambda$9$lambda$6(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ANCC8UPItCJ1osA6SZej1K9Wsto(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem$lambda$51$lambda$44(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BKdqBsmFXxoJWTauRxMM1Uk0k5g(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem$lambda$37$lambda$34(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BZmS8Nr2F45w2K5dRL6eR70t3bw(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onKeyUp$lambda$14$lambda$11(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C0IZsQneABG4SjmGuSTC04gBJ9I(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onKeyUp$lambda$24$lambda$21(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fix3FKxR6l7mv11Au4LbJhPuzBY(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem$lambda$32$lambda$30(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KN01J6DFOzVH9RzdtX96g9aWYvU(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem$lambda$42$lambda$39(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NnFH475zR048yozfgpyvaktGwf8(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onKeyUp$lambda$19$lambda$16(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8VUCQU_xbPvpK8XhPI-Xl-SCds(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onKeyUp$lambda$4$lambda$1(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dLvtRk-_Qd73y9IhQ7mWIwqqvDM(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem$lambda$55$lambda$53(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nNs0xufpH_MA73OvMnavVdIbeJM(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem$lambda$59$lambda$57(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_set_passcode:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getConfirmedPasscodeContainer$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLlTipContainer$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getNumberPickerView$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    return-object p0
.end method

.method public static final synthetic access$getTvConfirmPasscode$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvConfirmPasscode:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvContinue$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvRetry$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvRetry:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvSuccessOrWaiting$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 26
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvSuccessOrWaiting:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setAnimator$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 26
    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setEnter4Length$p(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEnter4Length:Z

    return-void
.end method

.method public static final synthetic access$setTextToTipsView(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->setTextToTipsView(I)V

    return-void
.end method

.method private final isEqualTips(I)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTips"

    .line 80
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final onConfirmItem$lambda$32$lambda$30(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 316
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$37$lambda$34(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 333
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 334
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 335
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p0, :cond_2

    const-string p0, "flContinueContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$42$lambda$39(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 365
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvSuccessOrWaiting:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvSuccessOrWaiting"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 366
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 367
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_2

    const-string p1, "numberPickerView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_2
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 368
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->setStepProgressIndicatorAlpha(F)V

    :cond_4
    return-void
.end method

.method private static final onConfirmItem$lambda$51$lambda$44(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 393
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvSuccessOrWaiting:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvSuccessOrWaiting"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 394
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 395
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_2

    const-string p0, "numberPickerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$55$lambda$53(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 437
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvToFinish"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$59$lambda$57(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 451
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvToFinish"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyUp$lambda$14$lambda$11(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 157
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 158
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    const-string v0, "flContinueContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 159
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_2

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyUp$lambda$19$lambda$16(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 185
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "flContinueContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 186
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez v0, :cond_1

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 187
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_2

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyUp$lambda$24$lambda$21(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 211
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 212
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyUp$lambda$4$lambda$1(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 111
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyUp$lambda$9$lambda$6(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 129
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onScroll$lambda$28$lambda$26(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 280
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "llTipContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    float-to-double v2, p1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpg-double p1, v2, v4

    if-gez p1, :cond_2

    .line 283
    sget p1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->setTextToTipsView(I)V

    .line 284
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvRetry:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvRetry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/16 p0, 0x8

    .line 638
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private final setTextToTipsView(I)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "tvTips"

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->updateCurrentTipsId(I)V

    return-void
.end method

.method private final updateCurrentTipsId(I)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTips"

    .line 77
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onConfirmItem(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 298
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    .line 300
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 302
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 303
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onScroll()V

    .line 306
    :cond_3
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEqualTips(I)Z

    move-result v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v1, :cond_6

    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iput-object v8, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 310
    invoke-direct {v0, v7}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->updateCurrentTipsId(I)V

    new-array v1, v9, [F

    iget-object v2, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_5

    const-string v2, "llTipContainer"

    .line 311
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v8, v2

    :goto_0
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    aput v2, v1, v7

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 314
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 560
    new-instance v3, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 566
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 324
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 325
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v10, 0x1f4

    const/4 v12, 0x4

    if-ne v1, v12, :cond_7

    iget-boolean v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEnter4Length:Z

    if-nez v1, :cond_7

    iput-boolean v3, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEnter4Length:Z

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 328
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 329
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 331
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda3;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 337
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 574
    new-instance v3, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;

    invoke-direct {v3, v0, v1, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 580
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 351
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 353
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 354
    invoke-interface {v1, v7, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v4, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 355
    invoke-interface {v4, v12, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 357
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 358
    move-object v12, v1

    check-cast v12, Ljava/lang/Iterable;

    move-object v13, v2

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3e

    const/16 v20, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltech/rabbit/r1launcher/wss/Constant;->savePasscode(Ljava/lang/String;)V

    new-array v1, v9, [F

    fill-array-data v1, :array_1

    .line 360
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 361
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 363
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 372
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 588
    new-instance v3, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$42$$inlined$addListener$default$1;

    invoke-direct {v3, v0, v1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$42$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    .line 594
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 383
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_8
    iget-object v2, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 385
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 386
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v1, v9, [F

    fill-array-data v1, :array_2

    .line 388
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 389
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 391
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda5;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 397
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 602
    new-instance v3, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 608
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 429
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 431
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "tvToFinish"

    const/4 v3, 0x7

    const/4 v7, 0x3

    if-eq v1, v7, :cond_a

    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_c

    :cond_a
    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v1, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v8

    :cond_b
    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v4

    if-nez v1, :cond_c

    new-array v1, v9, [F

    fill-array-data v1, :array_3

    .line 432
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 433
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 435
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda6;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 616
    new-instance v3, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$55$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$55$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 622
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 444
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_c
    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 445
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v7, :cond_e

    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_e

    iget-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v1, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    move-object v8, v1

    :goto_1
    invoke-virtual {v8}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_e

    new-array v1, v9, [F

    fill-array-data v1, :array_4

    .line 446
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 447
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 449
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda7;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 453
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 630
    new-instance v3, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$59$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onConfirmItem$lambda$59$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 636
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 458
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_e
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 51
    sget p3, Ltech/rabbit/r1launcher/R$id;->npv_picker:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p3, :cond_0

    const-string p3, "numberPickerView"

    .line 52
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    move-object p3, p0

    check-cast p3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    invoke-virtual {p2, p3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setOnNumberPickerListener(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;)V

    .line 54
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvTips:Landroid/widget/TextView;

    .line 55
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvRetry:Landroid/widget/TextView;

    .line 56
    sget p2, Ltech/rabbit/r1launcher/R$id;->ll_tip_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    .line 57
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_to_finish:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    .line 58
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_confirm_passcode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvConfirmPasscode:Landroid/widget/TextView;

    .line 59
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    .line 60
    sget p2, Ltech/rabbit/r1launcher/R$id;->fl_continue_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    .line 61
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_success_or_waiting:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvSuccessOrWaiting:Landroid/widget/TextView;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEnter4Length:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 464
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    .line 465
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->resetCacheData()V

    .line 466
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 26
    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/OnKeyUpListener$DefaultImpls;->onKeyDown(Ltech/rabbit/r1launcher/initstep/OnKeyUpListener;ILandroid/view/KeyEvent;)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 10

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->lastTimeClicked:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->lastTimeClicked:J

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-ne p2, v0, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v1, p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    check-cast p2, Ltech/rabbit/r1launcher/initstep/InitStepActivity;

    goto :goto_0

    :cond_2
    move-object p2, v4

    :goto_0
    if-nez p2, :cond_3

    return-void

    .line 88
    :cond_3
    sget-object v1, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {v1, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-string v7, "flContinueContainer"

    const/4 v8, 0x2

    const-string v9, "numberPickerView"

    if-eqz v1, :cond_17

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_4

    .line 89
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result p1

    const/4 v1, 0x4

    if-eqz p1, :cond_12

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_5

    .line 90
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isDeleteItem()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 93
    sget p1, Ltech/rabbit/r1launcher/R$string;->text_init_step_2_name:I

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_6

    .line 94
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v4, p0

    :goto_1
    invoke-virtual {v4, v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_c

    :cond_7
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 95
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_9

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEnter4Length:Z

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 97
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_init_step_set_passcode_reset_passcode:I

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_8

    .line 98
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v4, p0

    :goto_2
    invoke-virtual {v4, v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_c

    :cond_9
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_a

    .line 100
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_a
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_c

    .line 103
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v4, p1

    :goto_3
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onDelete()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 104
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    new-array p1, v8, [F

    fill-array-data p1, :array_0

    .line 106
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 107
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 109
    new-instance p2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda8;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 475
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$4$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$4$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 481
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_d
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_e

    new-array p1, v8, [F

    fill-array-data p1, :array_1

    .line 124
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 125
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 127
    new-instance p2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda9;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 490
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$9$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$9$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 496
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_e
    :goto_4
    const-string p1, ""

    .line 142
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->onConfirmItem(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_f
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_10

    .line 144
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_10
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isNormalItemInSelectArea()Z

    move-result p1

    if-eqz p1, :cond_2a

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_11

    .line 146
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object v4, p0

    :goto_5
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation()V

    goto/16 :goto_c

    :cond_12
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_13

    .line 149
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_13
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v5

    const-wide/16 v2, 0x1f4

    if-nez p1, :cond_15

    .line 150
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_14

    new-array p1, v8, [F

    fill-array-data p1, :array_2

    .line 152
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 153
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 155
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda10;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 161
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/animation/Animator;

    .line 504
    new-instance v1, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$14$$inlined$addListener$default$1;

    invoke-direct {v1, p1, p0, p0, p2}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$14$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    .line 510
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 177
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_c

    :cond_14
    new-array p1, v8, [F

    fill-array-data p1, :array_3

    .line 180
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 183
    new-instance p2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda11;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 518
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$19$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$19$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    .line 524
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 198
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_c

    :cond_15
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 200
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 202
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    .line 203
    invoke-static {p2, v4, v0, v4}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->gotoConnectAccountSuccess$default(Ltech/rabbit/r1launcher/initstep/InitStepActivity;Ljava/lang/String;ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_16
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_2a

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEnter4Length:Z

    if-eqz p1, :cond_2a

    new-array p1, v8, [F

    fill-array-data p1, :array_4

    .line 206
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 209
    new-instance v0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 214
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Landroid/animation/Animator;

    .line 532
    new-instance v1, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$24$$inlined$addListener$default$1;

    invoke-direct {v1, p1, p0, p0, p2}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onKeyUp$lambda$24$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Ltech/rabbit/r1launcher/initstep/InitStepActivity;)V

    .line 538
    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 231
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_c

    :cond_17
    const/16 v1, 0x13

    const/4 v2, 0x0

    const-string v3, "tvContinue"

    if-ne p1, v1, :cond_21

    .line 235
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_18

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_18
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v2

    if-nez p1, :cond_1a

    .line 236
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_19

    .line 237
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_19
    move-object v4, p0

    :goto_6
    invoke-virtual {v4, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_c

    :cond_1a
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1b

    .line 239
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1b
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v5

    if-nez p1, :cond_1f

    .line 240
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_init_step_set_passcode_reset_passcode:I

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->showBack(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_1c

    .line 241
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1c
    invoke-virtual {p1, v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p1, :cond_1d

    .line 242
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1d
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p0, :cond_1e

    .line 243
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_1e
    move-object v4, p0

    :goto_7
    const/high16 p0, 0x41c00000    # 24.0f

    invoke-virtual {v4, v8, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_c

    :cond_1f
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_20

    .line 245
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_20
    move-object v4, p0

    :goto_8
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onScrollUp()V

    goto/16 :goto_c

    :cond_21
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2a

    .line 249
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_22

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_22
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v2

    if-nez p1, :cond_24

    .line 250
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_23

    .line 251
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_23
    move-object v4, p0

    :goto_9
    invoke-virtual {v4, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto :goto_c

    :cond_24
    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_25

    .line 253
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_25
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v5

    if-nez p1, :cond_28

    .line 254
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/initstep/InitStepActivity;->hideBack()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p1, :cond_26

    .line 255
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_26
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p0, :cond_27

    .line 256
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_27
    move-object v4, p0

    :goto_a
    const/high16 p0, 0x41f00000    # 30.0f

    invoke-virtual {v4, v8, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_c

    :cond_28
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_29

    .line 258
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b

    :cond_29
    move-object v4, p0

    :goto_b
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onScrollDown()V

    :cond_2a
    :goto_c
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScroll()V
    .locals 3

    .line 265
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_create_a_passcode:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_confirm_passcode:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_set_codes_did_not_match:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 272
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->updateCurrentTipsId(I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 274
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 278
    new-instance v1, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 287
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 546
    new-instance v2, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;Landroid/animation/ValueAnimator;)V

    .line 552
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 293
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    sget p1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_create_a_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/process/SetPasscodeFragment;->setTextToTipsView(I)V

    return-void
.end method
