.class public final Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"

# interfaces
.implements Lkotlinx/coroutines/channels/BroadcastChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/channels/BroadcastChannel<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
    message = "ConflatedBroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0003B\u000f\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0005B\u0015\u0008\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\u0015\u001a\u00020\n2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0097\u0001J\u001b\u0010\u0015\u001a\u00020\u00182\u0010\u0008\u0002\u0010\u0016\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH\u0096\u0001J\u0013\u0010\u001b\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0096\u0001J.\u0010\u001c\u001a\u00020\u00182#\u0010\u001d\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0017\u00a2\u0006\u000c\u0008\u001f\u0012\u0008\u0008 \u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00180\u001eH\u0096\u0001J\u0016\u0010!\u001a\u00020\n2\u0006\u0010\"\u001a\u00028\u0000H\u0097\u0001\u00a2\u0006\u0002\u0010#J\u000f\u0010$\u001a\u0008\u0012\u0004\u0012\u00028\u00000%H\u0096\u0001J\u0019\u0010&\u001a\u00020\u00182\u0006\u0010\"\u001a\u00028\u0000H\u0096A\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\'J\'\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00180)2\u0006\u0010\"\u001a\u00028\u0000H\u0096\u0001\u00f8\u0001\u0001\u00f8\u0001\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008*\u0010+R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8\u0016X\u0097\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR$\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000e0\rX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00028\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00018\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0012\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006,"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;",
        "E",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "()V",
        "value",
        "(Ljava/lang/Object;)V",
        "broadcast",
        "Lkotlinx/coroutines/channels/BroadcastChannelImpl;",
        "(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V",
        "isClosedForSend",
        "",
        "()Z",
        "onSend",
        "Lkotlinx/coroutines/selects/SelectClause2;",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "getOnSend",
        "()Lkotlinx/coroutines/selects/SelectClause2;",
        "getValue",
        "()Ljava/lang/Object;",
        "valueOrNull",
        "getValueOrNull",
        "cancel",
        "cause",
        "",
        "",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlinx/coroutines/CancellationException;",
        "close",
        "invokeOnClose",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "offer",
        "element",
        "(Ljava/lang/Object;)Z",
        "openSubscription",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "send",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "trySend",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        "trySend-JP2dKIU",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
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
.field private final broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/BroadcastChannelImpl<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    new-instance v0, Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;-><init>(I)V

    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;-><init>(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/channels/BroadcastChannelImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/BroadcastChannelImpl<",
            "TE;>;)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Binary compatibility only"
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->cancel(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->close(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public getOnSend()Lkotlinx/coroutines/selects/SelectClause2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/SelectClause2<",
            "TE;",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "TE;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getOnSend()Lkotlinx/coroutines/selects/SelectClause2;

    move-result-object p0

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    .line 122
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getValueOrNull()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    .line 127
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->getValueOrNull()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public invokeOnClose(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public isClosedForSend()Z
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->isClosedForSend()Z

    move-result p0

    return p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated in the favour of \'trySend\' method"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "trySend(element).isSuccess"
            imports = {}
        .end subannotation
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->openSubscription()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/channels/ConflatedBroadcastChannel;->broadcast:Lkotlinx/coroutines/channels/BroadcastChannelImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/BroadcastChannelImpl;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
