.class public final Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;
.super Ljava/lang/Object;
.source "RowColumnMeasurementHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0015\n\u0002\u0008\n\u0008\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "",
        "crossAxisSize",
        "",
        "mainAxisSize",
        "startIndex",
        "endIndex",
        "beforeCrossAxisAlignmentLine",
        "mainAxisPositions",
        "",
        "(IIIII[I)V",
        "getBeforeCrossAxisAlignmentLine",
        "()I",
        "getCrossAxisSize",
        "getEndIndex",
        "getMainAxisPositions",
        "()[I",
        "getMainAxisSize",
        "getStartIndex",
        "foundation-layout_release"
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
.field private final beforeCrossAxisAlignmentLine:I

.field private final crossAxisSize:I

.field private final endIndex:I

.field private final mainAxisPositions:[I

.field private final mainAxisSize:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(IIIII[I)V
    .locals 1

    const-string v0, "mainAxisPositions"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    iput p2, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    iput p3, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    iput p4, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    iput p5, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    iput-object p6, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-void
.end method


# virtual methods
.method public final getBeforeCrossAxisAlignmentLine()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->beforeCrossAxisAlignmentLine:I

    return p0
.end method

.method public final getCrossAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->crossAxisSize:I

    return p0
.end method

.method public final getEndIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->endIndex:I

    return p0
.end method

.method public final getMainAxisPositions()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisPositions:[I

    return-object p0
.end method

.method public final getMainAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->mainAxisSize:I

    return p0
.end method

.method public final getStartIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;->startIndex:I

    return p0
.end method
