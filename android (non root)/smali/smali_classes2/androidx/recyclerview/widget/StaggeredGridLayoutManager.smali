.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;,
        Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final GAP_HANDLING_LAZY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS:I = 0x2

.field public static final GAP_HANDLING_NONE:I = 0x0

.field public static final HORIZONTAL:I = 0x0

.field static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33333334f

.field private static final TAG:Ljava/lang/String; = "StaggeredGridLManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Landroidx/recyclerview/widget/LayoutState;

.field mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 244
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 157
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 215
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 246
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 247
    new-instance p1, Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 248
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 228
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 157
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 188
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 193
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 215
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$1;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 229
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 230
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 231
    iget p2, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 232
    iget-boolean p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 233
    new-instance p1, Landroidx/recyclerview/widget/LayoutState;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LayoutState;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 234
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1781
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 794
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 795
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 797
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 798
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v1, v1, v0

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 800
    iget-boolean v2, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 801
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 803
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 806
    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 809
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 810
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 813
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 814
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 815
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 817
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 818
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 819
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 821
    iput-boolean v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 823
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_5

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 824
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 825
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    :cond_5
    return-void
.end method

.method private attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 1

    .line 1724
    iget p3, p3, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1725
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p3, :cond_0

    .line 1726
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1728
    :cond_0
    iget-object p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_0

    .line 1731
    :cond_1
    iget-boolean p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p3, :cond_2

    .line 1732
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_0

    .line 1734
    :cond_2
    iget-object p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private calculateScrollDirectionForPosition(I)I
    .locals 3

    .line 2017
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 2020
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    if-ge p1, v0, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    if-ge v0, p0, :cond_1

    .line 405
    iget-object p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    iget-object v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 406
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p0

    .line 407
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    if-le v0, p0, :cond_1

    .line 411
    iget-object p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 412
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p0

    .line 413
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1104
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1105
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1103
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 1080
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1084
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1085
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1083
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p0

    return p0
.end method

.method private computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 6

    .line 1120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1124
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1125
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1123
    invoke-static/range {v0 .. v5}, Landroidx/recyclerview/widget/ScrollbarHelper;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    :cond_4
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    return v0

    :cond_6
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    return v0

    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_9

    return v1

    .line 2378
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_a

    return v0

    :cond_a
    return v1

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_c

    return v0

    .line 2370
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method private createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1706
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1707
    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1709
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .line 1715
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1716
    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_0

    .line 1718
    iget-object v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createOrientationHelpers()V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 257
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 259
    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    return-void
.end method

.method private fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1549
    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1554
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_1

    .line 1555
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 1561
    :cond_1
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_2

    .line 1562
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1564
    :cond_2
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    sub-int/2addr v0, v1

    :goto_0
    move v11, v0

    .line 1568
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    iget-boolean v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1576
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1577
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_1
    move v12, v0

    move v0, v9

    .line 1579
    :goto_2
    invoke-virtual/range {p2 .. p3}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_19

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-boolean v1, v1, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-nez v1, :cond_4

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1580
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1581
    :cond_4
    invoke-virtual {v8, v7}, Landroidx/recyclerview/widget/LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v13

    .line 1582
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1583
    invoke-virtual {v14}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1584
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v9

    :goto_3
    if-eqz v3, :cond_7

    .line 1588
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_6

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v9

    goto :goto_4

    :cond_6
    invoke-direct {v6, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    move-result-object v1

    :goto_4
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1589
    invoke-virtual {v4, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILandroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    goto :goto_5

    :cond_7
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1597
    aget-object v1, v4, v1

    :goto_5
    move-object v15, v1

    .line 1600
    iput-object v15, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1601
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_8

    .line 1602
    invoke-virtual {v6, v13}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1604
    :cond_8
    invoke-virtual {v6, v13, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->addView(Landroid/view/View;I)V

    .line 1606
    :goto_6
    invoke-direct {v6, v13, v14, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1610
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_b

    .line 1611
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_9

    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    goto :goto_7

    .line 1612
    :cond_9
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    :goto_7
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1613
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_a

    .line 1614
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_a

    .line 1616
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1617
    iput v2, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1618
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1619
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_a
    move v5, v4

    move v4, v1

    goto :goto_9

    .line 1622
    :cond_b
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_c

    invoke-direct {v6, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    goto :goto_8

    .line 1623
    :cond_c
    invoke-virtual {v15, v12}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    :goto_8
    iget-object v4, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1624
    invoke-virtual {v4, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_d

    .line 1625
    iget-boolean v5, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_d

    .line 1627
    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1628
    iput v10, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1629
    iput v0, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    iget-object v9, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1630
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_d
    move v5, v1

    .line 1635
    :goto_9
    iget-boolean v1, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_11

    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    if-ne v1, v2, :cond_11

    if-eqz v3, :cond_e

    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_b

    .line 1640
    :cond_e
    iget v1, v8, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_f

    .line 1641
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v1

    goto :goto_a

    .line 1643
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v1

    :goto_a
    xor-int/2addr v1, v10

    if-eqz v1, :cond_11

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1647
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1649
    iput-boolean v10, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    :cond_10
    iput-boolean v10, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1655
    :cond_11
    :goto_b
    invoke-direct {v6, v13, v14, v8}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Landroidx/recyclerview/widget/LayoutState;)V

    .line 1658
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_13

    .line 1659
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_12

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_c

    :cond_12
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1660
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, v10

    iget v2, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v1, v2

    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    :goto_c
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1662
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_e

    .line 1664
    :cond_13
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_d

    .line 1666
    :cond_14
    iget v0, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    :goto_d
    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1667
    invoke-virtual {v1, v13}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    :goto_e
    iget v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_15

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    .line 1671
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    .line 1673
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1676
    :goto_f
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_16

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1677
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    goto :goto_10

    :cond_16
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1679
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v15, v0, v11}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    :goto_10
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1681
    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1682
    iget-boolean v0, v0, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v0, :cond_18

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1683
    iget-boolean v0, v14, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_17

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1684
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_11

    :cond_17
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1686
    iget v1, v15, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_12

    :cond_18
    :goto_11
    const/4 v3, 0x0

    :goto_12
    move v9, v3

    move v0, v10

    goto/16 :goto_2

    :cond_19
    move v3, v9

    if-nez v0, :cond_1a

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1692
    invoke-direct {v6, v7, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    :cond_1a
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1695
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_1b

    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1696
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1697
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_13

    :cond_1b
    iget-object v0, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1699
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1700
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    :goto_13
    if-lez v1, :cond_1c

    .line 1702
    iget v0, v8, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_14

    :cond_1c
    move v9, v3

    :goto_14
    return v9
.end method

.method private findFirstReferenceChildPosition(I)I
    .locals 4

    .line 2192
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2194
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2195
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_0

    if-ge v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private findLastReferenceChildPosition(I)I
    .locals 2

    .line 2209
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2210
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2211
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 2

    const/high16 v0, -0x80000000

    .line 1385
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1389
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    neg-int v1, v0

    .line 1392
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1398
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    :cond_1
    return-void
.end method

.method private fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 2

    const v0, 0x7fffffff

    .line 1404
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1408
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 1411
    invoke-virtual {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_1

    if-lez v1, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int p1, v1

    .line 1417
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    :cond_1
    return-void
.end method

.method private getMaxEnd(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    .line 1859
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1861
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMaxStart(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    .line 1817
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1819
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinEnd(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    .line 1870
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1872
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getMinStart(I)I
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    .line 1828
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1830
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getNextSpan(Landroidx/recyclerview/widget/LayoutState;)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;
    .locals 7

    .line 1954
    iget v0, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    move v3, v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v0, 0x0

    move v3, v1

    .line 1965
    :goto_0
    iget p1, p1, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    const/4 v4, 0x0

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1968
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    const v1, 0x7fffffff

    :goto_1
    if-eq v0, v2, :cond_2

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1970
    aget-object v5, v5, v0

    .line 1971
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    if-ge v6, v1, :cond_1

    move-object v4, v5

    move v1, v6

    :cond_1
    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1981
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    const/high16 v1, -0x80000000

    :goto_2
    if-eq v0, v2, :cond_5

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1983
    aget-object v5, v5, v0

    .line 1984
    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    if-le v6, v1, :cond_4

    move-object v4, v5

    move v1, v6

    :cond_4
    add-int/2addr v0, v3

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private handleUpdate(III)V
    .locals 6

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    .line 1505
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    :goto_0
    const/16 v1, 0x8

    if-ne p3, v1, :cond_2

    if-ge p1, p2, :cond_1

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p1, 0x1

    move v3, p2

    goto :goto_2

    :cond_2
    add-int v2, p1, p2

    :goto_1
    move v3, p1

    :goto_2
    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1522
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_5

    const/4 v5, 0x2

    if-eq p3, v5, :cond_4

    if-eq p3, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1532
    invoke-virtual {p3, p1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1533
    invoke-virtual {p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_3

    :cond_4
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1528
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_3

    :cond_5
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1525
    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    :goto_3
    if-gt v2, v0, :cond_6

    return-void

    :cond_6
    iget-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_7

    .line 1541
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result p1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result p1

    :goto_4
    if-gt v3, p1, :cond_8

    .line 1543
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_8
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 1201
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1202
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1203
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->rightMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-direct {p0, p2, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1205
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    if-eqz p4, :cond_0

    .line 1208
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    goto :goto_0

    .line 1209
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_1

    .line 1211
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .locals 6

    .line 1136
    iget-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1140
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v2

    .line 1141
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    .line 1142
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 1139
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1138
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1150
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    .line 1151
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v2

    .line 1152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 1149
    invoke-static {v0, v2, v3, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1147
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 1164
    invoke-static {v0, v3, v2, v4, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1171
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeight()I

    move-result v2

    .line 1172
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    .line 1173
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 1170
    invoke-static {v2, v3, v4, p2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1162
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 1183
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidth()I

    move-result v0

    .line 1184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getWidthMode()I

    move-result v3

    .line 1185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->width:I

    .line 1182
    invoke-static {v0, v3, v4, v5, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getHeightMode()I

    move-result v3

    iget p2, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->height:I

    .line 1188
    invoke-static {v1, v3, v2, p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1180
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_0
    return-void
.end method

.method private onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v2, :cond_1

    .line 621
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 623
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void

    .line 628
    :cond_1
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_5

    .line 631
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_4

    .line 633
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    goto :goto_2

    .line 635
    :cond_4
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    iget-boolean v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 636
    iput-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 638
    :goto_2
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 639
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    :cond_5
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v2, :cond_7

    .line 642
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_6

    .line 643
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_7

    :cond_6
    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 644
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 645
    iput-boolean v4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 649
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_8

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v4, :cond_e

    .line 651
    :cond_8
    iget-boolean v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_a

    move v1, v3

    :goto_3
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 654
    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 655
    iget v5, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_9

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 656
    aget-object v5, v5, v1

    iget v6, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 660
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    :goto_4
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_e

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 668
    aget-object v5, v5, v1

    .line 669
    invoke-virtual {v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 670
    iget-object v6, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    move v1, v3

    :goto_6
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_d

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 662
    aget-object v5, v5, v1

    iget-boolean v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v7, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 665
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)V

    .line 675
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 676
    iput-boolean v3, v1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iput-boolean v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 678
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 679
    iget v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 680
    iget-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_f

    .line 682
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 683
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 685
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 686
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v2, v5

    iput v2, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 687
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    goto :goto_7

    .line 690
    :cond_f
    invoke-direct {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 691
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 693
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 694
    iget v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v5, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v2, v5

    iput v2, v1, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 695
    invoke-direct {p0, p1, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 698
    :goto_7
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 700
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_11

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_10

    .line 702
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 703
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    goto :goto_8

    .line 705
    :cond_10
    invoke-direct {p0, p1, p2, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixStartGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    .line 706
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fixEndGap(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :cond_11
    :goto_8
    if-eqz p3, :cond_13

    .line 710
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p3

    if-nez p3, :cond_13

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz p3, :cond_13

    .line 712
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result p3

    if-lez p3, :cond_13

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez p3, :cond_12

    .line 713
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_13

    :cond_12
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 715
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 716
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result p3

    if-eqz p3, :cond_13

    goto :goto_9

    :cond_13
    move v4, v3

    .line 721
    :goto_9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p3

    if-eqz p3, :cond_14

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 722
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 724
    :cond_14
    iget-boolean p3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 725
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p3

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eqz v4, :cond_15

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 727
    invoke-virtual {p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 728
    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    :cond_15
    return-void
.end method

.method private preferLastSpan(I)Z
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2

    :cond_2
    if-ne p1, v1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    move p1, v3

    :goto_2
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v0, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v3

    .line 1947
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-ne p1, p0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    return v2
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1788
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V
    .locals 2

    .line 1740
    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1743
    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    const/4 v1, -0x1

    if-nez v0, :cond_2

    .line 1745
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_1

    .line 1746
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_2

    .line 1748
    :cond_1
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_2

    .line 1753
    :cond_2
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_4

    .line 1755
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_3

    .line 1758
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    goto :goto_0

    .line 1760
    :cond_3
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 1762
    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    goto :goto_2

    .line 1765
    :cond_4
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    .line 1768
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    goto :goto_1

    .line 1770
    :cond_5
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    .line 1772
    :goto_1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private recycleFromEnd(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 6

    .line 1910
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_5

    .line 1913
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1914
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1915
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_5

    .line 1916
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1918
    iget-boolean v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1920
    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1925
    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1928
    :cond_2
    iget-object v4, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_3

    return-void

    .line 1931
    :cond_3
    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1933
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private recycleFromStart(Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .locals 5

    .line 1881
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    .line 1882
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1883
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1884
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5

    .line 1885
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1887
    iget-boolean v3, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v2, v0

    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1889
    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1894
    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1897
    :cond_2
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    return-void

    .line 1900
    :cond_3
    iget-object v0, v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1902
    :cond_4
    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private repositionToWrapContentIfNecessary()V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 742
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    return-void

    .line 746
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 748
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 749
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    goto :goto_1

    .line 753
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 754
    invoke-virtual {v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v5, v4

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 757
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    .line 760
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 761
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 762
    invoke-virtual {v4}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 764
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-ne v2, v3, :cond_5

    return-void

    :cond_5
    :goto_2
    if-ge v1, v0, :cond_9

    .line 769
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 770
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 771
    iget-boolean v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_6

    goto :goto_3

    .line 774
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v5, v6, :cond_7

    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v5, v6

    .line 775
    iget-object v7, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v7, v7, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v5, v7

    neg-int v5, v5

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v5, v7

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v7, v6

    .line 776
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v7, v4

    neg-int v4, v7

    mul-int/2addr v4, v3

    sub-int/2addr v5, v4

    .line 777
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    .line 779
    :cond_7
    iget-object v5, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v5, v5, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v5, v7

    .line 780
    iget-object v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v4, v4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    mul-int/2addr v4, v3

    iget v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v7, v6, :cond_8

    sub-int/2addr v5, v4

    .line 782
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_3

    :cond_8
    sub-int/2addr v5, v4

    .line 784
    invoke-virtual {v2, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 559
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    :goto_1
    return-void
.end method

.method private setLayoutStateDirection(I)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1453
    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mLayoutDirection:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1455
    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1794
    aget-object v1, v1, v0

    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1797
    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result p0

    goto :goto_0

    .line 850
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result p0

    :goto_0
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 p0, -0x80000000

    .line 851
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 p0, 0x1

    return p0
.end method

.method private updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v1, 0x0

    .line 1422
    iput v1, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1423
    iput p1, v0, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    .line 1426
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1427
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge p2, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v0, p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1430
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    move p2, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1432
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    .line 1438
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1440
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1441
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1443
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    neg-int p2, p2

    .line 1444
    iput p2, p1, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    :goto_2
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1446
    iput-boolean v1, p1, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 1447
    iput-boolean v2, p1, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1448
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1449
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    if-nez p0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p1, Landroidx/recyclerview/widget/LayoutState;->mInfinite:Z

    return-void
.end method

.method private updateRemainingSpans(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;II)V
    .locals 3

    .line 1802
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    .line 1804
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1806
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {p0, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0

    .line 1809
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1811
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {p0, p1, v2}, Ljava/util/BitSet;->set(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return p1

    .line 1220
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 1223
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1222
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    .line 1839
    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1841
    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method areAllStartsEqual()Z
    .locals 6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    .line 1849
    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    iget v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1851
    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    if-eq v5, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 528
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 1

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method checkForGaps()Z
    .locals 7

    .line 269
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 275
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    goto :goto_0

    .line 277
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 281
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 283
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 284
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return v3

    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    .line 294
    invoke-virtual {v6, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5

    iput-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 297
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    return v1

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 300
    iget v2, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/2addr v4, v5

    .line 301
    invoke-virtual {v1, v0, v2, v4, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 304
    iget v1, v6, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_2

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 306
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 308
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 309
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return v3

    :cond_7
    :goto_3
    return v1
.end method

.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 2247
    instance-of p0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2098
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_7

    if-nez p1, :cond_1

    goto/16 :goto_4

    .line 2102
    :cond_1
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz p1, :cond_2

    .line 2105
    array-length p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_3

    :cond_2
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 2106
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v1, :cond_6

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2112
    iget v1, v1, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2113
    iget v1, v1, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, p2

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v3, v3, Landroidx/recyclerview/widget/LayoutState;->mStartLine:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2114
    aget-object v1, v1, p2

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mEndLine:I

    :goto_2
    sub-int/2addr v1, v2

    if-ltz v1, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 2117
    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    .line 2121
    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_3
    if-ge p1, v0, :cond_7

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2124
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2125
    iget p2, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2127
    iget v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget v2, v2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1096
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1076
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1116
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 2026
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p1

    .line 2027
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    if-nez p0, :cond_1

    int-to-float p0, p1

    .line 2032
    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 2033
    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 2035
    :cond_1
    iput v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p0, p1

    .line 2036
    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1111
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1091
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 1131
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public findFirstCompletelyVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 999
    new-array p1, p1, [I

    goto :goto_0

    .line 1000
    :cond_0
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1005
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1001
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", array size:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1361
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1362
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1364
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_4

    .line 1365
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1366
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1367
    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_3

    if-lt v5, v1, :cond_0

    goto :goto_2

    :cond_0
    if-le v6, v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    return-object v4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1331
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1332
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1333
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    .line 1336
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1337
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1338
    invoke-virtual {v7, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_3

    if-lt v6, v1, :cond_0

    goto :goto_2

    :cond_0
    if-ge v6, v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method findFirstVisibleItemPositionInt()I
    .locals 2

    iget-boolean v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1319
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1320
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 1321
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_1
    return p0
.end method

.method public findFirstVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 967
    new-array p1, p1, [I

    goto :goto_0

    .line 968
    :cond_0
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 973
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 969
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", array size:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastCompletelyVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1063
    new-array p1, p1, [I

    goto :goto_0

    .line 1064
    :cond_0
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1069
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1065
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", array size:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLastVisibleItemPositions([I)[I
    .locals 3

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1031
    new-array p1, p1, [I

    goto :goto_0

    .line 1032
    :cond_0
    array-length v0, p1

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_2

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1037
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1033
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", array size:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_0

    .line 2223
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0

    .line 2226
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 2233
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 2238
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 2239
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 2241
    :cond_0
    new-instance p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method getFirstChildPosition()I
    .locals 2

    .line 2182
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2183
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getGapStrategy()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    return p0
.end method

.method getLastChildPosition()I
    .locals 1

    .line 2177
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2178
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    return p0
.end method

.method public getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return p0
.end method

.method public getSpanCount()I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return p0
.end method

.method hasGapsToFix()Landroid/view/View;
    .locals 12

    .line 339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 340
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 341
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/BitSet;->set(IIZ)V

    iget v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v6, -0x1

    if-ne v3, v5, :cond_0

    .line 344
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iget-boolean v7, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v7, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_2

    move v6, v5

    :cond_2
    :goto_2
    if-eq v1, v0, :cond_c

    .line 355
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 356
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 357
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 358
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkSpanForGap(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v9

    if-eqz v9, :cond_3

    return-object v7

    .line 361
    :cond_3
    iget-object v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 363
    :cond_4
    iget-boolean v9, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_5

    goto :goto_6

    :cond_5
    add-int v9, v1, v6

    if-eq v9, v0, :cond_b

    .line 368
    invoke-virtual {p0, v9}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 372
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 373
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_6

    return-object v7

    :cond_6
    if-ne v10, v11, :cond_b

    goto :goto_3

    :cond_7
    iget-object v10, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 380
    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    iget-object v11, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 381
    invoke-virtual {v11, v9}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_8

    return-object v7

    :cond_8
    if-ne v10, v11, :cond_b

    .line 390
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 391
    iget-object v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v8, v8, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_9

    move v8, v5

    goto :goto_4

    :cond_9
    move v8, v4

    :goto_4
    if-gez v3, :cond_a

    move v9, v5

    goto :goto_5

    :cond_a
    move v9, v4

    :goto_5
    if-eq v8, v9, :cond_b

    return-object v7

    :cond_b
    :goto_6
    add-int/2addr v1, v6

    goto :goto_2

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateSpanAssignments()V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 548
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 549
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public isAutoMeasureEnabled()Z
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isLayoutRTL()Z
    .locals 1

    .line 567
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 2

    .line 1460
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1462
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 2

    .line 1468
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1470
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 611
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 613
    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 322
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 324
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 326
    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .locals 8

    .line 2258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2262
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 2267
    :cond_1
    invoke-direct {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2268
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_2

    return-object v1

    .line 2272
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2273
    iget-boolean v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2274
    iget-object v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 2277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    goto :goto_0

    .line 2279
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    .line 2281
    :goto_0
    invoke-direct {p0, v4, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2282
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2284
    iget v6, v5, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v4

    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    iget-object v6, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 2285
    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3eaaaaab

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2286
    iput-boolean v3, v5, Landroidx/recyclerview/widget/LayoutState;->mStopInFocusable:Z

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    const/4 v6, 0x0

    .line 2287
    iput-boolean v6, v5, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    iget-object v5, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2288
    invoke-direct {p0, p3, v5, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-nez v2, :cond_4

    .line 2291
    invoke-virtual {v0, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eq p3, p1, :cond_4

    return-object p3

    .line 2299
    :cond_4
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result p3

    if-eqz p3, :cond_6

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p3, v3

    :goto_1
    if-ltz p3, :cond_8

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2301
    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_5

    if-eq p4, p1, :cond_5

    return-object p4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_6
    move p3, v6

    :goto_2
    iget p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p3, p4, :cond_8

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2308
    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    if-eq p4, p1, :cond_7

    return-object p4

    :cond_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_8
    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_9

    move p4, v3

    goto :goto_3

    :cond_9
    move p4, v6

    :goto_3
    if-ne p3, p4, :cond_a

    move p3, v3

    goto :goto_4

    :cond_a
    move p3, v6

    :goto_4
    if-nez v2, :cond_c

    if-eqz p3, :cond_b

    .line 2323
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p4

    goto :goto_5

    .line 2324
    :cond_b
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p4

    .line 2322
    :goto_5
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_c

    if-eq p4, p1, :cond_c

    return-object p4

    .line 2330
    :cond_c
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result p2

    if-eqz p2, :cond_10

    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p2, v3

    :goto_6
    if-ltz p2, :cond_13

    .line 2332
    iget p4, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    if-ne p2, p4, :cond_d

    goto :goto_8

    :cond_d
    if-eqz p3, :cond_e

    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2336
    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p4

    goto :goto_7

    :cond_e
    iget-object p4, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2337
    aget-object p4, p4, p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p4

    .line 2335
    :goto_7
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_f

    if-eq p4, p1, :cond_f

    return-object p4

    :cond_f
    :goto_8
    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_10
    :goto_9
    iget p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, p2, :cond_13

    if-eqz p3, :cond_11

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2345
    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p2

    goto :goto_a

    :cond_11
    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 2346
    aget-object p2, p2, v6

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p2

    .line 2344
    :goto_a
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_12

    return-object p2

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_13
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1294
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1295
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 1296
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v1

    .line 1297
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 1301
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1302
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 1304
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1305
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    goto :goto_0

    .line 1307
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1308
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x1

    .line 1481
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1486
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1487
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    const/16 p1, 0x8

    .line 1492
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const/4 p1, 0x2

    .line 1476
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    const/4 p1, 0x4

    .line 1498
    invoke-direct {p0, p2, p3, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x1

    .line 604
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Z)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 734
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mAnchorInfo:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 738
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1230
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_1

    .line 1231
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1233
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 1234
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 1236
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1245
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object v0

    .line 1247
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 1248
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 1249
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 1250
    iput-boolean v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1252
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1253
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1254
    iget-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v1, v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1255
    iget-object v1, v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_0

    .line 1257
    :cond_1
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1260
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_2

    .line 1261
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    .line 1262
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1263
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1264
    iput v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 1265
    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    :goto_2
    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v1, :cond_6

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1269
    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1271
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 1274
    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    if-eq v1, v3, :cond_4

    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 1276
    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    :goto_3
    sub-int/2addr v1, v3

    .line 1279
    :cond_4
    iget-object v3, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, -0x1

    .line 1282
    iput p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1283
    iput p0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1284
    iput v2, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_6
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    :cond_0
    return-void
.end method

.method prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    const/4 v0, 0x1

    if-lez p1, :cond_0

    .line 2136
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    move v2, v0

    goto :goto_0

    .line 2139
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    iget-object v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2141
    iput-boolean v0, v3, Landroidx/recyclerview/widget/LayoutState;->mRecycle:Z

    .line 2142
    invoke-direct {p0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateLayoutState(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2143
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2144
    iget v0, p2, Landroidx/recyclerview/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/LayoutState;->mCurrentPosition:I

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2145
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    return-void
.end method

.method scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 2149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 2153
    :cond_0
    invoke-virtual {p0, p1, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILandroidx/recyclerview/widget/RecyclerView$State;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2154
    invoke-direct {p0, p2, v0, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->fill(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p3

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2155
    iget v0, v0, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    if-ge v0, p3, :cond_1

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    neg-int p1, p3

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    neg-int v0, p1

    .line 2168
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/OrientationHelper;->offsetChildren(I)V

    iget-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2171
    iput v1, p3, Landroidx/recyclerview/widget/LayoutState;->mAvailable:I

    iget-object p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mLayoutState:Landroidx/recyclerview/widget/LayoutState;

    .line 2172
    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->recycle(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/LayoutState;)V

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 2007
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2051
    iget v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 2052
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2056
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    :cond_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2078
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 0

    .line 2013
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setGapStrategy(I)V
    .locals 1

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 518
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid gap strategy. Must be GAP_HANDLING_NONE or GAP_HANDLING_MOVE_ITEMS_BETWEEN_SPANS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 522
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4

    .line 586
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 587
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 589
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 590
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p1

    iget p3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 592
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v0

    .line 591
    invoke-static {p2, p3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 595
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p2

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 597
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getMinimumHeight()I

    move-result v0

    .line 596
    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->chooseSize(III)I

    move-result p1

    .line 599
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 451
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mOrientation:I

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 459
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 477
    iget-boolean v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    .line 478
    iput-boolean p1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    :cond_0
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 481
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v0, :cond_1

    .line 430
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 432
    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 433
    new-array p1, p1, [Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    iput-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpans:[Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    .line 435
    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v1, p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$Span;-><init>(Landroidx/recyclerview/widget/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->requestLayout()V

    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 2044
    new-instance p2, Landroidx/recyclerview/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 2045
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 2046
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 857
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    .line 861
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 867
    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;

    iget p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge p1, v0, :cond_2

    goto :goto_0

    .line 928
    :cond_2
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 929
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_5

    :cond_3
    :goto_0
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 870
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-boolean v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_4

    .line 874
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_1

    .line 875
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_1
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v1, v3, :cond_6

    .line 877
    iget-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 878
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 880
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 882
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 884
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    :goto_2
    return v0

    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 890
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 891
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 893
    iget-boolean p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_7

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 894
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_3

    :cond_7
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 895
    invoke-virtual {p0}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    :goto_3
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_8
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 899
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 900
    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_9

    neg-int p0, v1

    .line 902
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    :cond_9
    iget-object v1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 905
    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 906
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    if-gez v1, :cond_a

    .line 908
    iput v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    .line 912
    :cond_a
    iput v3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_5

    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 916
    iput p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_d

    .line 918
    iget p1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p0

    if-ne p0, v0, :cond_c

    move v1, v0

    .line 920
    :cond_c
    iput-boolean v1, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 921
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_4

    .line 923
    :cond_d
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    .line 925
    :goto_4
    iput-boolean v0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :goto_5
    return v0

    :cond_e
    :goto_6
    iput v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput v3, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    :cond_f
    :goto_7
    return v1
.end method

.method updateAnchorInfoForLayout(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .locals 1

    .line 830
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 839
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    const/4 p0, 0x0

    .line 840
    iput p0, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method updateMeasureSpecs(I)V
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 935
    div-int v0, p1, v0

    iput v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Landroidx/recyclerview/widget/OrientationHelper;

    .line 938
    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getMode()I

    move-result v0

    .line 937
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    return-void
.end method
