.class final Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;
.super Landroidx/activity/OnBackPressedCallback;
.source "AbstractListDetailFragment.kt"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/AbstractListDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InnerOnBackPressedCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000c\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;",
        "Landroidx/activity/OnBackPressedCallback;",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;",
        "slidingPaneLayout",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V",
        "handleOnBackPressed",
        "",
        "onPanelClosed",
        "panel",
        "Landroid/view/View;",
        "onPanelOpened",
        "onPanelSlide",
        "slideOffset",
        "",
        "navigation-fragment_release"
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
.field private final slidingPaneLayout:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 1

    const-string v0, "slidingPaneLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    iput-object p1, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;->slidingPaneLayout:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 80
    check-cast p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    invoke-virtual {p1, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 0

    iget-object p0, p0, Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;->slidingPaneLayout:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 84
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public onPanelClosed(Landroid/view/View;)V
    .locals 1

    const-string v0, "panel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 1

    const-string v0, "panel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Landroidx/navigation/fragment/AbstractListDetailFragment$InnerOnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 0

    const-string p0, "panel"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
