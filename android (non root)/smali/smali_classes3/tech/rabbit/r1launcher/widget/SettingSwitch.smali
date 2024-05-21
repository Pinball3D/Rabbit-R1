.class public final Ltech/rabbit/r1launcher/widget/SettingSwitch;
.super Landroid/widget/FrameLayout;
.source "SettingSwitch.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0008\u0010\u0016\u001a\u00020\u0013H\u0002J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u000e\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000fJ\u0018\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000fR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/SettingSwitch;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "binding",
        "Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;",
        "closeColor",
        "isChecked",
        "",
        "openColor",
        "underFocus",
        "doColorAnim",
        "",
        "fromColor",
        "toColor",
        "doTranslation",
        "pxToDp",
        "",
        "px",
        "setUnderFocus",
        "toggle",
        "open",
        "useAnim",
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
.field private final binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

.field private closeColor:I

.field private isChecked:Z

.field private openColor:I

.field private underFocus:Z


# direct methods
.method public static synthetic $r8$lambda$lNKgA2YFArlrxOjpIDBm26toXSQ(Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->doColorAnim$lambda$1$lambda$0(Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ltech/rabbit/r1launcher/R$layout;->layout_setting_switch:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 30
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->addView(Landroid/view/View;)V

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    .line 42
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ltech/rabbit/r1launcher/R$color;->orange_691F00:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$layout;->layout_setting_switch:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 30
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->addView(Landroid/view/View;)V

    iget-boolean p2, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    if-eqz p2, :cond_0

    .line 32
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    .line 42
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$color;->orange_691F00:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$layout;->layout_setting_switch:I

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    move-result-object p1

    const-string p2, "bind(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 30
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->addView(Landroid/view/View;)V

    iget-boolean p2, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    if-eqz p2, :cond_0

    .line 32
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    .line 33
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    .line 42
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ltech/rabbit/r1launcher/R$color;->orange_691F00:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    return-void
.end method

.method private final doColorAnim(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 95
    new-instance p2, Ltech/rabbit/r1launcher/widget/SettingSwitch$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/widget/SettingSwitch;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0xc8

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 101
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static final doColorAnim$lambda$1$lambda$0(Ltech/rabbit/r1launcher/widget/SettingSwitch;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 97
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    .line 98
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final doTranslation()V
    .locals 7

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x41780000    # 15.5f

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "x"

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 107
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vThumb:Landroid/view/View;

    new-array v5, v5, [F

    aput v1, v5, v4

    invoke-direct {p0, v3}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->pxToDp(F)F

    move-result p0

    aput p0, v5, v2

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 109
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vThumb:Landroid/view/View;

    new-array v5, v5, [F

    invoke-direct {p0, v3}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->pxToDp(F)F

    move-result p0

    aput p0, v5, v4

    aput v1, v5, v2

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_0
    const-wide/16 v0, 0xc8

    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 113
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final pxToDp(F)F
    .locals 0

    .line 118
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 119
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public static synthetic toggle$default(Ltech/rabbit/r1launcher/widget/SettingSwitch;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->toggle(ZZ)V

    return-void
.end method


# virtual methods
.method public final setUnderFocus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$color;->orange_FFA179:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iput v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$color;->orange_691F00:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$color;->dark_414141:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    iput v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUnderFocus:origin checked\uff0c underfocus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 57
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    iget v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 58
    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 60
    iget-object p1, p1, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    iget v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    .line 61
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 62
    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    return-void
.end method

.method public final toggle(ZZ)V
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->isChecked:Z

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    iget p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    iget p2, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    .line 74
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->doColorAnim(II)V

    goto :goto_1

    :cond_1
    iget p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    iget p2, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    .line 79
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->doColorAnim(II)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->binding:Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;

    .line 85
    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/LayoutSettingSwitchBinding;->vTrack:Landroid/view/View;

    if-eqz p1, :cond_3

    iget p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->openColor:I

    goto :goto_0

    :cond_3
    iget p1, p0, Ltech/rabbit/r1launcher/widget/SettingSwitch;->closeColor:I

    .line 86
    :goto_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 88
    :goto_1
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingSwitch;->doTranslation()V

    return-void
.end method
