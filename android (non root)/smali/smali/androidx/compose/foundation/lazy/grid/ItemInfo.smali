.class final Landroidx/compose/foundation/lazy/grid/ItemInfo;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0007\"\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
        "",
        "crossAxisSize",
        "",
        "crossAxisOffset",
        "(II)V",
        "getCrossAxisOffset",
        "()I",
        "setCrossAxisOffset",
        "(I)V",
        "getCrossAxisSize",
        "setCrossAxisSize",
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

.field private crossAxisSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    iput p2, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    return-void
.end method


# virtual methods
.method public final getCrossAxisOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    return p0
.end method

.method public final getCrossAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    return p0
.end method

.method public final setCrossAxisOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisOffset:I

    return-void
.end method

.method public final setCrossAxisSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/ItemInfo;->crossAxisSize:I

    return-void
.end method
