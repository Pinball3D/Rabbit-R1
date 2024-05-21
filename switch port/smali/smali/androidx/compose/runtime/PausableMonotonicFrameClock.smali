.class public final Landroidx/compose/runtime/PausableMonotonicFrameClock;
.super Ljava/lang/Object;
.source "PausableMonotonicFrameClock.kt"

# interfaces
.implements Landroidx/compose/runtime/MonotonicFrameClock;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nJ:\u0010\u000c\u001a\u0002H\r\"\u0004\u0008\u0000\u0010\r2!\u0010\u000e\u001a\u001d\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\u0011\u0012\u0008\u0008\u0012\u0012\u0004\u0008\u0008(\u0013\u0012\u0004\u0012\u0002H\r0\u000fH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/runtime/PausableMonotonicFrameClock;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
        "frameClock",
        "(Landroidx/compose/runtime/MonotonicFrameClock;)V",
        "isPaused",
        "",
        "()Z",
        "latch",
        "Landroidx/compose/runtime/Latch;",
        "pause",
        "",
        "resume",
        "withFrameNanos",
        "R",
        "onFrame",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "frameTimeNanos",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final frameClock:Landroidx/compose/runtime/MonotonicFrameClock;

.field private final latch:Landroidx/compose/runtime/Latch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/MonotonicFrameClock;)V
    .locals 1

    const-string v0, "frameClock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->frameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    .line 34
    new-instance p1, Landroidx/compose/runtime/Latch;

    invoke-direct {p1}, Landroidx/compose/runtime/Latch;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->latch:Landroidx/compose/runtime/Latch;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->fold(Landroidx/compose/runtime/MonotonicFrameClock;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->get(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    return-object p0
.end method

.method public final isPaused()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->latch:Landroidx/compose/runtime/Latch;

    .line 41
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->isOpen()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    .line 31
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->minusKey(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final pause()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->latch:Landroidx/compose/runtime/Latch;

    .line 50
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->closeLatch()V

    return-void
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 31
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClock$DefaultImpls;->plus(Landroidx/compose/runtime/MonotonicFrameClock;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public final resume()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->latch:Landroidx/compose/runtime/Latch;

    .line 58
    invoke-virtual {p0}, Landroidx/compose/runtime/Latch;->openLatch()V

    return-void
.end method

.method public withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;

    iget v1, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;-><init>(Landroidx/compose/runtime/PausableMonotonicFrameClock;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 61
    iget v2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p0, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->latch:Landroidx/compose/runtime/Latch;

    .line 62
    iput-object p0, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/Latch;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 63
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/runtime/PausableMonotonicFrameClock;->frameClock:Landroidx/compose/runtime/MonotonicFrameClock;

    const/4 p2, 0x0

    iput-object p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/runtime/PausableMonotonicFrameClock$withFrameNanos$1;->label:I

    invoke-interface {p0, p1, v0}, Landroidx/compose/runtime/MonotonicFrameClock;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method
