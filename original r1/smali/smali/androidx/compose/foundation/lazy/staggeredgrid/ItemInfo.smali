.class final Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;
.super Ljava/lang/Object;
.source "LazyStaggeredGridItemPlacementAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0008\"\u0004\u0008\u000e\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;",
        "",
        "lane",
        "",
        "span",
        "crossAxisOffset",
        "(III)V",
        "getCrossAxisOffset",
        "()I",
        "setCrossAxisOffset",
        "(I)V",
        "getLane",
        "setLane",
        "getSpan",
        "setSpan",
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
.field private crossAxisOffset:I

.field private lane:I

.field private span:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->lane:I

    iput p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->span:I

    iput p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->crossAxisOffset:I

    return-void
.end method


# virtual methods
.method public final getCrossAxisOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->crossAxisOffset:I

    return p0
.end method

.method public final getLane()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->lane:I

    return p0
.end method

.method public final getSpan()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->span:I

    return p0
.end method

.method public final setCrossAxisOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->crossAxisOffset:I

    return-void
.end method

.method public final setLane(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->lane:I

    return-void
.end method

.method public final setSpan(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->span:I

    return-void
.end method
