.class public Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;
.super Ljava/lang/Object;
.source "ProcessTextChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;
    }
.end annotation


# static fields
.field private static final CHANNEL_NAME:Ljava/lang/String; = "flutter/processtext"

.field private static final METHOD_PROCESS_TEXT_ACTION:Ljava/lang/String; = "ProcessText.processTextAction"

.field private static final METHOD_QUERY_TEXT_ACTIONS:Ljava/lang/String; = "ProcessText.queryTextActions"

.field private static final TAG:Ljava/lang/String; = "ProcessTextChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field private processTextMethodHandler:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;Landroid/content/pm/PackageManager;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->packageManager:Landroid/content/pm/PackageManager;

    .line 90
    new-instance p2, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter/processtext"

    sget-object v2, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {p2, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 91
    invoke-virtual {p2, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->processTextMethodHandler:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;

    return-object p0
.end method


# virtual methods
.method public setMethodHandler(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->processTextMethodHandler:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;

    return-void
.end method
