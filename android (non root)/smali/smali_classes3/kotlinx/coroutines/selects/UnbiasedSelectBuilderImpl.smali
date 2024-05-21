.class public final Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;
.super Lkotlinx/coroutines/selects/UnbiasedSelectImplementation;
.source "SelectOld.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/selects/UnbiasedSelectImplementation<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0001J\n\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0001R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;",
        "R",
        "Lkotlinx/coroutines/selects/UnbiasedSelectImplementation;",
        "uCont",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/coroutines/Continuation;)V",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "handleBuilderException",
        "",
        "e",
        "",
        "initSelectResult",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final cont:Lkotlinx/coroutines/CancellableContinuationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuationImpl<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)V"
        }
    .end annotation

    .line 62
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/selects/UnbiasedSelectImplementation;-><init>(Lkotlin/coroutines/CoroutineContext;)V

    .line 63
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    iput-object v0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method

.method public static final synthetic access$getCont$p(Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;)Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 0

    .line 59
    iget-object p0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-object p0
.end method


# virtual methods
.method public final handleBuilderException(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 83
    check-cast p0, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public final initSelectResult()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 68
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    new-instance v0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$initSelectResult$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$initSelectResult$1;-><init>(Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->cont:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 78
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
