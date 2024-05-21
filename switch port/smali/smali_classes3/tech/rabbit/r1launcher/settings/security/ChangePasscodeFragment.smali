.class public final Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;
.super Landroidx/fragment/app/Fragment;
.source "ChangePasscodeFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangePasscodeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,498:1\n95#2,14:499\n95#2,14:514\n95#2,14:528\n95#2,14:542\n95#2,14:556\n95#2,14:570\n95#2,14:584\n95#2,14:598\n95#2,14:612\n95#2,14:626\n95#2,14:640\n95#2,14:654\n1#3:513\n262#4,2:668\n262#4,2:670\n262#4,2:672\n262#4,2:674\n260#4:676\n262#4,2:677\n*S KotlinDebug\n*F\n+ 1 ChangePasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/ChangePasscodeFragment\n*L\n125#1:499,14\n143#1:514,14\n177#1:528,14\n205#1:542,14\n230#1:556,14\n303#1:570,14\n334#1:584,14\n353#1:598,14\n385#1:612,14\n410#1:626,14\n454#1:640,14\n468#1:654,14\n486#1:668,2\n487#1:670,2\n491#1:672,2\n492#1:674,2\n496#1:676\n300#1:677,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\rH\u0002J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020 2\u0006\u0010&\u001a\u00020\u0008H\u0016J&\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0008\u0010/\u001a\u00020 H\u0016J\u0018\u00100\u001a\u00020 2\u0006\u00101\u001a\u00020$2\u0008\u00102\u001a\u0004\u0018\u000103J\u0008\u00104\u001a\u00020 H\u0016J\u001a\u00105\u001a\u00020 2\u0006\u00106\u001a\u00020(2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u0010\u00107\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0002J\u0012\u00108\u001a\u00020 2\u0008\u0008\u0001\u00109\u001a\u00020$H\u0002J\u0010\u0010:\u001a\u00020 2\u0006\u0010#\u001a\u00020$H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;",
        "()V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "confirmedPasscodeContainer",
        "",
        "",
        "flContinueContainer",
        "Landroid/widget/FrameLayout;",
        "flSuccessContainer",
        "isEnter4Length",
        "",
        "lastTimeClicked",
        "",
        "llBackContainer",
        "Landroid/widget/LinearLayout;",
        "llTipContainer",
        "numberPickerView",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;",
        "tvBackTitle",
        "Landroid/widget/TextView;",
        "tvConfirmPasscode",
        "tvContinue",
        "tvRetry",
        "tvSuccess",
        "tvSuccessTip",
        "tvTips",
        "tvTitle",
        "tvToFinish",
        "hideBack",
        "",
        "isBackShowing",
        "isEqualTips",
        "stringResId",
        "",
        "onConfirmItem",
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
        "onKeyCodeEvent",
        "keyCode",
        "event",
        "Landroid/view/KeyEvent;",
        "onScroll",
        "onViewCreated",
        "view",
        "setTextToTipsView",
        "showBack",
        "backTitleResId",
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

.field private flSuccessContainer:Landroid/widget/FrameLayout;

.field private isEnter4Length:Z

.field private lastTimeClicked:J

.field private llBackContainer:Landroid/widget/LinearLayout;

.field private llTipContainer:Landroid/widget/LinearLayout;

.field private numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

.field private tvBackTitle:Landroid/widget/TextView;

.field private tvConfirmPasscode:Landroid/widget/TextView;

.field private tvContinue:Landroid/widget/TextView;

.field private tvRetry:Landroid/widget/TextView;

.field private tvSuccess:Landroid/widget/TextView;

.field private tvSuccessTip:Landroid/widget/TextView;

.field private tvTips:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvToFinish:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$1busT0e50cbLIhuFIehOrX-YHqk(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent$lambda$9$lambda$6(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4rNQQ-XFl-TPCQgcwm6clRAKRo8(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem$lambda$51$lambda$44(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9zuU7emhOjhW90SwGMl7Dc_Kdfw(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem$lambda$59$lambda$57(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$APzkVcYeqpFs0v3O1L7U2CeXSYo(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent$lambda$4$lambda$1(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F69TqgV0qKrxqtIVNW3llyJ_9WE(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onScroll$lambda$28$lambda$26(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F8hTU_gywC8AwqBCSvmXqGP_HU0(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent$lambda$24$lambda$21(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PkaGzELEcP4_hCwcDCl8V-oXcMs(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent$lambda$14$lambda$11(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SHcUyp38HtECei3MPswg5u0A9MY(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem$lambda$42$lambda$39(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZk_EiSB6twAeier_X5xWb3uSok(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem$lambda$37$lambda$34(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XjZJJxvjm2LPd1Hfw474DOrrtXs(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent$lambda$19$lambda$16(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fbpeXaixO3jAwKKgtpNfuk7QXs0(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem$lambda$55$lambda$53(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wnztGqZUQSVXP9azNN_hXHKCnkE(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem$lambda$32$lambda$30(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_change_passcode:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getConfirmedPasscodeContainer$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getFlSuccessContainer$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flSuccessContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static final synthetic access$getLlTipContainer$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    return-object p0
.end method

.method public static final synthetic access$getTvConfirmPasscode$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvConfirmPasscode:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvContinue$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvRetry$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvRetry:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvSuccess$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvSuccess:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvSuccessTip$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 24
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvSuccessTip:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$hideBack(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->hideBack()V

    return-void
.end method

.method public static final synthetic access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 24
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setEnter4Length$p(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEnter4Length:Z

    return-void
.end method

.method public static final synthetic access$setTextToTipsView(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->setTextToTipsView(I)V

    return-void
.end method

.method private final hideBack()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "llBackContainer"

    .line 491
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    .line 672
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvTitle"

    .line 492
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/4 p0, 0x0

    .line 674
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final isBackShowing()Z
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "llBackContainer"

    .line 496
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/view/View;

    .line 676
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvTitle"

    .line 496
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    .line 676
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private final isEqualTips(I)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTips"

    .line 91
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

.method private static final onConfirmItem$lambda$32$lambda$30(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 332
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$37$lambda$34(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 349
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

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

    .line 350
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 351
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

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

.method private static final onConfirmItem$lambda$42$lambda$39(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 381
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flSuccessContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "flSuccessContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 382
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 383
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

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

.method private static final onConfirmItem$lambda$51$lambda$44(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 406
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flSuccessContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "flSuccessContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 407
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 408
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

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

.method private static final onConfirmItem$lambda$55$lambda$53(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 452
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvToFinish"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$59$lambda$57(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 466
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvToFinish"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyCodeEvent$lambda$14$lambda$11(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 173
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    const-string v0, "flContinueContainer"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 175
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

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

.method private static final onKeyCodeEvent$lambda$19$lambda$16(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 201
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

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

    .line 202
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez v0, :cond_1

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 203
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

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

.method private static final onKeyCodeEvent$lambda$24$lambda$21(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 227
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    .line 228
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

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

.method private static final onKeyCodeEvent$lambda$4$lambda$1(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 123
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyCodeEvent$lambda$9$lambda$6(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 141
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onScroll$lambda$28$lambda$26(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 296
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

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

    .line 299
    sget p1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->setTextToTipsView(I)V

    .line 300
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvRetry:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvRetry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/16 p0, 0x8

    .line 677
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private final setTextToTipsView(I)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "tvTips"

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->updateCurrentTipsId(I)V

    return-void
.end method

.method private final showBack(I)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvBackTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvBackTitle"

    .line 485
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    const-string p1, "llBackContainer"

    .line 486
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    .line 668
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p0, :cond_2

    const-string p0, "tvTitle"

    .line 487
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/16 p0, 0x8

    .line 670
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateCurrentTipsId(I)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTips"

    .line 88
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

    iget-object v2, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    .line 316
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 318
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_3

    .line 319
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onScroll()V

    .line 322
    :cond_3
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEqualTips(I)Z

    move-result v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v1, :cond_6

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 323
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iput-object v8, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 326
    invoke-direct {v0, v7}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->updateCurrentTipsId(I)V

    new-array v1, v9, [F

    iget-object v2, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_5

    const-string v2, "llTipContainer"

    .line 327
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

    .line 328
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 330
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda7;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 334
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 590
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 596
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 340
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 341
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v10, 0x1f4

    const/4 v12, 0x4

    if-ne v1, v12, :cond_7

    iget-boolean v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEnter4Length:Z

    if-nez v1, :cond_7

    iput-boolean v3, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEnter4Length:Z

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 344
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 345
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 347
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda8;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 604
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;

    invoke-direct {v3, v0, v1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$37$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 610
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 369
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 370
    invoke-interface {v1, v7, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v4, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 371
    invoke-interface {v4, v12, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 373
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 374
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

    .line 376
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 379
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda9;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 385
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 618
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$42$$inlined$addListener$default$1;

    invoke-direct {v3, v0, v1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$42$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 624
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 396
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_8
    iget-object v2, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 398
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 399
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v1, v9, [F

    fill-array-data v1, :array_2

    .line 401
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 402
    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 404
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda10;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 410
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 632
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$51$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 638
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 444
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_9
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 446
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "tvToFinish"

    const/4 v3, 0x7

    const/4 v7, 0x3

    if-eq v1, v7, :cond_a

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_c

    :cond_a
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

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

    .line 447
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 448
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 450
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda11;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 454
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 646
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$55$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$55$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 652
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 459
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_c
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 460
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v7, :cond_e

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_e

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

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

    .line 461
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 462
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 464
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 468
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 660
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$59$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onConfirmItem$lambda$59$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 666
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 473
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

    .line 54
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 55
    sget p3, Ltech/rabbit/r1launcher/R$id;->tv_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTitle:Landroid/widget/TextView;

    .line 57
    sget p3, Ltech/rabbit/r1launcher/R$id;->npv_picker:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p3, :cond_0

    const-string p3, "numberPickerView"

    .line 58
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    move-object p3, p0

    check-cast p3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    invoke-virtual {p2, p3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setOnNumberPickerListener(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;)V

    .line 60
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvTips:Landroid/widget/TextView;

    .line 61
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvRetry:Landroid/widget/TextView;

    .line 62
    sget p2, Ltech/rabbit/r1launcher/R$id;->ll_tip_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    .line 63
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_to_finish:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    .line 64
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_confirm_passcode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvConfirmPasscode:Landroid/widget/TextView;

    .line 65
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    .line 66
    sget p2, Ltech/rabbit/r1launcher/R$id;->fl_continue_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    .line 67
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_success_tip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvSuccessTip:Landroid/widget/TextView;

    .line 68
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_success:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvSuccess:Landroid/widget/TextView;

    .line 69
    sget p2, Ltech/rabbit/r1launcher/R$id;->fl_success_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flSuccessContainer:Landroid/widget/FrameLayout;

    .line 71
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_back_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvBackTitle:Landroid/widget/TextView;

    .line 72
    sget p2, Ltech/rabbit/r1launcher/R$id;->ll_back_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEnter4Length:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 479
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    .line 480
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->resetCacheData()V

    .line 481
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onKeyCodeEvent(ILandroid/view/KeyEvent;)V
    .locals 10

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->lastTimeClicked:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->lastTimeClicked:J

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 96
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-ne p2, v0, :cond_1

    return-void

    .line 98
    :cond_1
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of v1, p2, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    check-cast p2, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    goto :goto_0

    :cond_2
    move-object p2, v4

    :goto_0
    if-nez p2, :cond_3

    return-void

    .line 100
    :cond_3
    sget-object v1, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {v1, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "flContinueContainer"

    const/4 v8, 0x2

    const-string v9, "numberPickerView"

    if-eqz v1, :cond_19

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_4

    .line 101
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_12

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_5

    .line 102
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_5
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isDeleteItem()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_7

    .line 105
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_settings_change_passcode_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->showBack(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_6

    .line 106
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v4, p0

    :goto_1
    invoke-virtual {v4, v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_d

    :cond_7
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_9

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEnter4Length:Z

    if-eqz p1, :cond_9

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_9

    .line 109
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_init_step_set_passcode_reset_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->showBack(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_8

    .line 110
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v4, p0

    :goto_2
    invoke-virtual {v4, v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_d

    :cond_9
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_a

    .line 112
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_a
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_c

    .line 115
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    move-object v4, p1

    :goto_3
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onDelete()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 116
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 117
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    new-array p1, v8, [F

    fill-array-data p1, :array_0

    .line 118
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 121
    new-instance p2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 125
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 505
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$4$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$4$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 511
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 134
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_d
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_e

    new-array p1, v8, [F

    fill-array-data p1, :array_1

    .line 136
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 137
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 139
    new-instance p2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda3;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 520
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$9$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$9$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 526
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 152
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_e
    :goto_4
    const-string p1, ""

    .line 154
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onConfirmItem(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_f
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_10

    .line 156
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_10
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isNormalItemInSelectArea()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_11

    .line 158
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    move-object v4, p0

    :goto_5
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation()V

    goto/16 :goto_d

    :cond_12
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flSuccessContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_13

    const-string p1, "flSuccessContainer"

    .line 161
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_13
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v6

    if-nez p1, :cond_14

    .line 163
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->hideBack()V

    .line 164
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->gotoSecurityFragment()V

    goto/16 :goto_d

    :cond_14
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_15

    .line 165
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    move-object v4, p1

    :goto_6
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v6

    const-wide/16 v1, 0x1f4

    if-nez p1, :cond_17

    .line 166
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_16

    new-array p1, v8, [F

    fill-array-data p1, :array_2

    .line 168
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 169
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 171
    new-instance p2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 177
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 534
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$14$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$14$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 540
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_d

    :cond_16
    new-array p1, v8, [F

    fill-array-data p1, :array_3

    .line 196
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 199
    new-instance p2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda5;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 548
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$19$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$19$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 554
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_d

    :cond_17
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 218
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->hideBack()V

    .line 219
    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->gotoSecurityFragment()V

    goto/16 :goto_d

    :cond_18
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 220
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_2c

    iget-boolean p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEnter4Length:Z

    if-eqz p1, :cond_2c

    new-array p1, v8, [F

    fill-array-data p1, :array_4

    .line 222
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 223
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 225
    new-instance p2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda6;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 562
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;

    invoke-direct {v0, p1, p0, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onKeyCodeEvent$lambda$24$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 568
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_d

    :cond_19
    const/16 p2, 0x13

    const/4 v1, 0x0

    const-string v2, "tvContinue"

    if-ne p1, p2, :cond_23

    .line 251
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1a

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1a
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-nez p1, :cond_1c

    .line 252
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->hideBack()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_1b

    .line 253
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_1b
    move-object v4, p0

    :goto_7
    invoke-virtual {v4, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_d

    :cond_1c
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1d

    .line 255
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1d
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v6

    if-nez p1, :cond_21

    .line 256
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_init_step_set_passcode_reset_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->showBack(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_1e

    .line 257
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1e
    invoke-virtual {p1, v5}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p1, :cond_1f

    .line 258
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1f
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p0, :cond_20

    .line 259
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_20
    move-object v4, p0

    :goto_8
    const/high16 p0, 0x41c00000    # 24.0f

    invoke-virtual {v4, v8, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_d

    :cond_21
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_22

    .line 261
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_22
    move-object v4, p0

    :goto_9
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onScrollUp()V

    goto/16 :goto_d

    :cond_23
    const/16 p2, 0x14

    if-ne p1, p2, :cond_2c

    .line 265
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_24

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_24
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-nez p1, :cond_26

    .line 266
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->hideBack()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_25

    .line 267
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_25
    move-object v4, p0

    :goto_a
    invoke-virtual {v4, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto :goto_d

    :cond_26
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_27

    .line 269
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_27
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v6

    if-nez p1, :cond_2a

    .line 270
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->hideBack()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p1, :cond_28

    .line 271
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->tvContinue:Landroid/widget/TextView;

    if-nez p0, :cond_29

    .line 272
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b

    :cond_29
    move-object v4, p0

    :goto_b
    const/high16 p0, 0x41f00000    # 30.0f

    invoke-virtual {v4, v8, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_d

    :cond_2a
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_2b

    .line 274
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_c

    :cond_2b
    move-object v4, p0

    :goto_c
    invoke-virtual {v4}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onScrollDown()V

    :cond_2c
    :goto_d
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
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScroll()V
    .locals 3

    .line 281
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_create_a_passcode:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_confirm_passcode:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_set_codes_did_not_match:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 288
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->updateCurrentTipsId(I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 290
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 293
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 294
    new-instance v1, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 303
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 576
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;

    invoke-direct {v2, v0, p0}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment$onScroll$lambda$28$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;)V

    .line 582
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 309
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

    .line 77
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    sget p1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_create_a_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->setTextToTipsView(I)V

    return-void
.end method
