.class public final Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;
.super Landroidx/fragment/app/Fragment;
.source "VerifyPasscodeFragment.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVerifyPasscodeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VerifyPasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,359:1\n95#2,14:360\n95#2,14:375\n95#2,14:389\n95#2,14:403\n95#2,14:417\n95#2,14:431\n95#2,14:445\n1#3:374\n262#4,2:459\n262#4,2:461\n262#4,2:463\n262#4,2:465\n260#4:467\n262#4,2:468\n*S KotlinDebug\n*F\n+ 1 VerifyPasscodeFragment.kt\ntech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment\n*L\n119#1:360,14\n192#1:375,14\n223#1:389,14\n246#1:403,14\n281#1:417,14\n316#1:431,14\n330#1:445,14\n347#1:459,2\n348#1:461,2\n352#1:463,2\n353#1:465,2\n357#1:467\n189#1:468,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001eH\u0002J\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u0004H\u0016J&\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0008\u0010,\u001a\u00020\u001cH\u0016J\u0018\u0010-\u001a\u00020\u001c2\u0006\u0010.\u001a\u00020!2\u0008\u0010/\u001a\u0004\u0018\u000100J\u0008\u00101\u001a\u00020\u001cH\u0016J\u001a\u00102\u001a\u00020\u001c2\u0006\u00103\u001a\u00020%2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0010\u00104\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0002J\u0012\u00105\u001a\u00020\u001c2\u0008\u0008\u0001\u00106\u001a\u00020!H\u0002J\u0010\u00107\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!H\u0002R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00068"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;",
        "moduleName",
        "",
        "(Ljava/lang/String;)V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "confirmedPasscodeContainer",
        "",
        "flContinueContainer",
        "Landroid/widget/FrameLayout;",
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
        "tvTips",
        "tvTitle",
        "tvToFinish",
        "hideBack",
        "",
        "isBackShowing",
        "",
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

.field private lastTimeClicked:J

.field private llBackContainer:Landroid/widget/LinearLayout;

.field private llTipContainer:Landroid/widget/LinearLayout;

.field private final moduleName:Ljava/lang/String;

.field private numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

.field private tvBackTitle:Landroid/widget/TextView;

.field private tvConfirmPasscode:Landroid/widget/TextView;

.field private tvContinue:Landroid/widget/TextView;

.field private tvRetry:Landroid/widget/TextView;

.field private tvTips:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private tvToFinish:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$HEhc00b_VdlMhOk6Cnlog2vBzDw(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem$lambda$32$lambda$30(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$INTZeTW3l0DpZRttxjxDPcUbXuQ(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem$lambda$24$lambda$19(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pf9FLnj8BRJmi6QIIbsCd5rZhqU(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem$lambda$28$lambda$26(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sdhc87WTfDfORBF214TdlITPP6w(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem$lambda$12$lambda$10(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZsXulA5SrESAbe2bDDrjPmuIhM0(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onKeyCodeEvent$lambda$4$lambda$1(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nYS0E3skBu2OYiwEMBcXJdyC-ME(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onScroll$lambda$8$lambda$6(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$td4ARWnJ4voEjNBZY7WFF1niRNM(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem$lambda$17$lambda$14(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget v0, Ltech/rabbit/r1launcher/R$layout;->fragment_verify_passcode:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->moduleName:Ljava/lang/String;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getConfirmedPasscodeContainer$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getLlTipContainer$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getModuleName$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->moduleName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getNumberPickerView$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    return-object p0
.end method

.method public static final synthetic access$getTvConfirmPasscode$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvConfirmPasscode:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvContinue$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getTvRetry$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 25
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvRetry:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$setAnimator$p(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 25
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setTextToTipsView(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->setTextToTipsView(I)V

    return-void
.end method

.method private final hideBack()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "llBackContainer"

    .line 352
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvTitle"

    .line 353
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/4 p0, 0x0

    .line 465
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final isBackShowing()Z
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "llBackContainer"

    .line 357
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    check-cast v0, Landroid/view/View;

    .line 467
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvTitle"

    .line 357
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    .line 467
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

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTips"

    .line 87
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

.method private static final onConfirmItem$lambda$12$lambda$10(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 221
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$17$lambda$14(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 240
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

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

    .line 241
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->moduleName:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p0, :cond_2

    const-string p0, "flContinueContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private static final onConfirmItem$lambda$24$lambda$19(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 278
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvToFinish"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 279
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_1

    const-string p0, "numberPickerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1, v2}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$28$lambda$26(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 314
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvToFinish"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private static final onConfirmItem$lambda$32$lambda$30(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

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
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvToFinish"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private static final onKeyCodeEvent$lambda$4$lambda$1(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 117
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez p0, :cond_0

    const-string p0, "llTipContainer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private static final onScroll$lambda$8$lambda$6(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V
    .locals 6

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
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

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

    .line 188
    sget p1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->setTextToTipsView(I)V

    .line 189
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvRetry:Landroid/widget/TextView;

    if-nez p0, :cond_1

    const-string p0, "tvRetry"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/16 p0, 0x8

    .line 468
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private final setTextToTipsView(I)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "tvTips"

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->updateCurrentTipsId(I)V

    return-void
.end method

.method private final showBack(I)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvBackTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvBackTitle"

    .line 346
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    if-nez p1, :cond_1

    const-string p1, "llBackContainer"

    .line 347
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    check-cast p1, Landroid/view/View;

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p0, :cond_2

    const-string p0, "tvTitle"

    .line 348
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/view/View;

    const/16 p0, 0x8

    .line 461
    invoke-virtual {v1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final updateCurrentTipsId(I)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTips:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "tvTips"

    .line 84
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
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    const-string v2, ""

    .line 205
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 207
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 208
    invoke-virtual/range {p0 .. p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onScroll()V

    .line 211
    :cond_2
    sget v1, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isEqualTips(I)Z

    move-result v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v1, :cond_5

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    .line 212
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iput-object v8, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 215
    invoke-direct {v0, v7}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->updateCurrentTipsId(I)V

    new-array v1, v9, [F

    iget-object v2, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_4

    const-string v2, "llTipContainer"

    .line 216
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v8, v2

    :goto_0
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    aput v2, v1, v7

    aput v4, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 217
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 219
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 395
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$12$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$12$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    .line 401
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 229
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_5
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 231
    invoke-interface {v1, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->getPasscode()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1f4

    if-eqz v1, :cond_6

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    .line 235
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 238
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 246
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 409
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$17$$inlined$addListener$default$1;

    invoke-direct {v3, v0, v1, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$17$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    .line 415
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 269
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 271
    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-array v1, v9, [F

    fill-array-data v1, :array_1

    .line 273
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 276
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 281
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 423
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$24$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$24$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    .line 429
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 306
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "tvToFinish"

    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v1, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v8

    :cond_8
    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v4

    if-nez v1, :cond_9

    new-array v1, v9, [F

    fill-array-data v1, :array_2

    .line 309
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 312
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda3;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 316
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 437
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$28$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$28$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    .line 443
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 321
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_9
    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 322
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_b

    iget-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    if-nez v1, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v8, v1

    :goto_1
    invoke-virtual {v8}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-nez v1, :cond_b

    new-array v1, v9, [F

    fill-array-data v1, :array_3

    .line 323
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 324
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 326
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 330
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroid/animation/Animator;

    .line 451
    new-instance v3, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1;

    invoke-direct {v3, v1, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onConfirmItem$lambda$32$$inlined$addListener$default$1;-><init>(Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    .line 457
    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 335
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_b
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
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 54
    sget p3, Ltech/rabbit/r1launcher/R$id;->tv_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const-string v0, "findViewById(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTitle:Landroid/widget/TextView;

    .line 56
    sget p3, Ltech/rabbit/r1launcher/R$id;->npv_picker:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    iput-object p3, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p3, :cond_0

    const-string p3, "numberPickerView"

    .line 57
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    move-object p3, p0

    check-cast p3, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;

    invoke-virtual {p2, p3}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setOnNumberPickerListener(Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView$OnNumberPickerListener;)V

    .line 59
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvTips:Landroid/widget/TextView;

    .line 60
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_retry:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvRetry:Landroid/widget/TextView;

    .line 61
    sget p2, Ltech/rabbit/r1launcher/R$id;->ll_tip_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llTipContainer:Landroid/widget/LinearLayout;

    .line 62
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_to_finish:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvToFinish:Landroid/widget/TextView;

    .line 63
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_confirm_passcode:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvConfirmPasscode:Landroid/widget/TextView;

    .line 64
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_continue:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvContinue:Landroid/widget/TextView;

    .line 65
    sget p2, Ltech/rabbit/r1launcher/R$id;->fl_continue_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    .line 67
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_back_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->tvBackTitle:Landroid/widget/TextView;

    .line 68
    sget p2, Ltech/rabbit/r1launcher/R$id;->ll_back_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->llBackContainer:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 340
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez v0, :cond_0

    const-string v0, "numberPickerView"

    .line 341
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->resetCacheData()V

    .line 342
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public final onKeyCodeEvent(ILandroid/view/KeyEvent;)V
    .locals 7

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->lastTimeClicked:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->lastTimeClicked:J

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-ne p2, v0, :cond_1

    return-void

    .line 94
    :cond_1
    sget-object p2, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v4, "flContinueContainer"

    const-string v5, "numberPickerView"

    const/4 v6, 0x0

    if-eqz p2, :cond_14

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_2

    .line 95
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_2
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_3

    .line 96
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_3
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isDeleteItem()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 97
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->moduleName:Ljava/lang/String;

    .line 99
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_4

    .line 100
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_settings_change_passcode_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->showBack(I)V

    goto :goto_0

    .line 102
    :cond_4
    sget p1, Ltech/rabbit/r1launcher/R$string;->text_back:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->showBack(I)V

    :goto_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_5

    .line 104
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v6, p0

    :goto_1
    const/4 p0, 0x0

    invoke-virtual {v6, p0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_8

    :cond_6
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_7

    .line 106
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_7
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_8

    return-void

    :cond_8
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_9

    .line 109
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v6, p1

    :goto_2
    invoke-virtual {v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onDelete()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 110
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    .line 112
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 115
    new-instance p2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda5;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 119
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p2, p1

    check-cast p2, Landroid/animation/Animator;

    .line 366
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onKeyCodeEvent$lambda$4$$inlined$addListener$default$1;

    invoke-direct {v0, p0, p1, p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onKeyCodeEvent$lambda$4$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    .line 372
    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 128
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    const-string p1, ""

    .line 130
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onConfirmItem(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p1, :cond_c

    .line 132
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_c
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->isNormalItemInSelectArea()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_d

    .line 134
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    move-object v6, p0

    :goto_3
    invoke-virtual {v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->showSelectedConfirmAnimation()V

    goto/16 :goto_8

    :cond_e
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_f

    .line 137
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-nez p1, :cond_11

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isBackShowing()Z

    move-result p1

    if-nez p1, :cond_11

    .line 139
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    if-eqz p1, :cond_10

    move-object v6, p0

    check-cast v6, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    :cond_10
    if-eqz v6, :cond_22

    invoke-virtual {v6}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->gotoChangePasscode()V

    goto/16 :goto_8

    :cond_11
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->confirmedPasscodeContainer:Ljava/util/List;

    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 142
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->hideBack()V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->moduleName:Ljava/lang/String;

    .line 143
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_13

    .line 144
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    if-eqz p1, :cond_12

    move-object v6, p0

    check-cast v6, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    :cond_12
    if-eqz v6, :cond_22

    invoke-virtual {v6}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->gotoSecurityFragment()V

    goto/16 :goto_8

    .line 146
    :cond_13
    sget-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->moduleName:Ljava/lang/String;

    .line 148
    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Cancel:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    .line 146
    invoke-virtual {p1, p2, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->syncPasscodeVerifyState(Ljava/lang/String;Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;)V

    .line 150
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto/16 :goto_8

    :cond_14
    const/16 p2, 0x14

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1b

    .line 155
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_15

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v2

    if-nez p1, :cond_17

    .line 156
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->hideBack()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_16

    .line 157
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    move-object v6, p0

    :goto_4
    invoke-virtual {v6, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto/16 :goto_8

    :cond_17
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_18

    .line 158
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_18
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-nez p1, :cond_19

    goto :goto_8

    :cond_19
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_1a

    .line 159
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_1a
    move-object v6, p0

    :goto_5
    invoke-virtual {v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onScrollUp()V

    goto :goto_8

    :cond_1b
    const/16 p2, 0x13

    if-ne p1, p2, :cond_22

    .line 162
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isBackShowing()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1c

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_1c
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v2

    if-nez p1, :cond_1e

    .line 163
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->hideBack()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_1d

    .line 164
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_1d
    move-object v6, p0

    :goto_6
    invoke-virtual {v6, v0}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->setSelected(Z)V

    goto :goto_8

    :cond_1e
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->flContinueContainer:Landroid/widget/FrameLayout;

    if-nez p1, :cond_1f

    .line 165
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_1f
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p1

    cmpg-float p1, p1, v1

    if-nez p1, :cond_20

    goto :goto_8

    :cond_20
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->numberPickerView:Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;

    if-nez p0, :cond_21

    .line 166
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_7

    :cond_21
    move-object v6, p0

    :goto_7
    invoke-virtual {v6}, Ltech/rabbit/r1launcher/initstep/widget/NumberPickerView;->onScrollDown()V

    :cond_22
    :goto_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onScroll()V
    .locals 3

    .line 172
    sget v0, Ltech/rabbit/r1launcher/R$string;->tip_settings_change_passcode_enter_your_current_passcode:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_set_codes_did_not_match:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->isEqualTips(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 178
    sget v0, Ltech/rabbit/r1launcher/R$string;->tips_passcode_scroll_up_to_select_next_digit:I

    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->updateCurrentTipsId(I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 179
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 182
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 183
    new-instance v1, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$$ExternalSyntheticLambda6;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 192
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Landroid/animation/Animator;

    .line 381
    new-instance v2, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onScroll$lambda$8$$inlined$addListener$default$1;

    invoke-direct {v2, p0, v0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment$onScroll$lambda$8$$inlined$addListener$default$1;-><init>(Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;Landroid/animation/ValueAnimator;)V

    .line 387
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->animator:Landroid/animation/ValueAnimator;

    .line 198
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

    .line 73
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    sget p1, Ltech/rabbit/r1launcher/R$string;->tip_settings_change_passcode_enter_your_current_passcode:I

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->setTextToTipsView(I)V

    return-void
.end method
