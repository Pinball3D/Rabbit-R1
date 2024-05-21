.class final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;
.super Ljava/lang/Object;
.source "LayoutScroller.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchPivotListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller$Listener;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V",
        "onPivotAttached",
        "",
        "adapterPosition",
        "",
        "onPivotFound",
        "pivotView",
        "Landroid/view/View;",
        "onPivotLaidOut",
        "onPivotNotFound",
        "targetPosition",
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

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPivotAttached(I)V
    .locals 3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 448
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    move-result-object p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->update$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;IIILjava/lang/Object;)Z

    return-void
.end method

.method public onPivotFound(Landroid/view/View;)V
    .locals 3

    const-string v0, "pivotView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 466
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 462
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToView(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method public onPivotLaidOut(Landroid/view/View;)V
    .locals 2

    const-string v0, "pivotView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 452
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getLayoutManager$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v1, 0x1

    .line 453
    invoke-static {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$setSelectionInProgress$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Z)V

    .line 454
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v1, 0x0

    .line 455
    invoke-static {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$setSelectionInProgress$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Z)V

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 457
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->addPendingAlignment(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 458
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelected()V

    return-void
.end method

.method public onPivotNotFound(I)V
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v1, 0x1

    .line 473
    invoke-virtual {p0, p1, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToPosition(IIZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 p1, 0x2

    const/4 v1, 0x0

    .line 475
    invoke-static {p0, v0, v0, p1, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToSelectedPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;ZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onSmoothScrollerStopped()V
    .locals 1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$SearchPivotListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    const/4 v0, 0x0

    .line 480
    invoke-static {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$setSearchPivotScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/SearchPivotSmoothScroller;)V

    return-void
.end method
