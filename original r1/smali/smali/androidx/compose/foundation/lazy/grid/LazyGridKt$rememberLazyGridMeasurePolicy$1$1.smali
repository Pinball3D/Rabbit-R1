.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGrid.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridKt;->rememberLazyGridMeasurePolicy(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;ZZLandroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/runtime/Composer;II)Lkotlin/jvm/functions/Function2;
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
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyGrid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n+ 2 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot\n*L\n1#1,375:1\n495#2,4:376\n500#2:385\n129#3,5:380\n*S KotlinDebug\n*F\n+ 1 LazyGrid.kt\nandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1\n*L\n322#1:376,4\n322#1:385\n322#1:380,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;",
        "containerConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;"
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
.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field final synthetic $isVertical:Z

.field final synthetic $itemProviderLambda:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $reverseLayout:Z

.field final synthetic $slots:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "-",
            "Landroidx/compose/ui/unit/Constraints;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSlots;",
            ">;",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/foundation/layout/Arrangement$Horizontal;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 183
    check-cast p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;J)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    const-string v1, "$this$null"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 184
    :goto_0
    invoke-static {v12, v13, v1}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->checkScrollableContainerConstraints-K40F9xA(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 192
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {v11, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 195
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->calculateStartPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v1

    invoke-interface {v11, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v1

    :goto_1
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 200
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v11, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 203
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->calculateEndPadding(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v2

    invoke-interface {v11, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_2
    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 205
    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result v3

    invoke-interface {v11, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 206
    invoke-interface {v4}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    move-result v4

    invoke-interface {v11, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v4

    add-int v14, v3, v4

    add-int v15, v1, v2

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v5, :cond_3

    move v6, v14

    goto :goto_3

    :cond_3
    move v6, v15

    :goto_3
    if-eqz v5, :cond_4

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v7, :cond_4

    move/from16 v20, v3

    goto :goto_4

    :cond_4
    if-eqz v5, :cond_5

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v7, :cond_5

    move/from16 v20, v4

    goto :goto_4

    :cond_5
    if-nez v5, :cond_6

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-nez v4, :cond_6

    move/from16 v20, v1

    goto :goto_4

    :cond_6
    move/from16 v20, v2

    :goto_4
    sub-int v21, v6, v20

    neg-int v2, v15

    neg-int v4, v14

    .line 218
    invoke-static {v12, v13, v2, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    move-result-wide v26

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$itemProviderLambda:Lkotlin/jvm/functions/Function0;

    .line 220
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    .line 221
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getSpanLayoutProvider()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move-result-object v10

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$slots:Lkotlin/jvm/functions/Function2;

    .line 222
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->box-impl(J)Landroidx/compose/ui/unit/Constraints;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v30, v2

    check-cast v30, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    .line 223
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->getSizes()[I

    move-result-object v2

    array-length v2, v2

    .line 224
    invoke-virtual {v10, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->setSlotsPerLine(I)V

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 227
    move-object v8, v11

    check-cast v8, Landroidx/compose/ui/unit/Density;

    invoke-virtual {v4, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setDensity$foundation_release(Landroidx/compose/ui/unit/Density;)V

    iget-object v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 228
    invoke-virtual {v4, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setSlotsPerLine$foundation_release(I)V

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    const-string v4, "Required value was null."

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v2, :cond_7

    .line 231
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
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    if-eqz v2, :cond_10

    .line 233
    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->getSpacing-D9Ej5fM()F

    move-result v2

    .line 235
    :goto_5
    invoke-interface {v11, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->roundToPx-0680j_4(F)I

    move-result v22

    .line 236
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->getItemCount()I

    move-result v7

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_9

    .line 240
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    sub-int/2addr v2, v14

    goto :goto_6

    .line 242
    :cond_9
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    sub-int/2addr v2, v15

    :goto_6
    move/from16 v19, v2

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    if-eqz v2, :cond_d

    if-lez v19, :cond_a

    goto :goto_8

    :cond_a
    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    if-eqz v2, :cond_b

    goto :goto_7

    :cond_b
    add-int v1, v1, v19

    :goto_7
    if-eqz v2, :cond_c

    add-int v3, v3, v19

    .line 250
    :cond_c
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    goto :goto_9

    .line 245
    :cond_d
    :goto_8
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v1

    :goto_9
    move-wide/from16 v16, v1

    .line 256
    new-instance v18, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    move-object/from16 v1, v18

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v4, v22

    move/from16 v23, v7

    move/from16 v7, v20

    move-object/from16 v37, v8

    move/from16 v8, v21

    move-object v11, v9

    move-object/from16 v38, v10

    move-wide/from16 v9, v16

    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IZZIIJ)V

    .line 283
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    iget-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move-object/from16 v28, v1

    move/from16 v29, v2

    move/from16 v31, v23

    move/from16 v32, v22

    move-object/from16 v33, v18

    move-object/from16 v34, v38

    invoke-direct/range {v28 .. v34}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(ZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 305
    new-instance v3, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;

    move-object/from16 v7, v38

    invoke-direct {v3, v7, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->setPrefetchInfoRetriever$foundation_release(Lkotlin/jvm/functions/Function1;)V

    .line 322
    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 377
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->createNonObservableSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    .line 380
    :try_start_0
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 324
    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemIndex()I

    move-result v5

    .line 323
    invoke-virtual {v3, v11, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->updateScrollPositionIfTheFirstItemWasMoved$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;I)I

    move-result v5

    move/from16 v8, v23

    if-lt v5, v8, :cond_f

    if-gtz v8, :cond_e

    goto :goto_a

    :cond_e
    add-int/lit8 v3, v8, -0x1

    .line 332
    invoke-virtual {v7, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v3

    const/4 v5, 0x0

    move/from16 v23, v3

    move/from16 v24, v5

    goto :goto_b

    .line 327
    :cond_f
    :goto_a
    invoke-virtual {v7, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getLineIndexOfItem(I)I

    move-result v5

    .line 328
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getFirstVisibleItemScrollOffset()I

    move-result v3

    move/from16 v24, v3

    move/from16 v23, v5

    .line 335
    :goto_b
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    :try_start_2
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 337
    move-object v9, v11

    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 338
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 339
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getBeyondBoundsInfo$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    move-result-object v3

    .line 337
    invoke-static {v9, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->calculateLazyLayoutPinnedIndices(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v35

    .line 344
    move-object/from16 v17, v1

    check-cast v17, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;

    .line 345
    check-cast v18, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 352
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getScrollToBeConsumed$foundation_release()F

    move-result v25

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$isVertical:Z

    move/from16 v28, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    move-object/from16 v29, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    move-object/from16 v30, v1

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$reverseLayout:Z

    move/from16 v31, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 359
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getPlacementAnimator$foundation_release()Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;

    move-result-object v33

    .line 342
    new-instance v9, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move v5, v15

    move v6, v14

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;JII)V

    move-object/from16 v36, v9

    check-cast v36, Lkotlin/jvm/functions/Function3;

    move/from16 v16, v8

    move-object/from16 v32, v37

    move-object/from16 v34, v7

    invoke-static/range {v16 .. v36}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureKt;->measureLazyGrid-ZRKPzZ8(ILandroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;IIIIIIFJZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;ZLandroidx/compose/ui/unit/Density;Landroidx/compose/foundation/lazy/grid/LazyGridItemPlacementAnimator;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;Ljava/util/List;Lkotlin/jvm/functions/Function3;)Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move-result-object v1

    iget-object v0, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 371
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->applyMeasureResult$foundation_release(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;)V

    return-object v1

    :catchall_0
    move-exception v0

    .line 384
    :try_start_3
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 385
    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw v0

    .line 233
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
