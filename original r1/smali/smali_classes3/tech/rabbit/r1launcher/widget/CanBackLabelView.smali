.class public final Ltech/rabbit/r1launcher/widget/CanBackLabelView;
.super Landroid/widget/FrameLayout;
.source "CanBackLabelView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCanBackLabelView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanBackLabelView.kt\ntech/rabbit/r1launcher/widget/CanBackLabelView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,70:1\n304#2,2:71\n262#2,2:73\n262#2,2:75\n*S KotlinDebug\n*F\n+ 1 CanBackLabelView.kt\ntech/rabbit/r1launcher/widget/CanBackLabelView\n*L\n54#1:71,2\n34#1:73,2\n35#1:75,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0014J\u0012\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/widget/CanBackLabelView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "fadeBackground",
        "Landroid/view/View;",
        "tvFocused",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "tvUnfocused",
        "inflateAndSetupViews",
        "",
        "onTouchEvent",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "setFocusedLabel",
        "text",
        "",
        "setUnfocusedLabel",
        "setupAttrsToViews",
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
.field private fadeBackground:Landroid/view/View;

.field private tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

.field private tvUnfocused:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public static synthetic $r8$lambda$jVFl2YtMGoaAu7T_xCeGrjiN_BE(Ltech/rabbit/r1launcher/widget/CanBackLabelView;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->inflateAndSetupViews$lambda$0(Ltech/rabbit/r1launcher/widget/CanBackLabelView;Landroid/view/View;Z)V

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

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->inflateAndSetupViews()V

    .line 24
    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->setupAttrsToViews(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final inflateAndSetupViews()V
    .locals 3

    .line 28
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Ltech/rabbit/r1launcher/R$layout;->view_can_back_label:I

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_focused:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

    .line 30
    sget v0, Ltech/rabbit/r1launcher/R$id;->tv_unfocused:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvUnfocused:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    sget v0, Ltech/rabbit/r1launcher/R$id;->v_fade_background:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->fadeBackground:Landroid/view/View;

    .line 33
    new-instance v0, Ltech/rabbit/r1launcher/widget/CanBackLabelView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/widget/CanBackLabelView;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private static final inflateAndSetupViews$lambda$0(Ltech/rabbit/r1launcher/widget/CanBackLabelView;Landroid/view/View;Z)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "tvFocused"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    check-cast p1, Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 73
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvUnfocused:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p0, :cond_2

    const-string p0, "tvUnfocused"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    check-cast v0, Landroid/view/View;

    xor-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 75
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setupAttrsToViews(Landroid/util/AttributeSet;)V
    .locals 5

    .line 40
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    check-cast p1, Ljava/lang/AutoCloseable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/res/TypedArray;

    .line 41
    sget v1, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView_canBackLabelViewFocusedLabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_0

    const-string v1, "tvFocused"

    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    .line 43
    :cond_0
    sget v4, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView_canBackLabelViewFocusedLabel:I

    .line 42
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_2

    move-object v4, v2

    :cond_2
    check-cast v4, Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_3
    sget v1, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView_canBackLabelViewUnfocusedLabel:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvUnfocused:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v1, :cond_4

    const-string v1, "tvUnfocused"

    .line 48
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    .line 49
    :cond_4
    sget v4, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView_canBackLabelViewUnfocusedLabel:I

    .line 48
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v4

    :goto_2
    check-cast v2, Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_7
    sget v1, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView_visibleFadeBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->fadeBackground:Landroid/view/View;

    if-nez p0, :cond_8

    const-string p0, "fadeBackground"

    .line 54
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v3

    .line 55
    :cond_8
    sget v1, Ltech/rabbit/r1launcher/R$styleable;->CanBackLabelView_visibleFadeBackground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    .line 71
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {p1, v3}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, Lkotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setFocusedLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvFocused:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p0, :cond_0

    const-string p0, "tvFocused"

    .line 64
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setUnfocusedLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/CanBackLabelView;->tvUnfocused:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p0, :cond_0

    const-string p0, "tvUnfocused"

    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
