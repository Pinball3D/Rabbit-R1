.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridCellsKt;
.super Ljava/lang/Object;
.source "LazyStaggeredGridCells.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "calculateCellsCrossAxisSizeImpl",
        "",
        "gridSize",
        "",
        "slotCount",
        "spacing",
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
.method public static final synthetic access$calculateCellsCrossAxisSizeImpl(III)[I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridCellsKt;->calculateCellsCrossAxisSizeImpl(III)[I

    move-result-object p0

    return-object p0
.end method

.method private static final calculateCellsCrossAxisSizeImpl(III)[I
    .locals 4

    add-int/lit8 v0, p1, -0x1

    mul-int/2addr p2, v0

    sub-int/2addr p0, p2

    .line 148
    div-int p2, p0, p1

    .line 149
    rem-int/2addr p0, p1

    .line 150
    new-array v0, p1, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    if-ge v2, p0, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    add-int/2addr v3, p2

    .line 151
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
