.class public abstract Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.super Ljava/lang/Object;
.source "AbstractAppBarOnDestinationChangedListener.kt"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractAppBarOnDestinationChangedListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractAppBarOnDestinationChangedListener.kt\nandroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,100:1\n1#2:101\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\u0008 \u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0019H\u0003J\u001c\u0010\u001a\u001a\u00020\u00102\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0008\u0001\u0010\u001d\u001a\u00020\u001eH$J\u0012\u0010\u001f\u001a\u00020\u00102\u0008\u0010 \u001a\u0004\u0018\u00010!H$R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\r0\r\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "context",
        "Landroid/content/Context;",
        "configuration",
        "Landroidx/navigation/ui/AppBarConfiguration;",
        "(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "arrowDrawable",
        "Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;",
        "openableLayoutWeakReference",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/customview/widget/Openable;",
        "kotlin.jvm.PlatformType",
        "onDestinationChanged",
        "",
        "controller",
        "Landroidx/navigation/NavController;",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "arguments",
        "Landroid/os/Bundle;",
        "setActionBarUpIndicator",
        "showAsDrawerIndicator",
        "",
        "setNavigationIcon",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "contentDescription",
        "",
        "setTitle",
        "title",
        "",
        "navigation-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private arrowDrawable:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

.field private final configuration:Landroidx/navigation/ui/AppBarConfiguration;

.field private final context:Landroid/content/Context;

.field private final openableLayoutWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/customview/widget/Openable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->configuration:Landroidx/navigation/ui/AppBarConfiguration;

    .line 40
    invoke-virtual {p2}, Landroidx/navigation/ui/AppBarConfiguration;->getOpenableLayout()Landroidx/customview/widget/Openable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 41
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->openableLayoutWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final setActionBarUpIndicator(Z)V
    .locals 6

    iget-object v0, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->arrowDrawable:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    iget-object v3, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->arrowDrawable:Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 79
    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 84
    move-object v4, v3

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 85
    sget v5, Landroidx/navigation/ui/R$string;->nav_app_bar_open_drawer_description:I

    goto :goto_0

    .line 86
    :cond_2
    sget v5, Landroidx/navigation/ui/R$string;->nav_app_bar_navigate_up_description:I

    .line 83
    :goto_0
    invoke-virtual {p0, v4, v5}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    if-eqz v0, :cond_5

    .line 91
    invoke-virtual {v3}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->getProgress()F

    move-result v0

    iget-object v4, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->animator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 92
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v2

    aput p1, v4, v1

    const-string p1, "progress"

    .line 93
    invoke-static {v3, p1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    check-cast p1, Landroid/animation/ValueAnimator;

    iput-object p1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->animator:Landroid/animation/ValueAnimator;

    const-string p0, "null cannot be cast to non-null type android.animation.ObjectAnimator"

    .line 94
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 96
    :cond_5
    invoke-virtual {v3, p1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p2, Landroidx/navigation/FloatingWindow;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->openableLayoutWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/customview/widget/Openable;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->openableLayoutWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 60
    check-cast p0, Landroidx/navigation/NavController$OnDestinationChangedListener;

    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {p2, p1, p3}, Landroidx/navigation/NavDestination;->fillInLabel(Landroid/content/Context;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 66
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->configuration:Landroidx/navigation/ui/AppBarConfiguration;

    .line 69
    invoke-virtual {p1, p2}, Landroidx/navigation/ui/AppBarConfiguration;->isTopLevelDestination(Landroidx/navigation/NavDestination;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 71
    invoke-virtual {p0, v1, p2}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 73
    :cond_5
    invoke-direct {p0, p2}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setActionBarUpIndicator(Z)V

    :goto_1
    return-void
.end method

.method protected abstract setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
.end method

.method protected abstract setTitle(Ljava/lang/CharSequence;)V
.end method
