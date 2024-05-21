.class final Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;
.super Ljava/lang/Object;
.source "EventChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$EventSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EventSinkImplementation"
.end annotation


# instance fields
.field final hasEnded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;


# direct methods
.method private constructor <init>(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->hasEnded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;Lio/flutter/plugin/common/EventChannel$1;)V
    .locals 0

    .line 242
    invoke-direct {p0, p1}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;-><init>(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;)V

    return-void
.end method


# virtual methods
.method public endOfStream()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->hasEnded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 267
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->access$300(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    .line 270
    iget-object v0, v0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->access$400(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {p0}, Lio/flutter/plugin/common/EventChannel;->access$200(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->hasEnded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 257
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->access$300(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    .line 260
    iget-object v0, v0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->access$400(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    iget-object v1, v1, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    .line 261
    invoke-static {v1}, Lio/flutter/plugin/common/EventChannel;->access$200(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {p0}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 260
    invoke-interface {v0, v1, p0}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->hasEnded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 248
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->access$300(Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    .line 251
    iget-object v0, v0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v0}, Lio/flutter/plugin/common/EventChannel;->access$400(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    iget-object v1, v1, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {v1}, Lio/flutter/plugin/common/EventChannel;->access$200(Lio/flutter/plugin/common/EventChannel;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler$EventSinkImplementation;->this$1:Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;

    iget-object p0, p0, Lio/flutter/plugin/common/EventChannel$IncomingStreamRequestHandler;->this$0:Lio/flutter/plugin/common/EventChannel;

    invoke-static {p0}, Lio/flutter/plugin/common/EventChannel;->access$000(Lio/flutter/plugin/common/EventChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodCodec;->encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method
