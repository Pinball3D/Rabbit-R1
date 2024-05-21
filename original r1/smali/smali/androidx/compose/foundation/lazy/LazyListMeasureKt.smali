.class public final Landroidx/compose/foundation/lazy/LazyListMeasureKt;
.super Ljava/lang/Object;
.source "LazyListMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n*L\n1#1,476:1\n33#2,6:477\n33#2,6:483\n33#2,6:489\n33#2,4:498\n38#2:504\n33#2,6:506\n33#2,6:512\n33#2,6:518\n33#2,6:524\n33#2,6:530\n36#3,3:495\n39#3,2:502\n41#3:505\n*S KotlinDebug\n*F\n+ 1 LazyListMeasure.kt\nandroidx/compose/foundation/lazy/LazyListMeasureKt\n*L\n146#1:477,6\n240#1:483,6\n254#1:489,6\n321#1:498,4\n321#1:504\n352#1:506,6\n379#1:512,6\n455#1:518,6\n462#1:524,6\n468#1:530,6\n321#1:495,3\n321#1:502,2\n321#1:505\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u008c\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u001aB\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002\u001a4\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0004H\u0002\u001a\u00ee\u0001\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u00082\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\u00082\u0006\u0010&\u001a\u00020\u00082\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010\r\u001a\u00020\u000e2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010,\u001a\u00020-2\u0006\u0010\u001b\u001a\u00020\u00082\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042/\u0010.\u001a+\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u0008\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u000201\u0012\u0004\u0012\u00020200\u00a2\u0006\u0002\u00083\u0012\u0004\u0012\u0002040/H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00085\u00106\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00067"
    }
    d2 = {
        "calculateItemsOffsets",
        "",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
        "items",
        "",
        "extraItemsBefore",
        "extraItemsAfter",
        "layoutWidth",
        "",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "itemsScrollOffset",
        "isVertical",
        "",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createItemsAfterList",
        "visibleItems",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
        "itemsCount",
        "beyondBoundsItemCount",
        "pinnedItems",
        "createItemsBeforeList",
        "currentFirstItemIndex",
        "measureLazyList",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenItems",
        "firstVisibleItemIndex",
        "firstVisibleItemScrollOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "headerIndexes",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
        "layout",
        "Lkotlin/Function3;",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyList-CD5nmq0",
        "(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;ILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p9

    move/from16 v4, p11

    move/from16 v5, p6

    if-eqz p8, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 408
    :goto_0
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move/from16 v8, p5

    if-ge v8, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    if-eqz v5, :cond_3

    if-nez p7, :cond_2

    goto :goto_2

    .line 410
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_3
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v5, :cond_e

    .line 417
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 419
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 423
    new-array v9, v5, [I

    move v10, v7

    :goto_3
    if-ge v10, v5, :cond_4

    .line 424
    invoke-static {v10, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v11

    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 426
    :cond_4
    new-array v10, v5, [I

    move v11, v7

    :goto_4
    if-ge v11, v5, :cond_5

    aput v7, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    const-string v7, "Required value was null."

    if-eqz p8, :cond_7

    if-eqz v3, :cond_6

    move-object/from16 v11, p12

    .line 429
    invoke-interface {v3, v11, v6, v9, v10}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_5

    .line 428
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v11, p12

    if-eqz p10, :cond_c

    .line 434
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v6

    move-object/from16 p8, v9

    move-object/from16 p9, v3

    move-object/from16 p10, v10

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 439
    :goto_5
    invoke-static {v10}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 440
    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_9

    if-le v7, v9, :cond_a

    :cond_9
    if-gez v3, :cond_11

    if-gt v9, v7, :cond_11

    .line 441
    :cond_a
    :goto_7
    aget v11, v10, v7

    .line 443
    invoke-static {v7, v4, v5}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v12

    invoke-interface {p0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v4, :cond_b

    sub-int v11, v6, v11

    .line 446
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSize()I

    move-result v13

    sub-int/2addr v11, v13

    .line 450
    :cond_b
    invoke-virtual {v12, v11, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 451
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v7, v9, :cond_11

    add-int/2addr v7, v3

    goto :goto_7

    .line 432
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p7

    move v4, v7

    :goto_8
    if-ge v4, v3, :cond_f

    move-object v6, p1

    .line 520
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 521
    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 456
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v10

    sub-int/2addr v5, v10

    .line 457
    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 458
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 525
    :cond_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p7

    move v5, v7

    :goto_9
    if-ge v5, v3, :cond_10

    .line 526
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 527
    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 463
    invoke-virtual {v6, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 464
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 531
    :cond_10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v7, v0, :cond_11

    move-object/from16 v3, p2

    .line 532
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 533
    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 469
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->position(III)V

    .line 470
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 474
    :cond_11
    check-cast v8, Ljava/util/List;

    return-object v8
.end method

.method private static final calculateItemsOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method private static final createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 343
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 p2, p2, -0x1

    .line 345
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 347
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const/4 p3, 0x0

    if-gt p0, p2, :cond_1

    :goto_0
    if-nez p3, :cond_0

    .line 348
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 349
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p2, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 507
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_4

    .line 508
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 509
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v1, p2, :cond_3

    if-nez p3, :cond_2

    .line 354
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/List;

    .line 355
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    .line 359
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p3

    :cond_5
    return-object p3
.end method

.method private static final createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItem;",
            ">;"
        }
    .end annotation

    sub-int p2, p0, p2

    const/4 v0, 0x0

    .line 372
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    if-gt p2, p0, :cond_1

    :goto_0
    if-nez v1, :cond_0

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 376
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p2, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 513
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-ge v0, p0, :cond_4

    .line 514
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 515
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v2, p2, :cond_3

    if-nez v1, :cond_2

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 382
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 386
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static final measureLazyList-CD5nmq0(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;ILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;+",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;)",
            "Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
        }
    .end annotation

    move/from16 v9, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v6, p3

    move-wide/from16 v0, p9

    move-object/from16 v5, p12

    move/from16 v2, p18

    move-object/from16 v3, p19

    move-object/from16 v4, p20

    const-string v10, "measuredItemProvider"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "headerIndexes"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "density"

    move-object/from16 v15, p16

    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "placementAnimator"

    move-object/from16 v14, p17

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "pinnedItems"

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "layout"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Failed requirement."

    if-ltz v6, :cond_24

    if-ltz p4, :cond_23

    if-gtz v9, :cond_1

    .line 66
    new-instance v14, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 71
    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p9 .. p10}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;->INSTANCE:Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$1;

    invoke-interface {v4, v9, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/compose/ui/layout/MeasureResult;

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    neg-int v11, v6

    add-int v8, v8, p4

    const/4 v12, 0x0

    if-eqz p11, :cond_0

    .line 77
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object v13, v0

    move-object v0, v14

    move-object v1, v2

    move v2, v3

    move v3, v5

    move v4, v7

    move-object v5, v9

    move-object v6, v10

    move v7, v11

    move v9, v12

    move/from16 v10, p15

    move-object v11, v13

    move/from16 v12, p4

    move/from16 v13, p5

    .line 66
    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v14

    :cond_1
    move/from16 v11, p6

    if-lt v11, v9, :cond_2

    add-int/lit8 v11, v9, -0x1

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    move/from16 v12, p7

    .line 92
    :goto_1
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v16

    sub-int v12, v12, v16

    if-nez v11, :cond_3

    if-gez v12, :cond_3

    add-int v16, v16, v12

    const/4 v12, 0x0

    .line 105
    :cond_3
    new-instance v13, Lkotlin/collections/ArrayDeque;

    invoke-direct {v13}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v5, v6

    if-gez p5, :cond_4

    move/from16 v18, p5

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    :goto_2
    add-int v4, v5, v18

    add-int/2addr v12, v4

    move/from16 p6, v5

    const/4 v5, 0x0

    :goto_3
    if-gez v12, :cond_5

    if-lez v11, :cond_5

    add-int/lit8 v11, v11, -0x1

    .line 124
    invoke-virtual {v7, v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v14

    move/from16 p7, v11

    const/4 v11, 0x0

    .line 125
    invoke-virtual {v13, v11, v14}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 127
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v11

    add-int/2addr v12, v11

    move/from16 v11, p7

    move-object/from16 v14, p17

    goto :goto_3

    :cond_5
    if-ge v12, v4, :cond_6

    add-int v16, v16, v12

    move v12, v4

    :cond_6
    sub-int/2addr v12, v4

    add-int v14, v8, p4

    move/from16 v18, v5

    move/from16 p7, v11

    const/4 v5, 0x0

    .line 142
    invoke-static {v14, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v11

    neg-int v5, v12

    move/from16 v19, v5

    .line 146
    move-object v5, v13

    check-cast v5, Ljava/util/List;

    move/from16 v20, v12

    .line 478
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    move/from16 v22, p7

    move/from16 v21, v14

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_7

    .line 479
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    .line 480
    check-cast v23, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    add-int/lit8 v22, v22, 0x1

    .line 148
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v23

    add-int v19, v19, v23

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    move/from16 v12, v18

    move/from16 v14, v19

    move/from16 v15, v22

    :goto_5
    if-ge v15, v9, :cond_b

    if-lt v14, v11, :cond_8

    if-lez v14, :cond_8

    .line 157
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_8
    move/from16 v18, v11

    .line 159
    invoke-virtual {v7, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v11

    .line 160
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v19

    add-int v14, v14, v19

    if-gt v14, v4, :cond_9

    move/from16 v19, v4

    add-int/lit8 v4, v9, -0x1

    if-eq v15, v4, :cond_a

    add-int/lit8 v4, v15, 0x1

    .line 165
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v11

    sub-int v20, v20, v11

    goto :goto_6

    :cond_9
    move/from16 v19, v4

    .line 167
    :cond_a
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v4

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 168
    invoke-virtual {v13, v11}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v12, v4

    move/from16 v4, p7

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move/from16 p7, v4

    move/from16 v11, v18

    move/from16 v4, v19

    goto :goto_5

    :cond_b
    if-ge v14, v8, :cond_e

    sub-int v4, v8, v14

    sub-int v20, v20, v4

    add-int/2addr v14, v4

    move/from16 v18, p7

    move/from16 v11, v20

    :goto_7
    if-ge v11, v6, :cond_c

    if-lez v18, :cond_c

    move/from16 v19, v15

    add-int/lit8 v15, v18, -0x1

    move-object/from16 v22, v10

    .line 184
    invoke-virtual {v7, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v10

    move/from16 p7, v15

    const/4 v15, 0x0

    .line 185
    invoke-virtual {v13, v15, v10}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 186
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v15

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 187
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v10

    add-int/2addr v11, v10

    move/from16 v18, p7

    move/from16 v15, v19

    move-object/from16 v10, v22

    goto :goto_7

    :cond_c
    move-object/from16 v22, v10

    move/from16 v19, v15

    add-int v16, v16, v4

    if-gez v11, :cond_d

    add-int v16, v16, v11

    add-int/2addr v14, v11

    move v4, v14

    move/from16 v10, v16

    move/from16 v14, v18

    const/4 v11, 0x0

    goto :goto_8

    :cond_d
    move v4, v14

    move/from16 v10, v16

    move/from16 v14, v18

    goto :goto_8

    :cond_e
    move-object/from16 v22, v10

    move/from16 v19, v15

    move v4, v14

    move/from16 v10, v16

    move/from16 v11, v20

    move/from16 v14, p7

    .line 202
    :goto_8
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v15

    invoke-static {v15}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v15

    move/from16 p7, v12

    invoke-static {v10}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v12

    if-ne v15, v12, :cond_f

    .line 203
    invoke-static/range {p8 .. p8}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-lt v12, v15, :cond_f

    int-to-float v10, v10

    move v15, v10

    goto :goto_9

    :cond_f
    move/from16 v15, p8

    :goto_9
    if-ltz v11, :cond_22

    neg-int v12, v11

    .line 213
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v6, :cond_11

    if-gez p5, :cond_10

    goto :goto_a

    :cond_10
    move-object v6, v10

    move/from16 v23, v11

    move/from16 v16, v12

    goto :goto_c

    .line 218
    :cond_11
    :goto_a
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v6

    move-object/from16 p8, v10

    move v10, v11

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v6, :cond_12

    .line 219
    invoke-virtual {v13, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v18, v6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getSizeWithSpacings()I

    move-result v6

    if-eqz v10, :cond_12

    if-gt v6, v10, :cond_12

    move/from16 v16, v12

    .line 221
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v12

    if-eq v11, v12, :cond_13

    sub-int/2addr v10, v6

    add-int/lit8 v11, v11, 0x1

    .line 224
    invoke-virtual {v13, v11}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-object/from16 p8, v6

    move/from16 v12, v16

    move/from16 v6, v18

    goto :goto_b

    :cond_12
    move/from16 v16, v12

    :cond_13
    move-object/from16 v6, p8

    move/from16 v23, v10

    .line 232
    :goto_c
    invoke-static {v14, v7, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsBeforeList(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;ILjava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 484
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v14, p7

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v10, :cond_14

    .line 485
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 486
    check-cast v18, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 p7, v10

    .line 241
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v10

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v10, p7

    goto :goto_d

    .line 245
    :cond_14
    invoke-static {v5, v7, v9, v2, v3}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->createItemsAfterList(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 490
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_15

    .line 491
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 492
    check-cast v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 255
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getCrossAxisSize()I

    move-result v10

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 258
    :cond_15
    invoke-virtual {v13}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v24, 0x1

    if-eqz v2, :cond_16

    .line 259
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 260
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    move/from16 v25, v24

    goto :goto_f

    :cond_16
    const/16 v25, 0x0

    :goto_f
    if-eqz p11, :cond_17

    move v2, v14

    goto :goto_10

    :cond_17
    move v2, v4

    .line 263
    :goto_10
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v26

    if-eqz p11, :cond_18

    move v14, v4

    .line 265
    :cond_18
    invoke-static {v0, v1, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v27

    move-object v10, v5

    move/from16 v0, v16

    move-object/from16 v29, v13

    const/16 v28, 0x0

    move/from16 v13, v26

    move/from16 v30, v21

    move/from16 v14, v27

    move v3, v15

    move/from16 v5, v19

    move v15, v4

    move/from16 v16, p2

    move/from16 v17, v0

    move/from16 v18, p11

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move/from16 v21, p15

    move-object/from16 v22, p16

    .line 267
    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v10

    float-to-int v1, v3

    move-object/from16 v0, p17

    move/from16 v2, v26

    move v11, v3

    move/from16 v3, v27

    move-object/from16 v12, p20

    move v14, v4

    move-object v4, v10

    move/from16 v13, p6

    move v15, v5

    move-object/from16 v5, p1

    move-object/from16 v16, v6

    move/from16 v6, p11

    .line 283
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;Z)V

    .line 292
    move-object/from16 v0, p12

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p12

    move/from16 v3, p3

    move/from16 v4, v26

    move/from16 v5, v27

    .line 293
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListHeadersKt;->findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v0

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    if-lt v15, v9, :cond_1b

    if-le v14, v8, :cond_1a

    goto :goto_12

    :cond_1a
    move/from16 v3, v28

    goto :goto_13

    :cond_1b
    :goto_12
    move/from16 v3, v24

    .line 310
    :goto_13
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$5;

    invoke-direct {v4, v10, v0}, Landroidx/compose/foundation/lazy/LazyListMeasureKt$measureLazyList$5;-><init>(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyListMeasuredItem;)V

    invoke-interface {v12, v1, v2, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/compose/ui/layout/MeasureResult;

    if-eqz v25, :cond_1c

    move-object v6, v10

    goto :goto_15

    .line 496
    :cond_1c
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 499
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v4, v28

    :goto_14
    if-ge v4, v2, :cond_20

    .line 500
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 502
    move-object v7, v6

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 322
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v12

    if-lt v8, v12, :cond_1d

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v8

    invoke-virtual/range {v29 .. v29}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->getIndex()I

    move-result v12

    if-le v8, v12, :cond_1e

    :cond_1d
    if-ne v7, v0, :cond_1f

    .line 502
    :cond_1e
    move-object v7, v1

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 505
    :cond_20
    check-cast v1, Ljava/util/List;

    move-object v6, v1

    :goto_15
    if-eqz p11, :cond_21

    .line 327
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_16

    :cond_21
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_16
    move-object v12, v0

    .line 305
    new-instance v14, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-object v0, v14

    move-object/from16 v1, v16

    move/from16 v2, v23

    move v4, v11

    move v7, v13

    move/from16 v8, v30

    move/from16 v9, p0

    move/from16 v10, p15

    move-object v11, v12

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v14

    .line 211
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    move-object/from16 v22, v10

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v22, v10

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
