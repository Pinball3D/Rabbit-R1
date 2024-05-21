.class public final Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
.super Ljava/lang/Object;
.source "LazyGridSnapLayoutInfoProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridSnapLayoutInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n+ 2 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,144:1\n36#2,3:145\n39#2,2:152\n41#2:155\n33#3,4:148\n38#3:154\n33#3,6:156\n132#3,3:162\n33#3,4:165\n135#3,2:169\n38#3:171\n137#3:172\n132#3,3:173\n33#3,4:176\n135#3,2:180\n38#3:182\n137#3:183\n*S KotlinDebug\n*F\n+ 1 LazyGridSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n*L\n65#1:145,3\n65#1:152,2\n65#1:155\n65#1:148,4\n65#1:154\n79#1:156,6\n112#1:162,3\n112#1:165,4\n112#1:169,2\n112#1:171\n112#1:172\n114#1:173,3\n114#1:176,4\n114#1:180,2\n114#1:182\n114#1:183\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u000b\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u000c\u0010\u000f\u001a\u00020\u000c*\u00020\rH\u0016J\u0014\u0010\u0010\u001a\u00020\u000c*\u00020\r2\u0006\u0010\u0011\u001a\u00020\u000cH\u0016R\u0014\u0010\u0002\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "androidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;",
        "singleAxisItems",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
        "getSingleAxisItems",
        "()Ljava/util/List;",
        "calculateApproachOffset",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "initialVelocity",
        "calculateSnapStepSize",
        "calculateSnappingOffset",
        "currentVelocity",
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
.field final synthetic $lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 50
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getSingleAxisItems()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 65
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyGridState:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 150
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 152
    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 66
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v6

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v7, :cond_0

    .line 67
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getRow()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 69
    :cond_0
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getColumn()I

    move-result v5

    if-nez v5, :cond_1

    .line 152
    :goto_1
    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method


# virtual methods
.method public calculateApproachOffset(Landroidx/compose/ui/unit/Density;F)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p1}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v0

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1, p2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    cmpg-float p1, p0, v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getSingleAxisItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 111
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 112
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getSingleAxisItems()Ljava/util/List;

    move-result-object p1

    .line 166
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 167
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 169
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 112
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getSingleAxisItems()Ljava/util/List;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 178
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 180
    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 114
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    int-to-float p1, v2

    .line 116
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getSingleAxisItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public calculateSnappingOffset(Landroidx/compose/ui/unit/Density;F)F
    .locals 16

    const-string v0, "<this>"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    move-object/from16 v10, p0

    iget-object v11, v10, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v3, 0x0

    move v13, v1

    move v14, v2

    move v15, v3

    :goto_0
    if-ge v15, v12, :cond_2

    .line 158
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 159
    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 82
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)I

    move-result v2

    .line 83
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getBeforeContentPadding()I

    move-result v3

    .line 84
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getAfterContentPadding()I

    move-result v4

    .line 85
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v5

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->sizeOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v5

    .line 86
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v6

    invoke-static {v1, v6}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->offsetOnMainAxis(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    move-result v6

    .line 87
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v7

    move-object/from16 v1, p1

    move-object v8, v11

    .line 81
    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(Landroidx/compose/ui/unit/Density;IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    cmpl-float v3, v1, v13

    if-lez v3, :cond_0

    move v13, v1

    :cond_0
    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    cmpg-float v2, v1, v14

    if-gez v2, :cond_1

    move v14, v1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    move/from16 v1, p2

    .line 102
    invoke-static {v1, v13, v14}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->calculateFinalOffset(FFF)F

    move-result v0

    return v0
.end method
