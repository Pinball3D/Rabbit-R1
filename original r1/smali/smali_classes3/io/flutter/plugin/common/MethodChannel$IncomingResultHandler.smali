.class final Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;
.super Ljava/lang/Object;
.source "MethodChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/common/MethodChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IncomingResultHandler"
.end annotation


# instance fields
.field private final callback:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic this$0:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/MethodChannel;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->callback:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method


# virtual methods
.method public reply(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->callback:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 241
    invoke-interface {p1}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->callback:Lio/flutter/plugin/common/MethodChannel$Result;

    iget-object v1, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    .line 244
    invoke-static {v1}, Lio/flutter/plugin/common/MethodChannel;->access$000(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/flutter/plugin/common/MethodCodec;->decodeEnvelope(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Lio/flutter/plugin/common/FlutterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->callback:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 246
    iget-object v1, p1, Lio/flutter/plugin/common/FlutterException;->code:Ljava/lang/String;

    invoke-virtual {p1}, Lio/flutter/plugin/common/FlutterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lio/flutter/plugin/common/FlutterException;->details:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 250
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MethodChannel#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;->this$0:Lio/flutter/plugin/common/MethodChannel;

    invoke-static {p0}, Lio/flutter/plugin/common/MethodChannel;->access$100(Lio/flutter/plugin/common/MethodChannel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to handle method call result"

    invoke-static {p0, v0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
