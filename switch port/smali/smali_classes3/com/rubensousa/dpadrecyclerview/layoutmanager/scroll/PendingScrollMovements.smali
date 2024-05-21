.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;
.super Ljava/lang/Object;
.source "PendingScrollMovements.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000cJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u0008\u0010\u0011\u001a\u00020\u000cH\u0002J\u0006\u0010\u0012\u001a\u00020\u000eJ\u0008\u0010\u0013\u001a\u00020\u000cH\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0003H\u0007J\u0016\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\u0006\u0010\u001a\u001a\u00020\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;",
        "",
        "maxPendingMoves",
        "",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "<set-?>",
        "pendingMoves",
        "getPendingMoves",
        "()I",
        "add",
        "",
        "forward",
        "",
        "clear",
        "consume",
        "decrease",
        "hasPendingMoves",
        "increase",
        "isLayoutCompleteInScrollingDirection",
        "setMaxPendingMoves",
        "max",
        "shouldScrollToView",
        "viewPosition",
        "pivotPosition",
        "shouldStopScrolling",
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
.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private maxPendingMoves:I

.field private pendingMoves:I


# direct methods
.method public constructor <init>(ILcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->maxPendingMoves:I

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-void
.end method

.method private final decrease()V
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->maxPendingMoves:I

    neg-int v1, v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    :cond_0
    return-void
.end method

.method private final increase()V
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    iget v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->maxPendingMoves:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    :cond_0
    return-void
.end method

.method private final isLayoutCompleteInScrollingDirection()Z
    .locals 3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 56
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 59
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 60
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-ltz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 61
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-lez p0, :cond_5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 63
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-ltz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 64
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-lez p0, :cond_5

    :cond_4
    :goto_0
    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public final add(Z)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 74
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->increase()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->decrease()V

    :goto_0
    return-void
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    return-void
.end method

.method public final consume()Z
    .locals 2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x1

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    :goto_0
    return v1
.end method

.method public final getPendingMoves()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    return p0
.end method

.method public final hasPendingMoves()Z
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setMaxPendingMoves(I)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->maxPendingMoves:I

    return-void
.end method

.method public final shouldScrollToView(II)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, p2, :cond_5

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 43
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isLoopingAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 46
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-gez p0, :cond_1

    if-lt p1, p2, :cond_5

    :cond_1
    if-lez p0, :cond_4

    if-le p1, p2, :cond_4

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->pendingMoves:I

    if-gez p0, :cond_3

    if-gt p1, p2, :cond_5

    :cond_3
    if-lez p0, :cond_4

    if-ge p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :cond_5
    :goto_0
    return v0
.end method

.method public final shouldStopScrolling()Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->hasPendingMoves()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/PendingScrollMovements;->isLayoutCompleteInScrollingDirection()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
