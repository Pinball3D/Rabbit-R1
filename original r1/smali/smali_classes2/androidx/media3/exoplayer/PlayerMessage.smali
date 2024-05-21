.class public final Landroidx/media3/exoplayer/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/PlayerMessage$Sender;,
        Landroidx/media3/exoplayer/PlayerMessage$Target;
    }
.end annotation


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private deleteAfterDelivery:Z

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private looper:Landroid/os/Looper;

.field private mediaItemIndex:I

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Landroidx/media3/exoplayer/PlayerMessage$Sender;

.field private final target:Landroidx/media3/exoplayer/PlayerMessage$Target;

.field private final timeline:Landroidx/media3/common/Timeline;

.field private type:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->sender:Landroidx/media3/exoplayer/PlayerMessage$Sender;

    iput-object p2, p0, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    iput-object p3, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    iput-object p6, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    iput-object p5, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    iput p4, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    .line 332
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    .line 333
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    if-nez v0, :cond_1

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blockUntilDelivered(J)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    .line 359
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    .line 360
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    .line 362
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    .line 365
    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->onThreadBlocked()V

    .line 366
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->clock:Landroidx/media3/common/util/Clock;

    .line 367
    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit p0

    return p1

    .line 370
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel()Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    .line 292
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z

    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/PlayerMessage;->markAsProcessed(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeleteAfterDelivery()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public getMediaItemIndex()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    return p0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public getPositionMs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Landroidx/media3/exoplayer/PlayerMessage$Target;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->target:Landroidx/media3/exoplayer/PlayerMessage$Target;

    return-object p0
.end method

.method public getTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    return p0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isProcessed:Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Landroidx/media3/exoplayer/PlayerMessage;
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 275
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v2, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    .line 277
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    :cond_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->sender:Landroidx/media3/exoplayer/PlayerMessage$Sender;

    .line 280
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/PlayerMessage$Sender;->sendMessage(Landroidx/media3/exoplayer/PlayerMessage;)V

    return-object p0
.end method

.method public setDeleteAfterDelivery(Z)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 256
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->deleteAfterDelivery:Z

    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object p0

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 179
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 150
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setPosition(IJ)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 229
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 230
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-ltz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    .line 232
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->mediaItemIndex:I

    iput-wide p2, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    return-object p0

    .line 233
    :cond_2
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    iget-object p0, p0, Landroidx/media3/exoplayer/PlayerMessage;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v0
.end method

.method public setPosition(J)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 210
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->positionMs:J

    return-object p0
.end method

.method public setType(I)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    .line 131
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/PlayerMessage;->type:I

    return-object p0
.end method
