.class final Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.material3.SliderKt$rangeSliderPressDragModifier$1$1$1"
    f = "Slider.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x4e3,
        0x4ed,
        0x500
    }
    m = "invokeSuspend"
    n = {
        "$this$awaitEachGesture",
        "$this$awaitEachGesture",
        "event",
        "interaction",
        "posX",
        "draggingStart",
        "interaction",
        "draggingStart"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $gestureEndAction:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $isRtl:Z

.field final synthetic $maxPx:I

.field final synthetic $onDrag:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

.field final synthetic $rawOffsetEnd:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $rawOffsetStart:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZILandroidx/compose/material3/RangeSliderLogic;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroidx/compose/material3/RangeSliderLogic;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    iput p2, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$maxPx:I

    iput-object p3, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iput-object p4, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iput-object p5, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    iput-object p7, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance v10, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;

    iget-boolean v1, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    iget v2, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$maxPx:I

    iget-object v3, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    iget-object v4, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iget-object v5, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    iget-object v7, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iget-object v8, p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    move-object v0, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;-><init>(ZILandroidx/compose/material3/RangeSliderLogic;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v10, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlin/coroutines/Continuation;

    return-object v10
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    .line 1250
    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v4, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v8, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    iget-object v9, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v10, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v11, v10

    move-object v10, v9

    move-object v9, v4

    move-object/from16 v4, p1

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1251
    move-object v11, v0

    check-cast v11, Lkotlin/coroutines/Continuation;

    const/4 v12, 0x2

    const/4 v13, 0x0

    iput-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    move-object v8, v2

    invoke-static/range {v8 .. v13}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->awaitFirstDown$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    move-object v10, v2

    .line 1250
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 1252
    new-instance v2, Landroidx/compose/foundation/interaction/DragInteraction$Start;

    invoke-direct {v2}, Landroidx/compose/foundation/interaction/DragInteraction$Start;-><init>()V

    .line 1253
    new-instance v8, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    iget-boolean v11, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    if-eqz v11, :cond_5

    iget v11, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$maxPx:I

    int-to-float v11, v11

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v12

    sub-float/2addr v11, v12

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    :goto_1
    iput v11, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v11, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    .line 1254
    iget v12, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v11, v12}, Landroidx/compose/material3/RangeSliderLogic;->compareOffsets(F)I

    move-result v11

    .line 1255
    new-instance v12, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    if-eqz v11, :cond_6

    if-gez v11, :cond_7

    goto :goto_2

    :cond_6
    iget-object v11, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    .line 1258
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget v13, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    cmpl-float v11, v11, v13

    if-lez v11, :cond_7

    :goto_2
    move v11, v7

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    .line 1255
    :goto_3
    iput-boolean v11, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1261
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v13

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v11

    move-object v15, v0

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v10, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    iput-object v12, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    invoke-static {v10, v13, v14, v11, v15}, Landroidx/compose/material3/SliderKt;->access$awaitSlop-8vUncbI(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_8

    return-object v1

    :cond_8
    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v2

    move-object v2, v12

    :goto_4
    check-cast v4, Lkotlin/Pair;

    if-eqz v4, :cond_b

    iget-object v12, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetEnd:Landroidx/compose/runtime/State;

    iget-object v13, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rawOffsetStart:Landroidx/compose/runtime/State;

    iget-boolean v14, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    .line 1262
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v5

    invoke-static {v15, v5}, Landroidx/compose/material3/DragGestureDetectorCopyKt;->pointerSlop-E8SPZFQ(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v5

    .line 1263
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iget v15, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v12, v15

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v12, v12, v5

    if-gez v12, :cond_b

    .line 1264
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    iget v13, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    cmpg-float v5, v12, v5

    if-gez v5, :cond_b

    .line 1266
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v12, 0x0

    if-eqz v14, :cond_9

    cmpl-float v5, v5, v12

    if-ltz v5, :cond_a

    goto :goto_5

    :cond_9
    cmpg-float v5, v5, v12

    if-gez v5, :cond_a

    :goto_5
    move v5, v7

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 1267
    :goto_6
    iput-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1268
    iget v5, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v12

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    add-float/2addr v5, v4

    iput v5, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    :cond_b
    iget-object v4, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    .line 1273
    iget-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 1274
    iget v7, v9, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 1275
    move-object v9, v8

    check-cast v9, Landroidx/compose/foundation/interaction/Interaction;

    iget-object v12, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 1272
    invoke-virtual {v4, v5, v7, v9, v12}, Landroidx/compose/material3/RangeSliderLogic;->captureThumb(ZFLandroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V

    .line 1280
    :try_start_1
    invoke-virtual {v10}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v4

    new-instance v7, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$finishInteraction$success$1;

    iget-object v9, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$onDrag:Landroidx/compose/runtime/State;

    iget-boolean v10, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$isRtl:Z

    invoke-direct {v7, v9, v2, v10}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$finishInteraction$success$1;-><init>(Landroidx/compose/runtime/State;Lkotlin/jvm/internal/Ref$BooleanRef;Z)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->label:I

    invoke-static {v11, v4, v5, v7, v9}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->horizontalDrag-jO51t88(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move-object v1, v2

    move-object v2, v8

    :goto_7
    :try_start_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1285
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Stop;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Stop;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v3, Landroidx/compose/foundation/interaction/DragInteraction;

    goto :goto_8

    .line 1287
    :cond_d
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v3, Landroidx/compose/foundation/interaction/DragInteraction;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_0
    move-object v1, v2

    move-object v2, v8

    .line 1290
    :catch_1
    new-instance v3, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;

    invoke-direct {v3, v2}, Landroidx/compose/foundation/interaction/DragInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/DragInteraction$Start;)V

    check-cast v3, Landroidx/compose/foundation/interaction/DragInteraction;

    :goto_8
    iget-object v2, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$gestureEndAction:Landroidx/compose/runtime/State;

    .line 1293
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-boolean v4, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1294
    new-instance v2, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$2;

    iget-object v0, v0, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1;->$rangeSliderLogic:Landroidx/compose/material3/RangeSliderLogic;

    invoke-direct {v2, v0, v1, v3, v6}, Landroidx/compose/material3/SliderKt$rangeSliderPressDragModifier$1$1$1$2;-><init>(Landroidx/compose/material3/RangeSliderLogic;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/compose/foundation/interaction/DragInteraction;Lkotlin/coroutines/Continuation;)V

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1299
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
