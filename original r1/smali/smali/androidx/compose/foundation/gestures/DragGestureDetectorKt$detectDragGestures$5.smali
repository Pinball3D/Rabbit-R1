.class final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "DragGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->detectDragGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDragGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5\n+ 2 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,873:1\n658#2,18:874\n676#2,4:901\n680#2,58:912\n116#3,2:892\n33#3,6:894\n118#3:900\n33#3,6:905\n118#3:911\n*S KotlinDebug\n*F\n+ 1 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5\n*L\n180#1:874,18\n180#1:901,4\n180#1:912,58\n180#1:892,2\n180#1:894,6\n180#1:900\n180#1:905,6\n180#1:911\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$5"
    f = "DragGestureDetector.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0xb0,
        0x37a,
        0x3ac,
        0xc1
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "$this$awaitEachGesture",
        "down",
        "overSlop",
        "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv",
        "pointerDirectionConfig$iv",
        "pointer$iv",
        "triggerOnMainAxisSlop$iv",
        "touchSlop$iv",
        "totalMainPositionChange$iv",
        "totalCrossPositionChange$iv",
        "$this$awaitEachGesture",
        "down",
        "overSlop",
        "$this$awaitPointerSlopOrCancellation_u2dwtdNQyU_u24default$iv",
        "pointerDirectionConfig$iv",
        "pointer$iv",
        "dragEvent$iv",
        "triggerOnMainAxisSlop$iv",
        "touchSlop$iv",
        "totalMainPositionChange$iv",
        "totalCrossPositionChange$iv"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "I$0",
        "F$0",
        "F$1",
        "F$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "I$0",
        "F$0",
        "F$1",
        "F$2"
    }
.end annotation


# instance fields
.field final synthetic $onDrag:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragCancel:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragEnd:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDragStart:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragStart:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragStart:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/coroutines/Continuation;

    return-object v6
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    .line 175
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto/16 :goto_10

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$2:F

    iget v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$1:F

    iget v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    iget v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->I$0:I

    iget-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v15, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    iget-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v5, v12

    move-object v12, v15

    const/4 v9, 0x3

    move-object/from16 v19, v4

    move v4, v2

    move-object v2, v6

    move-object v6, v3

    move-object/from16 v3, v19

    move/from16 v20, v10

    move-object v10, v7

    move/from16 v7, v20

    goto/16 :goto_b

    :cond_2
    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$2:F

    iget v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$1:F

    iget v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    iget v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->I$0:I

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    iget-object v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    move/from16 v19, v4

    move v4, v2

    move-object v2, v11

    move/from16 v11, v19

    move-object/from16 v20, v7

    move v7, v3

    move-object v3, v14

    move v14, v6

    move-object v6, v13

    move-object/from16 v13, v20

    move-object/from16 v21, v12

    move-object v12, v10

    move-object/from16 v10, v21

    goto/16 :goto_3

    :cond_3
    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 176
    move-object v13, v0

    check-cast v13, Lkotlin/coroutines/Continuation;

    const/4 v14, 0x2

    const/4 v15, 0x0

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    move-object v10, v2

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_5

    return-object v1

    .line 175
    :cond_5
    :goto_0
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 178
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    iput-wide v6, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 181
    :goto_1
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v6

    .line 182
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v10

    .line 877
    invoke-static {}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->getHorizontalPointerDirectionConfig()Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    move-result-object v11

    .line 881
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v12

    invoke-static {v12, v6, v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v6, v1

    move-object v1, v9

    goto/16 :goto_e

    .line 884
    :cond_6
    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v12

    invoke-static {v12, v10}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v10

    .line 885
    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v6, v12, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v6, v3

    move-object v13, v12

    const/4 v7, 0x0

    const/4 v14, 0x0

    move-object v3, v2

    move-object v12, v11

    move v11, v10

    move-object v10, v4

    const/4 v4, 0x0

    .line 890
    :goto_2
    move-object v15, v0

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    iput v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->I$0:I

    iput v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    iput v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$1:F

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$2:F

    iput v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    invoke-static {v2, v9, v15, v8, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v1, :cond_7

    return-object v1

    .line 175
    :cond_7
    :goto_3
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 891
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v5

    .line 895
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_9

    .line 896
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 893
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    .line 891
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v1

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    iget-wide v5, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    goto :goto_4

    :cond_9
    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-object/from16 v17, v6

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v1, v16

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v1, :cond_a

    :goto_6
    move-object/from16 v6, p0

    move-object v2, v3

    move-object v4, v10

    move-object/from16 v3, v17

    goto/16 :goto_c

    .line 901
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 903
    :cond_b
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 904
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 906
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_d

    .line 907
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 893
    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 904
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    :goto_8
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v6, :cond_e

    goto :goto_6

    .line 916
    :cond_e
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v1

    iput-wide v1, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v6, v17

    const/4 v5, 0x2

    :goto_9
    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 919
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    .line 920
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v8

    .line 922
    invoke-interface {v12, v5, v6}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->mainAxisDelta-k-4lQ0M(J)F

    move-result v2

    .line 923
    invoke-interface {v12, v8, v9}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->mainAxisDelta-k-4lQ0M(J)F

    move-result v15

    sub-float/2addr v2, v15

    .line 925
    invoke-interface {v12, v5, v6}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->crossAxisDelta-k-4lQ0M(J)F

    move-result v5

    .line 926
    invoke-interface {v12, v8, v9}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->crossAxisDelta-k-4lQ0M(J)F

    move-result v6

    sub-float/2addr v5, v6

    add-float/2addr v2, v7

    add-float/2addr v4, v5

    if-eqz v14, :cond_10

    .line 931
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    goto :goto_a

    .line 933
    :cond_10
    invoke-interface {v12, v2, v4}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v5

    .line 936
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v5

    :goto_a
    cmpg-float v6, v5, v11

    if-gez v6, :cond_13

    .line 940
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v6, v0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    move-object/from16 v7, v17

    iput-object v7, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    move-object/from16 v8, p1

    iput-object v8, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    iput v14, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->I$0:I

    iput v11, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$0:F

    iput v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$1:F

    iput v4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->F$2:F

    const/4 v9, 0x3

    iput v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    invoke-interface {v8, v5, v6}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v6, p0

    if-ne v5, v6, :cond_11

    return-object v6

    :cond_11
    move v5, v14

    move-object v14, v13

    move-object v13, v1

    move-object v1, v6

    move-object v6, v7

    move v7, v2

    move-object v2, v8

    .line 941
    :goto_b
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v2, v3

    move-object v3, v6

    move-object v4, v10

    move-object v6, v1

    :goto_c
    const/4 v1, 0x0

    goto :goto_e

    :cond_12
    move-object v13, v14

    const/4 v8, 0x1

    const/4 v9, 0x0

    move v14, v5

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_13
    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, v17

    const/4 v9, 0x3

    if-eqz v14, :cond_14

    .line 947
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v5, v11

    sub-float/2addr v2, v5

    .line 948
    invoke-interface {v12, v2, v4}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v4

    move-object v15, v10

    goto :goto_d

    :cond_14
    move-object v15, v10

    .line 953
    invoke-interface {v12, v2, v4}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v9

    .line 957
    invoke-static {v9, v10, v5}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(JF)J

    move-result-wide v4

    invoke-static {v4, v5, v11}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v4

    .line 958
    invoke-static {v9, v10, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v4

    .line 185
    :goto_d
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    move-object v10, v15

    .line 186
    iput-wide v4, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 965
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v2, v3

    move-object v3, v7

    move-object v4, v10

    :goto_e
    if-eqz v1, :cond_16

    .line 188
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_f

    :cond_15
    move-object v1, v6

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_16
    :goto_f
    if-eqz v1, :cond_19

    .line 190
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragStart:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    iget-wide v4, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$2;

    iget-object v5, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDrag:Lkotlin/jvm/functions/Function2;

    invoke-direct {v1, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5$2;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v9, 0x0

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$1:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$3:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$4:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$5:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->L$6:Ljava/lang/Object;

    const/4 v15, 0x4

    iput v15, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->label:I

    invoke-static {v2, v3, v4, v1, v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->drag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_17

    return-object v6

    :cond_17
    :goto_10
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_18

    .line 198
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragCancel:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_11

    .line 200
    :cond_18
    iget-object v0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$5;->$onDragEnd:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 203
    :cond_19
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_1a
    move-object v1, v6

    move-object v6, v7

    move-object v2, v8

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    goto/16 :goto_9
.end method
