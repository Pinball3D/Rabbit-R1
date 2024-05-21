.class public Landroidx/media3/common/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Landroidx/media3/common/util/Clock;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;
    .locals 1

    .line 54
    new-instance p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-direct {p0, v0}, Landroidx/media3/common/util/SystemHandlerWrapper;-><init>(Landroid/os/Handler;)V

    return-object p0
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public nanoTime()J
    .locals 2

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onThreadBlocked()V
    .locals 0

    return-void
.end method

.method public uptimeMillis()J
    .locals 2

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
