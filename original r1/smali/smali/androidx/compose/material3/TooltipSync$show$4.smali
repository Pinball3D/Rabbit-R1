.class final Landroidx/compose/material3/TooltipSync$show$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Tooltip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TooltipSync;->show(Landroidx/compose/material3/TooltipState;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipSync$show$4\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,770:1\n314#2,11:771\n*S KotlinDebug\n*F\n+ 1 Tooltip.kt\nandroidx/compose/material3/TooltipSync$show$4\n*L\n637#1:771,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "<anonymous>",
        ""
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
    c = "androidx.compose.material3.TooltipSync$show$4"
    f = "Tooltip.kt"
    i = {}
    l = {
        0x303,
        0x282
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $persistent:Z

.field final synthetic $state:Landroidx/compose/material3/TooltipState;

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(ZLandroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material3/TooltipState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/TooltipSync$show$4;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/TooltipSync$show$4;->$persistent:Z

    iput-object p2, p0, Landroidx/compose/material3/TooltipSync$show$4;->$state:Landroidx/compose/material3/TooltipState;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/compose/material3/TooltipSync$show$4;

    iget-boolean v1, p0, Landroidx/compose/material3/TooltipSync$show$4;->$persistent:Z

    iget-object p0, p0, Landroidx/compose/material3/TooltipSync$show$4;->$state:Landroidx/compose/material3/TooltipState;

    invoke-direct {v0, v1, p0, p1}, Landroidx/compose/material3/TooltipSync$show$4;-><init>(ZLandroidx/compose/material3/TooltipState;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipSync$show$4;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipSync$show$4;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TooltipSync$show$4;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipSync$show$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/TooltipSync$show$4;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 635
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/material3/TooltipSync$show$4;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/material3/TooltipState;

    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/compose/material3/TooltipSync$show$4;->$persistent:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/compose/material3/TooltipSync$show$4;->$state:Landroidx/compose/material3/TooltipState;

    iput-object p1, p0, Landroidx/compose/material3/TooltipSync$show$4;->L$0:Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/material3/TooltipSync$show$4;->label:I

    .line 771
    check-cast p0, Lkotlin/coroutines/Continuation;

    .line 772
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 778
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 779
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 638
    check-cast p1, Landroidx/compose/material3/RichTooltipState;

    invoke-virtual {p1, v3}, Landroidx/compose/material3/RichTooltipState;->setVisible$material3_release(Z)V

    .line 780
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 771
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p1, v0, :cond_5

    return-object v0

    :cond_4
    iget-object p1, p0, Landroidx/compose/material3/TooltipSync$show$4;->$state:Landroidx/compose/material3/TooltipState;

    .line 641
    check-cast p1, Landroidx/compose/material3/RichTooltipState;

    invoke-virtual {p1, v3}, Landroidx/compose/material3/RichTooltipState;->setVisible$material3_release(Z)V

    .line 642
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Landroidx/compose/material3/TooltipSync$show$4;->label:I

    const-wide/16 v1, 0x5dc

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    .line 644
    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
