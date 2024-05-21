.class Lkotlinx/coroutines/DeferredCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "Builders.common.kt"

# interfaces
.implements Lkotlinx/coroutines/Deferred;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Lkotlinx/coroutines/Deferred<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0012\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0011\u0010\r\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\r\u0010\u000f\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0010R\u001a\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/DeferredCoroutine;",
        "T",
        "Lkotlinx/coroutines/AbstractCoroutine;",
        "Lkotlinx/coroutines/Deferred;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "active",
        "",
        "(Lkotlin/coroutines/CoroutineContext;Z)V",
        "onAwait",
        "Lkotlinx/coroutines/selects/SelectClause1;",
        "getOnAwait",
        "()Lkotlinx/coroutines/selects/SelectClause1;",
        "await",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCompleted",
        "()Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, p1, v0, p2}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    return-void
.end method

.method static synthetic await$suspendImpl(Lkotlinx/coroutines/DeferredCoroutine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/DeferredCoroutine<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DeferredCoroutine;->awaitInternal(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlinx/coroutines/DeferredCoroutine;->await$suspendImpl(Lkotlinx/coroutines/DeferredCoroutine;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCompleted()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lkotlinx/coroutines/DeferredCoroutine;->getCompletedInternal$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOnAwait()Lkotlinx/coroutines/selects/SelectClause1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause1<",
            "TT;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lkotlinx/coroutines/DeferredCoroutine;->getOnAwaitInternal()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
