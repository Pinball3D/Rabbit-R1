.class final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;
.super Ljava/lang/Object;
.source "LayoutScroller.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectionPivotListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller$Listener;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V",
        "onPivotFound",
        "",
        "pivotView",
        "Landroid/view/View;",
        "position",
        "",
        "subPosition",
        "onPivotNotFound",
        "onSmoothScrollerStopped",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPivotFound(Landroid/view/View;II)V
    .locals 1

    const-string p2, "pivotView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 488
    invoke-static {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v0, 0x1

    .line 489
    invoke-static {p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$setSelectionInProgress$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Z)V

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 490
    invoke-static {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getLayoutAlignment$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->getViewAtSubPosition(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 493
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :goto_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 p2, 0x0

    .line 494
    invoke-static {p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$setSelectionInProgress$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Z)V

    :cond_1
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 496
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelected()V

    return-void
.end method

.method public onPivotNotFound(I)V
    .locals 3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 504
    invoke-static {p0, p1, v2, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;IIILjava/lang/Object;)V

    return-void
.end method

.method public onSmoothScrollerStopped()V
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 508
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getLayoutInfo$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->setIsScrollingToTarget(Z)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SelectionPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v0, 0x0

    .line 509
    invoke-static {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$setPivotSelectionScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PivotSelectionSmoothScroller;)V

    return-void
.end method
