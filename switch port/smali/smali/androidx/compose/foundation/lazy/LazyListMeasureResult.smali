.class public final Landroidx/compose/foundation/lazy/LazyListMeasureResult;
.super Ljava/lang/Object;
.source "LazyListMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0008\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0017J\t\u00109\u001a\u00020:H\u0096\u0001R\u0014\u0010\u0015\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u001bX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u0019R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0019R\u0012\u0010(\u001a\u00020\u0006X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u0019R\u0014\u0010\u0016\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0019R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0014\u0010\u0012\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\"R\u0014\u0010\u0011\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0019R\u0014\u0010\u0010\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\u0019R\u001d\u00100\u001a\u0002018VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u0014\u0010\u000f\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u0019R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u0012\u00107\u001a\u00020\u0006X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u00088\u0010\u0019\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006;"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "firstVisibleItem",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "firstVisibleItemScrollOffset",
        "",
        "canScrollForward",
        "",
        "consumedScroll",
        "",
        "measureResult",
        "visibleItemsInfo",
        "",
        "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
        "viewportStartOffset",
        "viewportEndOffset",
        "totalItemsCount",
        "reverseLayout",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "afterContentPadding",
        "mainAxisItemSpacing",
        "(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V",
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
        "getConsumedScroll",
        "()F",
        "getFirstVisibleItem",
        "()Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "getFirstVisibleItemScrollOffset",
        "height",
        "getHeight",
        "getMainAxisItemSpacing",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "getReverseLayout",
        "getTotalItemsCount",
        "getViewportEndOffset",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getViewportSize-YbymL2g",
        "()J",
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
.field private final synthetic $$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

.field private final afterContentPadding:I

.field private final canScrollForward:Z

.field private final consumedScroll:F

.field private final firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

.field private final firstVisibleItemScrollOffset:I

.field private final mainAxisItemSpacing:I

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final reverseLayout:Z

.field private final totalItemsCount:I

.field private final viewportEndOffset:I

.field private final viewportStartOffset:I

.field private final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            "IZF",
            "Landroidx/compose/ui/layout/MeasureResult;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;IIIZ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "II)V"
        }
    .end annotation

    const-string v0, "measureResult"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "visibleItemsInfo"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    iput p4, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    iput p7, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    iput-boolean p10, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->reverseLayout:Z

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput p12, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

    iput p13, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->afterContentPadding:I

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

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getViewportStartOffset()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public final getCanScrollForward()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->canScrollForward:Z

    return p0
.end method

.method public final getConsumedScroll()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->consumedScroll:F

    return p0
.end method

.method public final getFirstVisibleItem()Landroidx/compose/foundation/lazy/LazyListMeasuredItem;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItem:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    return-object p0
.end method

.method public final getFirstVisibleItemScrollOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->firstVisibleItemScrollOffset:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMainAxisItemSpacing()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->mainAxisItemSpacing:I

    return p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->reverseLayout:Z

    return p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->totalItemsCount:I

    return p0
.end method

.method public getViewportEndOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportEndOffset:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->viewportStartOffset:I

    return p0
.end method

.method public getVisibleItemsInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->visibleItemsInfo:Ljava/util/List;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public placeChildren()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->$$delegate_0:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->placeChildren()V

    return-void
.end method
