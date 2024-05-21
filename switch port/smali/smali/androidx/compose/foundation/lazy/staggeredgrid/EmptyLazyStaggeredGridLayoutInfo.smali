.class public final Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;
.super Ljava/lang/Object;
.source "LazyStaggeredGridMeasureResult.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u000cX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0014\u0010\u0011\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u001f\u0010\u0013\u001a\u00020\u0014X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0006R\u001a\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLayoutInfo;",
        "()V",
        "afterContentPadding",
        "",
        "getAfterContentPadding",
        "()I",
        "beforeContentPadding",
        "getBeforeContentPadding",
        "mainAxisItemSpacing",
        "getMainAxisItemSpacing",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "totalItemsCount",
        "getTotalItemsCount",
        "viewportEndOffset",
        "getViewportEndOffset",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getViewportSize-YbymL2g",
        "()J",
        "J",
        "viewportStartOffset",
        "getViewportStartOffset",
        "visibleItemsInfo",
        "",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
        "getVisibleItemsInfo",
        "()Ljava/util/List;",
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
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;

.field private static final afterContentPadding:I

.field private static final beforeContentPadding:I

.field private static final mainAxisItemSpacing:I

.field private static final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private static final totalItemsCount:I

.field private static final viewportEndOffset:I

.field private static final viewportSize:J

.field private static final viewportStartOffset:I

.field private static final visibleItemsInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->INSTANCE:Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;

    .line 158
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    .line 160
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->viewportSize:J

    .line 166
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sput-object v0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    sget p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->afterContentPadding:I

    return p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    sget p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->beforeContentPadding:I

    return p0
.end method

.method public getMainAxisItemSpacing()I
    .locals 0

    sget p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->mainAxisItemSpacing:I

    return p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    sget-object p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getTotalItemsCount()I
    .locals 0

    sget p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->totalItemsCount:I

    return p0
.end method

.method public getViewportEndOffset()I
    .locals 0

    sget p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->viewportEndOffset:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->viewportSize:J

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 0

    sget p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->viewportStartOffset:I

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

    sget-object p0, Landroidx/compose/foundation/lazy/staggeredgrid/EmptyLazyStaggeredGridLayoutInfo;->visibleItemsInfo:Ljava/util/List;

    return-object p0
.end method
