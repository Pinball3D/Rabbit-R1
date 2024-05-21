.class public final Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;
.super Ljava/lang/Object;
.source "LazyStaggeredGridCells.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FixedSize"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0096\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u001c\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;",
        "size",
        "Landroidx/compose/ui/unit/Dp;",
        "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "F",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "calculateCrossAxisCellSizes",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "availableSize",
        "spacing",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final size:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(F)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;->size:F

    return-void
.end method

.method public synthetic constructor <init>(FLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;-><init>(F)V

    return-void
.end method


# virtual methods
.method public calculateCrossAxisCellSizes(Landroidx/compose/ui/unit/Density;II)[I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;->size:F

    .line 123
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    add-int p1, p0, p3

    add-int/2addr p3, p2

    if-ge p1, p3, :cond_0

    .line 125
    div-int/2addr p3, p1

    .line 126
    new-array p1, p3, [I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_1

    aput p0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    filled-new-array {p2}, [I

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 137
    instance-of v0, p1, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;->size:F

    check-cast p1, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;

    iget p1, p1, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;->size:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;->size:F

    .line 133
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    return p0
.end method
