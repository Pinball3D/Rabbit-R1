.class public final Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;
.super Ljava/lang/Object;
.source "LazyListItemPlacementAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListItemPlacementAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,251:1\n246#1,2:266\n248#1,2:270\n246#1,2:307\n248#1,2:312\n246#1,2:314\n248#1,2:318\n246#1,2:320\n248#1,2:323\n101#2,2:252\n33#2,6:254\n103#2:260\n33#2,4:261\n38#2:272\n33#2,6:275\n33#2,6:283\n33#2,6:293\n33#2,6:301\n1#3:265\n1#3:268\n1#3:309\n1#3:316\n1#3:322\n86#4:269\n79#4:310\n86#4:311\n79#4:317\n1011#5,2:273\n1002#5,2:281\n1855#5,2:289\n1011#5,2:291\n1002#5,2:299\n*S KotlinDebug\n*F\n+ 1 LazyListItemPlacementAnimator.kt\nandroidx/compose/foundation/lazy/LazyListItemPlacementAnimator\n*L\n105#1:266,2\n105#1:270,2\n215#1:307,2\n215#1:312,2\n223#1:314,2\n223#1:318,2\n239#1:320,2\n239#1:323,2\n61#1:252,2\n61#1:254,6\n61#1:260\n84#1:261,4\n84#1:272\n120#1:275,6\n128#1:283,6\n166#1:293,6\n176#1:301,6\n105#1:268\n215#1:309\n223#1:316\n239#1:322\n107#1:269\n217#1:310\n218#1:311\n229#1:317\n119#1:273,2\n127#1:281,2\n135#1:289,2\n165#1:291,2\n175#1:299,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u0006H\u0002J<\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020\u001bJ\u0010\u0010\'\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000eH\u0002JE\u0010(\u001a\u00020\u001b*\u00020\u000e26\u0010)\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(-\u0012\u0013\u0012\u00110\u0017\u00a2\u0006\u000c\u0008+\u0012\u0008\u0008,\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u001b0*H\u0082\u0008R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00010\nj\u0008\u0012\u0004\u0012\u00020\u0001`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u000e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017*\u0004\u0018\u00010\u00018BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006."
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "",
        "()V",
        "activeKeys",
        "",
        "firstVisibleIndex",
        "",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "movingAwayKeys",
        "Ljava/util/LinkedHashSet;",
        "Lkotlin/collections/LinkedHashSet;",
        "movingAwayToEndBound",
        "",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "movingAwayToStartBound",
        "movingInFromEndBound",
        "movingInFromStartBound",
        "hasAnimations",
        "",
        "getHasAnimations",
        "(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z",
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
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "isVertical",
        "reset",
        "startAnimationsIfNeeded",
        "forEachNode",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "placeableIndex",
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
.field private final activeKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private firstVisibleIndex:I

.field private keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

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
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingAwayToStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromEndBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field

.field private final movingInFromStartBound:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 36
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 42
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getKeyIndexMap$p(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 0

    .line 31
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object p0
.end method

.method private final forEachNode(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 247
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z
    .locals 4

    .line 320
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 321
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

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

    .line 235
    instance-of p0, p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final initializeNode(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;I)V
    .locals 10

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v7

    .line 208
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide v1, v7

    move v4, p2

    .line 209
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-wide v1, v7

    move v3, p2

    .line 211
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/IntOffset;->copy-iSbpLlY$default(JIIILjava/lang/Object;)J

    move-result-wide v1

    .line 307
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result p2

    :goto_1
    if-ge v0, p2, :cond_2

    .line 308
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 217
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v4

    .line 310
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    sub-int/2addr v6, v9

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v6, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 311
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v6

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v9

    add-int/2addr v6, v9

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v9

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    add-int/2addr v9, v4

    invoke-static {v6, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v4

    .line 218
    invoke-virtual {v3, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V
    .locals 9

    .line 314
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 315
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v3

    .line 225
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v5

    .line 226
    sget-object v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 227
    invoke-static {v5, v6, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 317
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

    .line 229
    invoke-virtual {v2, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->animatePlacementDelta--gyyYBs(J)V

    .line 231
    :cond_0
    invoke-virtual {v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "positionedItems"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "itemProvider"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_1

    .line 256
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 253
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 61
    invoke-direct {v0, v9}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->reset()V

    return-void

    :cond_2
    :goto_1
    iget v6, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->firstVisibleIndex:I

    .line 68
    invoke-static/range {p4 .. p4}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    iput v8, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->firstVisibleIndex:I

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 70
    invoke-virtual/range {p5 .. p5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v9

    iput-object v9, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    if-eqz p6, :cond_4

    move v9, v3

    goto :goto_3

    :cond_4
    move v9, v2

    :goto_3
    if-eqz p6, :cond_5

    .line 76
    invoke-static {v7, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v10

    goto :goto_4

    .line 78
    :cond_5
    invoke-static {v1, v7}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v10

    :goto_4
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 82
    check-cast v12, Ljava/util/Collection;

    invoke-virtual {v1, v12}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 262
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    move v12, v7

    :goto_5
    const/4 v13, -0x1

    if-ge v12, v1, :cond_d

    .line 263
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 264
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 86
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    invoke-direct {v0, v14}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getHasAnimations(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 88
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 89
    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v7

    if-eq v7, v13, :cond_7

    .line 91
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v13

    if-eq v13, v7, :cond_7

    if-ge v7, v6, :cond_6

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 94
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_6
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 96
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    .line 101
    invoke-virtual {v14, v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getOffset-Bjo55l4(I)J

    move-result-wide v15

    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->isVertical()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v13

    goto :goto_6

    :cond_8
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v13

    .line 99
    :goto_6
    invoke-direct {v0, v14, v13}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;I)V

    :goto_7
    move/from16 p1, v1

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    .line 266
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v13

    move v15, v7

    :goto_8
    if-ge v15, v13, :cond_b

    .line 267
    invoke-virtual {v14, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v0, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v7

    move/from16 p1, v1

    if-eqz v7, :cond_a

    .line 106
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v1

    sget-object v17, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$Companion;->getNotInitialized-nOcc-ac()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_a

    .line 107
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getRawOffset-nOcc-ac()J

    move-result-wide v1

    .line 269
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v3

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v1

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v3, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    .line 107
    invoke-virtual {v7, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->setRawOffset--gyyYBs(J)V

    :cond_a
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x0

    goto :goto_8

    :cond_b
    move/from16 p1, v1

    .line 110
    invoke-direct {v0, v14}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    goto :goto_9

    :cond_c
    move/from16 p1, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 114
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_d
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 273
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;

    invoke-direct {v2, v8}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_e
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 276
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_a
    if-ge v4, v2, :cond_f

    .line 277
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 278
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 121
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v10

    add-int/2addr v6, v10

    rsub-int/lit8 v10, v6, 0x0

    .line 123
    invoke-direct {v0, v7, v10}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;I)V

    .line 124
    invoke-direct {v0, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_f
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 281
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_10

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortBy$1;

    invoke-direct {v2, v8}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortBy$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_10
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_b
    if-ge v4, v2, :cond_11

    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 286
    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    add-int v10, v9, v6

    .line 130
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v11

    add-int/2addr v6, v11

    .line 131
    invoke-direct {v0, v7, v10}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->initializeNode(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;I)V

    .line 132
    invoke-direct {v0, v7}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_11
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 135
    check-cast v1, Ljava/lang/Iterable;

    .line 289
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 138
    invoke-interface {v4, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v13, :cond_12

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 141
    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 143
    :cond_12
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v6

    .line 146
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getPlaceablesCount()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    if-ge v10, v7, :cond_14

    .line 147
    invoke-virtual {v6, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getParentData(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {v0, v12}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->getNode(Ljava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->isAnimationInProgress()Z

    move-result v12

    if-ne v12, v3, :cond_13

    move v11, v3

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_14
    if-nez v11, :cond_15

    .line 152
    invoke-interface {v8, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result v7

    if-ne v4, v7, :cond_15

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 153
    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->firstVisibleIndex:I

    if-ge v4, v2, :cond_16

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 156
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 158
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 291
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_18

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortByDescending$2;-><init>(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_18
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v4, v2, :cond_19

    .line 295
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 296
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 167
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v7

    add-int/2addr v5, v7

    rsub-int/lit8 v7, v5, 0x0

    move/from16 v8, p2

    move/from16 v10, p3

    .line 170
    invoke-virtual {v6, v7, v8, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    move-object/from16 v7, p4

    .line 171
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-direct {v0, v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_19
    move/from16 v8, p2

    move/from16 v10, p3

    move-object/from16 v7, p4

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 299
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_1a

    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortBy$2;

    invoke-direct {v2, v0}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator$onMeasured$$inlined$sortBy$2;-><init>(Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;)V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1a
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 302
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_f
    if-ge v3, v2, :cond_1b

    .line 303
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 304
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    add-int v5, v9, v16

    .line 178
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v6

    add-int v16, v16, v6

    .line 180
    invoke-virtual {v4, v5, v8, v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 181
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-direct {v0, v4}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->startAnimationsIfNeeded(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1b
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromStartBound:Ljava/util/List;

    .line 185
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingInFromEndBound:Ljava/util/List;

    .line 186
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToStartBound:Ljava/util/List;

    .line 187
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayToEndBound:Ljava/util/List;

    .line 188
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->movingAwayKeys:Ljava/util/LinkedHashSet;

    .line 189
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->activeKeys:Ljava/util/Set;

    .line 197
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 198
    sget-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->Empty:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap$Empty;

    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->firstVisibleIndex:I

    return-void
.end method
