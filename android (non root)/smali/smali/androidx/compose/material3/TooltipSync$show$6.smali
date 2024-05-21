.class final Landroidx/compose/material3/TooltipSync$show$6;
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
    c = "androidx.compose.material3.TooltipSync$show$6"
    f = "Tooltip.kt"
    i = {}
    l = {
        0x28f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $cleanUp:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $runBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $state:Landroidx/compose/material3/TooltipState;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/material3/TooltipState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TooltipState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/TooltipSync$show$6;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TooltipSync$show$6;->$state:Landroidx/compose/material3/TooltipState;

    iput-object p2, p0, Landroidx/compose/material3/TooltipSync$show$6;->$runBlock:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/TooltipSync$show$6;->$cleanUp:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Landroidx/compose/material3/TooltipSync$show$6;

    iget-object v1, p0, Landroidx/compose/material3/TooltipSync$show$6;->$state:Landroidx/compose/material3/TooltipState;

    iget-object v2, p0, Landroidx/compose/material3/TooltipSync$show$6;->$runBlock:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/compose/material3/TooltipSync$show$6;->$cleanUp:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, p0, p1}, Landroidx/compose/material3/TooltipSync$show$6;-><init>(Landroidx/compose/material3/TooltipState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipSync$show$6;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipSync$show$6;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/material3/TooltipSync$show$6;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TooltipSync$show$6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/material3/TooltipSync$show$6;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    .line 652
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 654
    :try_start_1
    sget-object p1, Landroidx/compose/material3/TooltipSync;->INSTANCE:Landroidx/compose/material3/TooltipSync;

    iget-object v1, p0, Landroidx/compose/material3/TooltipSync$show$6;->$state:Landroidx/compose/material3/TooltipState;

    invoke-virtual {p1, v1}, Landroidx/compose/material3/TooltipSync;->setMutexOwner(Landroidx/compose/material3/TooltipState;)V

    iget-object p1, p0, Landroidx/compose/material3/TooltipSync$show$6;->$runBlock:Lkotlin/jvm/functions/Function1;

    iput v3, p0, Landroidx/compose/material3/TooltipSync$show$6;->label:I

    .line 655
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 657
    :cond_2
    :goto_0
    sget-object p1, Landroidx/compose/material3/TooltipSync;->INSTANCE:Landroidx/compose/material3/TooltipSync;

    invoke-virtual {p1, v2}, Landroidx/compose/material3/TooltipSync;->setMutexOwner(Landroidx/compose/material3/TooltipState;)V

    iget-object p0, p0, Landroidx/compose/material3/TooltipSync$show$6;->$cleanUp:Lkotlin/jvm/functions/Function0;

    .line 660
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 662
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 657
    :goto_1
    sget-object v0, Landroidx/compose/material3/TooltipSync;->INSTANCE:Landroidx/compose/material3/TooltipSync;

    invoke-virtual {v0, v2}, Landroidx/compose/material3/TooltipSync;->setMutexOwner(Landroidx/compose/material3/TooltipState;)V

    iget-object p0, p0, Landroidx/compose/material3/TooltipSync$show$6;->$cleanUp:Lkotlin/jvm/functions/Function0;

    .line 660
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p1
.end method
