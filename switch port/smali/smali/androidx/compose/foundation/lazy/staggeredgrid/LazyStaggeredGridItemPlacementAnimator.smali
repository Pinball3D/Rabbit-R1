.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyStaggeredGridItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,279:1\n268#1,2:294\n270#1,2:297\n268#1,2:334\n270#1,2:338\n268#1,2:340\n270#1,2:343\n268#1,4:345\n101#2,2:280\n33#2,6:282\n103#2:288\n33#2,4:289\n38#2:299\n33#2,6:302\n33#2,6:310\n33#2,6:320\n33#2,6:328\n1#3:293\n86#4:296\n79#4:336\n86#4:337\n79#4:342\n1011#5,2:300\n1002#5,2:308\n1855#5,2:316\n1011#5,2:318\n1002#5,2:326\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator\n*L\n110#1:294,2\n110#1:297,2\n237#1:334,2\n237#1:338,2\n245#1:340,2\n245#1:343,2\n261#1:345,4\n63#1:280,2\n63#1:282,6\n63#1:288\n86#1:289,4\n86#1:299\n129#1:302,6\n139#1:310,6\n183#1:320,6\n196#1:328,6\n112#1:296\n239#1:336\n240#1:337\n251#1:342\n128#1:300,2\n138#1:308,2\n148#1:316,2\n182#1:318,2\n195#1:326,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002JD\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00042\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u0004J\u0006\u0010(\u001a\u00020\u001cJ\u0010\u0010)\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u000fH\u0002J!\u0010*\u001a\u00020\u001c*\u00020\u000f2\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001c0,H\u0082\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000bj\u0008\u0012\u0004\u0012\u00020\u0001`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u00020\u0014*\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018*\u0004\u0018\u00010\u00018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006-"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;",
        "",
        "()V",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "keyToItemInfoMap",
        "",
        "Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;",
        "movingAwayKeys",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z",
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
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
        "isVertical",
        "laneCount",
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
            "Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;",
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
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
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

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 37
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 43
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object p0
.end method

.method private final forEachNode(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 269
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z
    .locals 4

    .line 345
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 346
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

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

    .line 257
    instance-of p0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final initializeNode(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;I)V
    .locals 10

    .line 228
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v6

    .line 230
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v0, v6

    move v3, p2

    .line 231
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-wide v0, v6

    move v2, p2

    .line 233
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v0

    .line 334
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_2

    .line 335
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v4

    .line 336
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

    .line 337
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

    .line 240
    invoke-virtual {v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V
    .locals 9

    .line 340
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 341
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 246
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v3

    .line 247
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v5

    .line 248
    sget-object v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 249
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 342
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

    .line 251
    invoke-virtual {v2, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->animatePlacementDelta--gyyYBs(J)V

    .line 253
    :cond_0
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;ZI)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;",
            "ZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    const-string v5, "positionedItems"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "itemProvider"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    .line 284
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 281
    check-cast v8, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 63
    invoke-direct {v0, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->reset()V

    return-void

    :cond_2
    :goto_1
    iget v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    .line 70
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    iput v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 72
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v8

    iput-object v8, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    if-eqz p6, :cond_4

    move/from16 v8, p3

    goto :goto_3

    :cond_4
    move/from16 v8, p2

    :goto_3
    if-eqz p6, :cond_5

    .line 78
    invoke-static {v6, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    goto :goto_4

    .line 80
    :cond_5
    invoke-static {v1, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v9

    :goto_4
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    iget-object v11, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 84
    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v1, v11}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 290
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    move v11, v6

    :goto_5
    if-ge v11, v1, :cond_d

    .line 291
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 292
    check-cast v13, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    iget-object v14, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 88
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-direct {v0, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)Z

    move-result v14

    if-eqz v14, :cond_c

    iget-object v14, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 90
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    if-nez v14, :cond_9

    iget-object v14, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 93
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 94
    new-instance v6, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v12

    move/from16 p2, v1

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSpan()I

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getCrossAxisOffset()I

    move-result v2

    invoke-direct {v6, v12, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;-><init>(III)V

    invoke-interface {v14, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v7, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 96
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getIndex()I

    move-result v2

    if-eq v2, v1, :cond_7

    if-ge v1, v5, :cond_6

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 99
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 101
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 106
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getOffset-nOcc-ac()J

    move-result-wide v1

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    goto :goto_6

    :cond_8
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v1

    .line 104
    :goto_6
    invoke-direct {v0, v13, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;I)V

    :goto_7
    move-object v12, v7

    move/from16 p3, v8

    goto/16 :goto_9

    :cond_9
    move/from16 p2, v1

    .line 294
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_b

    .line 295
    invoke-virtual {v13, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v0, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v6

    move-object v12, v7

    move/from16 p3, v8

    if-eqz v6, :cond_a

    .line 111
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v7

    sget-object v15, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;

    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v3

    if-nez v3, :cond_a

    .line 112
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v3

    .line 296
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v7, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    .line 112
    invoke-virtual {v6, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, p3

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-object v7, v12

    goto :goto_8

    :cond_b
    move-object v12, v7

    move/from16 p3, v8

    .line 115
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v1

    invoke-virtual {v14, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->setLane(I)V

    .line 116
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getSpan()I

    move-result v1

    invoke-virtual {v14, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->setSpan(I)V

    .line 117
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getCrossAxisOffset()I

    move-result v1

    invoke-virtual {v14, v1}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->setCrossAxisOffset(I)V

    .line 118
    invoke-direct {v0, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    goto :goto_9

    :cond_c
    move/from16 p2, v1

    move-object v12, v7

    move/from16 p3, v8

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 122
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    move/from16 v8, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p7

    move-object v7, v12

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_d
    move v1, v4

    move-object v12, v7

    move/from16 p3, v8

    .line 126
    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_e

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_e
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 127
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 300
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_f

    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;

    move-object v5, v12

    invoke-direct {v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_b

    :cond_f
    move-object v5, v12

    :goto_b
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_10

    .line 304
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 305
    check-cast v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 130
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v8

    aget v9, v2, v8

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v2, v8

    .line 131
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v8

    aget v8, v2, v8

    const/4 v9, 0x0

    rsub-int/lit8 v8, v8, 0x0

    .line 132
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;I)V

    .line 133
    invoke-direct {v0, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v2

    .line 135
    invoke-static/range {v16 .. v21}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_d

    :cond_11
    move-object v5, v12

    :goto_d
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 137
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 308
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_12

    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v4, v5}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_12
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 311
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v4, :cond_13

    .line 312
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 313
    check-cast v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 140
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v8

    aget v8, v2, v8

    add-int v8, p3, v8

    .line 141
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v9

    aget v10, v2, v9

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v11

    add-int/2addr v10, v11

    aput v10, v2, v9

    .line 142
    invoke-direct {v0, v7, v8}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;I)V

    .line 143
    invoke-direct {v0, v7}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_13
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v2

    .line 145
    invoke-static/range {v16 .. v21}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    :cond_14
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 148
    check-cast v1, Ljava/lang/Iterable;

    .line 316
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 151
    invoke-static {v6, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 152
    invoke-interface {v7, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_15

    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 155
    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, p5

    goto :goto_f

    .line 159
    :cond_15
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getLane()I

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getSpan()I

    move-result v6

    invoke-static {v9, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/SpanRange;->constructor-impl(II)J

    move-result-wide v9

    move-object/from16 v6, p5

    .line 157
    invoke-virtual {v6, v7, v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureProvider;->getAndMeasure-jy6DScQ(IJ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    move-result-object v9

    .line 163
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getPlaceablesCount()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10
    if-ge v11, v10, :cond_17

    .line 164
    invoke-virtual {v9, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v13

    invoke-direct {v0, v13}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v13

    if-eqz v13, :cond_16

    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->isAnimationInProgress()Z

    move-result v13

    if-ne v13, v3, :cond_16

    move v12, v3

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_17
    if-nez v12, :cond_18

    .line 169
    invoke-interface {v5, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v10

    if-ne v7, v10, :cond_18

    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 170
    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_18
    iget v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    if-ge v7, v4, :cond_19

    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 173
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 175
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 181
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 318
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1b

    new-instance v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v4, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)V

    check-cast v4, Ljava/util/Comparator;

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1b
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 321
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_1c

    .line 322
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 323
    check-cast v6, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 184
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v7

    aget v8, v2, v7

    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v9

    add-int/2addr v8, v9

    aput v8, v2, v7

    .line 185
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v7

    aget v7, v2, v7

    const/4 v8, 0x0

    rsub-int/lit8 v7, v7, 0x0

    iget-object v9, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 187
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 188
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getCrossAxisOffset()I

    move-result v9

    move/from16 v10, p3

    invoke-virtual {v6, v7, v9, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    move-object/from16 v7, p4

    .line 189
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-direct {v0, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1c
    move/from16 v10, p3

    move-object/from16 v7, p4

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v16, v2

    .line 192
    invoke-static/range {v16 .. v21}, Lkotlin/collections/ArraysKt;->fill$default([IIIIILjava/lang/Object;)V

    goto :goto_12

    :cond_1d
    move/from16 v10, p3

    move-object/from16 v7, p4

    const/4 v8, 0x0

    :goto_12
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 194
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1f

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 326
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v3, :cond_1e

    new-instance v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v3, v0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1e
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    move v6, v8

    :goto_13
    if-ge v6, v3, :cond_1f

    .line 330
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 331
    check-cast v4, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;

    .line 197
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v5

    aget v5, v2, v5

    add-int v8, v10, v5

    .line 198
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getLane()I

    move-result v5

    aget v9, v2, v5

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getMainAxisSize()I

    move-result v11

    add-int/2addr v9, v11

    aput v9, v2, v5

    iget-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 200
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v9}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;

    .line 201
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/staggeredgrid/ItemInfo;->getCrossAxisOffset()I

    move-result v5

    invoke-virtual {v4, v8, v5, v10}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;->position(III)V

    .line 202
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-direct {v0, v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasuredItem;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_1f
    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 207
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 208
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 209
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 210
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 211
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyToItemInfoMap:Ljava/util/Map;

    .line 219
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemPlacementAnimator;->firstVisibleIndex:I

    return-void
.end method
