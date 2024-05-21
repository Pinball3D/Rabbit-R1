.class public Lio/flutter/embedding/engine/dart/PlatformTaskQueue;
.super Ljava/lang/Object;
.source "PlatformTaskQueue.java"

# interfaces
.implements Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/util/HandlerCompat;->createAsyncHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/PlatformTaskQueue;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/PlatformTaskQueue;->handler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
