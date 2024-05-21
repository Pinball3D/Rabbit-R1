.class Lio/flutter/embedding/engine/dart/DartMessenger$ConcurrentTaskQueue;
.super Ljava/lang/Object;
.source "DartMessenger.java"

# interfaces
.implements Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConcurrentTaskQueue"
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$ConcurrentTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$ConcurrentTaskQueue;->executor:Ljava/util/concurrent/ExecutorService;

    .line 142
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
