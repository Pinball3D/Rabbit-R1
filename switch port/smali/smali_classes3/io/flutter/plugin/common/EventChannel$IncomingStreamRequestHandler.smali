.class final Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;
.super Ljava/lang/Object;
.source "EventChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/EventChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingStreamRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;
    }
.end annotation


# instance fields
.field private final activeSink:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/flutter/plugin/common/EventChannel$EventSink;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Lio/flutter/plugin/common/EventChannel$StreamHandler;

.field final synthetic this$0:Lio/flutter/plugin/common/EventChannel;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/EventChannel;Lio/flutter/plugin/common/EventChannel$StreamHandler;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->activeSink:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->handler:Lio/flutter/plugin/common/EventChannel$StreamHandler;

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 185
    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->activeSink:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private onCancel(Ljava/lang/Object;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->activeSink:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/EventChannel$EventSink;

    const-string v2, "error"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->handler:Lio/flutter/plugin/common/EventChannel$StreamHandler;

    .line 231
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$StreamHandler;->onCancel(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 232
    invoke-static {p1}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodCodec;->encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "EventChannel#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v3}, Lio/flutter/plugin/common/EventChannel;->access$200(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to close event stream"

    invoke-static {v0, v3, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 235
    invoke-static {p0}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1, v1}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 238
    invoke-static {p0}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    const-string p1, "No active stream to cancel"

    invoke-interface {p0, v2, p1, v1}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method private onListen(Ljava/lang/Object;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 6

    .line 206
    new-instance v0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;-><init>(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;Lio/flutter/plugin/common/EventChannel$1;)V

    iget-object v2, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->activeSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/common/EventChannel$EventSink;

    const-string v3, "EventChannel#"

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->handler:Lio/flutter/plugin/common/EventChannel$StreamHandler;

    .line 212
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/EventChannel$StreamHandler;->onCancel(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v5}, Lio/flutter/plugin/common/EventChannel;->access$200(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Failed to close existing event stream"

    invoke-static {v4, v5, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->handler:Lio/flutter/plugin/common/EventChannel$StreamHandler;

    .line 218
    invoke-interface {v2, p1, v0}, Lio/flutter/plugin/common/EventChannel$StreamHandler;->onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V

    iget-object p1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 219
    invoke-static {p1}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodCodec;->encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->activeSink:Ljava/util/concurrent/atomic/AtomicReference;

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v2}, Lio/flutter/plugin/common/EventChannel;->access$200(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Failed to open event stream"

    invoke-static {v0, v2, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 223
    invoke-static {p0}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    const-string v0, "error"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, v1}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 195
    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodCodec;->decodeMethodCall(Ljava/nio/ByteBuffer;)Lio/flutter/plugin/common/MethodCall;

    move-result-object p1

    .line 196
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "listen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->onListen(Ljava/lang/Object;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->onCancel(Ljava/lang/Object;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 201
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
