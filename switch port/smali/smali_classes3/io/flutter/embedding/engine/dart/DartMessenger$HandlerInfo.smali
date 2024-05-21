.class Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
.super Ljava/lang/Object;
.source "DartMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerInfo"
.end annotation


# instance fields
.field public final handler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

.field public final taskQueue:Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;->handler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;->taskQueue:Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

    return-void
.end method
