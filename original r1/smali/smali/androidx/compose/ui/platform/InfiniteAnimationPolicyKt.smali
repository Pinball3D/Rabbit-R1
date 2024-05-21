.class public final Landroidx/compose/ui/platform/InfiniteAnimationPolicyKt;
.super Ljava/lang/Object;
.source "InfiniteAnimationPolicy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a:\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u0002H\u00010\u0003H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "withInfiniteAnimationFrameNanos",
        "R",
        "onFrame",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "frameTimeNanos",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ui_release"
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
.method public static final withInfiniteAnimationFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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

    .line 63
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/platform/InfiniteAnimationPolicy;->Key:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/InfiniteAnimationPolicy;

    if-nez v0, :cond_0

    .line 64
    invoke-static {p0, p1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->withFrameNanos(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance v1, Landroidx/compose/ui/platform/InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/ui/platform/InfiniteAnimationPolicyKt$withInfiniteAnimationFrameNanos$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1, p1}, Landroidx/compose/ui/platform/InfiniteAnimationPolicy;->onInfiniteOperation(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
