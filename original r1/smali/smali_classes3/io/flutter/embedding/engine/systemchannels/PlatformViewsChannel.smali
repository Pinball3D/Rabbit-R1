.class public Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;,
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewTouch;,
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;,
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;,
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;,
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsChannel"


# instance fields
.field private final channel:Lio/flutter/plugin/common/MethodChannel;

.field private handler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

.field private final parsingHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 4

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->parsingHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 268
    new-instance v1, Lio/flutter/plugin/common/MethodChannel;

    const-string v2, "flutter/platform_views"

    sget-object v3, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v1, p1, v2, v3}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 270
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->handler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->detailedExceptionString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static detailedExceptionString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-static {p0}, Lio/flutter/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invokeViewFocused(I)V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "viewFocused"

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->handler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    return-void
.end method
