.class public final Landroidx/compose/foundation/lazy/layout/IntervalListKt;
.super Ljava/lang/Object;
.source "IntervalList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntervalList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntervalList.kt\nandroidx/compose/foundation/lazy/layout/IntervalListKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,216:1\n48#2:217\n523#2:218\n523#2:219\n*S KotlinDebug\n*F\n+ 1 IntervalList.kt\nandroidx/compose/foundation/lazy/layout/IntervalListKt\n*L\n192#1:217\n197#1:218\n206#1:219\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a&\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "binarySearch",
        "",
        "T",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;",
        "itemIndex",
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
.method public static final synthetic access$binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/IntervalListKt;->binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I

    move-result p0

    return p0
.end method

.method private static final binarySearch(Landroidx/compose/runtime/collection/MutableVector;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval<",
            "TT;>;>;I)I"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    sub-int v2, v0, v1

    .line 195
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 218
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v2

    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    .line 197
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    if-ge v3, p1, :cond_2

    add-int/lit8 v1, v2, 0x1

    .line 219
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v1

    .line 206
    check-cast v3, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;->getStartIndex()I

    move-result v3

    if-ge p1, v3, :cond_0

    return v2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method
