.class final Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "Transformable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.compose.foundation.gestures.TransformableKt$transformable$3$block$1$1$1$1"
    f = "Transformable.kt"
    i = {}
    l = {
        0x7f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $channel:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Landroidx/compose/foundation/gestures/TransformEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updatePanZoomLock:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $updatedCanPan:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$updatePanZoomLock:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$updatedCanPan:Landroidx/compose/runtime/State;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

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

    new-instance v6, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$updatePanZoomLock:Landroidx/compose/runtime/State;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$updatedCanPan:Landroidx/compose/runtime/State;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;-><init>(Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->L$0:Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->invoke(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 65535
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    :try_start_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$updatePanZoomLock:Landroidx/compose/runtime/State;

    iget-object v3, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    iget-object v4, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$updatedCanPan:Landroidx/compose/runtime/State;

    .line 127
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->label:I

    invoke-static {p1, v1, v3, v4, v5}, Landroidx/compose/foundation/gestures/TransformableKt;->access$detectZoom(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/runtime/State;Lkotlinx/coroutines/channels/Channel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    .line 131
    sget-object p1, Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$$this$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 129
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 133
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 129
    :cond_3
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TransformableKt$transformable$3$block$1$1$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    .line 131
    sget-object v0, Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;->INSTANCE:Landroidx/compose/foundation/gestures/TransformEvent$TransformStopped;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method
