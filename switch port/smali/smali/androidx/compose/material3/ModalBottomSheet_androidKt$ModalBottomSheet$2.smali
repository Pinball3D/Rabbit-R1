.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->ModalBottomSheet-EP0qOeE(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$scrimColor:J

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$sheetState:Landroidx/compose/material3/SheetState;

    move v1, p5

    iput v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$$dirty:I

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$containerColor:J

    move-wide v1, p12

    iput-wide v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$contentColor:J

    move/from16 v1, p14

    iput v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$tonalElevation:F

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$dragHandle:Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$content:Lkotlin/jvm/functions/Function3;

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$$dirty1:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v1, p2

    const-string v2, "C177@8118L4446:ModalBottomSheet.android.kt#uh7d8r"

    invoke-static {v4, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 178
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 178
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.ModalBottomSheet.<anonymous> (ModalBottomSheet.android.kt:176)"

    const v5, 0x54e81af0

    invoke-static {v5, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v5, v3}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v15, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;

    move-object v6, v15

    iget-wide v7, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$scrimColor:J

    iget-object v9, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$animateToDismiss:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$sheetState:Landroidx/compose/material3/SheetState;

    iget v11, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$$dirty:I

    iget-object v12, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v13, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$anchorChangeHandler:Landroidx/compose/material3/AnchorChangeHandler;

    iget-object v14, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$settleToDismiss:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object v2, v15

    move-object v15, v3

    move-object/from16 v25, v6

    iget-wide v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$containerColor:J

    move-wide/from16 v16, v5

    iget-wide v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$contentColor:J

    move-wide/from16 v18, v5

    iget v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$tonalElevation:F

    move/from16 v20, v5

    iget-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$dragHandle:Lkotlin/jvm/functions/Function2;

    move-object/from16 v21, v5

    iget-object v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$content:Lkotlin/jvm/functions/Function3;

    move-object/from16 v22, v5

    iget v5, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$$dirty1:I

    move/from16 v23, v5

    iget-object v0, v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v24, v0

    move-object/from16 v6, v25

    invoke-direct/range {v6 .. v24}, Landroidx/compose/material3/ModalBottomSheet_androidKt$ModalBottomSheet$2$1;-><init>(JLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;ILandroidx/compose/ui/Modifier;Landroidx/compose/material3/AnchorChangeHandler;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlinx/coroutines/CoroutineScope;)V

    const v0, 0x2237025a

    const/4 v3, 0x1

    invoke-static {v4, v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function3;

    const/16 v5, 0xc06

    const/4 v6, 0x6

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
