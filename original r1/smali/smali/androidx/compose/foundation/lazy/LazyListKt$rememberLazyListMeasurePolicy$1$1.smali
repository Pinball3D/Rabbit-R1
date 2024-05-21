.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListKt;->rememberLazyListMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZZILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,339:1\n495#2,4:340\n500#2:349\n129#3,5:344\n*S KotlinDebug\n*F\n+ 1 LazyList.kt\nandroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1\n*L\n294#1:340,4\n294#1:349\n294#1:344,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/LazyListMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $beyondBoundsItemCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
            ">;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            "I",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 184
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/LazyListMeasureResult;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-wide/from16 v12, p2

    const-string v1, "$this$null"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 185
    :goto_0
    invoke-static {v12, v13, v1}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 193
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {v14, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 196
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {v14, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    :goto_1
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 201
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 204
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_2
    iget-object v3, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 206
    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v3

    invoke-interface {v14, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 207
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v4

    invoke-interface {v14, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    add-int v15, v3, v4

    add-int v11, v1, v2

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v5, :cond_3

    move v6, v15

    goto :goto_3

    :cond_3
    move v6, v11

    :goto_3
    if-eqz v5, :cond_4

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v7, :cond_4

    move/from16 v19, v3

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v7, :cond_5

    move/from16 v19, v4

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v4, :cond_6

    move/from16 v19, v1

    goto :goto_4

    :cond_6
    move/from16 v19, v2

    :goto_4
    sub-int v20, v6, v19

    neg-int v2, v11

    neg-int v4, v15

    .line 219
    invoke-static {v12, v13, v2, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v25

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 222
    move-object v10, v14

    check-cast v10, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v2, v10}, Landroidx/compose/foundation/lazy/LazyListState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 224
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListItemProvider;

    .line 226
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    move-result-object v2

    .line 227
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    .line 228
    invoke-static/range {v25 .. v26}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    .line 226
    invoke-virtual {v2, v4, v5}, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->setMaxSize(II)V

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    const-string v4, "Required value was null."

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v2, :cond_7

    .line 232
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v2

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v2, :cond_e

    .line 234
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v2

    .line 236
    :goto_5
    invoke-interface {v14, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v21

    .line 238
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getItemCount()I

    move-result v16

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_9

    .line 242
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    sub-int/2addr v2, v15

    goto :goto_6

    .line 244
    :cond_9
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    sub-int/2addr v2, v11

    :goto_6
    move/from16 v18, v2

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v2, :cond_d

    if-lez v18, :cond_a

    goto :goto_8

    :cond_a
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    add-int v1, v1, v18

    :goto_7
    if-eqz v2, :cond_c

    add-int v3, v3, v18

    .line 252
    :cond_c
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    goto :goto_9

    .line 247
    :cond_d
    :goto_8
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    :goto_9
    move-wide/from16 v22, v1

    .line 258
    new-instance v17, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    iget-object v8, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    move-object/from16 v1, v17

    move-wide/from16 v2, v25

    move-object v5, v9

    move/from16 v24, v6

    move-object/from16 v6, p1

    move-object/from16 v27, v7

    move/from16 v7, v16

    move-object/from16 v28, v8

    move/from16 v8, v21

    move-object/from16 v37, v9

    move-object/from16 v9, v28

    move-object/from16 v32, v10

    move-object/from16 v10, v27

    move/from16 v36, v11

    move/from16 v11, v24

    move/from16 v12, v19

    move/from16 v13, v20

    move/from16 v38, v15

    move-wide/from16 v14, v22

    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;ZIIJ)V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 290
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;->getChildConstraints-msEJaDk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/compose/foundation/lazy/LazyListState;->setPremeasureConstraints-BRTryo0$foundation_release(J)V

    .line 294
    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 341
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    .line 344
    :try_start_0
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 296
    :try_start_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemIndex()I

    move-result v4

    move-object/from16 v5, v37

    .line 295
    invoke-virtual {v2, v5, v4}, Landroidx/compose/foundation/lazy/LazyListState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/LazyListItemProvider;I)I

    move-result v22

    .line 298
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getFirstVisibleItemScrollOffset()I

    move-result v23

    .line 299
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :try_start_2
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 349
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 301
    move-object v9, v5

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 302
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 303
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v2

    .line 301
    invoke-static {v9, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v35

    .line 308
    check-cast v17, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 315
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getScrollToBeConsumed$foundation_release()F

    move-result v24

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v27, v1

    .line 318
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->getHeaderIndexes()Ljava/util/List;

    move-result-object v28

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v30, v1

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v31, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 323
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;

    move-result-object v33

    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$beyondBoundsItemCount:I

    move/from16 v34, v1

    .line 306
    new-instance v7, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;

    move-object v1, v7

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, v36

    move/from16 v6, v38

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v36, v7

    check-cast v36, Lkotlin/jvm/functions/Function3;

    invoke-static/range {v16 .. v36}, Landroidx/compose/foundation/lazy/LazyListMeasureKt;->measureLazyList-CD5nmq0(ILandroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;IIIIIIFJZLjava/util/List;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/LazyListItemPlacementAnimator;ILjava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    move-result-object v1

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 335
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/LazyListState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/LazyListMeasureResult;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 348
    :try_start_3
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 349
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 234
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
