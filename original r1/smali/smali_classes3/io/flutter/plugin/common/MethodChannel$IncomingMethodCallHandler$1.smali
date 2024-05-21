.class Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;
.super Ljava/lang/Object;
.source "MethodChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;

.field final synthetic val$reply:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->this$1:Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;

    iput-object p2, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->val$reply:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->val$reply:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->this$1:Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;

    .line 277
    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p0}, Lio/flutter/plugin/common/MethodChannel;->access$000(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodCodec;->encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public notImplemented()V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->val$reply:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    const/4 v0, 0x0

    .line 282
    invoke-interface {p0, v0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->val$reply:Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler$1;->this$1:Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;

    .line 272
    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p0}, Lio/flutter/plugin/common/MethodChannel;->access$000(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodCodec;->encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    return-void
.end method
