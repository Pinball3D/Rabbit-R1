.class public Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;
.super Ljava/lang/Object;
.source "ViewRecycler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0010\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u000b\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u001a\u0010\u0013\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u001a\u0010\u0016\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u001a\u0010\u0017\u001a\u00020\u000c2\n\u0010\r\u001a\u00060\u000eR\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u001c\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00112\n\u0010\r\u001a\u00060\u000eR\u00020\u000fH\u0002R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "getLayoutInfo",
        "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "getLayoutManager",
        "()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "recycle",
        "",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "startIndex",
        "",
        "endIndex",
        "recycleByLayoutRequest",
        "layoutRequest",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
        "recycleFromEnd",
        "recycleFromStart",
        "recycleViewAt",
        "index",
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

.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-void
.end method

.method private final recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_2

    .line 75
    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    if-eq p3, p2, :cond_2

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    if-gt p3, p2, :cond_2

    .line 79
    :goto_1
    invoke-direct {p0, p2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    if-eq p2, p3, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final recycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 88
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 90
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-object p0
.end method

.method protected final getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public final recycleByLayoutRequest(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 1

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isRecyclingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isPrepending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 4

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 52
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v0

    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getExtraLayoutSpaceEnd()I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 53
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_3

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 55
    invoke-virtual {v2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 56
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v0, :cond_2

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 57
    invoke-virtual {v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 59
    :cond_2
    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    :cond_3
    return-void
.end method

.method public final recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;)V
    .locals 5

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->getExtraLayoutSpaceStart()I

    move-result p2

    neg-int p2, p2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 39
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 41
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 42
    invoke-virtual {v4, v3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_2

    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 43
    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getOrientationHelper()Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_2
    :goto_2
    invoke-direct {p0, p1, v1, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewRecycler;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    :cond_3
    return-void
.end method
