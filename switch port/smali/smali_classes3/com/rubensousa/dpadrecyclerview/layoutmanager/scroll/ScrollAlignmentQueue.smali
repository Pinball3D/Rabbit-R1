.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;
.super Ljava/lang/Object;
.source "ScrollAlignmentQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001fB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0006\u0010\u0010\u001a\u00020\rJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015J\u0018\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u000fH\u0002J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J \u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0018\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;",
        "",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "layoutAlignment",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "pendingAlignments",
        "Ljava/util/LinkedList;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;",
        "consumeAlignedViews",
        "",
        "targetScrollOffset",
        "",
        "consumeAll",
        "hasMaxPendingAlignments",
        "",
        "hasReachedLimit",
        "focusDirection",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        "isPendingAlignmentInOppositeDirection",
        "alignment",
        "scrollOffset",
        "isRemoved",
        "view",
        "Landroid/view/View;",
        "push",
        "focusedView",
        "childView",
        "PendingAlignment",
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
.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

.field private final layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private pendingAlignments:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutAlignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 18
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    return-void
.end method

.method private final consumeAlignedViews(I)V
    .locals 4

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 67
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->getSign()I

    move-result v0

    invoke-static {p1}, Lkotlin/math/MathKt;->getSign(I)I

    move-result p1

    if-eq v0, p1, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 69
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 72
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->layoutAlignment:Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;

    .line 75
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->getChildView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/LayoutAlignment;->calculateScrollOffset(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->isPendingAlignmentInOppositeDirection(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->isRemoved(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final hasMaxPendingAlignments()Z
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 37
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isSmoothFocusChangesEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 40
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getMaxPendingAlignments()I

    move-result p0

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final isPendingAlignmentInOppositeDirection(Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;I)Z
    .locals 0

    .line 95
    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;->getSign()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isRemoved(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 86
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 87
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 88
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final consumeAll()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->hasMaxPendingAlignments()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 24
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final hasReachedLimit(Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;)Z
    .locals 2

    const-string v0, "focusDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->hasMaxPendingAlignments()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 31
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->getScrollSign(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->consumeAlignedViews(I)V

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 32
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getMaxPendingAlignments()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final push(Landroid/view/View;Landroid/view/View;I)Z
    .locals 3

    const-string v0, "focusedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->hasMaxPendingAlignments()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->consumeAlignedViews(I)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 50
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getMaxPendingAlignments()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 52
    check-cast v0, Ljava/util/List;

    new-instance v2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$push$1;

    invoke-direct {v2, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$push$1;-><init>(Landroid/view/View;Landroid/view/View;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue;->pendingAlignments:Ljava/util/LinkedList;

    .line 56
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;

    .line 57
    invoke-static {p3}, Lkotlin/math/MathKt;->getSign(I)I

    move-result p3

    .line 56
    invoke-direct {v0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/ScrollAlignmentQueue$PendingAlignment;-><init>(Landroid/view/View;Landroid/view/View;I)V

    .line 55
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method
