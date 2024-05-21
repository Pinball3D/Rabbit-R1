.class final Landroidx/compose/animation/core/InfiniteTransition$run$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "InfiniteTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/InfiniteTransition;->run$animation_core_release(Landroidx/compose/runtime/Composer;I)V
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
    c = "androidx.compose.animation.core.InfiniteTransition$run$1"
    f = "InfiniteTransition.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0xb5,
        0xcd
    }
    m = "invokeSuspend"
    n = {
        "$this$LaunchedEffect",
        "durationScale",
        "$this$LaunchedEffect",
        "durationScale"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $toolingOverride:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Long;",
            ">;>;",
            "Landroidx/compose/animation/core/InfiniteTransition;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/animation/core/InfiniteTransition$run$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$1;

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/InfiniteTransition$run$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$1:Ljava/lang/Object;

    .line 65535
    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$FloatRef;

    iget-object v4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v4

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 178
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 181
    :cond_3
    :goto_0
    new-instance v4, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;

    iget-object v5, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->$toolingOverride:Landroidx/compose/runtime/MutableState;

    iget-object v6, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->this$0:Landroidx/compose/animation/core/InfiniteTransition;

    invoke-direct {v4, v5, v6, v1, p1}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->label:I

    invoke-static {v4, v5}, Landroidx/compose/animation/core/InfiniteAnimationPolicyKt;->withInfiniteAnimationFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    .line 204
    :cond_4
    :goto_1
    iget v4, v1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_3

    .line 205
    new-instance v4, Landroidx/compose/animation/core/InfiniteTransition$run$1$2;

    invoke-direct {v4, p1}, Landroidx/compose/animation/core/InfiniteTransition$run$1$2;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    new-instance v5, Landroidx/compose/animation/core/InfiniteTransition$run$1$3;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/compose/animation/core/InfiniteTransition$run$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1;->label:I

    invoke-static {v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0
.end method
