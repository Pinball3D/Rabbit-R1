.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;
.super Ljava/lang/Object;
.source "LayoutPrefetchCollector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J&\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016J&\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0016J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;",
        "",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "calculateAvailableScrollSpace",
        "",
        "view",
        "Landroid/view/View;",
        "layoutDirection",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;",
        "calculateItemDirection",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;",
        "calculateLayoutDirection",
        "scrollOffset",
        "collectAdjacentPrefetchPositions",
        "",
        "dx",
        "dy",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "layoutPrefetchRegistry",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;",
        "collectInitialPrefetchPositions",
        "adapterItemCount",
        "prefetchItemCount",
        "pivotPosition",
        "getViewAtLayoutEdge",
        "hasMoreItemsToLayout",
        "",
        "position",
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


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-void
.end method

.method private final calculateAvailableScrollSpace(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)I
    .locals 1

    .line 91
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 92
    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getEndAfterPadding()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 94
    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getStartAfterPadding()I

    move-result p0

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method private final calculateItemDirection(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;
    .locals 1

    .line 101
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    if-ne p1, v0, :cond_0

    .line 102
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->TAIL:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    goto :goto_0

    .line 104
    :cond_0
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->HEAD:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    :goto_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 106
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 107
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->opposite()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private final calculateLayoutDirection(I)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;
    .locals 0

    if-lez p1, :cond_0

    .line 114
    sget-object p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    goto :goto_0

    .line 116
    :cond_0
    sget-object p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->START:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    :goto_0
    return-object p0
.end method

.method private final getViewAtLayoutEdge(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)Landroid/view/View;
    .locals 1

    .line 83
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;->END:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 84
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 86
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildClosestToStart()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final hasMoreItemsToLayout(ILandroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 121
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6

    const-string v0, "state"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutPrefetchRegistry"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 57
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, p2

    :cond_0
    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 58
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->calculateLayoutDirection(I)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;

    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->calculateItemDirection(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;

    move-result-object p2

    .line 63
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->getViewAtLayoutEdge(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 65
    invoke-virtual {v1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getLayoutPositionOf(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 66
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanCount()I

    move-result v2

    .line 68
    invoke-direct {p0, v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->calculateAvailableScrollSpace(Landroid/view/View;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutDirection;)I

    move-result p1

    const/4 v0, 0x0

    move v3, v0

    move v4, v2

    :goto_0
    if-ge v3, v2, :cond_3

    .line 72
    invoke-direct {p0, v1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->hasMoreItemsToLayout(ILandroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-lez v4, :cond_3

    .line 75
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-interface {p4, v1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object v5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutPrefetchCollector;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 76
    invoke-virtual {v5, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    .line 77
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ItemDirection;->getValue()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final collectInitialPrefetchPositions(IIILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 2

    const-string p0, "layoutPrefetchRegistry"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p2, -0x1

    .line 40
    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p3, p0

    sub-int p0, p1, p2

    .line 41
    invoke-static {p3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p3, 0x0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    move v0, p0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int v1, p0, p2

    if-ge v0, v1, :cond_1

    .line 46
    invoke-interface {p4, v0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
