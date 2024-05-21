.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;
.super Ljava/lang/Object;
.source "LazyLayoutBeyondBoundsState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutBeyondBoundsState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutBeyondBoundsState.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,62:1\n33#2,6:63\n*S KotlinDebug\n*F\n+ 1 LazyLayoutBeyondBoundsState.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt\n*L\n50#1:63,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\"\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "calculateLazyLayoutPinnedIndices",
        "",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
        "pinnedItemList",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
        "beyondBoundsInfo",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinnedItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beyondBoundsInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->hasIntervals()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 45
    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->hasIntervals()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v1, Lkotlin/ranges/IntRange;

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->getStart()I

    move-result v2

    invoke-virtual {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;->getEnd()I

    move-result p2

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-direct {v1, v2, p2}, Lkotlin/ranges/IntRange;-><init>(II)V

    goto :goto_0

    .line 48
    :cond_1
    sget-object p2, Lkotlin/ranges/IntRange;->Companion:Lkotlin/ranges/IntRange$Companion;

    invoke-virtual {p2}, Lkotlin/ranges/IntRange$Companion;->getEMPTY()Lkotlin/ranges/IntRange;

    move-result-object v1

    .line 50
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_4

    .line 65
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 66
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;

    .line 51
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList$PinnedItem;->getIndex()I

    move-result v3

    invoke-static {p0, v4, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->findIndexByKey(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;I)I

    move-result v3

    .line 52
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result v4

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result v5

    if-gt v3, v5, :cond_2

    if-gt v4, v3, :cond_2

    goto :goto_2

    :cond_2
    if-ltz v3, :cond_3

    .line 53
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getFirst()I

    move-result p0

    invoke-virtual {v1}, Lkotlin/ranges/IntRange;->getLast()I

    move-result p1

    if-gt p0, p1, :cond_5

    .line 57
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p1, :cond_5

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_5
    return-object v0
.end method
