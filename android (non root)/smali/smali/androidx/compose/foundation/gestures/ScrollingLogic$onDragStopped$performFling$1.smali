.class final Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollingLogic;->onDragStopped-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/unit/Velocity;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/compose/ui/unit/Velocity;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/unit/Velocity;",
        "velocity"
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
    c = "androidx.compose.foundation.gestures.ScrollingLogic$onDragStopped$performFling$1"
    f = "Scrollable.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x1d0,
        0x1d2,
        0x1d4
    }
    m = "invokeSuspend"
    n = {
        "velocity",
        "velocity",
        "available",
        "velocity",
        "velocityLeft"
    }
    s = {
        "J$0",
        "J$0",
        "J$1",
        "J$0",
        "J$1"
    }
.end annotation


# instance fields
.field synthetic J$0:J

.field J$1:J

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/gestures/ScrollingLogic;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide p0

    iput-wide p0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->invoke-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-sF-c-tU(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-wide v1, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iget-wide v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    .line 462
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iget-wide v6, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    move-wide/from16 v16, v4

    move-wide v5, v6

    move-wide/from16 v7, v16

    goto :goto_1

    :cond_2
    iget-wide v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-wide v6, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 463
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getNestedScrollDispatcher()Landroidx/compose/runtime/State;

    move-result-object v2

    .line 464
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    move-object v8, v0

    check-cast v8, Lkotlin/coroutines/Continuation;

    iput-wide v6, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iput v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    invoke-virtual {v2, v6, v7, v8}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPreFling-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-wide v5, v6

    :goto_0
    check-cast v2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v7

    .line 465
    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v7

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 466
    move-object v9, v0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-wide v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iput-wide v7, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iput v4, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    invoke-virtual {v2, v7, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->doFlingAnimation-QWom1Mo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast v2, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v14

    iget-object v2, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->this$0:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 468
    invoke-virtual {v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->getNestedScrollDispatcher()Landroidx/compose/runtime/State;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    .line 469
    invoke-static {v7, v8, v14, v15}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v10

    .line 470
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    iput-wide v5, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$0:J

    iput-wide v14, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->J$1:J

    iput v3, v0, Landroidx/compose/foundation/gestures/ScrollingLogic$onDragStopped$performFling$1;->label:I

    move-wide v12, v14

    move-wide v3, v14

    move-object v14, v2

    .line 468
    invoke-virtual/range {v9 .. v14}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->dispatchPostFling-RZ2iAVY(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-wide v1, v3

    move-wide v3, v5

    :goto_2
    check-cast v0, Landroidx/compose/ui/unit/Velocity;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/Velocity;->unbox-impl()J

    move-result-wide v5

    .line 472
    invoke-static {v1, v2, v5, v6}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v0

    .line 473
    invoke-static {v3, v4, v0, v1}, Landroidx/compose/ui/unit/Velocity;->minus-AH228Gc(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    move-result-object v0

    return-object v0
.end method
