.class public final Landroidx/compose/foundation/gestures/DraggableKt;
.super Ljava/lang/Object;
.source "Draggable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDraggable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 DragGestureDetector.kt\nandroidx/compose/foundation/gestures/DragGestureDetectorKt\n+ 5 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,583:1\n25#2:584\n1097#3,6:585\n658#4,18:591\n676#4,4:618\n680#4,58:629\n581#4,6:687\n615#4,4:693\n619#4,2:706\n621#4,8:715\n588#4,10:723\n116#5,2:609\n33#5,6:611\n118#5:617\n33#5,6:622\n118#5:628\n116#5,2:697\n33#5,6:699\n118#5:705\n33#5,6:708\n118#5:714\n*S KotlinDebug\n*F\n+ 1 Draggable.kt\nandroidx/compose/foundation/gestures/DraggableKt\n*L\n142#1:584\n142#1:585,6\n490#1:591,18\n490#1:618,4\n490#1:629,58\n543#1:687,6\n543#1:693,4\n543#1:706,2\n543#1:715,8\n543#1:723,10\n490#1:609,2\n490#1:611,6\n490#1:617\n490#1:622,6\n490#1:628\n543#1:697,2\n543#1:699,6\n543#1:705\n543#1:708,6\n543#1:714\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u001a!\u0010\u0006\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0007\u00a2\u0006\u0002\u0010\u0007\u001aX\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\t*\u00020\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000e0\u00032\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001aS\u0010\u0016\u001a\u00020\u000e*\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u001a\u00cf\u0001\u0010\u001f\u001a\u00020 *\u00020 2\u0006\u0010!\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0002\u0010\"\u001a\u00020\u000e2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010$2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2>\u0008\u0002\u0010%\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\'\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050+\u0012\u0006\u0012\u0004\u0018\u00010,0&\u00a2\u0006\u0002\u0008-2>\u0008\u0002\u0010.\u001a8\u0008\u0001\u0012\u0004\u0012\u00020\'\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(/\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050+\u0012\u0006\u0012\u0004\u0018\u00010,0&\u00a2\u0006\u0002\u0008-2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u000e\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100\u001aA\u00101\u001a\u00020\u000e*\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u00102\u001a\u0002032\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u0003H\u0082@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u00085\u00106\u001a!\u00107\u001a\u00020\u0004*\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u00088\u00109\u001a!\u00107\u001a\u00020\u0004*\u00020:2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008;\u00109\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006<"
    }
    d2 = {
        "DraggableState",
        "Landroidx/compose/foundation/gestures/DraggableState;",
        "onDelta",
        "Lkotlin/Function1;",
        "",
        "",
        "rememberDraggableState",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;",
        "awaitDownAndSlop",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "canDrag",
        "",
        "startDragImmediately",
        "Lkotlin/Function0;",
        "velocityTracker",
        "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
        "orientation",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "awaitDrag",
        "startEvent",
        "initialDelta",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "Landroidx/compose/foundation/gestures/DragEvent;",
        "reverseDirection",
        "awaitDrag-Su4bsnU",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "draggable",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "enabled",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "onDragStarted",
        "Lkotlin/Function3;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/ParameterName;",
        "name",
        "startedPosition",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "onDragStopped",
        "velocity",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;",
        "onDragOrUp",
        "pointerId",
        "Landroidx/compose/ui/input/pointer/PointerId;",
        "onDrag",
        "onDragOrUp-Axegvzg",
        "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toFloat",
        "toFloat-3MmeM6k",
        "(JLandroidx/compose/foundation/gestures/Orientation;)F",
        "Landroidx/compose/ui/unit/Velocity;",
        "toFloat-sF-c-tU",
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
.method public static final DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    const-string v0, "onDelta"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Landroidx/compose/foundation/gestures/DefaultDraggableState;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/DefaultDraggableState;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/compose/foundation/gestures/DraggableState;

    return-object v0
.end method

.method public static final synthetic access$awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroidx/compose/foundation/gestures/DraggableKt;->awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/gestures/DraggableKt;->toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F

    move-result p0

    return p0
.end method

.method private static final awaitDownAndSlop(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    iget v3, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;

    invoke-direct {v2, v1}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 465
    iget v4, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v0, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$2:F

    iget v4, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$1:F

    iget v7, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    iget v12, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->I$0:I

    iget-object v13, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$5:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v15, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v1, v0

    move v10, v12

    move-object v0, v15

    const/4 v11, 0x4

    move-object v12, v5

    move-object v5, v14

    move-object/from16 v18, v3

    move-object v3, v2

    move v2, v7

    move-object v7, v9

    move-object v9, v6

    move v6, v4

    move-object/from16 v4, v18

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$2:F

    iget v4, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$1:F

    iget v5, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    iget v6, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->I$0:I

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v15, v6

    move v6, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v0

    move-object v0, v9

    move-object v9, v14

    const/4 v14, 0x3

    goto/16 :goto_4

    :cond_3
    iget-object v0, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/util/VelocityTracker;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v9

    move-object v9, v0

    move-object/from16 v0, v18

    move-object/from16 v19, v6

    move-object v6, v4

    move-object/from16 v4, v19

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 472
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    move-object/from16 v9, p4

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput v10, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    invoke-static {v0, v8, v1, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    .line 465
    :cond_6
    :goto_1
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 473
    invoke-interface {v4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_f

    .line 475
    :cond_7
    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 476
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    .line 477
    invoke-static {v6, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 479
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    goto/16 :goto_f

    :cond_8
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v12, 0x0

    .line 481
    iput-object v0, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput v7, v2, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    move-object/from16 p0, v0

    move/from16 p1, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v2

    move/from16 p4, v5

    move-object/from16 p5, v12

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    return-object v3

    :cond_9
    move-object v5, v0

    move-object v4, v6

    move-object v0, v9

    .line 465
    :goto_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 482
    invoke-static {v4, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTrackerKt;->addPointerInputChange(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Landroidx/compose/ui/input/pointer/PointerInputChange;)V

    .line 483
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v7, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v12

    iput-wide v12, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 484
    new-instance v7, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;

    invoke-direct {v7, v4, v6}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$postPointerSlop$1;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlin/jvm/internal/Ref$LongRef;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .line 491
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v12

    .line 492
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v1

    .line 493
    invoke-static {v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->toPointerDirectionConfig(Landroidx/compose/foundation/gestures/Orientation;)Landroidx/compose/foundation/gestures/PointerDirectionConfig;

    move-result-object v0

    .line 598
    invoke-interface {v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v4

    invoke-static {v4, v12, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v13, v11

    goto/16 :goto_e

    .line 601
    :cond_a
    invoke-interface {v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v1

    .line 602
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v12, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v9, v6

    move-object v12, v7

    move v13, v10

    const/4 v6, 0x0

    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    const/4 v1, 0x0

    .line 607
    :goto_3
    iput-object v9, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$5:Ljava/lang/Object;

    iput v13, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->I$0:I

    iput v2, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    iput v6, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$1:F

    iput v1, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$2:F

    const/4 v14, 0x3

    iput v14, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    invoke-static {v7, v11, v3, v10, v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v4, :cond_b

    return-object v4

    :cond_b
    move/from16 v18, v2

    move v2, v1

    move-object v1, v15

    move v15, v13

    move-object v13, v12

    move-object v12, v7

    move-object v7, v5

    move/from16 v5, v18

    .line 465
    :goto_4
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 608
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v8

    .line 612
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_d

    .line 613
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .line 610
    move-object/from16 v17, v16

    check-cast v17, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move/from16 p1, v15

    .line 608
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v14

    move-object/from16 v17, v12

    move-object/from16 p2, v13

    iget-wide v12, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v14, v15, v12, v13}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v12

    if-eqz v12, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p1

    move-object/from16 v13, p2

    move-object/from16 v12, v17

    const/4 v14, 0x3

    goto :goto_5

    :cond_d
    move-object/from16 v17, v12

    move-object/from16 p2, v13

    move/from16 p1, v15

    const/16 v16, 0x0

    :goto_6
    move-object/from16 v13, v16

    check-cast v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v13, :cond_e

    goto/16 :goto_b

    .line 618
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_f

    goto/16 :goto_b

    .line 620
    :cond_f
    invoke-static {v13}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 621
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 623
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v8, :cond_11

    .line 624
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 610
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 621
    invoke-virtual {v12}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_11
    const/4 v11, 0x0

    :goto_8
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v11, :cond_12

    goto/16 :goto_b

    .line 633
    :cond_12
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v10

    iput-wide v10, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move/from16 v13, p1

    move-object/from16 v12, p2

    move v1, v2

    move v2, v5

    move-object v5, v7

    move-object/from16 v7, v17

    goto/16 :goto_c

    .line 636
    :cond_13
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    .line 637
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v14

    .line 639
    invoke-interface {v0, v10, v11}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->mainAxisDelta-k-4lQ0M(J)F

    move-result v1

    .line 640
    invoke-interface {v0, v14, v15}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->mainAxisDelta-k-4lQ0M(J)F

    move-result v8

    sub-float/2addr v1, v8

    .line 642
    invoke-interface {v0, v10, v11}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->crossAxisDelta-k-4lQ0M(J)F

    move-result v8

    .line 643
    invoke-interface {v0, v14, v15}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->crossAxisDelta-k-4lQ0M(J)F

    move-result v10

    sub-float/2addr v8, v10

    add-float/2addr v1, v6

    add-float/2addr v2, v8

    if-eqz p1, :cond_14

    .line 648
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto :goto_9

    .line 650
    :cond_14
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v10

    .line 653
    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v6

    :goto_9
    cmpg-float v8, v6, v5

    if-gez v8, :cond_17

    .line 657
    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v9, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$0:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$1:Ljava/lang/Object;

    move-object/from16 v8, v17

    iput-object v8, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$2:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$3:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$4:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->L$5:Ljava/lang/Object;

    move/from16 v10, p1

    iput v10, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->I$0:I

    iput v5, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$0:F

    iput v1, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$1:F

    iput v2, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->F$2:F

    const/4 v11, 0x4

    iput v11, v3, Landroidx/compose/foundation/gestures/DraggableKt$awaitDownAndSlop$1;->label:I

    invoke-interface {v8, v6, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_15

    return-object v4

    :cond_15
    move v6, v1

    move v1, v2

    move v2, v5

    move-object v5, v7

    move-object v7, v8

    .line 658
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v8

    if-eqz v8, :cond_16

    :goto_b
    move-object v6, v9

    const/4 v13, 0x0

    goto :goto_e

    :cond_16
    move v13, v10

    :goto_c
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_17
    move/from16 v10, p1

    move-object/from16 v12, p2

    move-object/from16 v8, v17

    const/4 v11, 0x4

    if-eqz v10, :cond_18

    .line 664
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    mul-float/2addr v6, v5

    sub-float/2addr v1, v6

    .line 665
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v1

    goto :goto_d

    .line 670
    :cond_18
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/gestures/PointerDirectionConfig;->offsetFromChanges-dBAh8RU(FF)J

    move-result-wide v1

    .line 674
    invoke-static {v1, v2, v6}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(JF)J

    move-result-wide v14

    invoke-static {v14, v15, v5}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v14

    .line 675
    invoke-static {v1, v2, v14, v15}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v1

    .line 680
    :goto_d
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    .line 678
    invoke-interface {v12, v13, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    invoke-virtual {v13}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v6, v9

    :goto_e
    if-eqz v13, :cond_19

    .line 497
    iget-wide v0, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    goto :goto_f

    :cond_19
    const/4 v11, 0x0

    :goto_f
    return-object v11

    :cond_1a
    move v2, v5

    move-object v5, v7

    move-object v7, v8

    move v13, v10

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto :goto_c
.end method

.method private static final awaitDrag-Su4bsnU(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;JLandroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;ZLandroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "J",
            "Landroidx/compose/ui/input/pointer/util/VelocityTracker;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Landroidx/compose/foundation/gestures/DragEvent;",
            ">;Z",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p5

    move v1, p6

    .line 511
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 512
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    .line 513
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v4

    .line 514
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    mul-float/2addr v6, v2

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    mul-float/2addr v2, v3

    invoke-static {v6, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    .line 513
    invoke-static {v4, v5, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    .line 515
    new-instance v4, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragStarted;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p5, v4}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    new-instance v2, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;

    if-eqz v1, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    move-wide v6, p2

    invoke-static {p2, p3, v3}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(JF)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v6, p2

    move-wide v3, v6

    :goto_0
    invoke-direct {v2, v3, v4, v5}, Landroidx/compose/foundation/gestures/DragEvent$DragDelta;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p5, v2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v2

    new-instance v4, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;

    move-object v5, p4

    invoke-direct {v4, p4, p5, p6}, Landroidx/compose/foundation/gestures/DraggableKt$awaitDrag$2;-><init>(Landroidx/compose/ui/input/pointer/util/VelocityTracker;Lkotlinx/coroutines/channels/SendChannel;Z)V

    move-object v0, v4

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object p1, p7

    move-wide p2, v2

    move-object p4, v0

    move-object/from16 p5, p8

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/gestures/DraggableKt;->onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final draggable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/gestures/DraggableState;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    move-object v0, p0

    move-object v4, p2

    move-object/from16 v1, p7

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "state"

    move-object v3, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "orientation"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onDragStarted"

    move-object/from16 v8, p6

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onDragStopped"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v11, Landroidx/compose/foundation/gestures/DraggableElement;

    sget-object v2, Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableKt$draggable$3;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;

    move/from16 v6, p5

    invoke-direct {v2, v6}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$4;-><init>(Z)V

    move-object v7, v2

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v2, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;

    const/4 v6, 0x0

    invoke-direct {v2, v1, p2, v6}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$5;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/coroutines/Continuation;)V

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function3;

    move-object v1, v11

    move-object v2, p1

    move-object v3, v5

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/gestures/DraggableElement;-><init>(Landroidx/compose/foundation/gestures/DraggableState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)V

    check-cast v11, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, v11}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 184
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 185
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;

    invoke-direct {v1, v2}, Landroidx/compose/foundation/gestures/DraggableKt$draggable$2;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v10, v3

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 178
    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method private static final onDragOrUp-Axegvzg(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 532
    iget v3, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$3:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v8, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$2:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v9, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v1, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v10

    move-object/from16 v10, v17

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 537
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v3, p1

    if-ne v3, v0, :cond_3

    sget-object v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$motionFromChange$1;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$motionFromChange$1;

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$motionFromChange$2;->INSTANCE:Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$motionFromChange$2;

    :goto_1
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 687
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v3

    move-wide/from16 v7, p2

    invoke-static {v3, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->access$isPointerUp-DmW0f2w(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v1, p4

    move v0, v5

    move-object v14, v6

    goto/16 :goto_c

    :cond_4
    move-object v3, v1

    move-object v9, v2

    move-object/from16 v1, p4

    move-object v2, v0

    move-object/from16 v0, p0

    .line 693
    :goto_2
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v7, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    move-object v7, v0

    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, v17

    .line 695
    :goto_3
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$1:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$2:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$3:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->L$4:Ljava/lang/Object;

    iput v5, v3, Landroidx/compose/foundation/gestures/DraggableKt$onDragOrUp$1;->label:I

    invoke-static {v7, v6, v3, v5, v6}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v2, :cond_5

    return-object v2

    :cond_5
    move-object/from16 v17, v8

    move-object v8, v0

    move-object/from16 v0, v17

    .line 532
    :goto_4
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 696
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v11

    .line 700
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v12, :cond_7

    .line 701
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 698
    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 p0, v7

    .line 696
    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v6

    iget-wide v4, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/input/pointer/PointerId;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v7, p0

    goto :goto_5

    :cond_7
    move-object/from16 p0, v7

    const/4 v14, 0x0

    :goto_6
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v14, :cond_8

    const/4 v0, 0x1

    const/4 v14, 0x0

    goto :goto_a

    .line 706
    :cond_8
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 707
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 709
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_a

    .line 710
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 698
    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 707
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_8
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v6, :cond_b

    const/4 v0, 0x1

    goto :goto_a

    .line 719
    :cond_b
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v4

    iput-wide v4, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const/4 v0, 0x1

    goto :goto_f

    .line 692
    :cond_c
    invoke-interface {v9, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_d

    const/4 v0, 0x1

    const/16 v16, 0x1

    goto :goto_9

    :cond_d
    const/4 v0, 0x1

    const/16 v16, 0x0

    :goto_9
    xor-int/lit8 v4, v16, 0x1

    if-eqz v4, :cond_13

    :goto_a
    if-nez v14, :cond_e

    :goto_b
    const/4 v14, 0x0

    goto :goto_c

    .line 547
    :cond_e
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_b

    .line 727
    :cond_f
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_c
    if-eqz v14, :cond_10

    .line 548
    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d

    :cond_10
    const/4 v6, 0x0

    :goto_d
    if-eqz v6, :cond_11

    move v4, v0

    goto :goto_e

    :cond_11
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 731
    :cond_12
    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v4

    const/4 v6, 0x0

    move-wide/from16 v17, v4

    move v5, v0

    move-object v0, v8

    move-wide/from16 v7, v17

    move-object/from16 v19, v9

    move-object v9, v2

    move-object/from16 v2, v19

    goto/16 :goto_2

    :cond_13
    :goto_f
    move-object/from16 v7, p0

    move v5, v0

    move-object v0, v8

    const/4 v6, 0x0

    goto/16 :goto_3
.end method

.method public static final rememberDraggableState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/DraggableState;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/foundation/gestures/DraggableState;"
        }
    .end annotation

    const-string v0, "onDelta"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0xaec199d

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberDraggableState)140@6075L29,141@6116L61:Draggable.kt#8bwon0"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.gestures.rememberDraggableState (Draggable.kt:139)"

    .line 140
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    and-int/lit8 p2, p2, 0xe

    .line 141
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    const p2, -0x1d58f75c

    .line 142
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 585
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p2

    .line 586
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 142
    new-instance p2, Landroidx/compose/foundation/gestures/DraggableKt$rememberDraggableState$1$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/gestures/DraggableKt$rememberDraggableState$1$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Landroidx/compose/foundation/gestures/DraggableKt;->DraggableState(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object p2

    .line 588
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 584
    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 142
    check-cast p2, Landroidx/compose/foundation/gestures/DraggableState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p2
.end method

.method private static final toFloat-3MmeM6k(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1

    .line 579
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static final toFloat-sF-c-tU(JLandroidx/compose/foundation/gestures/Orientation;)F
    .locals 1

    .line 582
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result p0

    :goto_0
    return p0
.end method
