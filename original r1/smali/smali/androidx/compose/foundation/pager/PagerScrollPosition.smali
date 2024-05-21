.class public final Landroidx/compose/foundation/pager/PagerScrollPosition;
.super Ljava/lang/Object;
.source "PagerScrollPosition.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerScrollPosition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerScrollPosition.kt\nandroidx/compose/foundation/pager/PagerScrollPosition\n+ 2 SnapshotIntState.kt\nandroidx/compose/runtime/SnapshotIntStateKt__SnapshotIntStateKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n75#2:111\n108#2,2:112\n75#2:114\n108#2,2:115\n75#2:117\n108#2,2:118\n1#3:120\n*S KotlinDebug\n*F\n+ 1 PagerScrollPosition.kt\nandroidx/compose/foundation/pager/PagerScrollPosition\n*L\n34#1:111\n34#1:112,2\n35#1:114\n35#1:115,2\n37#1:117\n37#1:118,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003J\u0018\u0010 \u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002J\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020#R+\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00038F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR+\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00038F@FX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u000f\u0010\t\"\u0004\u0008\u0010\u0010\u000bR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0015\u001a\u00020\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R+\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00038F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\r\u001a\u0004\u0008\u001a\u0010\t\"\u0004\u0008\u001b\u0010\u000b\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerScrollPosition;",
        "",
        "initialPage",
        "",
        "initialScrollOffset",
        "(II)V",
        "<set-?>",
        "currentPage",
        "getCurrentPage",
        "()I",
        "setCurrentPage",
        "(I)V",
        "currentPage$delegate",
        "Landroidx/compose/runtime/MutableIntState;",
        "firstVisiblePage",
        "getFirstVisiblePage",
        "setFirstVisiblePage",
        "firstVisiblePage$delegate",
        "hadFirstNotEmptyLayout",
        "",
        "lastKnownFirstPageKey",
        "nearestRangeState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;",
        "getNearestRangeState",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;",
        "scrollOffset",
        "getScrollOffset",
        "setScrollOffset",
        "scrollOffset$delegate",
        "requestPosition",
        "",
        "index",
        "update",
        "updateFromMeasureResult",
        "measureResult",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final currentPage$delegate:Landroidx/compose/runtime/MutableIntState;

.field private final firstVisiblePage$delegate:Landroidx/compose/runtime/MutableIntState;

.field private hadFirstNotEmptyLayout:Z

.field private lastKnownFirstPageKey:Ljava/lang/Object;

.field private final nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

.field private final scrollOffset$delegate:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/foundation/pager/PagerScrollPosition;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->firstVisiblePage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 35
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentPage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 37
    invoke-static {p2}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 45
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    const/16 v0, 0x1e

    const/16 v1, 0x64

    invoke-direct {p2, p1, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;-><init>(III)V

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerScrollPosition;-><init>(II)V

    return-void
.end method

.method private final setScrollOffset(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 118
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method private final update(II)V
    .locals 2

    int-to-float v0, p1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->setFirstVisiblePage(I)V

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 95
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    .line 96
    invoke-direct {p0, p2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->setScrollOffset(I)V

    return-void

    .line 93
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Index should be non-negative ("

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getCurrentPage()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentPage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 35
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 114
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getFirstVisiblePage()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->firstVisiblePage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 34
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 111
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    return-object p0
.end method

.method public final getScrollOffset()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->scrollOffset$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 37
    check-cast p0, Landroidx/compose/runtime/IntState;

    .line 117
    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p0

    return p0
.end method

.method public final requestPosition(II)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerScrollPosition;->update(II)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->lastKnownFirstPageKey:Ljava/lang/Object;

    return-void
.end method

.method public final setCurrentPage(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->currentPage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 115
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public final setFirstVisiblePage(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->firstVisiblePage$delegate:Landroidx/compose/runtime/MutableIntState;

    .line 112
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method

.method public final updateFromMeasureResult(Landroidx/compose/foundation/pager/PagerMeasureResult;)V
    .locals 3

    const-string v0, "measureResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getFirstVisiblePage()Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->lastKnownFirstPageKey:Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->hadFirstNotEmptyLayout:Z

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getPagesCount()I

    move-result v0

    if-lez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/pager/PagerScrollPosition;->hadFirstNotEmptyLayout:Z

    .line 61
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getFirstVisiblePageOffset()I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 65
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getFirstVisiblePage()Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 64
    :goto_1
    invoke-direct {p0, v1, v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->update(II)V

    .line 68
    invoke-virtual {p1}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getClosestPageToSnapPosition()Landroidx/compose/foundation/pager/PageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerScrollPosition;->setCurrentPage(I)V

    :cond_3
    return-void

    .line 62
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "scrollOffset should be non-negative ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
