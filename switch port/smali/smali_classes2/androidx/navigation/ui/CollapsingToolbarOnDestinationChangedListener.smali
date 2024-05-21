.class public final Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;
.super Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.source "CollapsingToolbarOnDestinationChangedListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\"\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001c\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\u0014J\u0012\u0010\u0019\u001a\u00020\r2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00030\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;",
        "Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;",
        "collapsingToolbarLayout",
        "Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
        "toolbar",
        "Landroidx/appcompat/widget/Toolbar;",
        "configuration",
        "Landroidx/navigation/ui/AppBarConfiguration;",
        "(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/ui/AppBarConfiguration;)V",
        "mCollapsingToolbarLayoutWeakReference",
        "Ljava/lang/ref/WeakReference;",
        "mToolbarWeakReference",
        "onDestinationChanged",
        "",
        "controller",
        "Landroidx/navigation/NavController;",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "arguments",
        "Landroid/os/Bundle;",
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
.field private final mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/appbar/CollapsingToolbarLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/widget/Toolbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Landroidx/appcompat/widget/Toolbar;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 2

    const-string v0, "collapsingToolbarLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbar"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "collapsingToolbarLayout.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;-><init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 41
    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 42
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mToolbarWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 49
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mToolbarWeakReference:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    return-void

    .line 52
    :cond_1
    :goto_0
    check-cast p0, Landroidx/navigation/NavController$OnDestinationChangedListener;

    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    return-void
.end method

.method protected setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    iget-object p0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mToolbarWeakReference:Ljava/lang/ref/WeakReference;

    .line 66
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    if-eqz v0, :cond_1

    .line 72
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
