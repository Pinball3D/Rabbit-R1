.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LazyLayoutAnimateItemModifierNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->animatePlacementDelta--gyyYBs(J)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutAnimateItemModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutAnimateItemModifierNode.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1\n+ 2 IntOffset.kt\nandroidx/compose/ui/unit/IntOffset\n*L\n1#1,135:1\n79#2:136\n*S KotlinDebug\n*F\n+ 1 LazyLayoutAnimateItemModifierNode.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1\n*L\n102#1:136\n*E\n"
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
    c = "androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1"
    f = "LazyLayoutAnimateItemModifierNode.kt"
    i = {
        0x0
    }
    l = {
        0x61,
        0x67
    }
    m = "invokeSuspend"
    n = {
        "spec"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $totalDelta:J

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->$totalDelta:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    iget-wide v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->$totalDelta:J

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    .line 83
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 85
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$getPlacementDeltaAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 87
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getPlacementAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    instance-of p1, p1, Landroidx/compose/animation/core/SpringSpec;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 88
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getPlacementAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNodeKt;->access$getInterruptionSpec$p()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/FiniteAnimationSpec;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 93
    invoke-virtual {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->getPlacementAnimationSpec()Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object p1

    :goto_0
    move-object v1, p1

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 95
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$getPlacementDeltaAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 97
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$getPlacementDeltaAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    iget-wide v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->$totalDelta:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v4

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->label:I

    invoke-virtual {p1, v4, v5}, Landroidx/compose/animation/core/Animatable;->snapTo(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 102
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$getPlacementDeltaAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntOffset;->unbox-impl()J

    move-result-wide v3

    iget-wide v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->$totalDelta:J

    .line 136
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p1

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    sub-int/2addr p1, v7

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v3

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide v3

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    .line 103
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$getPlacementDeltaAnimation$p(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;)Landroidx/compose/animation/core/Animatable;

    move-result-object v5

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    move-result-object v6

    move-object v7, v1

    check-cast v7, Landroidx/compose/animation/core/AnimationSpec;

    const/4 v8, 0x0

    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    invoke-direct {p1, v1, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;J)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->label:I

    invoke-static/range {v5 .. v12}, Landroidx/compose/animation/core/Animatable;->animateTo$default(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode$animatePlacementDelta$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;

    const/4 p1, 0x0

    .line 108
    invoke-static {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;->access$setAnimationInProgress(Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;Z)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    :catch_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
