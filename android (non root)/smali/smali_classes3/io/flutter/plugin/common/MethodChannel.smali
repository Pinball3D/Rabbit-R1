.class public Lio/flutter/plugin/common/MethodChannel;
.super Ljava/lang/Object;
.source "MethodChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/common/MethodChannel$Result;,
        Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;,
        Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;,
        Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MethodChannel#"


# instance fields
.field private final codec:Lio/flutter/plugin/common/MethodCodec;

.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final name:Ljava/lang/String;

.field private final taskQueue:Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V
    .locals 1

    .line 45
    sget-object v0, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3, v0}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/common/MethodChannel;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    iput-object p2, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    iput-object p3, p0, Lio/flutter/plugin/common/MethodChannel;->codec:Lio/flutter/plugin/common/MethodCodec;

    iput-object p4, p0, Lio/flutter/plugin/common/MethodChannel;->taskQueue:Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/common/MethodChannel;)Lio/flutter/plugin/common/MethodCodec;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel;->codec:Lio/flutter/plugin/common/MethodCodec;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/plugin/common/MethodChannel;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object v1, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    iget-object v2, p0, Lio/flutter/plugin/common/MethodChannel;->codec:Lio/flutter/plugin/common/MethodCodec;

    .line 117
    new-instance v3, Lio/flutter/plugin/common/MethodCall;

    invoke-direct {v3, p1, p2}, Lio/flutter/plugin/common/MethodCall;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    invoke-interface {v2, v3}, Lio/flutter/plugin/common/MethodCodec;->encodeMethodCall(Lio/flutter/plugin/common/MethodCall;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    new-instance p2, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;

    invoke-direct {p2, p0, p3}, Lio/flutter/plugin/common/MethodChannel$IncomingResultHandler;-><init>(Lio/flutter/plugin/common/MethodChannel;Lio/flutter/plugin/common/MethodChannel$Result;)V

    move-object p0, p2

    .line 117
    :goto_0
    invoke-interface {v0, v1, p1, p0}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    return-void
.end method

.method public resizeChannelBuffer(I)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    .line 157
    invoke-static {v0, p0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->resizeChannelBuffer(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;I)V

    return-void
.end method

.method public setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel;->taskQueue:Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object v2, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;-><init>(Lio/flutter/plugin/common/MethodChannel;Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    :goto_0
    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel;->taskQueue:Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    .line 143
    invoke-interface {v0, v2, v1, p0}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object v2, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_1

    .line 147
    :cond_2
    new-instance v1, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugin/common/MethodChannel$IncomingMethodCallHandler;-><init>(Lio/flutter/plugin/common/MethodChannel;Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 146
    :goto_1
    invoke-interface {v0, v2, v1}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    :goto_2
    return-void
.end method

.method public setWarnsOnChannelOverflow(Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/common/MethodChannel;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    iget-object p0, p0, Lio/flutter/plugin/common/MethodChannel;->name:Ljava/lang/String;

    .line 166
    invoke-static {v0, p0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->setWarnsOnChannelOverflow(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Z)V

    return-void
.end method
