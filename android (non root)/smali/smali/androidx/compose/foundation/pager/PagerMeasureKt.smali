.class public final Landroidx/compose/foundation/pager/PagerMeasureKt;
.super Ljava/lang/Object;
.source "PagerMeasure.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerMeasure.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerMeasure.kt\nandroidx/compose/foundation/pager/PagerMeasureKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n+ 3 TempListUtils.kt\nandroidx/compose/foundation/TempListUtilsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,581:1\n578#1,4:582\n33#2,6:586\n33#2,6:592\n33#2,6:598\n33#2,4:607\n38#2:613\n171#2,13:615\n33#2,6:628\n33#2,6:634\n33#2,6:641\n33#2,6:647\n33#2,6:653\n36#3,3:604\n39#3,2:611\n41#3:614\n1#4:640\n*S KotlinDebug\n*F\n+ 1 PagerMeasure.kt\nandroidx/compose/foundation/pager/PagerMeasureKt\n*L\n65#1:582,4\n174#1:586,6\n302#1:592,6\n328#1:598,6\n368#1:607,4\n368#1:613\n373#1:615,13\n427#1:628,6\n452#1:634,6\n554#1:641,6\n561#1:647,6\n567#1:653,6\n368#1:604,3\n368#1:611,2\n368#1:614\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aH\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u000bH\u0002\u001a@\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u000bH\u0002\u001a\u0017\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0082\u0008\u001a\u008c\u0001\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0014*\u00020\u00152\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00012\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002\u001am\u0010\n\u001a\u00020\u0004*\u00020\u00152\u0006\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u0002012\u0006\u0010 \u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0006H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00082\u00103\u001a\u00e4\u0001\u00104\u001a\u000205*\u00020\u00152\u0006\u00106\u001a\u00020\u00062\u0006\u0010(\u001a\u00020)2\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\u00062\u0006\u0010;\u001a\u00020\u00062\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\'2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010.\u001a\u0004\u0018\u00010/2\u0008\u0010,\u001a\u0004\u0018\u00010-2\u0006\u0010 \u001a\u00020\u00012\u0006\u0010*\u001a\u00020+2\u0006\u0010$\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032/\u0010?\u001a+\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0012\u0015\u0012\u0013\u0012\u0004\u0012\u00020A\u0012\u0004\u0012\u00020\u000f0\u000b\u00a2\u0006\u0002\u0008B\u0012\u0004\u0012\u00020C0@H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008D\u0010E\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006F"
    }
    d2 = {
        "DEBUG",
        "",
        "createPagesAfterList",
        "",
        "Landroidx/compose/foundation/pager/MeasuredPage;",
        "currentLastPage",
        "",
        "pagesCount",
        "beyondBoundsPageCount",
        "pinnedPages",
        "getAndMeasure",
        "Lkotlin/Function1;",
        "createPagesBeforeList",
        "currentFirstPage",
        "debugLog",
        "",
        "generateMsg",
        "Lkotlin/Function0;",
        "",
        "calculatePagesOffsets",
        "",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "pages",
        "extraPagesBefore",
        "extraPagesAfter",
        "layoutWidth",
        "layoutHeight",
        "finalMainAxisOffset",
        "maxOffset",
        "pagesScrollOffset",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "reverseLayout",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "spaceBetweenPages",
        "pageAvailableSize",
        "index",
        "childConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "pagerItemProvider",
        "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
        "visualPageOffset",
        "Landroidx/compose/ui/unit/IntOffset;",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getAndMeasure-SGf7dI0",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;",
        "measurePager",
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "pageCount",
        "mainAxisAvailableSize",
        "beforeContentPadding",
        "afterContentPadding",
        "firstVisiblePage",
        "firstVisiblePageOffset",
        "scrollToBeConsumed",
        "",
        "constraints",
        "layout",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/ExtensionFunctionType;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "measurePager-ntgEbfI",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIFJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;",
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


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public static final synthetic access$getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object p0

    return-object p0
.end method

.method private static final calculatePagesOffsets(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/Density;II)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;IIIII",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/ui/unit/Density;",
            "II)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p9

    move/from16 v4, p10

    move/from16 v5, p13

    add-int v6, v5, p12

    .line 509
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v7, :cond_0

    move/from16 v7, p7

    move v13, v2

    goto :goto_0

    :cond_0
    move/from16 v7, p7

    move v13, v1

    .line 510
    :goto_0
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    move/from16 v9, p6

    if-ge v9, v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    if-eqz v7, :cond_3

    if-nez p8, :cond_2

    goto :goto_2

    .line 512
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_3
    :goto_2
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v7, :cond_c

    .line 518
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 520
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    .line 524
    new-array v10, v6, [I

    move v7, v8

    :goto_3
    if-ge v7, v6, :cond_4

    aput v5, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 525
    :cond_4
    new-array v15, v6, [I

    move v7, v8

    :goto_4
    if-ge v7, v6, :cond_5

    aput v8, v15, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 527
    :cond_5
    sget-object v7, Landroidx/compose/foundation/layout/Arrangement$Absolute;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement$Absolute;

    move-object/from16 v8, p0

    invoke-interface {v8, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->toDp-u2uoSUM(I)F

    move-result v5

    invoke-virtual {v7, v5}, Landroidx/compose/foundation/layout/Arrangement$Absolute;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v7

    .line 528
    sget-object v5, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v3, v5, :cond_6

    move-object/from16 v3, p11

    .line 529
    invoke-interface {v7, v3, v13, v10, v15}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    goto :goto_5

    :cond_6
    move-object/from16 v3, p11

    .line 533
    sget-object v11, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 v8, p11

    move v9, v13

    move-object v12, v15

    invoke-interface/range {v7 .. v12}, Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    .line 538
    :goto_5
    invoke-static {v15}, Lkotlin/collections/ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Lkotlin/ranges/IntProgression;

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    invoke-static {v3}, Lkotlin/ranges/RangesKt;->reversed(Lkotlin/ranges/IntProgression;)Lkotlin/ranges/IntProgression;

    move-result-object v3

    .line 539
    :goto_6
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v7

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v3

    if-lez v3, :cond_8

    if-le v5, v7, :cond_9

    :cond_8
    if-gez v3, :cond_f

    if-gt v7, v5, :cond_f

    .line 540
    :cond_9
    :goto_7
    aget v8, v15, v5

    .line 542
    invoke-static {v5, v4, v6}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculatePagesOffsets$reverseAware(IZI)I

    move-result v9

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v4, :cond_a

    sub-int v8, v13, v8

    .line 545
    invoke-virtual {v9}, Landroidx/compose/foundation/pager/MeasuredPage;->getSize()I

    move-result v10

    sub-int/2addr v8, v10

    .line 549
    :cond_a
    invoke-virtual {v9, v8, v1, v2}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 550
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v5, v7, :cond_f

    add-int/2addr v5, v3

    goto :goto_7

    .line 518
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_c
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v5, p8

    move v4, v8

    :goto_8
    if-ge v4, v3, :cond_d

    move-object/from16 v7, p2

    .line 643
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 644
    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    sub-int/2addr v5, v6

    .line 556
    invoke-virtual {v9, v5, v1, v2}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 557
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 648
    :cond_d
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, p8

    move v5, v8

    :goto_9
    if-ge v5, v3, :cond_e

    .line 649
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 650
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 562
    invoke-virtual {v7, v4, v1, v2}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 563
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 654
    :cond_e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v8, v0, :cond_f

    move-object/from16 v3, p3

    .line 655
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 656
    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 568
    invoke-virtual {v5, v4, v1, v2}, Landroidx/compose/foundation/pager/MeasuredPage;->position(III)V

    .line 569
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 573
    :cond_f
    check-cast v14, Ljava/util/List;

    return-object v14
.end method

.method private static final calculatePagesOffsets$reverseAware(IZI)I
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x1

    :goto_0
    return p0
.end method

.method private static final createPagesAfterList(IIILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    add-int/2addr p2, p0

    add-int/lit8 v0, p1, -0x1

    .line 420
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/lit8 p0, p0, 0x1

    const/4 v0, 0x0

    if-gt p0, p2, :cond_1

    :goto_0
    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 424
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p2, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 629
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_4

    .line 630
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 631
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    if-gt v3, v2, :cond_3

    if-ge v2, p1, :cond_3

    if-nez v0, :cond_2

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 430
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    .line 434
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private static final createPagesBeforeList(IILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/pager/MeasuredPage;",
            ">;"
        }
    .end annotation

    sub-int p1, p0, p1

    const/4 v0, 0x0

    .line 445
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    if-gt p1, p0, :cond_1

    :goto_0
    if-nez v1, :cond_0

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 449
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p0, p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 635
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    :goto_1
    if-ge v0, p0, :cond_4

    .line 636
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 637
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v2, p1, :cond_3

    if-nez v1, :cond_2

    .line 454
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 455
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 459
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method private static final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method private static final getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;
    .locals 14

    move v1, p1

    move-object/from16 v0, p4

    .line 475
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v6

    .line 476
    invoke-interface/range {p0 .. p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->measure-0kLqBqw(IJ)Ljava/util/List;

    move-result-object v3

    .line 478
    new-instance v13, Landroidx/compose/foundation/pager/MeasuredPage;

    const/4 v12, 0x0

    move-object v0, v13

    move/from16 v2, p12

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/pager/MeasuredPage;-><init>(IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v13
.end method

.method public static final measurePager-ntgEbfI(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;ILandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;IIIIIIFJLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ZJIILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "I",
            "Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;",
            "IIIIIIFJ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "ZJII",
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
            "Landroidx/compose/foundation/pager/PagerMeasureResult;"
        }
    .end annotation

    move-object/from16 v13, p0

    move/from16 v14, p1

    move/from16 v15, p3

    move/from16 v12, p4

    move-wide/from16 v10, p10

    move-object/from16 v9, p12

    move/from16 v8, p19

    move-object/from16 v7, p20

    move-object/from16 v5, p21

    const-string v0, "$this$measurePager"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pagerItemProvider"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orientation"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinnedPages"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v16, "Failed requirement."

    if-ltz v12, :cond_26

    if-ltz p5, :cond_25

    add-int v0, p18, p6

    const/4 v4, 0x0

    .line 64
    invoke-static {v0, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    if-gtz v14, :cond_0

    .line 68
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    neg-int v7, v12

    add-int v8, v15, p5

    .line 76
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$2;->INSTANCE:Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$2;

    invoke-interface {v5, v0, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroidx/compose/ui/layout/MeasureResult;

    .line 67
    new-instance v16, Landroidx/compose/foundation/pager/PagerMeasureResult;

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v3, p18

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p12

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move/from16 v14, v17

    invoke-direct/range {v0 .. v15}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIIILandroidx/compose/foundation/gestures/Orientation;IIZFLandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/PageInfo;IZLandroidx/compose/ui/layout/MeasureResult;)V

    return-object v16

    :cond_0
    const/16 v18, 0x0

    .line 87
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v9, v0, :cond_1

    .line 88
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    move/from16 v19, v0

    goto :goto_0

    :cond_1
    move/from16 v19, p18

    :goto_0
    const/16 v20, 0x0

    .line 92
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v9, v0, :cond_2

    .line 93
    invoke-static/range {p10 .. p11}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    move/from16 v21, v0

    goto :goto_1

    :cond_2
    move/from16 v21, p18

    :goto_1
    const/16 v22, 0x5

    const/16 v23, 0x0

    .line 86
    invoke-static/range {v18 .. v23}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v17

    move/from16 v0, p7

    if-lt v0, v14, :cond_3

    add-int/lit8 v0, v14, -0x1

    move v1, v4

    goto :goto_2

    :cond_3
    move/from16 v1, p8

    .line 109
    :goto_2
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v3

    sub-int/2addr v1, v3

    if-nez v0, :cond_4

    if-gez v1, :cond_4

    add-int/2addr v3, v1

    move/from16 v19, v3

    move v1, v4

    goto :goto_3

    :cond_4
    move/from16 v19, v3

    .line 122
    :goto_3
    new-instance v3, Lkotlin/collections/ArrayDeque;

    invoke-direct {v3}, Lkotlin/collections/ArrayDeque;-><init>()V

    neg-int v13, v12

    if-gez p6, :cond_5

    move/from16 v20, p6

    goto :goto_4

    :cond_5
    move/from16 v20, v4

    :goto_4
    add-int v14, v13, v20

    add-int/2addr v1, v14

    move/from16 v20, v13

    move v13, v4

    :goto_5
    if-gez v1, :cond_6

    if-lez v0, :cond_6

    add-int/lit8 v21, v0, -0x1

    .line 149
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v22

    move-object/from16 v0, p0

    move v15, v1

    move/from16 v1, v21

    move/from16 p8, v2

    move/from16 p7, v14

    move-object v14, v3

    move-wide/from16 v2, v17

    move/from16 v23, v15

    move v15, v4

    move-object/from16 v4, p2

    move-wide/from16 v5, p16

    move-object/from16 v7, p12

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move-object/from16 v10, v22

    move/from16 v11, p15

    move/from16 v12, p18

    .line 141
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v0

    .line 153
    invoke-virtual {v14, v15, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 154
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int v1, v23, p8

    move-object/from16 v6, p2

    move/from16 v12, p4

    move/from16 v2, p8

    move-wide/from16 v10, p10

    move-object/from16 v9, p12

    move/from16 v8, p19

    move-object/from16 v7, p20

    move-object/from16 v5, p21

    move-object v3, v14

    move v4, v15

    move/from16 v0, v21

    move/from16 v15, p3

    move/from16 v14, p7

    goto :goto_5

    :cond_6
    move/from16 p8, v2

    move v15, v4

    move/from16 p7, v14

    move-object v14, v3

    move v2, v1

    move/from16 v1, p7

    if-ge v2, v1, :cond_7

    add-int v19, v19, v2

    move v2, v1

    :cond_7
    sub-int/2addr v2, v1

    move/from16 v12, p3

    add-int v11, v12, p5

    .line 170
    invoke-static {v11, v15}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v10

    neg-int v3, v2

    .line 174
    move-object v9, v14

    check-cast v9, Ljava/util/List;

    .line 587
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    move v6, v0

    move v5, v15

    :goto_6
    if-ge v5, v4, :cond_8

    .line 588
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 589
    check-cast v7, Landroidx/compose/foundation/pager/MeasuredPage;

    add-int/lit8 v6, v6, 0x1

    add-int v3, v3, p8

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    move v4, v1

    move/from16 v21, v2

    move v8, v3

    move v7, v6

    move v5, v13

    move/from16 v6, p1

    move v13, v0

    :goto_7
    if-ge v7, v6, :cond_d

    if-lt v8, v10, :cond_a

    if-lez v8, :cond_a

    .line 185
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move v2, v5

    move-object/from16 v27, v9

    move/from16 v22, v11

    move v15, v12

    move/from16 p7, v13

    move-object v11, v14

    move v14, v6

    move v12, v7

    move v13, v8

    goto/16 :goto_a

    .line 195
    :cond_a
    :goto_8
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v22

    move-object/from16 v0, p0

    move v1, v7

    move-wide/from16 v2, v17

    move v15, v4

    move-object/from16 v4, p2

    move/from16 p7, v13

    move-object/from16 v24, v14

    move v13, v5

    move v14, v6

    move-wide/from16 v5, p16

    move/from16 v25, v13

    move v13, v7

    move-object/from16 v7, p12

    move/from16 v26, v13

    move v13, v8

    move-object/from16 v8, p14

    move-object/from16 v27, v9

    move-object/from16 v9, p13

    move/from16 v28, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move/from16 v11, p15

    move/from16 v12, p18

    .line 187
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v0

    add-int v8, v13, p8

    if-gt v8, v15, :cond_b

    add-int/lit8 v1, v14, -0x1

    move/from16 v12, v26

    if-eq v12, v1, :cond_c

    add-int/lit8 v7, v12, 0x1

    sub-int v21, v21, p8

    move v13, v7

    move-object/from16 v11, v24

    move/from16 v5, v25

    goto :goto_9

    :cond_b
    move/from16 v12, v26

    .line 206
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v1

    move/from16 v2, v25

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v11, v24

    .line 207
    invoke-virtual {v11, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move/from16 v13, p7

    move v5, v1

    :goto_9
    add-int/lit8 v7, v12, 0x1

    move/from16 v12, p3

    move v6, v14

    move v4, v15

    move-object/from16 v9, v27

    move/from16 v10, v28

    const/4 v15, 0x0

    move-object v14, v11

    move/from16 v11, v22

    goto/16 :goto_7

    :cond_d
    move v2, v5

    move v12, v7

    move-object/from16 v27, v9

    move/from16 v22, v11

    move/from16 p7, v13

    move-object v11, v14

    move v14, v6

    move v13, v8

    move/from16 v15, p3

    :goto_a
    if-ge v13, v15, :cond_10

    sub-int v24, v15, v13

    sub-int v21, v21, v24

    add-int v13, v13, v24

    move/from16 v8, p4

    move/from16 v0, p7

    move v9, v2

    move/from16 v10, v21

    :goto_b
    if-ge v10, v8, :cond_e

    if-lez v0, :cond_e

    add-int/lit8 v21, v0, -0x1

    .line 231
    invoke-interface/range {p0 .. p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v25

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v17

    move-object/from16 v4, p2

    move-wide/from16 v5, p16

    move-object/from16 v7, p12

    move-object/from16 v8, p14

    move v15, v9

    move-object/from16 v9, p13

    move/from16 v26, v10

    move-object/from16 v10, v25

    move-object v14, v11

    move/from16 v11, p15

    move/from16 v25, v12

    move/from16 v12, p18

    .line 223
    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureKt;->getAndMeasure-SGf7dI0(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZI)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v14, v1, v0}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    .line 236
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v0

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int v10, v26, p8

    move/from16 v15, p3

    move/from16 v8, p4

    move-object v11, v14

    move/from16 v0, v21

    move/from16 v12, v25

    move/from16 v14, p1

    goto :goto_b

    :cond_e
    move v15, v9

    move/from16 v26, v10

    move-object v14, v11

    move/from16 v25, v12

    add-int v19, v19, v24

    if-gez v26, :cond_f

    add-int v19, v19, v26

    add-int v8, v13, v26

    move v12, v0

    move v13, v8

    move/from16 v0, v19

    const/4 v4, 0x0

    goto :goto_c

    :cond_f
    move v12, v0

    move/from16 v0, v19

    move/from16 v4, v26

    goto :goto_c

    :cond_10
    move-object v14, v11

    move/from16 v25, v12

    move/from16 v12, p7

    move v15, v2

    move/from16 v0, v19

    move/from16 v4, v21

    .line 252
    :goto_c
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v1

    invoke-static {v0}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 253
    invoke-static/range {p9 .. p9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_11

    int-to-float v0, v0

    move/from16 v19, v0

    goto :goto_d

    :cond_11
    move/from16 v19, p9

    :goto_d
    if-ltz v4, :cond_24

    neg-int v11, v4

    .line 263
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    if-gtz p4, :cond_13

    if-gez p6, :cond_12

    goto :goto_e

    :cond_12
    move-object v10, v0

    move/from16 v16, v4

    goto :goto_10

    .line 268
    :cond_13
    :goto_e
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v1

    move v2, v4

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_14

    if-eqz v2, :cond_14

    move/from16 v3, p8

    if-gt v3, v2, :cond_14

    .line 271
    invoke-static/range {v27 .. v27}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-eq v4, v5, :cond_14

    sub-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    .line 274
    invoke-virtual {v14, v4}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 p8, v3

    goto :goto_f

    :cond_14
    move-object v10, v0

    move/from16 v16, v2

    .line 282
    :goto_10
    new-instance v21, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    move-object/from16 v4, p2

    move-wide/from16 v5, p16

    move-object/from16 v7, p12

    move-object/from16 v8, p14

    move-object/from16 v9, p13

    move/from16 p7, v15

    move-object v15, v10

    move/from16 v10, p15

    move/from16 v24, v11

    move/from16 v11, p18

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesBefore$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZI)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move/from16 v11, p19

    move-object/from16 v10, p20

    invoke-static {v12, v11, v10, v0}, Landroidx/compose/foundation/pager/PagerMeasureKt;->createPagesBeforeList(IILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v12

    .line 593
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v9, p7

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v0, :cond_15

    .line 594
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 595
    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 303
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 308
    :cond_15
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v8

    .line 307
    new-instance v21, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    move-object/from16 v4, p2

    move-wide/from16 v5, p16

    move-object/from16 v7, p12

    move-object/from16 v17, v14

    move v14, v8

    move-object/from16 v8, p14

    move/from16 v18, v9

    move-object/from16 v9, p13

    move/from16 p7, v13

    move-object v13, v10

    move/from16 v10, p15

    move-object/from16 p8, v12

    move v12, v11

    move/from16 v11, p18

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$extraPagesAfter$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZI)V

    move-object/from16 v0, v21

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move/from16 v11, p1

    invoke-static {v14, v11, v12, v13, v0}, Landroidx/compose/foundation/pager/PagerMeasureKt;->createPagesAfterList(IIILjava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v3

    .line 599
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    move/from16 v9, v18

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v0, :cond_16

    .line 600
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 601
    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 329
    invoke-virtual {v1}, Landroidx/compose/foundation/pager/MeasuredPage;->getCrossAxisSize()I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 332
    :cond_16
    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 333
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 334
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v18, 0x1

    goto :goto_13

    :cond_17
    const/16 v18, 0x0

    .line 338
    :goto_13
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v13, p12

    if-ne v13, v0, :cond_18

    move-wide/from16 v0, p10

    move v2, v9

    goto :goto_14

    :cond_18
    move/from16 v2, p7

    move-wide/from16 v0, p10

    .line 337
    :goto_14
    invoke-static {v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainWidth-K40F9xA(JI)I

    move-result v21

    .line 346
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v13, v2, :cond_19

    move/from16 v9, p7

    .line 345
    :cond_19
    invoke-static {v0, v1, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->constrainHeight-K40F9xA(JI)I

    move-result v26

    .line 363
    move-object/from16 v28, p0

    check-cast v28, Landroidx/compose/ui/unit/Density;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p8

    move/from16 v4, v21

    move/from16 v5, v26

    move/from16 v6, p7

    move/from16 v7, p3

    move/from16 v8, v24

    move-object/from16 v9, p12

    move/from16 v10, p15

    move v12, v11

    move-object/from16 v11, v28

    move/from16 v12, p6

    move/from16 v29, p7

    move-object v14, v13

    move-object/from16 v24, v15

    move/from16 v15, v25

    move/from16 v13, p18

    .line 352
    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->calculatePagesOffsets(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/unit/Density;II)Ljava/util/List;

    move-result-object v8

    if-eqz v18, :cond_1a

    move-object v9, v8

    goto :goto_16

    .line 605
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 608
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v1, :cond_1c

    .line 609
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 611
    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 369
    invoke-virtual {v3}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v6}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v6

    if-lt v5, v6, :cond_1b

    invoke-virtual {v3}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v3

    invoke-virtual/range {v17 .. v17}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v5

    if-gt v3, v5, :cond_1b

    .line 611
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 614
    :cond_1c
    check-cast v0, Ljava/util/List;

    move-object v9, v0

    .line 371
    :goto_16
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v14, v0, :cond_1d

    move/from16 v10, v26

    goto :goto_17

    :cond_1d
    move/from16 v10, v21

    .line 616
    :goto_17
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    const/16 v23, 0x1

    goto/16 :goto_19

    :cond_1e
    const/4 v11, 0x0

    .line 617
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    .line 618
    move-object v0, v12

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 380
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v5

    .line 381
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v6

    .line 382
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getSnapAlignmentStartToStart()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-result-object v7

    move-object/from16 v0, v28

    move v1, v10

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p18

    .line 375
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(Landroidx/compose/ui/unit/Density;IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    .line 619
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v13

    const/4 v7, 0x1

    if-gt v7, v13, :cond_21

    move v6, v7

    move-object/from16 v17, v12

    move v12, v0

    .line 620
    :goto_18
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .line 621
    move-object/from16 v0, v18

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 380
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getOffset()I

    move-result v5

    .line 381
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/MeasuredPage;->getIndex()I

    move-result v23

    .line 382
    invoke-static {}, Landroidx/compose/foundation/pager/PagerStateKt;->getSnapAlignmentStartToStart()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-result-object v25

    move-object/from16 v0, v28

    move v1, v10

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p18

    move v11, v6

    move/from16 v6, v23

    move/from16 v23, v7

    move-object/from16 v7, v25

    .line 375
    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayoutKt;->calculateDistanceToDesiredSnapPosition(Landroidx/compose/ui/unit/Density;IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    .line 622
    invoke-static {v12, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-gez v1, :cond_1f

    move v12, v0

    move-object/from16 v17, v18

    :cond_1f
    if-eq v11, v13, :cond_20

    add-int/lit8 v6, v11, 0x1

    move/from16 v7, v23

    const/4 v11, 0x0

    goto :goto_18

    :cond_20
    move-object/from16 v0, v17

    goto :goto_19

    :cond_21
    move/from16 v23, v7

    move-object v0, v12

    .line 373
    :goto_19
    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    .line 392
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$6;

    invoke-direct {v3, v8}, Landroidx/compose/foundation/pager/PagerMeasureKt$measurePager$6;-><init>(Ljava/util/List;)V

    move-object/from16 v4, p21

    invoke-interface {v4, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/ui/layout/MeasureResult;

    move/from16 v2, p1

    if-lt v15, v2, :cond_23

    move/from16 v1, p3

    move/from16 v13, v29

    if-le v13, v1, :cond_22

    goto :goto_1a

    :cond_22
    const/16 v27, 0x0

    goto :goto_1b

    :cond_23
    :goto_1a
    move/from16 v27, v23

    .line 387
    :goto_1b
    new-instance v18, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 390
    move-object v12, v0

    check-cast v12, Landroidx/compose/foundation/pager/PageInfo;

    move-object/from16 v0, v18

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p18

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p12

    move/from16 v7, v20

    move/from16 v8, v22

    move/from16 v9, p15

    move/from16 v10, v19

    move-object/from16 v11, v24

    move/from16 v13, v16

    move/from16 v14, v27

    move-object/from16 v15, v17

    .line 387
    invoke-direct/range {v0 .. v15}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIIILandroidx/compose/foundation/gestures/Orientation;IIZFLandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/PageInfo;IZLandroidx/compose/ui/layout/MeasureResult;)V

    return-object v18

    .line 261
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
