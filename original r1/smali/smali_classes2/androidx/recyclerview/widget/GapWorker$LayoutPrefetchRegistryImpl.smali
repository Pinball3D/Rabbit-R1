.class Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutPrefetchRegistryImpl"
.end annotation


# instance fields
.field mCount:I

.field mPrefetchArray:[I

.field mPrefetchDx:I

.field mPrefetchDy:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPosition(II)V
    .locals 5

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v3, 0x4

    if-nez v2, :cond_0

    new-array v0, v3, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v2, -0x1

    .line 124
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0

    .line 125
    :cond_0
    array-length v4, v2

    if-lt v1, v4, :cond_1

    mul-int/2addr v0, v3

    .line 127
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 128
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 132
    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 133
    aput p2, v0, v1

    iget p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void

    .line 117
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel distance must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Layout positions must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method clearPrefetchPositions()V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 153
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    return-void
.end method

.method collectPrefetchPositionsFromView(Landroidx/recyclerview/widget/RecyclerView;Z)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 81
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 84
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 85
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isItemPrefetchEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_1

    .line 91
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Landroidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iget v2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    .line 97
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_2
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 102
    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    if-le v1, v2, :cond_3

    iget p0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    .line 103
    iput p0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 104
    iput-boolean p2, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 105
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    :cond_3
    return-void
.end method

.method lastPrefetchIncludedPosition(I)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v0, v0, 0x2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    .line 142
    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method

.method setPrefetchVector(II)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    iput p2, p0, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    return-void
.end method
