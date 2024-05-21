.class Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;
.super Ljava/lang/Object;
.source "DartMessenger.java"

# interfaces
.implements Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultTaskQueueFactory"
.end annotation


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->executorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    .locals 0

    .line 93
    invoke-virtual {p1}, Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;->getIsSerial()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    new-instance p1, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, p0}, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object p1

    .line 96
    :cond_0
    new-instance p1, Lio/flutter/embedding/engine/dart/DartMessenger$ConcurrentTaskQueue;

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, p0}, Lio/flutter/embedding/engine/dart/DartMessenger$ConcurrentTaskQueue;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-object p1
.end method
