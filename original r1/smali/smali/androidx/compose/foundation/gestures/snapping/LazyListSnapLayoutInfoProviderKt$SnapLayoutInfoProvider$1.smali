.class public final Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
.super Ljava/lang/Object;
.source "LazyListSnapLayoutInfoProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListSnapLayoutInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,121:1\n33#2,6:122\n132#2,3:128\n33#2,4:131\n135#2,2:135\n38#2:137\n137#2:138\n*S KotlinDebug\n*F\n+ 1 LazyListSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1\n*L\n71#1:122,6\n99#1:128,3\n99#1:131,4\n99#1:135,2\n99#1:137\n99#1:138\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u000c\u0010\n\u001a\u00020\u0007*\u00020\u0008H\u0016J\u0014\u0010\u000b\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0007H\u0016R\u0014\u0010\u0002\u001a\u00020\u00038BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "androidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "layoutInfo",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "getLayoutInfo",
        "()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
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
.field final synthetic $lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$lazyListState:Landroidx/compose/foundation/lazy/LazyListState;

    .line 52
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateApproachOffset(Landroidx/compose/ui/unit/Density;F)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Landroidx/compose/animation/SplineBasedDecayKt;->splineBasedDecay(Landroidx/compose/ui/unit/Density;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1, p2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->calculateTargetValue(Landroidx/compose/animation/core/DecayAnimationSpec;FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p0

    cmpg-float p1, p0, v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p0, p1

    :goto_0
    return p0
.end method

.method public calculateSnapStepSize(Landroidx/compose/ui/unit/Density;)F
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 99
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 135
    check-cast v3, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 99
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-float p1, v2

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public calculateSnappingOffset(Landroidx/compose/ui/unit/Density;F)F
    .locals 16

    const-string v0, "<this>"

    move-object/from16 v9, p1

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getVisibleItemsInfo()Ljava/util/List;

    move-result-object v0

    move-object/from16 v10, p0

    iget-object v11, v10, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->$positionInLayout:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    .line 123
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

    .line 124
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 125
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 74
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I

    move-result v2

    .line 75
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getBeforeContentPadding()I

    move-result v3

    .line 76
    invoke-direct/range {p0 .. p0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;->getLayoutInfo()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getAfterContentPadding()I

    move-result v4

    .line 77
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getSize()I

    move-result v5

    .line 78
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getOffset()I

    move-result v6

    .line 79
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/LazyListItemInfo;->getIndex()I

    move-result v7

    move-object/from16 v1, p1

    move-object v8, v11

    .line 73
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

    .line 94
    invoke-static {v1, v13, v14}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->calculateFinalOffset(FFF)F

    move-result v0

    return v0
.end method
