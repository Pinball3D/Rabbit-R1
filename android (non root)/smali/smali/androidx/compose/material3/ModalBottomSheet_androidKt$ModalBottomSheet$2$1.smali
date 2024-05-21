.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModalBottomSheet.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,571:1\n36#2:572\n36#2:579\n36#2:586\n36#2:593\n1114#3,6:573\n1114#3,6:580\n1114#3,6:587\n1114#3,6:594\n*S KotlinDebug\n*F\n+ 1 ModalBottomSheet.android.kt\nandroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1\n*L\n191#1:572\n192#1:579\n201#1:586\n213#1:593\n191#1:573,6\n192#1:580,6\n201#1:587,6\n213#1:594,6\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/AnchorChangeHandler<",
            "Landroidx/compose/material3/SheetValue;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $animateToDismiss:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $containerColor:J

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $dragHandle:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $scrimColor:J

.field final synthetic $settleToDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;

.field final synthetic $tonalElevation:F


# direct methods
.method constructor <init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;ILandroidx/compose/ui/Modifier;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlinx/coroutines/CoroutineScope;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/SheetState;",
            "I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/AnchorChangeHandler<",
            "Landroidx/compose/material3/SheetValue;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJF",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$scrimColor:J

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$sheetState:Landroidx/compose/material3/SheetState;

    move v1, p5

    iput v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$$dirty:I

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$containerColor:J

    move-wide v1, p12

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$contentColor:J

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$tonalElevation:F

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$dragHandle:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$content:Lkotlin/jvm/functions/Function3;

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$$dirty1:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 178
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v2, p3

    const-string v3, "$this$BoxWithConstraints"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "C179@8226L168,184@8434L48,190@8711L36,191@8776L244,200@9080L348,212@9716L75,185@8495L4059:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v10, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v3, v2, 0xe

    const/4 v8, 0x2

    if-nez v3, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v3, v3, 0x5b

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 179
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 266
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 179
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, -0x1

    const-string v4, "androidx.compose.material3.ModalBottomSheet.<anonymous>.<anonymous> (ModalBottomSheet.android.kt:177)"

    const v5, 0x2237025a

    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v9

    iget-wide v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$scrimColor:J

    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    iget-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$sheetState:Landroidx/compose/material3/SheetState;

    .line 183
    invoke-virtual {v5}, Landroidx/compose/material3/SheetState;->getTargetValue()Landroidx/compose/material3/SheetValue;

    move-result-object v5

    sget-object v6, Landroidx/compose/material3/SheetValue;->Hidden:Landroidx/compose/material3/SheetValue;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eq v5, v6, :cond_5

    move v5, v12

    goto :goto_3

    :cond_5
    move v5, v11

    :goto_3
    iget v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$$dirty:I

    shr-int/lit8 v6, v6, 0x15

    and-int/lit8 v7, v6, 0xe

    move-object/from16 v6, p2

    .line 180
    invoke-static/range {v2 .. v7}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$Scrim-3J-VO9M(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V

    .line 185
    sget-object v2, Landroidx/compose/material3/Strings;->Companion:Landroidx/compose/material3/Strings$Companion;

    invoke-virtual {v2}, Landroidx/compose/material3/Strings$Companion;->getBottomSheetPaneTitle-adMyvUU()I

    move-result v2

    const/4 v3, 0x6

    invoke-static {v2, v10, v3}, Landroidx/compose/material3/Strings_androidKt;->getString-NWtq2-8(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 188
    invoke-static {}, Landroidx/compose/material3/SheetDefaultsKt;->getBottomSheetMaxWidth()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v6, v5, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->widthIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 189
    invoke-static {v4, v6, v12, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 190
    sget-object v5, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/Alignment$Companion;->getTopCenter()Landroidx/compose/ui/Alignment;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v4, 0x44faf204

    .line 191
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v5, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 572
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 573
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v6, :cond_6

    .line 574
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v13, v6, :cond_7

    .line 191
    :cond_6
    new-instance v6, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$1$1;

    invoke-direct {v6, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$1$1;-><init>(Ljava/lang/String;)V

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 576
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 572
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 191
    invoke-static {v1, v11, v13, v12, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$sheetState:Landroidx/compose/material3/SheetState;

    .line 192
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 579
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 580
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_8

    .line 581
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v11, v6, :cond_9

    .line 192
    :cond_8
    new-instance v6, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$2$1;

    invoke-direct {v6, v2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$2$1;-><init>(Landroidx/compose/material3/SheetState;)V

    move-object v11, v6

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 583
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 579
    :cond_9
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 192
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/OffsetKt;->offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    .line 201
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 586
    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    .line 587
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v11, :cond_a

    .line 588
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v11

    if-ne v13, v11, :cond_b

    .line 204
    :cond_a
    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    .line 202
    invoke-static {v2, v11, v6}, Landroidx/compose/material3/SheetDefaultsKt;->ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(Landroidx/compose/material3/SheetState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-result-object v13

    .line 590
    invoke-interface {v10, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 586
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v13, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    .line 200
    invoke-static {v1, v13, v7, v8, v7}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;

    int-to-float v7, v9

    iget-object v8, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    .line 213
    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {v10, v5}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 593
    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    .line 594
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_c

    .line 595
    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v5, v4, :cond_d

    .line 213
    :cond_c
    new-instance v4, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$4$1;

    invoke-direct {v4, v8}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$4$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object v5, v4

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 597
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 593
    :cond_d
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 209
    invoke-static {v1, v2, v6, v7, v5}, Landroidx/compose/material3/ModalBottomSheet_androidKt;->access$modalBottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/AnchorChangeHandler;FLkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v4, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$containerColor:J

    iget-wide v6, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$contentColor:J

    iget v8, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$tonalElevation:F

    .line 221
    new-instance v15, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5;

    iget-object v14, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$dragHandle:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$content:Lkotlin/jvm/functions/Function3;

    iget v11, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$$dirty1:I

    iget-object v9, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$sheetState:Landroidx/compose/material3/SheetState;

    iget-object v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move/from16 v21, v8

    iget v8, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$$dirty:I

    move-object/from16 v16, v13

    move-object v13, v15

    move-wide/from16 v22, v6

    move-object v6, v15

    move-object/from16 v15, v16

    move/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    move-object/from16 v19, v12

    move/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1$5;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILandroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;I)V

    const v3, 0x51bbfb1f

    const/4 v7, 0x1

    invoke-static {v10, v3, v7, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iget v0, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;->$$dirty:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x70

    const/high16 v6, 0xc00000

    or-int/2addr v3, v6

    shr-int/lit8 v6, v0, 0x6

    and-int/lit16 v6, v6, 0x380

    or-int/2addr v3, v6

    shr-int/lit8 v6, v0, 0x6

    and-int/lit16 v6, v6, 0x1c00

    or-int/2addr v3, v6

    const v6, 0xe000

    const/4 v7, 0x6

    shr-int/2addr v0, v7

    and-int/2addr v0, v6

    or-int v11, v3, v0

    const/16 v12, 0x60

    move-object v0, v1

    move-object v1, v2

    move-wide v2, v4

    move-wide/from16 v4, v22

    move/from16 v6, v21

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v10, p2

    .line 186
    invoke-static/range {v0 .. v12}, Landroidx/compose/material3/SurfaceKt;->Surface-T9BRK9s(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/foundation/BorderStroke;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_e
    :goto_4
    return-void
.end method
