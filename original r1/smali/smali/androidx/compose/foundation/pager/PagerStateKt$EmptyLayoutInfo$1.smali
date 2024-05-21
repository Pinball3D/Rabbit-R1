.class public final Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;
.super Ljava/lang/Object;
.source "PagerState.kt"

# interfaces
.implements Landroidx/compose/foundation/pager/PagerLayoutInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PagerStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000;\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0005R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0005R\u0014\u0010\u0012\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0005R\u0014\u0010\u0014\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0005R\u0014\u0010\u0016\u001a\u00020\u0017X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0005R\u001f\u0010\u001c\u001a\u00020\u001dX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010 \u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0005R\u001a\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\t0$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\'"
    }
    d2 = {
        "androidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1",
        "Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "afterContentPadding",
        "",
        "getAfterContentPadding",
        "()I",
        "beforeContentPadding",
        "getBeforeContentPadding",
        "closestPageToSnapPosition",
        "Landroidx/compose/foundation/pager/PageInfo;",
        "getClosestPageToSnapPosition",
        "()Landroidx/compose/foundation/pager/PageInfo;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "getOrientation",
        "()Landroidx/compose/foundation/gestures/Orientation;",
        "pageSize",
        "getPageSize",
        "pageSpacing",
        "getPageSpacing",
        "pagesCount",
        "getPagesCount",
        "reverseLayout",
        "",
        "getReverseLayout",
        "()Z",
        "viewportEndOffset",
        "getViewportEndOffset",
        "viewportSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "getViewportSize-YbymL2g",
        "()J",
        "J",
        "viewportStartOffset",
        "getViewportStartOffset",
        "visiblePagesInfo",
        "",
        "getVisiblePagesInfo",
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


# instance fields
.field private final afterContentPadding:I

.field private final beforeContentPadding:I

.field private final closestPageToSnapPosition:Landroidx/compose/foundation/pager/PageInfo;

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;

.field private final pageSize:I

.field private final pageSpacing:I

.field private final pagesCount:I

.field private final reverseLayout:Z

.field private final viewportEndOffset:I

.field private final viewportSize:J

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
.method constructor <init>()V
    .locals 2

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->visiblePagesInfo:Ljava/util/List;

    .line 664
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->viewportSize:J

    .line 665
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    iput-object v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-void
.end method


# virtual methods
.method public getAfterContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->afterContentPadding:I

    return p0
.end method

.method public getBeforeContentPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->beforeContentPadding:I

    return p0
.end method

.method public getClosestPageToSnapPosition()Landroidx/compose/foundation/pager/PageInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->closestPageToSnapPosition:Landroidx/compose/foundation/pager/PageInfo;

    return-object p0
.end method

.method public getOrientation()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public getPageSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->pageSize:I

    return p0
.end method

.method public getPageSpacing()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->pageSpacing:I

    return p0
.end method

.method public getPagesCount()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->pagesCount:I

    return p0
.end method

.method public getReverseLayout()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->reverseLayout:Z

    return p0
.end method

.method public getViewportEndOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->viewportEndOffset:I

    return p0
.end method

.method public getViewportSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->viewportSize:J

    return-wide v0
.end method

.method public getViewportStartOffset()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->viewportStartOffset:I

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

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;->visiblePagesInfo:Ljava/util/List;

    return-object p0
.end method
