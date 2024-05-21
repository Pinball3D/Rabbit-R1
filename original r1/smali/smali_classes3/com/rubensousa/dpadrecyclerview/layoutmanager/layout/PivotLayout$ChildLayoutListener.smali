.class final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;
.super Ljava/lang/Object;
.source "PivotLayout.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChildLayoutListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/OnChildLayoutListener;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)V",
        "onBlockLaidOut",
        "",
        "onChildCreated",
        "view",
        "Landroid/view/View;",
        "onChildLaidOut",
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
.field final synthetic this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlockLaidOut()V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 347
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->onBlockLaidOut()V

    return-void
.end method

.method public onChildCreated(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 323
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->onChildCreated(Landroid/view/View;)V

    return-void
.end method

.method public onChildLaidOut(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 327
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->onChildLaidOut(Landroid/view/View;)V

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 331
    invoke-static {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->isSearchingPivot()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getAbsoluteAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    invoke-static {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 335
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getScroller$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 336
    invoke-static {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getConfiguration$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isSmoothFocusChangesEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 335
    invoke-static {v0, v1, v4, v2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->scrollToSelectedPosition$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;ZZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 339
    invoke-static {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getLayoutListener$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout$ChildLayoutListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;

    .line 340
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getLayoutInfo$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;->access$getLayoutInfo$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/PivotLayout;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 342
    :cond_2
    invoke-interface {v0, v1, p0}, Lcom/rubensousa/dpadrecyclerview/OnChildLaidOutListener;->onChildLaidOut(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_3
    :goto_0
    return-void
.end method
