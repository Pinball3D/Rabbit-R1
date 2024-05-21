.class final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LayoutScroller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleScrollListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V",
        "isScrolling",
        "",
        "previousSelectedPosition",
        "",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
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
.field private isScrolling:Z

.field private previousSelectedPosition:I

.field final synthetic this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 517
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->previousSelectedPosition:I

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 524
    invoke-static {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getLayoutInfo$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->setIsScrolling(Z)V

    iget-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->isScrolling:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->isScrolling:Z

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 530
    invoke-static {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->previousSelectedPosition:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->previousSelectedPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 533
    invoke-static {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getPivotSelector$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->dispatchViewHolderSelectedAndAligned()V

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->previousSelectedPosition:I

    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->isScrolling:Z

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller$IdleScrollListener;->this$0:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 537
    invoke-static {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->access$getAlignmentQueue$p(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->consumeAll()V

    :cond_5
    return-void
.end method
