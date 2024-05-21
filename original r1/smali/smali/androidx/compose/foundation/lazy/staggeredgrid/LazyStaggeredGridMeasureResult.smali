.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0086\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019J\t\u0010=\u001a\u00020>H\u0096\u0001R\u0014\u0010\u0017\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u000e0\u001dX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010\u0016\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001bR\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010#R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010(R\u0012\u0010*\u001a\u00020\u000eX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u001bR\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010#R\u0014\u0010\u0018\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u001bR\u0011\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u0014\u0010/\u001a\u000200X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u0010\u001bR\u0014\u0010\u0015\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001bR\u001f\u0010\u0012\u001a\u00020\u0013X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u00107\u001a\u0004\u00085\u00106R\u0014\u0010\u0014\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u001bR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u0010:R\u0012\u0010;\u001a\u00020\u000eX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u001b\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006?"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "firstVisibleItemIndices",
        "",
        "firstVisibleItemScrollOffsets",
        "consumedScroll",
        "",
        "measureResult",
        "canScrollForward",
        "",
        "canScrollBackward",
        "isVertical",
        "totalItemsCount",
        "",
        "visibleItemsInfo",
        "",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "viewportStartOffset",
        "viewportEndOffset",
        "beforeContentPadding",
        "afterContentPadding",
        "mainAxisItemSpacing",
        "([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAfterContentPadding",
        "()I",
        "alignmentLines",
        "",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "getAlignmentLines",
        "()Ljava/util/Map;",
        "getBeforeContentPadding",
        "getCanScrollBackward",
        "()Z",
        "getCanScrollForward",
        "getConsumedScroll",
        "()F",
        "getFirstVisibleItemIndices",
        "()[I",
        "getFirstVisibleItemScrollOffsets",
        "height",
        "getHeight",
        "getMainAxisItemSpacing",
        "getMeasureResult",
        "()Landroidx/compose/ui/layout/MeasureResult;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "getTotalItemsCount",
        "getViewportEndOffset",
        "getViewportSize-YbymL2g",
        "()J",
        "J",
        "getViewportStartOffset",
        "getVisibleItemsInfo",
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
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final canScrollBackward:Z

.field private final canScrollForward:Z

.field private final consumedScroll:F

.field private final firstVisibleItemIndices:[I

.field private final firstVisibleItemScrollOffsets:[I

.field private final isVertical:Z

.field private final mainAxisItemSpacing:I

.field private final measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final totalItemsCount:I

.field private final viewportEndOffset:I

.field private final viewportSize:J

.field private final viewportStartOffset:I

.field private final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[IF",
            "Landroidx/compose/ui/layout/MeasureResult;",
            "ZZZI",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;JIIIII)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p7

    move-object/from16 v5, p9

    const-string v6, "firstVisibleItemIndices"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "firstVisibleItemScrollOffsets"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "measureResult"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "visibleItemsInfo"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemIndices:[I

    iput-object v2, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemScrollOffsets:[I

    move v1, p3

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->consumedScroll:F

    iput-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    move v1, p5

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollForward:Z

    move v1, p6

    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollBackward:Z

    iput-boolean v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->isVertical:Z

    move v1, p8

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->totalItemsCount:I

    iput-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    move-wide/from16 v1, p10

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportSize:J

    move/from16 v1, p12

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportStartOffset:I

    move/from16 v1, p13

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportEndOffset:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->beforeContentPadding:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->afterContentPadding:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->mainAxisItemSpacing:I

    if-eqz v4, :cond_0

    .line 154
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    iput-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method public synthetic constructor <init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p16}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;-><init>([I[IFLandroidx/compose/ui/layout/MeasureResult;ZZZILjava/util/List;JIIIII)V

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->afterContentPadding:I

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

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->beforeContentPadding:I

    return p0
.end method

.method public final getCanScrollBackward()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollBackward:Z

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->canScrollForward:Z

    return p0
.end method

.method public final getConsumedScroll()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->consumedScroll:F

    return p0
.end method

.method public final getFirstVisibleItemIndices()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemIndices:[I

    return-object p0
.end method

.method public final getFirstVisibleItemScrollOffsets()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->firstVisibleItemScrollOffsets:[I

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMainAxisItemSpacing()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->mainAxisItemSpacing:I

    return p0
.end method

.method public final getMeasureResult()Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    return-object p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->totalItemsCount:I

    return p0
.end method

.method public getViewportEndOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportEndOffset:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportSize:J

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->viewportStartOffset:I

    return p0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->visibleItemsInfo:Ljava/util/List;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final isVertical()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->isVertical:Z

    return p0
.end method

.method public placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->measureResult:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
