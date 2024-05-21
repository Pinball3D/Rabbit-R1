.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;
.super Ljava/lang/Object;
.source "LazyStaggeredGridScrollPosition.kt"

# interfaces
.implements Landroidx/compose/runtime/SnapshotMutationPolicy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/SnapshotMutationPolicy<",
        "[I>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridScrollPosition.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridScrollPosition.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 6 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 7 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,143:1\n81#2:144\n107#2,2:145\n81#2:147\n107#2,2:148\n16594#3,14:150\n1#4:164\n116#5,2:165\n33#5,6:167\n118#5:173\n495#6,4:174\n500#6:183\n129#7,5:178\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridScrollPosition.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition\n*L\n36#1:144\n36#1:145,2\n38#1:147\n38#1:148,2\n57#1:150,14\n61#1:165,2\n61#1:167,6\n61#1:173\n69#1:174,4\n69#1:183\n69#1:178,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00126\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u0002H\u0016J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020\u0007J\u0018\u0010(\u001a\u00020%2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0002J\u000e\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020+J\u0018\u0010,\u001a\u00020\u00022\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0010\u001a\u00020\u0002H\u0007R>\u0010\u0005\u001a2\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000b\u0012\u0004\u0012\u00020\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00028F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR+\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00028F@BX\u0086\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008 \u0010\u0016\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014\u00a8\u0006/"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;",
        "Landroidx/compose/runtime/SnapshotMutationPolicy;",
        "",
        "initialIndices",
        "initialOffsets",
        "fillIndices",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "targetIndex",
        "laneCount",
        "([I[ILkotlin/jvm/functions/Function2;)V",
        "hadFirstNotEmptyLayout",
        "",
        "<set-?>",
        "indices",
        "getIndices",
        "()[I",
        "setIndices",
        "([I)V",
        "indices$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "lastKnownFirstItemKey",
        "",
        "nearestRangeState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;",
        "getNearestRangeState",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;",
        "offsets",
        "getOffsets",
        "setOffsets",
        "offsets$delegate",
        "equivalent",
        "a",
        "b",
        "requestPosition",
        "",
        "index",
        "scrollOffset",
        "update",
        "updateFromMeasureResult",
        "measureResult",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
        "updateScrollPositionIfTheFirstItemWasMoved",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
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
.field private final fillIndices:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private hadFirstNotEmptyLayout:Z

.field private final indices$delegate:Landroidx/compose/runtime/MutableState;

.field private lastKnownFirstItemKey:Ljava/lang/Object;

.field private final nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

.field private final offsets$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>([I[ILkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "[I>;)V"
        }
    .end annotation

    const-string v0, "initialIndices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialOffsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fillIndices"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->fillIndices:Lkotlin/jvm/functions/Function2;

    .line 36
    move-object p3, p0

    check-cast p3, Landroidx/compose/runtime/SnapshotMutationPolicy;

    invoke-static {p1, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->indices$delegate:Landroidx/compose/runtime/MutableState;

    .line 38
    invoke-static {p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->offsets$delegate:Landroidx/compose/runtime/MutableState;

    .line 46
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 47
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->minOrNull([I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p3, 0x5a

    const/16 v0, 0xc8

    .line 46
    invoke-direct {p2, p1, p3, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;-><init>(III)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    return-void
.end method

.method private final setIndices([I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->indices$delegate:Landroidx/compose/runtime/MutableState;

    .line 145
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setOffsets([I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->offsets$delegate:Landroidx/compose/runtime/MutableState;

    .line 148
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final update([I[I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->setIndices([I)V

    .line 126
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->setOffsets([I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->equivalent([I[I)Z

    move-result p0

    return p0
.end method

.method public equivalent([I[I)Z
    .locals 0

    const-string p0, "a"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public final getIndices()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->indices$delegate:Landroidx/compose/runtime/MutableState;

    .line 36
    check-cast p0, Landroidx/compose/runtime/State;

    .line 144
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public final getNearestRangeState()Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    return-object p0
.end method

.method public final getOffsets()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->offsets$delegate:Landroidx/compose/runtime/MutableState;

    .line 38
    check-cast p0, Landroidx/compose/runtime/State;

    .line 147
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public final requestPosition(II)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->fillIndices:Lkotlin/jvm/functions/Function2;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->getIndices()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 91
    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aput p2, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->update([I[I)V

    iget-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 93
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    return-void
.end method

.method public final updateFromMeasureResult(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;)V
    .locals 10

    const-string v0, "measureResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getFirstVisibleItemIndices()[I

    move-result-object v0

    .line 150
    array-length v1, v0

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 151
    aget v2, v0, v1

    .line 152
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->getLastIndex([I)I

    move-result v3

    const/4 v4, 0x1

    const v5, 0x7fffffff

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v2

    .line 155
    :goto_0
    new-instance v8, Lkotlin/ranges/IntRange;

    invoke-direct {v8, v4, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v8}, Lkotlin/ranges/IntRange;->iterator()Lkotlin/collections/IntIterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 156
    aget v8, v0, v8

    if-ne v8, v6, :cond_3

    move v9, v5

    goto :goto_2

    :cond_3
    move v9, v8

    :goto_2
    if-le v7, v9, :cond_2

    move v2, v8

    move v7, v9

    goto :goto_1

    :cond_4
    :goto_3
    if-ne v2, v5, :cond_5

    move v2, v1

    .line 60
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_4
    const/4 v5, 0x0

    if-ge v1, v3, :cond_7

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 166
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    .line 61
    invoke-interface {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result v7

    if-ne v7, v2, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move-object v6, v5

    :goto_5
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    if-eqz v6, :cond_8

    .line 62
    invoke-interface {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getKey()Ljava/lang/Object;

    move-result-object v5

    :cond_8
    iput-object v5, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 63
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->hadFirstNotEmptyLayout:Z

    if-nez v0, :cond_9

    .line 67
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getTotalItemsCount()I

    move-result v0

    if-lez v0, :cond_a

    :cond_9
    iput-boolean v4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->hadFirstNotEmptyLayout:Z

    .line 69
    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .line 175
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    .line 178
    :try_start_0
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getFirstVisibleItemIndices()[I

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->getFirstVisibleItemScrollOffsets()[I

    move-result-object p1

    .line 70
    invoke-direct {p0, v2, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->update([I[I)V

    .line 74
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    :cond_a
    return-void

    :catchall_0
    move-exception p0

    .line 182
    :try_start_3
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 183
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0

    .line 150
    :cond_b
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final updateScrollPositionIfTheFirstItemWasMoved(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;[I)[I
    .locals 3

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indices"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->lastKnownFirstItemKey:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 112
    invoke-static {p2, v1}, Lkotlin/collections/ArraysKt;->getOrNull([II)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    :cond_0
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->findIndexByKey(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;I)I

    move-result p1

    .line 114
    invoke-static {p2, p1}, Lkotlin/collections/ArraysKt;->contains([II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->nearestRangeState:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    .line 115
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->update(I)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->fillIndices:Lkotlin/jvm/functions/Function2;

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [I

    .line 117
    invoke-direct {p0, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->setIndices([I)V

    :cond_1
    return-object p2
.end method
