.class final Lkotlinx/coroutines/future/FutureKt$asDeferred$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Future.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/future/FutureKt;->asDeferred(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "TT;",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\u0008\u0000\u0010\u00032\u000e\u0010\u0004\u001a\n \u0002*\u0004\u0018\u0001H\u0003H\u00032\u000e\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
        "T",
        "value",
        "exception",
        "",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $result:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/future/FutureKt$asDeferred$2;->$result:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/future/FutureKt$asDeferred$2;->invoke(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lkotlinx/coroutines/future/FutureKt$asDeferred$2;->$result:Lkotlinx/coroutines/CompletableDeferred;

    .line 134
    invoke-interface {p0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/future/FutureKt$asDeferred$2;->$result:Lkotlinx/coroutines/CompletableDeferred;

    .line 138
    instance-of p1, p2, Ljava/util/concurrent/CompletionException;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/util/concurrent/CompletionException;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p1

    :cond_3
    :goto_1
    invoke-interface {p0, p2}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 142
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object p0
.end method
