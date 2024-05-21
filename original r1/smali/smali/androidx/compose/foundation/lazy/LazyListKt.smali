.class public final Landroidx/compose/foundation/lazy/LazyListKt;
.super Ljava/lang/Object;
.source "LazyList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,339:1\n76#2:340\n83#3,3:341\n1097#4,6:344\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt\n*L\n122#1:340\n174#1:341,3\n174#1:344,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0098\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0017\u0010\u0018\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0019\u00a2\u0006\u0002\u0008\u001bH\u0001\u00a2\u0006\u0002\u0010\u001c\u001a#\u0010\u001d\u001a\u00020\u00012\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0003\u00a2\u0006\u0002\u0010!\u001a\u008d\u0001\u0010\"\u001a\u0019\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020&0#\u00a2\u0006\u0002\u0008\u001b2\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0003\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006("
    }
    d2 = {
        "LazyList",
        "",
        "modifier",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "contentPadding",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "reverseLayout",
        "",
        "isVertical",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "userScrollEnabled",
        "beyondBoundsItemCount",
        "",
        "horizontalAlignment",
        "Landroidx/compose/ui/Alignment$Horizontal;",
        "verticalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
        "verticalAlignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "horizontalArrangement",
        "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/LazyListScope;",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V",
        "ScrollPositionUpdater",
        "itemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V",
        "rememberLazyListMeasurePolicy",
        "Lkotlin/Function2;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;",
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
.method public static final LazyList(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZ",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "ZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p2

    move/from16 v14, p3

    move/from16 v13, p4

    move-object/from16 v12, p5

    move-object/from16 v11, p12

    move/from16 v10, p14

    move/from16 v9, p15

    move/from16 v8, p16

    const-string v2, "modifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "contentPadding"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flingBehavior"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "content"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x25001c13

    move-object/from16 v3, p13

    .line 78
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    const-string v3, "C(LazyList)P(7,9,2,8,6,3,10!1,4,12,11,5)78@3680L50,80@3756L48,82@3830L292,95@4128L48,97@4224L18,103@4479L277,111@4820L164,121@5208L7,99@4334L1359:LazyList.kt#428nma"

    invoke-static {v7, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v8, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v10, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v10, 0xe

    if-nez v3, :cond_2

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move v3, v10

    :goto_1
    and-int/lit8 v6, v8, 0x2

    const/16 v16, 0x20

    const/16 v17, 0x10

    if-eqz v6, :cond_3

    or-int/lit8 v3, v3, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v10, 0x70

    if-nez v6, :cond_5

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v6, v16

    goto :goto_2

    :cond_4
    move/from16 v6, v17

    :goto_2
    or-int/2addr v3, v6

    :cond_5
    :goto_3
    and-int/lit8 v6, v8, 0x4

    const/16 v18, 0x100

    const/16 v19, 0x80

    if-eqz v6, :cond_6

    or-int/lit16 v3, v3, 0x180

    goto :goto_5

    :cond_6
    and-int/lit16 v6, v10, 0x380

    if-nez v6, :cond_8

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move/from16 v6, v18

    goto :goto_4

    :cond_7
    move/from16 v6, v19

    :goto_4
    or-int/2addr v3, v6

    :cond_8
    :goto_5
    and-int/lit8 v6, v8, 0x8

    if-eqz v6, :cond_9

    or-int/lit16 v3, v3, 0xc00

    goto :goto_7

    :cond_9
    and-int/lit16 v6, v10, 0x1c00

    if-nez v6, :cond_b

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x800

    goto :goto_6

    :cond_a
    const/16 v6, 0x400

    :goto_6
    or-int/2addr v3, v6

    :cond_b
    :goto_7
    and-int/lit8 v6, v8, 0x10

    const v20, 0xe000

    if-eqz v6, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9

    :cond_c
    and-int v6, v10, v20

    if-nez v6, :cond_e

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x4000

    goto :goto_8

    :cond_d
    const/16 v6, 0x2000

    :goto_8
    or-int/2addr v3, v6

    :cond_e
    :goto_9
    and-int/lit8 v6, v8, 0x20

    const/high16 v21, 0x70000

    if-eqz v6, :cond_f

    const/high16 v6, 0x30000

    :goto_a
    or-int/2addr v3, v6

    goto :goto_b

    :cond_f
    and-int v6, v10, v21

    if-nez v6, :cond_11

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/high16 v6, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v6, 0x10000

    goto :goto_a

    :cond_11
    :goto_b
    and-int/lit8 v6, v8, 0x40

    const/high16 v22, 0x380000

    if-eqz v6, :cond_12

    const/high16 v6, 0x180000

    or-int/2addr v3, v6

    goto :goto_d

    :cond_12
    and-int v6, v10, v22

    if-nez v6, :cond_14

    move/from16 v6, p6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v23

    if-eqz v23, :cond_13

    const/high16 v23, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v23, 0x80000

    :goto_c
    or-int v3, v3, v23

    goto :goto_e

    :cond_14
    :goto_d
    move/from16 v6, p6

    :goto_e
    and-int/lit16 v4, v8, 0x80

    const/high16 v23, 0x1c00000

    if-eqz v4, :cond_15

    const/high16 v24, 0xc00000

    or-int v3, v3, v24

    move/from16 v5, p7

    goto :goto_10

    :cond_15
    and-int v24, v10, v23

    move/from16 v5, p7

    if-nez v24, :cond_17

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v25

    if-eqz v25, :cond_16

    const/high16 v25, 0x800000

    goto :goto_f

    :cond_16
    const/high16 v25, 0x400000

    :goto_f
    or-int v3, v3, v25

    :cond_17
    :goto_10
    and-int/lit16 v2, v8, 0x100

    const/high16 v26, 0xe000000

    if-eqz v2, :cond_18

    const/high16 v27, 0x6000000

    or-int v3, v3, v27

    move-object/from16 v0, p8

    goto :goto_12

    :cond_18
    and-int v27, v10, v26

    move-object/from16 v0, p8

    if-nez v27, :cond_1a

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_19

    const/high16 v27, 0x4000000

    goto :goto_11

    :cond_19
    const/high16 v27, 0x2000000

    :goto_11
    or-int v3, v3, v27

    :cond_1a
    :goto_12
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_1b

    const/high16 v27, 0x30000000

    or-int v3, v3, v27

    move-object/from16 v5, p9

    goto :goto_14

    :cond_1b
    const/high16 v27, 0x70000000

    and-int v27, v10, v27

    move-object/from16 v5, p9

    if-nez v27, :cond_1d

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/high16 v27, 0x20000000

    goto :goto_13

    :cond_1c
    const/high16 v27, 0x10000000

    :goto_13
    or-int v3, v3, v27

    :cond_1d
    :goto_14
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_1e

    or-int/lit8 v24, v9, 0x6

    move-object/from16 v6, p10

    goto :goto_16

    :cond_1e
    and-int/lit8 v27, v9, 0xe

    move-object/from16 v6, p10

    if-nez v27, :cond_20

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f

    const/16 v24, 0x4

    goto :goto_15

    :cond_1f
    const/16 v24, 0x2

    :goto_15
    or-int v24, v9, v24

    goto :goto_16

    :cond_20
    move/from16 v24, v9

    :goto_16
    and-int/lit16 v6, v8, 0x800

    if-eqz v6, :cond_21

    or-int/lit8 v24, v24, 0x30

    goto :goto_18

    :cond_21
    and-int/lit8 v27, v9, 0x70

    move-object/from16 v10, p11

    if-nez v27, :cond_23

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22

    goto :goto_17

    :cond_22
    move/from16 v16, v17

    :goto_17
    or-int v24, v24, v16

    :cond_23
    :goto_18
    move/from16 v10, v24

    and-int/lit16 v12, v8, 0x1000

    if-eqz v12, :cond_24

    or-int/lit16 v10, v10, 0x180

    goto :goto_1a

    :cond_24
    and-int/lit16 v12, v9, 0x380

    if-nez v12, :cond_26

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_25

    goto :goto_19

    :cond_25
    move/from16 v18, v19

    :goto_19
    or-int v10, v10, v18

    :cond_26
    :goto_1a
    const v12, 0x5b6db6db

    and-int/2addr v12, v3

    const v8, 0x12492492

    if-ne v12, v8, :cond_28

    and-int/lit16 v8, v10, 0x2db

    const/16 v12, 0x92

    if-ne v8, v12, :cond_28

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v8

    if-nez v8, :cond_27

    goto :goto_1b

    .line 136
    :cond_27
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v18, p10

    move-object/from16 v12, p11

    move-object v11, v7

    move v0, v14

    goto/16 :goto_22

    :cond_28
    :goto_1b
    if-eqz v4, :cond_29

    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_1c

    :cond_29
    move/from16 v16, p7

    :goto_1c
    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    move-object/from16 v17, v4

    goto :goto_1d

    :cond_2a
    move-object/from16 v17, p8

    :goto_1d
    if-eqz v0, :cond_2b

    move-object v0, v4

    goto :goto_1e

    :cond_2b
    move-object/from16 v0, p9

    :goto_1e
    if-eqz v5, :cond_2c

    move-object/from16 v18, v4

    goto :goto_1f

    :cond_2c
    move-object/from16 v18, p10

    :goto_1f
    if-eqz v6, :cond_2d

    move-object/from16 v19, v4

    goto :goto_20

    :cond_2d
    move-object/from16 v19, p11

    .line 75
    :goto_20
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const-string v2, "androidx.compose.foundation.lazy.LazyList (LazyList.kt:50)"

    const v4, 0x25001c13

    .line 78
    invoke-static {v4, v3, v10, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    shr-int/lit8 v2, v3, 0x3

    and-int/lit8 v2, v2, 0xe

    shr-int/lit8 v4, v10, 0x3

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v4, v2

    .line 79
    invoke-static {v15, v11, v7, v4}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->rememberLazyListItemProviderLambda(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object v12

    shr-int/lit8 v4, v3, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/2addr v2, v4

    .line 81
    invoke-static {v15, v13, v7, v2}, Landroidx/compose/foundation/lazy/LazyListSemanticsKt;->rememberLazyListSemanticState(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object v24

    and-int/lit8 v8, v3, 0x70

    and-int/lit16 v2, v3, 0x380

    or-int/2addr v2, v8

    and-int/lit16 v6, v3, 0x1c00

    or-int/2addr v2, v6

    and-int v4, v3, v20

    or-int/2addr v2, v4

    shr-int/lit8 v25, v3, 0x6

    and-int v4, v25, v21

    or-int/2addr v2, v4

    and-int v4, v25, v22

    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x15

    and-int v5, v4, v23

    or-int/2addr v2, v5

    and-int v4, v4, v26

    or-int/2addr v2, v4

    const/high16 v4, 0x70000000

    and-int/2addr v4, v3

    or-int v22, v2, v4

    const/16 v23, 0x0

    move-object v2, v12

    move/from16 v26, v3

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v27, v6

    move/from16 v6, p4

    move-object v10, v7

    move/from16 v7, v16

    move/from16 v28, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 p7, v10

    move-object/from16 v10, v19

    move-object v11, v0

    move-object/from16 v29, v12

    move-object/from16 v12, p7

    move/from16 v13, v22

    move-object/from16 p8, v0

    move v0, v14

    move/from16 v14, v23

    .line 83
    invoke-static/range {v2 .. v14}, Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;

    move-result-object v10

    move-object/from16 v11, p7

    move/from16 v13, v28

    move-object/from16 v12, v29

    .line 96
    invoke-static {v12, v15, v11, v13}, Landroidx/compose/foundation/lazy/LazyListKt;->ScrollPositionUpdater(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    .line 98
    sget-object v2, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    const/4 v3, 0x6

    invoke-virtual {v2, v11, v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->overscrollEffect(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v14

    if-eqz p4, :cond_2f

    .line 99
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_21

    :cond_2f
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_21
    move-object v9, v2

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getRemeasurementModifier$foundation_release()Landroidx/compose/ui/layout/RemeasurementModifier;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 103
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getAwaitLayoutModifier$foundation_release()Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    and-int v3, v25, v20

    shl-int/lit8 v4, v26, 0x6

    and-int v4, v4, v21

    or-int v20, v3, v4

    move-object v3, v12

    move-object/from16 v4, v24

    move-object v5, v9

    move/from16 v6, p6

    move/from16 v7, p3

    move-object v8, v11

    move-object v1, v9

    move/from16 v9, v20

    .line 104
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticsKt;->lazyLayoutSemantics(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 111
    invoke-static {v2, v1}, Landroidx/compose/foundation/ClipScrollableContainerKt;->clipScrollableContainer(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shr-int/lit8 v3, v26, 0xf

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v3, v13

    or-int v8, v3, v27

    move-object/from16 v3, p1

    move/from16 v4, v16

    move/from16 v5, p3

    move-object v6, v1

    move-object v7, v11

    .line 112
    invoke-static/range {v2 .. v8}, Landroidx/compose/foundation/lazy/LazyListBeyondBoundsModifierKt;->lazyListBeyondBoundsModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;IZLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 118
    invoke-static {v2, v14}, Landroidx/compose/foundation/OverscrollKt;->overscroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/OverscrollEffect;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 121
    sget-object v3, Landroidx/compose/foundation/gestures/ScrollableDefaults;->INSTANCE:Landroidx/compose/foundation/gestures/ScrollableDefaults;

    .line 122
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/CompositionLocal;

    const v5, 0x789c5f52

    const-string v6, "CC:CompositionLocal.kt#9igjgp"

    .line 340
    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    check-cast v4, Landroidx/compose/ui/unit/LayoutDirection;

    .line 121
    invoke-virtual {v3, v4, v1, v0}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->reverseDirection(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/gestures/Orientation;Z)Z

    move-result v7

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getInternalInteractionSource$foundation_release()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-result-object v9

    .line 128
    move-object v3, v15

    check-cast v3, Landroidx/compose/foundation/gestures/ScrollableState;

    move-object v4, v1

    move-object v5, v14

    move/from16 v6, p6

    move-object/from16 v8, p5

    .line 119
    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/lazy/LazyListState;->getPrefetchState$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move-object v6, v10

    move-object v7, v11

    .line 100
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKt;->LazyLayout(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_30
    move-object/from16 v10, p8

    move/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v12, v19

    .line 136
    :goto_22
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-nez v14, :cond_31

    goto :goto_23

    :cond_31
    new-instance v17, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v11, v18

    move-object/from16 v13, p12

    move-object v15, v14

    move/from16 v14, p14

    move-object/from16 v30, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Landroidx/compose/foundation/lazy/LazyListKt$LazyList$1;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/gestures/FlingBehavior;ZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;III)V

    move-object/from16 v0, v17

    check-cast v0, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, v30

    invoke-interface {v1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_23
    return-void
.end method

.method private static final ScrollPositionUpdater(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, -0x13bcbb76

    .line 144
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    const-string v1, "C(ScrollPositionUpdater):LazyList.kt#428nma"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p3

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p3, 0x70

    if-nez v3, :cond_3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit8 v1, v1, 0x5b

    const/16 v3, 0x12

    if-ne v1, v3, :cond_5

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 149
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 144
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    const-string v3, "androidx.compose.foundation.lazy.ScrollPositionUpdater (LazyList.kt:140)"

    invoke-static {v0, p3, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 145
    :cond_6
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 146
    invoke-interface {v0}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemCount()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release$default(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListItemProvider;IILjava/lang/Object;)I

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 149
    :cond_8
    :goto_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;

    invoke-direct {v0, p0, p1, p3}, Landroidx/compose/foundation/lazy/LazyListKt$ScrollPositionUpdater$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public static final synthetic access$ScrollPositionUpdater(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListKt;->ScrollPositionUpdater(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method private static final rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "ZZI",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/ui/layout/MeasureResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p10

    move/from16 v1, p12

    const v2, 0xaeabee2

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "C(rememberLazyListMeasurePolicy)P(5,7,1,6,4!2,8)173@7248L7052:LazyList.kt#428nma"

    invoke-static {v0, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v1, 0x40

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v14, v4

    goto :goto_0

    :cond_0
    move-object/from16 v14, p6

    :goto_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    move-object v15, v4

    goto :goto_1

    :cond_1
    move-object/from16 v15, p7

    :goto_1
    and-int/lit16 v3, v1, 0x100

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p8

    :goto_2
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v4, p9

    .line 173
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v5, "androidx.compose.foundation.lazy.rememberLazyListMeasurePolicy (LazyList.kt:152)"

    move/from16 v6, p11

    .line 174
    invoke-static {v2, v6, v1, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 177
    :cond_4
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 178
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v9, v14

    move-object v10, v15

    move-object v11, v3

    move-object v12, v4

    .line 182
    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v1

    const v2, -0x21de6e89

    .line 174
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v0, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v5, v2

    :goto_4
    const/16 v6, 0x8

    if-ge v2, v6, :cond_5

    .line 342
    aget-object v6, v1, v2

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 344
    :cond_5
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_6

    .line 345
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 184
    :cond_6
    new-instance v1, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;

    move-object v5, v1

    move/from16 v6, p4

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    move-object v11, v4

    move-object v12, v3

    move/from16 v13, p5

    invoke-direct/range {v5 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;-><init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 347
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 343
    :cond_7
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 174
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_8
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method
