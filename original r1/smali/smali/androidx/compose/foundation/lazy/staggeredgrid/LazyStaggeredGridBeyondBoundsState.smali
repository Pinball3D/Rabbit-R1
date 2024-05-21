.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;
.super Ljava/lang/Object;
.source "LazyStaggeredGridBeyondBoundsModifier.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0008R\u0014\u0010\u000f\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsState;",
        "state",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V",
        "firstPlacedIndex",
        "",
        "getFirstPlacedIndex",
        "()I",
        "hasVisibleItems",
        "",
        "getHasVisibleItems",
        "()Z",
        "itemCount",
        "getItemCount",
        "lastPlacedIndex",
        "getLastPlacedIndex",
        "getState",
        "()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "remeasure",
        "",
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
.field private final state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    return-void
.end method


# virtual methods
.method public getFirstPlacedIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 72
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getFirstVisibleItemIndex()I

    move-result p0

    return p0
.end method

.method public getHasVisibleItems()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 70
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 68
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getTotalItemsCount()I

    move-result p0

    return p0
.end method

.method public getLastPlacedIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 74
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;->getIndex()I

    move-result p0

    return p0
.end method

.method public final getState()Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    return-object p0
.end method

.method public remeasure()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridBeyondBoundsState;->state:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    .line 64
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->getRemeasurement$foundation_release()Landroidx/compose/ui/layout/Remeasurement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/layout/Remeasurement;->forceRemeasure()V

    :cond_0
    return-void
.end method
