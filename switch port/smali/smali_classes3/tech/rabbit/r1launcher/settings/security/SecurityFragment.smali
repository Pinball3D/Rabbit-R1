.class public final Ltech/rabbit/r1launcher/settings/security/SecurityFragment;
.super Landroidx/fragment/app/Fragment;
.source "SecurityFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J&\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)J\u001a\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\n2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006,"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/security/SecurityFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "flPassCode",
        "Landroid/widget/FrameLayout;",
        "getFlPassCode",
        "()Landroid/widget/FrameLayout;",
        "setFlPassCode",
        "(Landroid/widget/FrameLayout;)V",
        "mRootView",
        "Landroid/view/View;",
        "getMRootView",
        "()Landroid/view/View;",
        "setMRootView",
        "(Landroid/view/View;)V",
        "settingTitle",
        "Ltech/rabbit/r1launcher/widget/SettingTitle;",
        "getSettingTitle",
        "()Ltech/rabbit/r1launcher/widget/SettingTitle;",
        "setSettingTitle",
        "(Ltech/rabbit/r1launcher/widget/SettingTitle;)V",
        "tvPassCode",
        "Landroid/widget/TextView;",
        "getTvPassCode",
        "()Landroid/widget/TextView;",
        "setTvPassCode",
        "(Landroid/widget/TextView;)V",
        "doInit",
        "",
        "onCreateView",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyCodeEvent",
        "",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onViewCreated",
        "view",
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
.field private flPassCode:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/view/View;

.field private settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

.field private tvPassCode:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$XqH30ZBUkETNFrKcpwQstY_ibJI(Ltech/rabbit/r1launcher/settings/security/SecurityFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->doInit$lambda$1(Ltech/rabbit/r1launcher/settings/security/SecurityFragment;Landroid/view/View;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private final doInit()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ltech/rabbit/r1launcher/settings/security/SecurityFragment$doInit$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment$doInit$1;-><init>(Ltech/rabbit/r1launcher/settings/security/SecurityFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setOnKeyDownCallback(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(I)V

    :goto_1
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    .line 35
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    :goto_2
    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 36
    new-instance v1, Ltech/rabbit/r1launcher/settings/security/SecurityFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/settings/security/SecurityFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_4
    return-void
.end method

.method private static final doInit$lambda$1(Ltech/rabbit/r1launcher/settings/security/SecurityFragment;Landroid/view/View;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 38
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    :cond_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    :cond_1
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_3

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    const/16 p2, 0xc

    if-nez p1, :cond_4

    goto :goto_2

    .line 41
    :cond_4
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_2
    if-nez p1, :cond_5

    goto :goto_3

    .line 42
    :cond_5
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 43
    :goto_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const/16 p1, 0x48

    .line 44
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :goto_4
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    if-nez p1, :cond_8

    goto/16 :goto_b

    :cond_8
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 46
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Ltech/rabbit/r1launcher/R$color;->orange_ff4d00:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const/high16 p0, 0x41a00000    # 20.0f

    .line 47
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 45
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 50
    :cond_9
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    const/high16 v1, 0x42400000    # 48.0f

    invoke-virtual {p2, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    :cond_a
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p2, :cond_b

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    :cond_b
    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    goto :goto_5

    :cond_c
    move-object p2, v0

    :goto_5
    instance-of v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_d

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_6

    :cond_d
    move-object p2, v0

    :goto_6
    if-nez p2, :cond_e

    goto :goto_7

    .line 53
    :cond_e
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_7
    if-nez p2, :cond_f

    goto :goto_8

    .line 54
    :cond_f
    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 55
    :goto_8
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_9

    :cond_10
    move-object p1, v0

    :goto_9
    if-nez p1, :cond_11

    goto :goto_a

    :cond_11
    const/16 p2, 0x3a

    .line 56
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    :goto_a
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    if-nez p0, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    return-void
.end method


# virtual methods
.method public final getFlPassCode()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public final getMRootView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final getSettingTitle()Ltech/rabbit/r1launcher/widget/SettingTitle;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    return-object p0
.end method

.method public final getTvPassCode()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget p3, Ltech/rabbit/r1launcher/R$layout;->fragment_security:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->mRootView:Landroid/view/View;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 69
    sget p3, Ltech/rabbit/r1launcher/R$id;->setting_title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1launcher/widget/SettingTitle;

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 70
    sget p3, Ltech/rabbit/r1launcher/R$id;->fl_change_passcode:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 71
    sget p2, Ltech/rabbit/r1launcher/R$id;->tv_pass_code:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    :cond_2
    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public final onKeyCodeEvent(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 77
    invoke-static {p1}, Ltech/rabbit/r1launcher/utils/KeyCodeExtensionKt;->isKeyCodeConfirm(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 79
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    if-eqz p1, :cond_0

    check-cast p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->gotoVerifyPasscode()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 27
    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->doInit()V

    return-void
.end method

.method public final setFlPassCode(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->flPassCode:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final setMRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public final setSettingTitle(Ltech/rabbit/r1launcher/widget/SettingTitle;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->settingTitle:Ltech/rabbit/r1launcher/widget/SettingTitle;

    return-void
.end method

.method public final setTvPassCode(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->tvPassCode:Landroid/widget/TextView;

    return-void
.end method
