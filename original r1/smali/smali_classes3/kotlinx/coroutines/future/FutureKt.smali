.class public final Lkotlinx/coroutines/future/FutureKt;
.super Ljava/lang/Object;
.source "Future.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,197:1\n1#2:198\n314#3,11:199\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n172#1:199,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\u001a\u0010\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0001*\u00020\u0005\u001a\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0007\u001a!\u0010\u0008\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0007H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a[\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\'\u0010\u0010\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0011\u00a2\u0006\u0002\u0008\u0014\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a\u0018\u0010\u0016\u001a\u00020\u0004*\u00020\u00052\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0001H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0017"
    }
    d2 = {
        "asCompletableFuture",
        "Ljava/util/concurrent/CompletableFuture;",
        "T",
        "Lkotlinx/coroutines/Deferred;",
        "",
        "Lkotlinx/coroutines/Job;",
        "asDeferred",
        "Ljava/util/concurrent/CompletionStage;",
        "await",
        "(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "future",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "start",
        "Lkotlinx/coroutines/CoroutineStart;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;",
        "setupCancellation",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$cMgNW2d0OUgIe_VSg9ZnIbI9BYk(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/future/FutureKt;->asDeferred$lambda$4(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fyhs1ohzwEwbEqWUL9pjUeRyd8k(Lkotlinx/coroutines/Job;Ljava/lang/Object;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/future/FutureKt;->setupCancellation$lambda$2(Lkotlinx/coroutines/Job;Ljava/lang/Object;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final asCompletableFuture(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/Deferred<",
            "+TT;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 76
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-static {v1, v0}, Lkotlinx/coroutines/future/FutureKt;->setupCancellation(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CompletableFuture;)V

    .line 77
    new-instance v1, Lkotlinx/coroutines/future/FutureKt$asCompletableFuture$1;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/future/FutureKt$asCompletableFuture$1;-><init>(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/Deferred;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Deferred;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final asCompletableFuture(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 93
    invoke-static {p0, v0}, Lkotlinx/coroutines/future/FutureKt;->setupCancellation(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CompletableFuture;)V

    .line 94
    new-instance v1, Lkotlinx/coroutines/future/FutureKt$asCompletableFuture$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/future/FutureKt$asCompletableFuture$2;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-object v0
.end method

.method public static final asDeferred(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;)",
            "Lkotlinx/coroutines/Deferred<",
            "TT;>;"
        }
    .end annotation

    .line 117
    invoke-interface {p0}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 122
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred(Ljava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Deferred;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 125
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ExecutionException;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 126
    :cond_2
    :goto_1
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-object p0, v0

    check-cast p0, Lkotlinx/coroutines/Deferred;

    :goto_2
    return-object p0

    .line 129
    :cond_3
    invoke-static {v3, v2, v3}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v1

    .line 130
    new-instance v2, Lkotlinx/coroutines/future/FutureKt$asDeferred$2;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/future/FutureKt$asDeferred$2;-><init>(Lkotlinx/coroutines/CompletableDeferred;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    new-instance v3, Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p0, v3}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    .line 145
    move-object p0, v1

    check-cast p0, Lkotlinx/coroutines/Job;

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-static {p0, v0}, Lkotlinx/coroutines/JobKt;->cancelFutureOnCompletion(Lkotlinx/coroutines/Job;Ljava/util/concurrent/Future;)Lkotlinx/coroutines/DisposableHandle;

    .line 146
    check-cast v1, Lkotlinx/coroutines/Deferred;

    return-object v1
.end method

.method private static final asDeferred$lambda$4(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final await(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 161
    invoke-interface {p0}, Ljava/util/concurrent/CompletionStage;->toCompletableFuture()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/lang/Throwable;

    :cond_0
    throw p1

    .line 200
    :cond_1
    new-instance v1, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 206
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 207
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 173
    new-instance v3, Lkotlinx/coroutines/future/ContinuationHandler;

    move-object v4, v2

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-direct {v3, v4}, Lkotlinx/coroutines/future/ContinuationHandler;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 174
    move-object v4, v3

    check-cast v4, Ljava/util/function/BiFunction;

    invoke-interface {p0, v4}, Ljava/util/concurrent/CompletionStage;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    .line 175
    new-instance p0, Lkotlinx/coroutines/future/FutureKt$await$2$1;

    invoke-direct {p0, v0, v3}, Lkotlinx/coroutines/future/FutureKt$await$2$1;-><init>(Ljava/util/concurrent/CompletableFuture;Lkotlinx/coroutines/future/ContinuationHandler;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 208
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p0

    .line 199
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_2

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-object p0
.end method

.method public static final future(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 39
    invoke-virtual {p2}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 41
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 42
    new-instance v0, Lkotlinx/coroutines/future/CompletableFutureCoroutine;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/future/CompletableFutureCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CompletableFuture;)V

    .line 43
    move-object p0, v0

    check-cast p0, Ljava/util/function/BiFunction;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    .line 44
    invoke-virtual {v0, p2, v0, p3}, Lkotlinx/coroutines/future/CompletableFutureCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    return-object p1

    .line 39
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " start is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic future$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 35
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    .line 36
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    .line 34
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/future/FutureKt;->future(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static final setupCancellation(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/future/FutureKt$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/Job;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private static final setupCancellation$lambda$2(Lkotlinx/coroutines/Job;Ljava/lang/Object;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 104
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    move-object p1, p2

    check-cast p1, Ljava/util/concurrent/CancellationException;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "CompletableFuture was completed exceptionally"

    invoke-static {p1, p2}, Lkotlinx/coroutines/ExceptionsKt;->CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 103
    :cond_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 106
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
