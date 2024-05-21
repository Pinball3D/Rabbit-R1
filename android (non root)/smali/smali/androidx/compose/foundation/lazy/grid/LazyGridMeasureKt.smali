.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;
.super Ljava/lang/Object;
.source "LazyGridMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGridMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n*L\n1#1,416:1\n310#1,3:423\n313#1,12:430\n326#1:443\n310#1,3:444\n313#1,12:451\n326#1:464\n33#2,6:417\n33#2,4:426\n38#2:442\n33#2,4:447\n38#2:463\n33#2,4:468\n38#2:474\n33#2,6:476\n132#2,3:482\n33#2,4:485\n135#2,2:489\n38#2:491\n137#2:492\n33#2,6:493\n33#2,6:499\n33#2,6:505\n36#3,3:465\n39#3,2:472\n41#3:475\n*S KotlinDebug\n*F\n+ 1 LazyGridMeasure.kt\nandroidx/compose/foundation/lazy/grid/LazyGridMeasureKt\n*L\n210#1:423,3\n210#1:430,12\n210#1:443\n217#1:444,3\n217#1:451,12\n217#1:464\n138#1:417,6\n210#1:426,4\n210#1:442\n217#1:447,4\n217#1:463\n290#1:468,4\n290#1:474\n312#1:476,6\n353#1:482,3\n353#1:485,4\n353#1:489,2\n353#1:491\n353#1:492\n396#1:493,6\n403#1:499,6\n408#1:505,6\n290#1:465,3\n290#1:472,2\n290#1:475\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aP\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u00082\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0008H\u0083\u0008\u00f8\u0001\u0000\u001a\u008c\u0001\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002\u001a\u00e8\u0001\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00042\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u000b2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00012/\u00101\u001a+\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u000203\u0012\u0004\u0012\u0002040\u0008\u00a2\u0006\u0002\u00085\u0012\u0004\u0012\u00020602H\u0000\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00087\u00108\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u00069"
    }
    d2 = {
        "calculateExtraItems",
        "",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "pinnedItems",
        "",
        "measuredItemProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
        "itemConstraints",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/unit/Constraints;",
        "filter",
        "",
        "calculateItemsOffsets",
        "",
        "lines",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
        "itemsBefore",
        "itemsAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "firstLineScrollOffset",
        "isVertical",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "measureLazyGrid",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "itemsCount",
        "measuredLineProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "spaceBetweenLines",
        "firstVisibleLineIndex",
        "firstVisibleLineScrollOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "placementAnimator",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
        "spanLayoutProvider",
        "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
        "layout",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measureLazyGrid-ZRKPzZ8",
        "(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Ljava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
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
.method private static final calculateExtraItems(Ljava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/Constraints;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    .line 477
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 478
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 479
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 313
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 314
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v7

    const/4 v6, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v4, p1

    .line 315
    invoke-static/range {v4 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v3

    if-nez v1, :cond_0

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 322
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 326
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static final calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;IIIIIZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v1, p9

    move/from16 v2, p11

    move/from16 v3, p6

    if-eqz p8, :cond_0

    move v4, v11

    goto :goto_0

    :cond_0
    move v4, v10

    .line 348
    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v12, 0x0

    move/from16 v5, p5

    if-ge v5, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    if-eqz v3, :cond_3

    if-nez p7, :cond_2

    goto :goto_2

    .line 350
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_3
    :goto_2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    move v6, v12

    move v7, v6

    :goto_3
    if-ge v6, v5, :cond_4

    .line 487
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 489
    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 353
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v8

    array-length v8, v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v7}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v3, :cond_f

    .line 356
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 357
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    .line 361
    new-array v5, v3, [I

    move v6, v12

    :goto_4
    if-ge v6, v3, :cond_5

    .line 362
    invoke-static {v6, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v7

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 364
    :cond_5
    new-array v6, v3, [I

    move v7, v12

    :goto_5
    if-ge v7, v3, :cond_6

    aput v12, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_6
    const-string v7, "Required value was null."

    if-eqz p8, :cond_8

    if-eqz v1, :cond_7

    move-object/from16 v8, p12

    .line 367
    invoke-interface {v1, v8, v4, v5, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_6

    .line 366
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v8, p12

    if-eqz p10, :cond_d

    .line 372
    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p5, p10

    move-object/from16 p6, p12

    move/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v1

    move-object/from16 p10, v6

    invoke-interface/range {p5 .. p10}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 377
    :goto_6
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Lkotlin/ranges/IntProgression;

    if-eqz v2, :cond_9

    invoke-static {v1}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v1

    .line 379
    :cond_9
    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v1}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v1

    if-lez v1, :cond_a

    if-le v5, v7, :cond_b

    :cond_a
    if-gez v1, :cond_12

    if-gt v7, v5, :cond_12

    .line 380
    :cond_b
    :goto_7
    aget v8, v6, v5

    .line 382
    invoke-static {v5, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets$reverseAware(IZI)I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v2, :cond_c

    sub-int v8, v4, v8

    .line 385
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSize()I

    move-result v12

    sub-int/2addr v8, v12

    .line 389
    :cond_c
    move-object v12, v13

    check-cast v12, Ljava/util/Collection;

    .line 390
    invoke-virtual {v9, v8, v10, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v8

    .line 389
    invoke-static {v12, v8}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-eq v5, v7, :cond_12

    add-int/2addr v5, v1

    goto :goto_7

    .line 370
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v1, p7

    move v15, v12

    :goto_8
    if-ge v15, v14, :cond_10

    move-object/from16 v9, p1

    .line 495
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 496
    move-object v8, v2

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 397
    invoke-virtual {v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v2

    sub-int v16, v1, v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x0

    move-object v1, v8

    move/from16 v2, v16

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v12, v8

    move/from16 v8, v17

    move-object/from16 v9, v18

    .line 398
    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 399
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    const/4 v12, 0x0

    goto :goto_8

    .line 500
    :cond_10
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v2, p7

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_11

    .line 501
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 502
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 404
    move-object v5, v13

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v2, v10, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->position(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 506
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    move v12, v2

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v9, :cond_12

    move-object/from16 v15, p2

    .line 507
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 508
    move-object v8, v0

    check-cast v8, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/16 v16, 0x0

    move-object v0, v8

    move v1, v12

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 p0, v9

    move-object v9, v8

    move-object/from16 v8, v16

    .line 409
    invoke-static/range {v0 .. v8}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->position$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;IIIIIIILjava/lang/Object;)V

    .line 410
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getMainAxisSizeWithSpacings()I

    move-result v0

    add-int/2addr v12, v0

    add-int/lit8 v14, v14, 0x1

    move/from16 v9, p0

    goto :goto_a

    .line 414
    :cond_12
    check-cast v13, Ljava/util/List;

    return-object v13
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

.method public static final measureLazyGrid-ZRKPzZ8(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Ljava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;",
            "IIIIIIFJZ",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;",
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
            "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
        }
    .end annotation

    move/from16 v9, p0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p10

    move-object/from16 v5, p19

    move-object/from16 v6, p20

    const-string v7, "measuredLineProvider"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "measuredItemProvider"

    move-object/from16 v8, p2

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "density"

    move-object/from16 v15, p16

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "placementAnimator"

    move-object/from16 v13, p17

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "spanLayoutProvider"

    move-object/from16 v14, p18

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "pinnedItems"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "layout"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Failed requirement."

    if-ltz v2, :cond_26

    if-ltz p5, :cond_25

    if-gtz v9, :cond_1

    .line 68
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 73
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$1;

    invoke-interface {v6, v0, v3, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    neg-int v11, v2

    add-int v12, v1, p5

    const/4 v13, 0x0

    if-eqz p12, :cond_0

    .line 79
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_0
    move-object v15, v0

    move-object v0, v14

    move-object v1, v5

    move v2, v7

    move v3, v8

    move v4, v9

    move-object v5, v6

    move-object v6, v10

    move v7, v11

    move v8, v12

    move v9, v13

    move/from16 v10, p15

    move-object v11, v15

    move/from16 v12, p5

    move/from16 v13, p6

    .line 68
    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v14

    .line 88
    :cond_1
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    sub-int v11, p8, v10

    if-nez p7, :cond_2

    if-gez v11, :cond_2

    add-int/2addr v10, v11

    const/4 v11, 0x0

    .line 101
    :cond_2
    new-instance v15, Lkotlin/collections/ArrayDeque;

    invoke-direct {v15}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v12, v2

    if-gez p6, :cond_3

    move/from16 v16, p6

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    :goto_1
    add-int v8, v12, v16

    add-int/2addr v11, v8

    move/from16 v16, v12

    move v12, v11

    move/from16 v11, p7

    :goto_2
    if-gez v12, :cond_4

    if-lez v11, :cond_4

    add-int/lit8 v11, v11, -0x1

    .line 117
    invoke-virtual {v0, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v13

    move/from16 p7, v11

    const/4 v11, 0x0

    .line 118
    invoke-virtual {v15, v11, v13}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 119
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v11

    add-int/2addr v12, v11

    move/from16 v11, p7

    move-object/from16 v13, p17

    goto :goto_2

    :cond_4
    if-ge v12, v8, :cond_5

    add-int/2addr v10, v12

    move v12, v8

    :cond_5
    sub-int/2addr v12, v8

    add-int v13, v1, p5

    move/from16 p7, v11

    const/4 v11, 0x0

    .line 134
    invoke-static {v13, v11}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v14

    neg-int v11, v12

    move/from16 v17, v12

    .line 138
    move-object v12, v15

    check-cast v12, Ljava/util/List;

    move/from16 v18, v11

    .line 418
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v20, p7

    move/from16 v19, v13

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v11, :cond_6

    .line 419
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 420
    check-cast v21, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    add-int/lit8 v20, v20, 0x1

    .line 140
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v21

    add-int v18, v18, v21

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    move/from16 v11, v17

    move/from16 v13, v20

    move/from16 v17, p7

    move-object/from16 p7, v12

    move/from16 v12, v18

    :goto_4
    if-ge v13, v9, :cond_b

    if-lt v12, v14, :cond_7

    if-lez v12, :cond_7

    .line 149
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_b

    :cond_7
    move/from16 v18, v14

    .line 151
    invoke-virtual {v0, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v14

    .line 152
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_8

    goto :goto_6

    .line 156
    :cond_8
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v20

    add-int v12, v12, v20

    if-gt v12, v8, :cond_9

    .line 158
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v21, v8

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v8

    move/from16 v20, v12

    add-int/lit8 v12, v9, -0x1

    if-eq v8, v12, :cond_a

    add-int/lit8 v8, v13, 0x1

    .line 161
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v12

    sub-int/2addr v11, v12

    move/from16 v17, v8

    goto :goto_5

    :cond_9
    move/from16 v21, v8

    move/from16 v20, v12

    .line 163
    :cond_a
    invoke-virtual {v15, v14}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v18

    move/from16 v12, v20

    move/from16 v8, v21

    goto :goto_4

    :cond_b
    :goto_6
    if-ge v12, v1, :cond_d

    sub-int v8, v1, v12

    sub-int/2addr v11, v8

    add-int/2addr v12, v8

    :goto_7
    move/from16 v13, v17

    if-ge v11, v2, :cond_c

    if-lez v13, :cond_c

    add-int/lit8 v13, v13, -0x1

    .line 178
    invoke-virtual {v0, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->getAndMeasure(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v14

    move/from16 v17, v13

    const/4 v13, 0x0

    .line 179
    invoke-virtual {v15, v13, v14}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 180
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v14

    add-int/2addr v11, v14

    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    add-int/2addr v10, v8

    if-gez v11, :cond_e

    add-int/2addr v10, v11

    add-int/2addr v12, v11

    move v14, v12

    move v8, v13

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :cond_e
    move v8, v11

    move v14, v12

    .line 195
    :goto_8
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    invoke-static {v11}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v11

    invoke-static {v10}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v12

    if-ne v11, v12, :cond_f

    .line 196
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-lt v11, v12, :cond_f

    int-to-float v10, v10

    move v12, v10

    goto :goto_9

    :cond_f
    move/from16 v12, p9

    :goto_9
    if-ltz v8, :cond_24

    neg-int v7, v8

    .line 206
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 208
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v10

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v11

    goto :goto_a

    :cond_10
    move v11, v13

    .line 209
    :goto_a
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getItems()[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-static {v10}, Lkotlin/collections/ArraysKt;->lastOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v10

    goto :goto_b

    :cond_11
    move v10, v13

    :goto_b
    move-object/from16 p8, v15

    .line 427
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v15

    const/16 v18, 0x0

    move/from16 p9, v12

    move v12, v13

    move-object/from16 v20, v18

    :goto_c
    if-ge v12, v15, :cond_14

    .line 428
    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 429
    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move-result v13

    if-ltz v13, :cond_13

    if-ge v13, v11, :cond_13

    .line 213
    invoke-virtual {v0, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->itemConstraints-OenEA2s(I)J

    move-result-wide v23

    const/16 v21, 0x0

    const/16 v25, 0x2

    const/16 v26, 0x0

    move/from16 v27, v10

    move-object/from16 v10, p2

    move/from16 v28, v11

    move v11, v13

    move-object/from16 v22, p7

    move/from16 v13, p9

    move/from16 v31, v12

    move/from16 v30, v16

    const/16 v29, 0x0

    move/from16 v12, v21

    move/from16 v33, v13

    move/from16 v34, v14

    move/from16 v32, v19

    move-wide/from16 v13, v23

    move/from16 v19, v15

    move/from16 v15, v25

    move-object/from16 v16, v26

    .line 432
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v10

    if-nez v20, :cond_12

    .line 437
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    goto :goto_d

    :cond_12
    move-object/from16 v11, v20

    .line 439
    :goto_d
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v11

    goto :goto_e

    :cond_13
    move-object/from16 v22, p7

    move/from16 v33, p9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v31, v12

    move/from16 v34, v14

    move/from16 v30, v16

    move/from16 v32, v19

    const/16 v29, 0x0

    move/from16 v19, v15

    :goto_e
    add-int/lit8 v12, v31, 0x1

    move/from16 v15, v19

    move-object/from16 p7, v22

    move/from16 v10, v27

    move/from16 v11, v28

    move/from16 v13, v29

    move/from16 v16, v30

    move/from16 v19, v32

    move/from16 p9, v33

    move/from16 v14, v34

    goto :goto_c

    :cond_14
    move-object/from16 v22, p7

    move/from16 v33, p9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v29, v13

    move/from16 v34, v14

    move/from16 v30, v16

    move/from16 v32, v19

    if-nez v20, :cond_15

    .line 443
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v20

    :cond_15
    move-object/from16 v23, v20

    .line 448
    invoke-interface/range {p19 .. p19}, Ljava/util/List;->size()I

    move-result v15

    move/from16 v13, v29

    :goto_f
    if-ge v13, v15, :cond_18

    .line 449
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 450
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v11

    move/from16 v14, v27

    add-int/lit8 v10, v14, 0x1

    if-gt v10, v11, :cond_17

    if-ge v11, v9, :cond_17

    .line 220
    invoke-virtual {v0, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->itemConstraints-OenEA2s(I)J

    move-result-wide v19

    const/4 v12, 0x0

    const/16 v16, 0x2

    const/16 v21, 0x0

    move-object/from16 v10, p2

    move/from16 v24, v13

    move/from16 v35, v14

    move-wide/from16 v13, v19

    move/from16 v19, v15

    move/from16 v15, v16

    move-object/from16 v16, v21

    .line 453
    invoke-static/range {v10 .. v16}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->getAndMeasure-3p2s80s$default(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIJILjava/lang/Object;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v10

    if-nez v18, :cond_16

    .line 458
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v11

    check-cast v18, Ljava/util/List;

    :cond_16
    move-object/from16 v11, v18

    .line 460
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v11

    goto :goto_10

    :cond_17
    move/from16 v24, v13

    move/from16 v35, v14

    move/from16 v19, v15

    :goto_10
    add-int/lit8 v13, v24, 0x1

    move/from16 v15, v19

    move/from16 v27, v35

    goto :goto_f

    :cond_18
    move/from16 v35, v27

    if-nez v18, :cond_19

    .line 464
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v18

    :cond_19
    move-object/from16 v0, v18

    if-gtz v2, :cond_1b

    if-gez p6, :cond_1a

    goto :goto_11

    :cond_1a
    move-object/from16 v2, v17

    goto :goto_13

    .line 227
    :cond_1b
    :goto_11
    invoke-virtual/range {p8 .. p8}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    move/from16 v12, v29

    :goto_12
    if-ge v12, v2, :cond_1a

    move-object/from16 v5, p8

    .line 228
    invoke-virtual {v5, v12}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->getMainAxisSizeWithSpacings()I

    move-result v10

    if-eqz v8, :cond_1a

    if-gt v10, v8, :cond_1a

    .line 230
    invoke-static/range {v22 .. v22}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    if-eq v12, v11, :cond_1a

    sub-int/2addr v8, v10

    add-int/lit8 v12, v12, 0x1

    .line 232
    invoke-virtual {v5, v12}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-object/from16 p8, v5

    goto :goto_12

    :goto_13
    if-eqz p12, :cond_1c

    .line 240
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    move/from16 v24, v5

    move/from16 v5, v34

    goto :goto_14

    :cond_1c
    move/from16 v5, v34

    .line 242
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v10

    move/from16 v24, v10

    :goto_14
    if-eqz p12, :cond_1d

    .line 245
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v3

    goto :goto_15

    .line 247
    :cond_1d
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    :goto_15
    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object v12, v0

    move/from16 v13, v24

    move v14, v3

    move v15, v5

    move/from16 v16, p3

    move/from16 v17, v7

    move/from16 v18, p12

    move-object/from16 v19, p13

    move-object/from16 v20, p14

    move/from16 v21, p15

    move-object/from16 v22, p16

    .line 250
    invoke-static/range {v10 .. v22}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->calculateItemsOffsets(Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIIZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;)Ljava/util/List;

    move-result-object v4

    move/from16 v7, v33

    float-to-int v11, v7

    move-object/from16 v10, p17

    move/from16 v12, v24

    move v13, v3

    move-object v14, v4

    move-object/from16 v15, p2

    move-object/from16 v16, p18

    move/from16 v17, p12

    .line 266
    invoke-virtual/range {v10 .. v17}, Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;->onMeasured(IIILjava/util/List;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Z)V

    add-int/lit8 v10, v9, -0x1

    move/from16 v13, v35

    if-ne v13, v10, :cond_1f

    if-le v5, v1, :cond_1e

    goto :goto_16

    :cond_1e
    move/from16 v5, v29

    goto :goto_17

    :cond_1f
    :goto_16
    const/4 v1, 0x1

    move v5, v1

    .line 282
    :goto_17
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;

    invoke-direct {v10, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt$measureLazyGrid$3;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v1, v3, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/compose/ui/layout/MeasureResult;

    .line 287
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v10, v4

    goto :goto_19

    .line 466
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 469
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v12, v29

    :goto_18
    if-ge v12, v1, :cond_22

    .line 470
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 472
    move-object v10, v3

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 291
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->getIndex()I

    move-result v10

    move/from16 v11, v28

    if-gt v11, v10, :cond_21

    if-gt v10, v13, :cond_21

    .line 472
    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v12, v12, 0x1

    move/from16 v28, v11

    goto :goto_18

    .line 475
    :cond_22
    check-cast v0, Ljava/util/List;

    move-object v10, v0

    :goto_19
    if-eqz p12, :cond_23

    .line 296
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_1a

    :cond_23
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1a
    move-object v11, v0

    .line 276
    new-instance v14, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-object v0, v14

    move-object v1, v2

    move v2, v8

    move v3, v5

    move v4, v7

    move-object v5, v6

    move-object v6, v10

    move/from16 v7, v30

    move/from16 v8, v32

    move/from16 v9, p0

    move/from16 v10, p15

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    return-object v14

    .line 204
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
