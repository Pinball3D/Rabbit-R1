.class public final Landroidx/compose/foundation/gestures/TransformableKt;
.super Ljava/lang/Object;
.source "Transformable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n+ 3 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,220:1\n135#2:221\n101#3,2:222\n33#3,6:224\n103#3:230\n33#3,6:231\n101#3,2:237\n33#3,6:239\n103#3:245\n101#3,2:246\n33#3,6:248\n103#3:254\n*S KotlinDebug\n*F\n+ 1 Transformable.kt\nandroidx/compose/foundation/gestures/TransformableKt\n*L\n139#1:221\n172#1:222,2\n172#1:224,6\n172#1:230\n206#1:231,6\n217#1:237,2\n217#1:239,6\n217#1:245\n218#1:246,2\n218#1:248,6\n218#1:254\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aE\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0012\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\n0\u0004H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a6\u0010\u000c\u001a\u00020\r*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005H\u0007\u001a&\u0010\u000c\u001a\u00020\r*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "detectZoom",
        "",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "panZoomLock",
        "Landroidx/compose/runtime/State;",
        "",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "Landroidx/compose/foundation/gestures/TransformEvent;",
        "canPan",
        "Lkotlin/Function0;",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "transformable",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "Landroidx/compose/foundation/gestures/TransformableState;",
        "lockRotationOnZoomPan",
        "enabled",
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
.method public static final synthetic access$detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableKt;->detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/TransformEvent;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 158
    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v14, :cond_3

    if-eq v2, v11, :cond_2

    if-ne v2, v10, :cond_1

    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$2:I

    iget v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    iget v4, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iget v5, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iget-wide v6, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iget v15, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iget v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iget-object v11, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v14, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/runtime/State;

    iget-object v13, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/Channel;

    iget-object v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/runtime/State;

    iget-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v19, v14

    const/16 v16, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v14, v13

    move-object v13, v9

    move-object v9, v8

    move v8, v15

    move v15, v2

    move-object v2, v0

    const/4 v0, 0x3

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    iget v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iget v4, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iget-wide v5, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iget v7, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iget v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/runtime/State;

    iget-object v11, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    iget-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/runtime/State;

    iget-object v13, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v10

    const/4 v10, 0x2

    move-object/from16 v28, v13

    move-object v13, v11

    move-object/from16 v11, v28

    goto/16 :goto_2

    :cond_3
    iget v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    iget v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iget v4, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iget-wide v5, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iget v7, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iget v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iget-object v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/runtime/State;

    iget-object v11, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/Channel;

    iget-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/runtime/State;

    iget-object v13, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v10

    move-object/from16 v28, v13

    move-object v13, v11

    move-object/from16 v11, v28

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 165
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v9

    .line 167
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/platform/ViewConfiguration;->getTouchSlop()F

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v11, p0

    .line 169
    iput-object v11, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    move-object/from16 v12, p1

    iput-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    move-object/from16 v13, p2

    iput-object v13, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    move-object/from16 v14, p3

    iput-object v14, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iput-wide v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    const/4 v2, 0x0

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iput v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    const/4 v2, 0x1

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    move-object/from16 v2, p0

    move-object v5, v1

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_5

    return-object v8

    :cond_5
    move v3, v0

    move-wide v5, v9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 171
    :goto_1
    iput-object v11, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    iput-object v14, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    iput v9, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iput v7, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iput-wide v5, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iput v4, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iput v3, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iput v2, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    const/4 v10, 0x2

    iput v10, v1, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    const/4 v15, 0x1

    invoke-static {v11, v0, v1, v15, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    return-object v8

    .line 158
    :cond_6
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 172
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v15

    .line 225
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v10

    move/from16 p0, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_8

    .line 226
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 223
    check-cast v20, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 172
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v20

    if-eqz v20, :cond_7

    const/4 v2, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_14

    .line 174
    invoke-static {v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v21

    .line 175
    invoke-static {v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F

    move-result v10

    move-object v15, v1

    move/from16 p1, v2

    .line 176
    invoke-static {v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J

    move-result-wide v1

    if-nez v4, :cond_c

    mul-float v7, v7, v21

    add-float/2addr v9, v10

    .line 181
    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v5

    move/from16 p2, v4

    const/4 v4, 0x0

    .line 183
    invoke-static {v0, v4}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v17

    move/from16 v16, v10

    const/4 v4, 0x1

    int-to-float v10, v4

    sub-float/2addr v10, v7

    .line 184
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float v10, v10, v17

    const v20, 0x40490fdb    # (float)Math.PI

    mul-float v20, v20, v9

    mul-float v20, v20, v17

    const/high16 v17, 0x43340000    # 180.0f

    div-float v20, v20, v17

    .line 185
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v17

    .line 186
    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v20

    cmpl-float v10, v10, v3

    if-gtz v10, :cond_a

    cmpl-float v10, v17, v3

    if-gtz v10, :cond_a

    cmpl-float v10, v20, v3

    if-lez v10, :cond_9

    .line 190
    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v10, p0

    move/from16 v4, p2

    goto :goto_7

    .line 193
    :cond_a
    :goto_5
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b

    cmpg-float v10, v17, v3

    if-gez v10, :cond_b

    move v10, v4

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    .line 194
    :goto_6
    sget-object v4, Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStarted;

    invoke-interface {v13, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_7

    :cond_c
    move/from16 p2, v4

    move/from16 v16, v10

    move/from16 v10, p0

    :goto_7
    if-eqz v4, :cond_12

    if-eqz v10, :cond_d

    const/16 v16, 0x0

    const/16 v24, 0x0

    goto :goto_8

    :cond_d
    move/from16 v24, v16

    const/16 v16, 0x0

    :goto_8
    cmpg-float v19, v24, v16

    if-nez v19, :cond_f

    const/high16 v18, 0x3f800000    # 1.0f

    cmpg-float v19, v21, v18

    if-nez v19, :cond_e

    .line 202
    sget-object v19, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    move/from16 p0, v4

    move-wide/from16 v26, v5

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-interface {v14}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_9

    :cond_e
    move/from16 p0, v4

    move-wide/from16 v26, v5

    goto :goto_9

    :cond_f
    move/from16 p0, v4

    move-wide/from16 v26, v5

    const/high16 v18, 0x3f800000    # 1.0f

    .line 204
    :goto_9
    new-instance v4, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;

    const/16 v25, 0x0

    move-object/from16 v20, v4

    move-wide/from16 v22, v1

    invoke-direct/range {v20 .. v25}, Landroidx/compose/foundation/gestures/TransformEvent$TransformDelta;-><init>(FJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v13, v4}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_10
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_13

    .line 233
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 234
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 207
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 208
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_12
    move/from16 p0, v4

    move-wide/from16 v26, v5

    const/16 v16, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    :cond_13
    move/from16 v5, p0

    move v1, v7

    move-wide/from16 v6, v26

    goto :goto_b

    :cond_14
    move-object v15, v1

    move/from16 p1, v2

    move/from16 p2, v4

    const/16 v16, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    .line 213
    sget-object v1, Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;

    invoke-interface {v13, v1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v10, p0

    move v1, v7

    move-wide v6, v5

    move/from16 v5, p2

    .line 215
    :goto_b
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    move-object v4, v15

    iput-object v11, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$0:Ljava/lang/Object;

    iput-object v12, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$1:Ljava/lang/Object;

    iput-object v13, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$2:Ljava/lang/Object;

    iput-object v14, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->L$4:Ljava/lang/Object;

    iput v9, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$0:F

    iput v1, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$1:F

    iput-wide v6, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->J$0:J

    iput v5, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$0:I

    iput v3, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->F$2:F

    iput v10, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$1:I

    move/from16 v15, p1

    iput v15, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->I$2:I

    move-object/from16 p0, v0

    const/4 v0, 0x3

    iput v0, v4, Landroidx/compose/foundation/gestures/TransformableKt$detectZoom$1;->label:I

    invoke-interface {v11, v2, v4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_15

    return-object v8

    :cond_15
    move-object/from16 v19, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object/from16 v11, p0

    move-object/from16 v28, v8

    move v8, v1

    move-object v1, v4

    move v4, v3

    move v3, v10

    move v10, v9

    move-object/from16 v9, v28

    .line 158
    :goto_c
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 217
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v2

    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    move-object/from16 p0, v1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    .line 241
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .line 238
    check-cast v20, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 217
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v20

    if-eqz v20, :cond_16

    if-nez v5, :cond_17

    const/4 v2, 0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    :goto_e
    if-nez v15, :cond_19

    if-nez v2, :cond_19

    .line 218
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_19

    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 247
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 218
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v11

    if-eqz v11, :cond_18

    move-object/from16 v1, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move v7, v8

    move-object v8, v9

    move v9, v10

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v19

    goto/16 :goto_1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 219
    :cond_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function0;ZZ)Landroidx/compose/ui/Modifier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/TransformableState;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;ZZ)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "canPan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2, p4, p3}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function0;ZZ)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 97
    :goto_0
    new-instance v1, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3;

    invoke-direct {v1, p3, p2, p4, p1}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3;-><init>(ZLkotlin/jvm/functions/Function0;ZLandroidx/compose/foundation/gestures/TransformableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZ)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$1;->INSTANCE:Landroidx/compose/foundation/gestures/TransformableKt$transformable$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1, v0, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function0;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic transformable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function0;ZZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 92
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;Lkotlin/jvm/functions/Function0;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic transformable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 64
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformableKt;->transformable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/TransformableState;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
