.class public final Ltech/rabbit/r1launcher/widget/SettingTitle;
.super Landroid/widget/FrameLayout;
.source "SettingTitle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001a\u0010!\u001a\u00020\u001a2\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\u0008\u0010\"\u001a\u00020\u001aH\u0002J\u0008\u0010#\u001a\u00020\u001aH\u0014J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010&\u001a\u00020\'H\u0016R$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u000c@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011R5\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001a0\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/SettingTitle;",
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
        "value",
        "",
        "focusTitle",
        "getFocusTitle",
        "()Ljava/lang/String;",
        "setFocusTitle",
        "(Ljava/lang/String;)V",
        "normalTitle",
        "getNormalTitle",
        "setNormalTitle",
        "onKeyDownCallback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "keyCode",
        "",
        "getOnKeyDownCallback",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnKeyDownCallback",
        "(Lkotlin/jvm/functions/Function1;)V",
        "settingTitleBinding",
        "Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;",
        "initAttrs",
        "initText",
        "onAttachedToWindow",
        "onKeyUp",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field private focusTitle:Ljava/lang/String;

.field private normalTitle:Ljava/lang/String;

.field private onKeyDownCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;


# direct methods
.method public static synthetic $r8$lambda$hLSib_qwiadErQxkYVrmAcnpSQ8(Ltech/rabbit/r1launcher/widget/SettingTitle;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->_init_$lambda$2(Ltech/rabbit/r1launcher/widget/SettingTitle;)V

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

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ltech/rabbit/r1launcher/R$layout;->layout_setting_title:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    move-result-object p1

    const-string v0, "bind(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    const-string p1, ""

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->focusTitle:Ljava/lang/String;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->normalTitle:Ljava/lang/String;

    .line 62
    sget-object p1, Ltech/rabbit/r1launcher/widget/SettingTitle$onKeyDownCallback$1;->INSTANCE:Ltech/rabbit/r1launcher/widget/SettingTitle$onKeyDownCallback$1;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->onKeyDownCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setClickable(Z)V

    .line 78
    new-instance p1, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/widget/SettingTitle;)V

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/SettingTitle;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$layout;->layout_setting_title:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    move-result-object v0

    const-string v1, "bind(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    const-string v0, ""

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->focusTitle:Ljava/lang/String;

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->normalTitle:Ljava/lang/String;

    .line 62
    sget-object v0, Ltech/rabbit/r1launcher/widget/SettingTitle$onKeyDownCallback$1;->INSTANCE:Ltech/rabbit/r1launcher/widget/SettingTitle$onKeyDownCallback$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->onKeyDownCallback:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setClickable(Z)V

    .line 78
    new-instance v0, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/widget/SettingTitle;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->post(Ljava/lang/Runnable;)Z

    .line 20
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/SettingTitle;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v0, Ltech/rabbit/r1launcher/R$layout;->layout_setting_title:I

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->bind(Landroid/view/View;)Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    move-result-object p3

    const-string v0, "bind(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    const-string p3, ""

    iput-object p3, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->focusTitle:Ljava/lang/String;

    iput-object p3, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->normalTitle:Ljava/lang/String;

    .line 62
    sget-object p3, Ltech/rabbit/r1launcher/widget/SettingTitle$onKeyDownCallback$1;->INSTANCE:Ltech/rabbit/r1launcher/widget/SettingTitle$onKeyDownCallback$1;

    check-cast p3, Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->onKeyDownCallback:Lkotlin/jvm/functions/Function1;

    const/4 p3, 0x1

    .line 76
    invoke-virtual {p0, p3}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, p3}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setClickable(Z)V

    .line 78
    new-instance p3, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/widget/SettingTitle;)V

    invoke-virtual {p0, p3}, Ltech/rabbit/r1launcher/widget/SettingTitle;->post(Ljava/lang/Runnable;)Z

    .line 28
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/SettingTitle;->initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static final _init_$lambda$2(Ltech/rabbit/r1launcher/widget/SettingTitle;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->addView(Landroid/view/View;)V

    .line 80
    new-instance v0, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/widget/SettingTitle;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 89
    new-instance v0, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/widget/SettingTitle$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    sget-object v0, Ltech/rabbit/r1launcher/R$styleable;->SettingTitle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget p2, Ltech/rabbit/r1launcher/R$styleable;->SettingTitle_st_focus_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setFocusTitle(Ljava/lang/String;)V

    .line 49
    sget p2, Ltech/rabbit/r1launcher/R$styleable;->SettingTitle_st_normal_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->setNormalTitle(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->close()V

    return-void
.end method

.method private final initText()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    .line 70
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->tvFocusTitle:Landroid/widget/TextView;

    iget-object v1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->focusTitle:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    .line 71
    iget-object v0, v0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->tvNormalTitle:Landroid/widget/TextView;

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->normalTitle:Ljava/lang/String;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static final lambda$2$lambda$0(Ltech/rabbit/r1launcher/widget/SettingTitle;Landroid/view/View;Z)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 82
    iget-object p2, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->llFocusTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->tvNormalTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object p2, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    iget-object p2, p2, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->llFocusTitle:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->settingTitleBinding:Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;

    iget-object p0, p0, Ltech/rabbit/r1launcher/databinding/LayoutSettingTitleBinding;->tvNormalTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static final lambda$2$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getFocusTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->focusTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getNormalTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->normalTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getOnKeyDownCallback()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->onKeyDownCallback:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 66
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->initText()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->isFocused()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1a

    if-eq p1, p2, :cond_1

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/16 p2, 0x50

    if-eq p1, p2, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->onKeyDownCallback:Lkotlin/jvm/functions/Function1;

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final setFocusTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->focusTitle:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->initText()V

    return-void
.end method

.method public final setNormalTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->normalTitle:Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/SettingTitle;->initText()V

    return-void
.end method

.method public final setOnKeyDownCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/SettingTitle;->onKeyDownCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method
