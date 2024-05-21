.class final Landroidx/viewpager2/widget/ScrollEventAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ScrollEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;
    }
.end annotation


# static fields
.field private static final NO_POSITION:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_IN_PROGRESS_FAKE_DRAG:I = 0x4

.field private static final STATE_IN_PROGRESS_IMMEDIATE_SCROLL:I = 0x3

.field private static final STATE_IN_PROGRESS_MANUAL_DRAG:I = 0x1

.field private static final STATE_IN_PROGRESS_SMOOTH_SCROLL:I = 0x2


# instance fields
.field private mAdapterState:I

.field private mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mDataSetChangeHappened:Z

.field private mDispatchSelected:Z

.field private mDragStartPosition:I

.field private mFakeDragging:Z

.field private final mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScrollHappened:Z

.field private mScrollState:I

.field private mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

.field private mTarget:I

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 78
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    new-instance p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    invoke-direct {p1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 82
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    return-void
.end method

.method private dispatchScrolled(IFI)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_0

    .line 437
    invoke-virtual {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method private dispatchSelected(I)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_0

    .line 431
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method private dispatchStateChanged(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    if-eqz p0, :cond_2

    .line 425
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method private getPosition()I
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 442
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    return p0
.end method

.method private isInAnyDraggingState()Z
    .locals 2

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private resetState()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 88
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    return-void
.end method

.method private startDrag(Z)V
    .locals 2

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iput v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-ne p1, v1, :cond_2

    .line 296
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->getPosition()I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    .line 298
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    return-void
.end method

.method private updateScrollEventValues()V
    .locals 8

    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 225
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 226
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 227
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 230
    iget v2, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 232
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->reset()V

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 236
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 237
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 238
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 239
    invoke-virtual {v5, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v5

    .line 241
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 242
    instance-of v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_2

    .line 243
    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v7

    .line 245
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v7

    .line 246
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v7

    .line 247
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 250
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    add-int/2addr v6, v5

    .line 251
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v3

    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 253
    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v3

    if-nez v3, :cond_4

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 258
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    neg-int v1, v1

    :cond_3
    move v6, v5

    goto :goto_0

    .line 263
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    iget-object v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    neg-int v1, v1

    .line 266
    iput v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 267
    iget v1, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-gez v1, :cond_6

    .line 270
    new-instance v1, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1}, Landroidx/viewpager2/widget/AnimateLayoutChangeDetector;->mayHaveInterferingAnimations()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 271
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 279
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Page can only be offset by a positive amount, not by %d"

    .line 279
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-nez v6, :cond_7

    const/4 p0, 0x0

    goto :goto_1

    .line 282
    :cond_7
    iget p0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    int-to-float p0, p0

    int-to-float v1, v6

    div-float/2addr p0, v1

    :goto_1
    iput p0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    return-void
.end method


# virtual methods
.method getRelativeScrollPosition()D
    .locals 4

    .line 406
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 407
    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    int-to-double v0, v0

    iget-object p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    float-to-double v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method getScrollState()I
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    return p0
.end method

.method isDragging()Z
    .locals 1

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isFakeDragging()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    return p0
.end method

.method isIdle()Z
    .locals 0

    iget p0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method notifyBeginFakeDrag()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x1

    .line 328
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->startDrag(Z)V

    return-void
.end method

.method notifyDataSetChangeHappened()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    return-void
.end method

.method notifyEndFakeDrag()V
    .locals 3

    .line 335
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    .line 340
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 341
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 343
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 344
    iget v1, v1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-direct {p0, v1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    .line 346
    :cond_1
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 347
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 350
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    :goto_0
    return-void
.end method

.method notifyProgrammaticScroll(IZ)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    :goto_0
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mFakeDragging:Z

    iget v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq v1, p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    .line 317
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    if-eqz p2, :cond_2

    .line 319
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-eq p1, v1, :cond_1

    :cond_0
    if-ne p2, v1, :cond_1

    .line 107
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->startDrag(Z)V

    return-void

    .line 113
    :cond_1
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isInAnyDraggingState()Z

    move-result p1

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    if-ne p2, v2, :cond_3

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    if-eqz p1, :cond_2

    .line 116
    invoke-direct {p0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    iput-boolean v1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    :cond_2
    return-void

    .line 124
    :cond_3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isInAnyDraggingState()Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 126
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 132
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p1, v1, :cond_5

    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 133
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchScrolled(IFI)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 136
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p1, :cond_6

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    iget-object v3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 144
    iget v3, v3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p1, v3, :cond_5

    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 145
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    .line 151
    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 152
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_6
    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    if-ne p1, v2, :cond_9

    if-nez p2, :cond_9

    iget-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDataSetChangeHappened:Z

    if-eqz p1, :cond_9

    .line 158
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 159
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p1, :cond_9

    iget p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 160
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 162
    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p1, v1, :cond_7

    move p1, v0

    goto :goto_1

    :cond_7
    iget-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p1, p1, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    .line 161
    :goto_1
    invoke-direct {p0, p1}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    .line 164
    :cond_8
    invoke-direct {p0, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 165
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_9
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollHappened:Z

    .line 177
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->updateScrollEventValues()V

    iget-boolean v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDispatchSelected:Z

    if-gtz p3, :cond_1

    if-nez p3, :cond_2

    if-gez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 182
    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->isRtl()Z

    move-result p3

    if-ne p2, p3, :cond_2

    :cond_1
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 186
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 187
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    add-int/2addr p2, p1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    :goto_1
    iput p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mDragStartPosition:I

    if-eq p3, p2, :cond_5

    .line 189
    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    goto :goto_2

    :cond_3
    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mAdapterState:I

    if-nez p2, :cond_5

    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 194
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p2, v1, :cond_4

    move p2, v2

    .line 196
    :cond_4
    invoke-direct {p0, p2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchSelected(I)V

    :cond_5
    :goto_2
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 200
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    if-ne p2, v1, :cond_6

    move p2, v2

    goto :goto_3

    :cond_6
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    :goto_3
    iget-object p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p3, p3, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffset:F

    iget-object v0, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget v0, v0, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    invoke-direct {p0, p2, p3, v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchScrolled(IFI)V

    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    .line 205
    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mPosition:I

    iget p3, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mTarget:I

    if-eq p2, p3, :cond_7

    if-ne p3, v1, :cond_8

    :cond_7
    iget-object p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollValues:Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;

    iget p2, p2, Landroidx/viewpager2/widget/ScrollEventAdapter$ScrollEventValues;->mOffsetPx:I

    if-nez p2, :cond_8

    iget p2, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mScrollState:I

    if-eq p2, p1, :cond_8

    .line 213
    invoke-direct {p0, v2}, Landroidx/viewpager2/widget/ScrollEventAdapter;->dispatchStateChanged(I)V

    .line 214
    invoke-direct {p0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->resetState()V

    :cond_8
    return-void
.end method

.method setOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager2/widget/ScrollEventAdapter;->mCallback:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method
