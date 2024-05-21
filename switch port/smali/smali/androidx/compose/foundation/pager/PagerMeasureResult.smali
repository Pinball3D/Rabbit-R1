.class public final Landroidx/compose/foundation/pager/PagerMeasureResult;
.super Ljava/lang/Object;
.source "PagerMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/pager/PagerLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0087\u0001\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0016\u001a\u00020\u0007\u0012\u0006\u0010\u0017\u001a\u00020\u0010\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0019J\t\u0010>\u001a\u00020?H\u0096\u0001R\u0014\u0010\n\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00070\u001dX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001bR\u0011\u0010\u0017\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u0016\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u001bR\u0012\u0010,\u001a\u00020\u0007X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008-\u0010\u001bR\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0014\u0010\u0008\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u001bR\u0014\u0010\t\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\u001bR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010\u001bR\u0014\u0010\u000f\u001a\u00020\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010$R\u0014\u0010\u000e\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001bR\u001d\u00105\u001a\u0002068VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u00087\u00108R\u0014\u0010\r\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010\u001bR\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010;R\u0012\u0010<\u001a\u00020\u0007X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010\u001b\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "visiblePagesInfo",
        "",
        "Landroidx/compose/foundation/pager/PageInfo;",
        "pagesCount",
        "",
        "pageSize",
        "pageSpacing",
        "afterContentPadding",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "viewportStartOffset",
        "viewportEndOffset",
        "reverseLayout",
        "",
        "consumedScroll",
        "",
        "firstVisiblePage",
        "Landroidx/compose/foundation/pager/MeasuredPage;",
        "closestPageToSnapPosition",
        "firstVisiblePageOffset",
        "canScrollForward",
        "measureResult",
        "(Ljava/util/List;IIIILandroidx/compose/foundation/gestures/Orientation;IIZFLandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/PageInfo;IZLandroidx/compose/ui/layout/MeasureResult;)V",
        "getAfterContentPadding",
        "()I",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "getAlignmentLines",
        "()Ljava/util/Map;",
        "beforeContentPadding",
        "getBeforeContentPadding",
        "getCanScrollForward",
        "()Z",
        "getClosestPageToSnapPosition",
        "()Landroidx/compose/foundation/pager/PageInfo;",
        "getConsumedScroll",
        "()F",
        "getFirstVisiblePage",
        "()Landroidx/compose/foundation/pager/MeasuredPage;",
        "getFirstVisiblePageOffset",
        "height",
        "getHeight",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "getPageSize",
        "getPageSpacing",
        "getPagesCount",
        "getReverseLayout",
        "getViewportEndOffset",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getViewportSize-YbymL2g",
        "()J",
        "getViewportStartOffset",
        "getVisiblePagesInfo",
        "()Ljava/util/List;",
        "width",
        "getWidth",
        "placeChildren",
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
.field private final synthetic $$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

.field private final afterContentPadding:I

.field private final canScrollForward:Z

.field private final closestPageToSnapPosition:Landroidx/compose/foundation/pager/PageInfo;

.field private final consumedScroll:F

.field private final firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

.field private final firstVisiblePageOffset:I

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final pageSize:I

.field private final pageSpacing:I

.field private final pagesCount:I

.field private final reverseLayout:Z

.field private final viewportEndOffset:I

.field private final viewportStartOffset:I

.field private final visiblePagesInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/PageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIIILandroidx/compose/foundation/gestures/Orientation;IIZFLandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/PageInfo;IZLandroidx/compose/ui/layout/MeasureResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/pager/PageInfo;",
            ">;IIII",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "IIZF",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            "Landroidx/compose/foundation/pager/PageInfo;",
            "IZ",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p15

    const-string/jumbo v4, "visiblePagesInfo"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "orientation"

    invoke-static {p6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "measureResult"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    move v1, p2

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pagesCount:I

    move v1, p3

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    move v1, p4

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    move v1, p5

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    iput-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    move v1, p7

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    move v1, p8

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    move v1, p9

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->reverseLayout:Z

    move v1, p10

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->consumedScroll:F

    move-object/from16 v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    move-object/from16 v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->closestPageToSnapPosition:Landroidx/compose/foundation/pager/PageInfo;

    move/from16 v1, p13

    iput v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageOffset:I

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    iput-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->afterContentPadding:I

    return p0
.end method

.method public getAlignmentLines()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    .line 44
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getViewportStartOffset()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->canScrollForward:Z

    return p0
.end method

.method public getClosestPageToSnapPosition()Landroidx/compose/foundation/pager/PageInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->closestPageToSnapPosition:Landroidx/compose/foundation/pager/PageInfo;

    return-object p0
.end method

.method public final getConsumedScroll()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->consumedScroll:F

    return p0
.end method

.method public final getFirstVisiblePage()Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePage:Landroidx/compose/foundation/pager/MeasuredPage;

    return-object p0
.end method

.method public final getFirstVisiblePageOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->firstVisiblePageOffset:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getPageSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSize:I

    return p0
.end method

.method public getPageSpacing()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pageSpacing:I

    return p0
.end method

.method public getPagesCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->pagesCount:I

    return p0
.end method

.method public getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->reverseLayout:Z

    return p0
.end method

.method public getViewportEndOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportEndOffset:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->viewportStartOffset:I

    return p0
.end method

.method public getVisiblePagesInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/PageInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->visiblePagesInfo:Ljava/util/List;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
