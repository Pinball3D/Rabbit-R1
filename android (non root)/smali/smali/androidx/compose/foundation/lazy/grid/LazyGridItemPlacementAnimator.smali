.class public final Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyGridItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,321:1\n311#1,2:336\n313#1,2:339\n311#1,2:376\n313#1,2:380\n311#1,2:382\n313#1,2:385\n311#1,4:387\n101#2,2:322\n33#2,6:324\n103#2:330\n33#2,4:331\n38#2:341\n33#2,6:344\n33#2,6:352\n33#2,6:362\n33#2,6:370\n1#3:335\n86#4:338\n79#4:378\n86#4:379\n79#4:384\n1011#5,2:342\n1002#5,2:350\n1855#5,2:358\n1011#5,2:360\n1002#5,2:368\n*S KotlinDebug\n*F\n+ 1 LazyGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator\n*L\n110#1:336,2\n110#1:339,2\n280#1:376,2\n280#1:380,2\n288#1:382,2\n288#1:385,2\n304#1:387,4\n63#1:322,2\n63#1:324,6\n63#1:330\n86#1:331,4\n86#1:341\n129#1:344,6\n146#1:352,6\n201#1:362,6\n227#1:370,6\n112#1:338\n282#1:378\n283#1:379\n294#1:384\n128#1:342,2\n145#1:350,2\n160#1:358,2\n200#1:360,2\n226#1:368,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002JD\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u0014J\u0006\u0010)\u001a\u00020\u001cJ\u0010\u0010*\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J!\u0010+\u001a\u00020\u001c*\u00020\u000f2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001c0-H\u0082\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000bj\u0008\u0012\u0004\u0012\u00020\u0001`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018*\u0004\u0018\u00010\u00018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006."
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "",
        "()V",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "keyToItemInfoMap",
        "",
        "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
        "movingAwayKeys",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z",
        "node",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;",
        "getNode",
        "(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;",
        "initializeNode",
        "",
        "item",
        "mainAxisOffset",
        "onMeasured",
        "consumedScroll",
        "layoutWidth",
        "layoutHeight",
        "positionedItems",
        "itemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
        "spanLayoutProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "isVertical",
        "reset",
        "startAnimationsIfNeeded",
        "forEachNode",
        "block",
        "Lkotlin/Function1;",
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
.field private firstVisibleIndex:I

.field private keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final keyToItemInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroidx/compose/foundation/lazy/grid/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayKeys:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 37
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object p0
.end method

.method private final forEachNode(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 312
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z
    .locals 4

    .line 387
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 388
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;
    .locals 0

    .line 300
    instance-of p0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final initializeNode(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;I)V
    .locals 10

    .line 271
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v6

    .line 273
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v0, v6

    move v3, p2

    .line 274
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-wide v0, v6

    move v2, p2

    .line 276
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 376
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    .line 377
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 282
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v4

    .line 378
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v8, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 379
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    add-int/2addr v9, v4

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 283
    invoke-virtual {v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V
    .locals 9

    .line 382
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 383
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 289
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v3

    .line 290
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v5

    .line 291
    sget-object v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 292
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 384
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v8

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    .line 294
    invoke-virtual {v2, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->animatePlacementDelta--gyyYBs(J)V

    .line 296
    :cond_0
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Z)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    const-string v4, "positionedItems"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "itemProvider"

    move-object/from16 v12, p5

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "spanLayoutProvider"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v13, 0x0

    move v5, v13

    :goto_0
    if-ge v5, v4, :cond_1

    .line 326
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 323
    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 63
    invoke-direct {v0, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->reset()V

    return-void

    :cond_2
    :goto_1
    iget v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 70
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v13

    :goto_2
    iput v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    iget-object v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 72
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    if-eqz p7, :cond_4

    move/from16 v15, p3

    goto :goto_3

    :cond_4
    move/from16 v15, p2

    :goto_3
    if-eqz p7, :cond_5

    .line 78
    invoke-static {v13, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    goto :goto_4

    .line 80
    :cond_5
    invoke-static {v1, v13}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v5

    :goto_4
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    iget-object v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 84
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 332
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    move v7, v13

    :goto_5
    if-ge v7, v1, :cond_e

    .line 333
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 334
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 88
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 90
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    if-nez v9, :cond_9

    iget-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 93
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 94
    new-instance v13, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisSize()I

    move-result v11

    move/from16 v17, v1

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisOffset()I

    move-result v1

    invoke-direct {v13, v11, v1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;-><init>(II)V

    invoke-interface {v9, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v1

    const/4 v9, -0x1

    if-eq v1, v9, :cond_7

    .line 96
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v9

    if-eq v9, v1, :cond_7

    if-ge v1, v4, :cond_6

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 99
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_6
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 101
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 106
    :cond_7
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v9

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    goto :goto_6

    :cond_8
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    .line 104
    :goto_6
    invoke-direct {v0, v8, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;I)V

    goto :goto_9

    :cond_9
    move/from16 v17, v1

    .line 336
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v1

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v1, :cond_c

    .line 337
    invoke-virtual {v8, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v0, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v11

    if-eqz v11, :cond_a

    .line 111
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v12

    sget-object v18, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;

    move/from16 p1, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v1

    invoke-static {v12, v13, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_b

    .line 112
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v1

    .line 338
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v12

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v12, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 112
    invoke-virtual {v11, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    goto :goto_8

    :cond_a
    move/from16 p1, v1

    :cond_b
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v12, p5

    goto :goto_7

    .line 115
    :cond_c
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisSize()I

    move-result v1

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setCrossAxisSize(I)V

    .line 116
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getCrossAxisOffset()I

    move-result v1

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->setCrossAxisOffset(I)V

    .line 117
    invoke-direct {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    goto :goto_9

    :cond_d
    move/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 121
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p4

    move-object/from16 v12, p5

    move/from16 v1, v17

    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_e
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 342
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_f

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v2, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_f
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_a
    if-ge v6, v2, :cond_12

    .line 346
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 347
    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz p7, :cond_10

    .line 130
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getRow()I

    move-result v10

    goto :goto_b

    :cond_10
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getColumn()I

    move-result v10

    :goto_b
    const/4 v11, -0x1

    if-eq v10, v11, :cond_11

    if-ne v10, v5, :cond_11

    .line 132
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_c

    :cond_11
    add-int/2addr v7, v8

    .line 135
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v5

    move v8, v5

    move v5, v10

    :goto_c
    rsub-int/lit8 v10, v7, 0x0

    .line 138
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v11

    sub-int/2addr v10, v11

    .line 139
    invoke-direct {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;I)V

    .line 140
    invoke-direct {v0, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_12
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 350
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_13

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v2, v14}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_13
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 353
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    :goto_d
    if-ge v5, v2, :cond_16

    .line 354
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 355
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz p7, :cond_14

    .line 147
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getRow()I

    move-result v10

    goto :goto_e

    :cond_14
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getColumn()I

    move-result v10

    :goto_e
    const/4 v11, -0x1

    if-eq v10, v11, :cond_15

    if-ne v10, v9, :cond_15

    .line 149
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_f

    :cond_15
    add-int/2addr v6, v7

    .line 152
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v7

    move v9, v10

    :goto_f
    add-int v10, v15, v6

    .line 156
    invoke-direct {v0, v8, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;I)V

    .line 157
    invoke-direct {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_16
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 160
    check-cast v1, Ljava/lang/Iterable;

    .line 358
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 163
    invoke-static {v5, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    iget-object v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 164
    invoke-interface {v6, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v12

    const/4 v11, -0x1

    if-ne v12, v11, :cond_17

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 167
    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_17
    const/4 v7, 0x0

    if-eqz p7, :cond_18

    .line 172
    sget-object v6, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisSize()I

    move-result v5

    invoke-virtual {v6, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedWidth-OenEA2s(I)J

    move-result-wide v5

    goto :goto_11

    .line 174
    :cond_18
    sget-object v6, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisSize()I

    move-result v5

    invoke-virtual {v6, v5}, Landroidx/compose/ui/unit/Constraints$Companion;->fixedHeight-OenEA2s(I)J

    move-result-wide v5

    :goto_11
    move-wide v8, v5

    const/4 v10, 0x2

    const/4 v13, 0x0

    move-object/from16 v5, p5

    move v6, v12

    move-object v11, v13

    .line 169
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v5

    .line 179
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getPlaceablesCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    if-ge v7, v6, :cond_1a

    .line 180
    invoke-virtual {v5, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v9

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->isAnimationInProgress()Z

    move-result v9

    if-ne v9, v4, :cond_19

    move v8, v4

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_1a
    if-nez v8, :cond_1b

    .line 185
    invoke-interface {v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v6

    if-ne v12, v6, :cond_1b

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 186
    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_1b
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    if-ge v12, v2, :cond_1c

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 189
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1c
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 191
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1d
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 360
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1e

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1e
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 363
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, -0x1

    :goto_13
    if-ge v5, v2, :cond_20

    .line 364
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 365
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 202
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v9

    invoke-virtual {v3, v9}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1f

    if-ne v9, v11, :cond_1f

    .line 204
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_14

    :cond_1f
    add-int/2addr v6, v7

    .line 207
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v7

    move v11, v9

    :goto_14
    rsub-int/lit8 v9, v6, 0x0

    .line 210
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v12

    sub-int v21, v9, v12

    iget-object v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 212
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 216
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisOffset()I

    move-result v22

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x30

    const/16 v28, 0x0

    move-object/from16 v20, v8

    move/from16 v23, p2

    move/from16 v24, p3

    .line 214
    invoke-static/range {v20 .. v28}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    move-object/from16 v9, p4

    .line 220
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-direct {v0, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_20
    move-object/from16 v9, p4

    const/4 v10, -0x1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 368
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_21

    new-instance v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_21
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 371
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v11, v10

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    :goto_15
    if-ge v13, v2, :cond_23

    .line 372
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 373
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 228
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v6

    if-eq v6, v10, :cond_22

    if-ne v6, v11, :cond_22

    .line 230
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_16

    :cond_22
    add-int v16, v16, v4

    .line 233
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSize()I

    move-result v4

    move v11, v6

    :goto_16
    add-int v18, v15, v16

    iget-object v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 238
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/ItemInfo;

    .line 241
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/ItemInfo;->getCrossAxisOffset()I

    move-result v19

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x30

    const/16 v25, 0x0

    move-object/from16 v17, v5

    move/from16 v20, p2

    move/from16 v21, p3

    .line 239
    invoke-static/range {v17 .. v25}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 246
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-direct {v0, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    :cond_23
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 250
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 251
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 252
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 253
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 254
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 262
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->firstVisibleIndex:I

    return-void
.end method
