.class final Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Recomposer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "androidx.compose.runtime.Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1"
    f = "Recomposer.kt"
    i = {}
    l = {
        0x315
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

.field final synthetic $parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

.field label:I

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/compose/runtime/MonotonicFrameClock;",
            "Landroidx/compose/runtime/ProduceFrameSignal;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    invoke-direct {p1, v0, v1, p0, p2}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 789
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->$parentFrameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    iget-object v3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->$frameSignal:Landroidx/compose/runtime/ProduceFrameSignal;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeConcurrentlyAndApplyChanges$2$frameLoop$1;->label:I

    invoke-static {p1, v1, v3, v4}, Landroidx/compose/runtime/Recomposer;->access$runFrameLoop(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/MonotonicFrameClock;Landroidx/compose/runtime/ProduceFrameSignal;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
