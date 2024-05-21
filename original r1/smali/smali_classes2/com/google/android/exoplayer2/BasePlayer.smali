.class public abstract Lcom/google/android/exoplayer2/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player;


# instance fields
.field protected final window:Lcom/google/android/exoplayer2/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private repeatCurrentMediaItem(I)V
    .locals 6

    .line 503
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    .line 502
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method private seekToCurrentItem(JI)V
    .locals 6

    .line 456
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    .line 455
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method private seekToDefaultPositionInternal(II)V
    .locals 6

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 470
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method private seekToNextMediaItemInternal(I)V
    .locals 2

    .line 478
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 483
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    :goto_0
    return-void
.end method

.method private seekToOffset(JI)V
    .locals 4

    .line 460
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 461
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    .line 463
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 465
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/BasePlayer;->seekToCurrentItem(JI)V

    return-void
.end method

.method private seekToPreviousMediaItemInternal(I)V
    .locals 2

    .line 490
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 495
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addMediaItem(ILcom/google/android/exoplayer2/MediaItem;)V
    .locals 0

    .line 59
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final addMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 0

    .line 64
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final canAdvertiseSession()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final clearMediaItems()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->removeMediaItems(II)V

    return-void
.end method

.method public final getBufferedPercentage()I
    .locals 9

    .line 375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 376
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v4

    const/4 v6, 0x0

    if-eqz p0, :cond_2

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const/16 v4, 0x64

    if-nez p0, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x64

    mul-long/2addr v0, v7

    .line 379
    div-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p0, v6, v4}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v6

    :cond_2
    :goto_0
    return v6
.end method

.method public final getContentDuration()J
    .locals 2

    .line 443
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentLiveOffset()J
    .locals 5

    .line 414
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    return-wide v2

    .line 419
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-wide v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    .line 423
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final getCurrentMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 2

    .line 348
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    :goto_0
    return-object p0
.end method

.method public final getCurrentWindowIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result p0

    return p0
.end method

.method public final getMediaItemAt(I)Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public final getMediaItemCount()I
    .locals 0

    .line 356
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p0

    return p0
.end method

.method public final getNextMediaItemIndex()I
    .locals 3

    .line 320
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getShuffleModeEnabled()Z

    move-result p0

    .line 323
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getNextWindowIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result p0

    return p0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 3

    .line 338
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getShuffleModeEnabled()Z

    move-result p0

    .line 341
    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPreviousWindowIndex()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result p0

    return p0
.end method

.method public final hasNext()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result p0

    return p0
.end method

.method public final hasNextMediaItem()Z
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getNextMediaItemIndex()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasNextWindow()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result p0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result p0

    return p0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPreviousMediaItemIndex()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasPreviousWindow()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result p0

    return p0
.end method

.method public final isCommandAvailable(I)Z
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Player$Commands;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 2

    .line 408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Window;->isLive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 438
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/BasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result p0

    return p0
.end method

.method public final isCurrentWindowLive()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result p0

    return p0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result p0

    return p0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlaybackSuppressionReason()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final moveMediaItem(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 75
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/BasePlayer;->moveMediaItems(III)V

    :cond_0
    return-void
.end method

.method public final next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final previous()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final removeMediaItem(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->removeMediaItems(II)V

    return-void
.end method

.method public final seekBack()V
    .locals 3

    .line 134
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToOffset(JI)V

    return-void
.end method

.method public final seekForward()V
    .locals 3

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToOffset(JI)V

    return-void
.end method

.method public final seekTo(IJ)V
    .locals 6

    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public abstract seekTo(IJIZ)V
.end method

.method public final seekTo(J)V
    .locals 1

    const/4 v0, 0x5

    .line 267
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToCurrentItem(JI)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    const/4 v1, 0x4

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 1

    const/16 v0, 0xa

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    return-void
.end method

.method public final seekToNext()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_1

    .line 259
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItemInternal(I)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/BasePlayer;->seekToDefaultPositionInternal(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final seekToNextMediaItem()V
    .locals 1

    const/16 v0, 0x8

    .line 249
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItemInternal(I)V

    return-void
.end method

.method public final seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public final seekToPrevious()V
    .locals 5

    .line 190
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    const/4 v2, 0x7

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 197
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gtz v0, :cond_2

    .line 200
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 202
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/BasePlayer;->seekToCurrentItem(JI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .locals 1

    const/4 v0, 0x6

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItemInternal(I)V

    return-void
.end method

.method public final seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)V
    .locals 0

    .line 39
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;J)V
    .locals 1

    .line 44
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplayer2/MediaItem;Z)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    .line 297
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/BasePlayer;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/BasePlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method
