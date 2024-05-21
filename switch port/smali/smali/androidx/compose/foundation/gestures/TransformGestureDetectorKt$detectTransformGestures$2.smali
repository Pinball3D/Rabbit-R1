.class final Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "TransformGestureDetector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->detectTransformGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nTransformGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,255:1\n101#2,2:256\n33#2,6:258\n103#2:264\n33#2,6:265\n101#2,2:271\n33#2,6:273\n103#2:279\n*S KotlinDebug\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2\n*L\n62#1:256,2\n62#1:258,6\n62#1:264\n96#1:265,6\n103#1:271,2\n103#1:273,6\n103#1:279\n*E\n"
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
    c = "androidx.compose.foundation.gestures.TransformGestureDetectorKt$detectTransformGestures$2"
    f = "TransformGestureDetector.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x3b,
        0x3d
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom",
        "$this$awaitEachGesture",
        "rotation",
        "zoom",
        "pan",
        "pastTouchSlop",
        "touchSlop",
        "lockedToPanZoom"
    }
    s = {
        "L$0",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1",
        "L$0",
        "F$0",
        "F$1",
        "J$0",
        "I$0",
        "F$2",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $onGesture:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/ui/geometry/Offset;",
            "Landroidx/compose/ui/geometry/Offset;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $panZoomLock:Z

.field F$0:F

.field F$1:F

.field F$2:F

.field I$0:I

.field I$1:I

.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$panZoomLock:Z

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$onGesture:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$panZoomLock:Z

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$onGesture:Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;-><init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->label:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    iget v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    iget v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    iget-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    iget v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    iget v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    iget-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    .line 51
    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    iget v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    iget v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    iget-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    iget v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    iget v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    iget-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 54
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v12

    .line 56
    invoke-interface {v14}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 59
    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    const/4 v15, 0x2

    const/16 v16, 0x0

    iput-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    iput v5, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    iput v3, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    iput-wide v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    iput v6, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    iput v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    iput v6, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    iput v7, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->label:I

    move-object v8, v14

    move-wide/from16 v17, v12

    move v12, v15

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_3

    return-object v1

    :cond_3
    move v8, v2

    move v12, v3

    move v13, v5

    move v2, v6

    move v9, v2

    move-wide/from16 v10, v17

    .line 61
    :goto_0
    move-object v15, v0

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v14, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->L$0:Ljava/lang/Object;

    iput v13, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$0:F

    iput v12, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$1:F

    iput-wide v10, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->J$0:J

    iput v9, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$0:I

    iput v8, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->F$2:F

    iput v2, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->I$1:I

    iput v4, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->label:I

    const/4 v4, 0x0

    invoke-static {v14, v4, v15, v7, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_4

    return-object v1

    .line 51
    :cond_4
    :goto_1
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 62
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v15

    .line 259
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    move v5, v6

    :goto_2
    if-ge v5, v3, :cond_6

    .line 260
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 257
    check-cast v19, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 62
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v19

    if-eqz v19, :cond_5

    move v3, v7

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v3, v6

    :goto_3
    if-nez v3, :cond_12

    .line 64
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v5

    .line 65
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v15

    move/from16 p0, v8

    .line 66
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v7

    if-nez v9, :cond_9

    mul-float/2addr v12, v5

    add-float/2addr v13, v15

    .line 71
    invoke-static {v10, v11, v7, v8}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v10

    .line 73
    invoke-static {v4, v6}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v20

    move-object/from16 p1, v1

    const/4 v6, 0x1

    int-to-float v1, v6

    sub-float/2addr v1, v12

    .line 74
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v1, v1, v20

    const v19, 0x40490fdb    # (float)Math.PI

    mul-float v19, v19, v13

    mul-float v19, v19, v20

    const/high16 v20, 0x43340000    # 180.0f

    div-float v19, v19, v20

    .line 75
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    .line 76
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v20

    cmpl-float v1, v1, p0

    if-gtz v1, :cond_7

    cmpl-float v1, v19, p0

    if-gtz v1, :cond_7

    cmpl-float v1, v20, p0

    if-lez v1, :cond_a

    .line 83
    :cond_7
    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$panZoomLock:Z

    if-eqz v1, :cond_8

    cmpg-float v1, v19, p0

    if-gez v1, :cond_8

    move v2, v6

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    move v9, v6

    goto :goto_5

    :cond_9
    move-object/from16 p1, v1

    const/4 v6, 0x1

    :cond_a
    :goto_5
    if-eqz v9, :cond_10

    const/4 v1, 0x0

    .line 88
    invoke-static {v4, v1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v19

    if-eqz v2, :cond_b

    const/4 v15, 0x0

    :cond_b
    const/16 v18, 0x0

    cmpg-float v21, v15, v18

    if-nez v21, :cond_d

    const/high16 v17, 0x3f800000    # 1.0f

    cmpg-float v21, v5, v17

    if-nez v21, :cond_c

    .line 92
    sget-object v21, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    move/from16 v22, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-static {v7, v8, v1, v2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_6

    :cond_c
    move/from16 v22, v2

    goto :goto_6

    :cond_d
    move/from16 v22, v2

    const/high16 v17, 0x3f800000    # 1.0f

    .line 94
    :goto_6
    iget-object v1, v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;->$onGesture:Lkotlin/jvm/functions/Function4;

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v7

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v1, v2, v7, v5, v8}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_e
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 266
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v2, :cond_11

    .line 267
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 268
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 97
    invoke-static {v7}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 98
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    move/from16 v22, v2

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    :cond_11
    move/from16 v2, v22

    goto :goto_8

    :cond_12
    move-object/from16 p1, v1

    move v6, v7

    move/from16 p0, v8

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    :goto_8
    if-nez v3, :cond_14

    .line 103
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 274
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_14

    .line 275
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 272
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 103
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v8, p0

    move-object/from16 v1, p1

    move v7, v6

    move/from16 v3, v17

    move/from16 v5, v18

    const/4 v4, 0x2

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_13
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 104
    :cond_14
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
