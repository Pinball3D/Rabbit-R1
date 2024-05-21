.class final Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SnackbarKt;->OneRowSnackbar-kKq0p4A(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnackbar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material3/SnackbarKt$OneRowSnackbar$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,435:1\n288#2,2:436\n288#2,2:438\n223#2,2:440\n1#3:442\n*S KotlinDebug\n*F\n+ 1 Snackbar.kt\nandroidx/compose/material3/SnackbarKt$OneRowSnackbar$2\n*L\n336#1:436,2\n338#1:438,2\n347#1:440,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $actionTag:Ljava/lang/String;

.field final synthetic $dismissActionTag:Ljava/lang/String;

.field final synthetic $textTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;->$actionTag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;->$dismissActionTag:Ljava/lang/String;

    iput-object p3, p0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;->$textTag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    const-string v5, "$this$Layout"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "measurables"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    invoke-static {}, Landroidx/compose/material3/SnackbarKt;->access$getContainerMaxWidth$p()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 336
    check-cast v2, Ljava/lang/Iterable;

    iget-object v5, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;->$actionTag:Ljava/lang/String;

    .line 436
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 336
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_1
    move-object v7, v8

    :goto_0
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_2

    invoke-interface {v7, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v5

    move-object v15, v5

    goto :goto_1

    :cond_2
    move-object v15, v8

    :goto_1
    iget-object v5, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;->$dismissActionTag:Ljava/lang/String;

    .line 438
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 338
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_4
    move-object v7, v8

    :goto_2
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    if-eqz v7, :cond_5

    invoke-interface {v7, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    :cond_5
    move-object v14, v8

    if-eqz v15, :cond_6

    .line 339
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    move v12, v5

    goto :goto_3

    :cond_6
    const/4 v12, 0x0

    :goto_3
    if-eqz v15, :cond_7

    .line 340
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    move v13, v5

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    :goto_4
    if-eqz v14, :cond_8

    .line 341
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v5

    move/from16 v16, v5

    goto :goto_5

    :cond_8
    const/16 v16, 0x0

    :goto_5
    if-eqz v14, :cond_9

    .line 342
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v5

    move v9, v5

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_6
    if-nez v16, :cond_a

    .line 343
    invoke-static {}, Landroidx/compose/material3/SnackbarKt;->access$getTextEndExtraSpacing$p()F

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v5

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    sub-int v6, v10, v12

    sub-int v6, v6, v16

    sub-int/2addr v6, v5

    .line 346
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-static {v6, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v5

    iget-object v0, v0, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2;->$textTag:Ljava/lang/String;

    .line 440
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 347
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x9

    const/16 v18, 0x0

    move-wide/from16 v2, p3

    move v4, v0

    move-object v0, v8

    move/from16 v8, v17

    move v11, v9

    move-object/from16 v9, v18

    .line 348
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v2

    .line 347
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 351
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v2}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v2

    const-string v3, "No baselines for text"

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_12

    .line 353
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v0, v5}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v5

    if-eq v5, v4, :cond_11

    if-ne v2, v5, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    sub-int v5, v10, v16

    sub-int v18, v5, v12

    if-eqz v3, :cond_e

    .line 363
    sget-object v3, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v3}, Landroidx/compose/material3/tokens/SnackbarTokens;->getSingleLineContainerHeight-D9Ej5fM()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    .line 364
    invoke-static {v13, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 365
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 366
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    if-eqz v15, :cond_d

    .line 368
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/AlignmentLine;

    invoke-virtual {v15, v7}, Landroidx/compose/ui/layout/Placeable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v7

    if-eq v7, v4, :cond_d

    add-int/2addr v2, v6

    sub-int/2addr v2, v7

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    :goto_9
    move/from16 v19, v2

    move v2, v3

    move v13, v6

    goto :goto_b

    .line 379
    :cond_e
    invoke-static {}, Landroidx/compose/material3/SnackbarKt;->access$getHeightToFirstLine$p()F

    move-result v3

    invoke-interface {v1, v3}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 381
    sget-object v2, Landroidx/compose/material3/tokens/SnackbarTokens;->INSTANCE:Landroidx/compose/material3/tokens/SnackbarTokens;

    invoke-virtual {v2}, Landroidx/compose/material3/tokens/SnackbarTokens;->getTwoLinesContainerHeight-D9Ej5fM()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/layout/MeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    .line 382
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 383
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v15, :cond_f

    .line 385
    invoke-virtual {v15}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    move v13, v3

    move/from16 v19, v4

    :goto_b
    if-eqz v14, :cond_10

    .line 391
    invoke-virtual {v14}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    move/from16 v16, v3

    goto :goto_c

    :cond_10
    const/16 v16, 0x0

    :goto_c
    const/4 v3, 0x0

    .line 396
    new-instance v4, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$measure$4;

    move-object v11, v4

    move-object v12, v0

    move-object v8, v15

    move v15, v5

    move-object/from16 v17, v8

    invoke-direct/range {v11 .. v19}, Landroidx/compose/material3/SnackbarKt$OneRowSnackbar$2$measure$4;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;II)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v10

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    .line 354
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
