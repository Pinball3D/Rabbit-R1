.class public Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;
.super Ljava/lang/Object;
.source "MouseCursorChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MouseCursorChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field private mouseCursorMethodHandler:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;

.field private final parsingMethodCallHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->parsingMethodCallHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 25
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "flutter/mousecursor"

    sget-object v3, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 26
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;)Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->mouseCursorMethodHandler:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;

    return-object p0
.end method


# virtual methods
.method public setMethodHandler(Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->mouseCursorMethodHandler:Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel$MouseCursorMethodHandler;

    return-void
.end method

.method public synthesizeMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/MouseCursorChannel;->parsingMethodCallHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 75
    invoke-interface {p0, p1, p2}, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;->onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method
