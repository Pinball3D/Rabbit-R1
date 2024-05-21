.class public interface abstract Landroidx/compose/ui/platform/InfiniteAnimationPolicy;
.super Ljava/lang/Object;
.source "InfiniteAnimationPolicy.kt"

# interfaces
.implements Lkotlin/coroutines/CoroutineContext$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/InfiniteAnimationPolicy$DefaultImpls;,
        Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rJ5\u0010\u0006\u001a\u0002H\u0007\"\u0004\u0008\u0000\u0010\u00072\u001c\u0010\u0008\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00070\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\tH\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cR\u0018\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00f8\u0001\u0001\u0082\u0002\n\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/platform/InfiniteAnimationPolicy;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "key",
        "Lkotlin/coroutines/CoroutineContext$Key;",
        "getKey",
        "()Lkotlin/coroutines/CoroutineContext$Key;",
        "onInfiniteOperation",
        "R",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Key",
        "ui_release"
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
.field public static final Key:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;->$$INSTANCE:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    sput-object v0, Landroidx/compose/ui/platform/InfiniteAnimationPolicy;->Key:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    return-void
.end method

.method public static synthetic access$getKey$jd(Landroidx/compose/ui/platform/InfiniteAnimationPolicy;)Lkotlin/coroutines/CoroutineContext$Key;
    .locals 0

    .line 35
    invoke-super {p0}, Landroidx/compose/ui/platform/InfiniteAnimationPolicy;->getKey()Lkotlin/coroutines/CoroutineContext$Key;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKey()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    sget-object p0, Landroidx/compose/ui/platform/InfiniteAnimationPolicy;->Key:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    .line 48
    check-cast p0, Lkotlin/coroutines/CoroutineContext$Key;

    return-object p0
.end method

.method public abstract onInfiniteOperation(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
