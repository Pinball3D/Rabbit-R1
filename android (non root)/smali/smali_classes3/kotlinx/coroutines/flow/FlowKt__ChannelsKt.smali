.class final synthetic Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;
.super Ljava/lang/Object;
.source "Channels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n+ 2 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,176:1\n106#2:177\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/flow/FlowKt__ChannelsKt\n*L\n153#1:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0007\u001a\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u001a/\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a9\u0010\u000b\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a$\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0012\u001a\u001c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "asFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "T",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "consumeAsFlow",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "emitAll",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "channel",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emitAllImpl",
        "consume",
        "",
        "emitAllImpl$FlowKt__ChannelsKt",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "produceIn",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "receiveAsFlow",
        "kotlinx-coroutines-core"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
    xs = "kotlinx/coroutines/flow/FlowKt"
.end annotation


# direct methods
.method public static final synthetic access$emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final asFlow(Lkotlinx/coroutines/channels/BroadcastChannel;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "\'BroadcastChannel\' is obsolete and all corresponding operators are deprecated in the favour of StateFlow and SharedFlow"
    .end annotation

    .line 177
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$asFlow$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/channels/BroadcastChannel;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public static final consumeAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 86
    new-instance v8, Lkotlinx/coroutines/flow/ChannelAsFlow;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    return-object v8
.end method

.method public static final emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 30
    invoke-static {p0, p1, v0, p2}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt;->emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final emitAllImpl$FlowKt__ChannelsKt(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-boolean p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move-object p3, p0

    move-object p0, v2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-boolean p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    iget-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$2:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->ensureActive(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 36
    :try_start_2
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p3

    :goto_1
    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$2:Ljava/lang/Object;

    iput-boolean p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    invoke-interface {p3, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, v2

    move-object v2, p0

    move-object p0, p3

    move-object p3, v5

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 37
    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->L$2:Ljava/lang/Object;

    iput-boolean p2, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->Z$0:Z

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__ChannelsKt$emitAllImpl$1;->label:I

    invoke-interface {v2, p3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    :cond_6
    if-eqz p2, :cond_7

    const/4 p0, 0x0

    .line 43
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .line 45
    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p2, :cond_8

    .line 43
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    :cond_8
    throw p3
.end method

.method public static final produceIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TT;>;"
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->asChannelFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;

    move-result-object p0

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->produceImpl(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final receiveAsFlow(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 65
    new-instance v8, Lkotlinx/coroutines/flow/ChannelAsFlow;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/flow/ChannelAsFlow;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lkotlinx/coroutines/flow/Flow;

    return-object v8
.end method
