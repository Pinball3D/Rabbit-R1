.class public abstract Landroidx/media3/common/SimpleBasePlayer;
.super Landroidx/media3/common/BasePlayer;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$State;,
        Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;,
        Landroidx/media3/common/SimpleBasePlayer$MediaItemData;,
        Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;,
        Landroidx/media3/common/SimpleBasePlayer$PeriodData;,
        Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;
    }
.end annotation


# static fields
.field private static final POSITION_DISCONTINUITY_THRESHOLD_MS:J = 0x3e8L


# instance fields
.field private final applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final applicationLooper:Landroid/os/Looper;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private released:Z

.field private state:Landroidx/media3/common/SimpleBasePlayer$State;


# direct methods
.method public static synthetic $r8$lambda$3jDkcEy2NaraDzdUMGhccQQzuGw(Landroidx/media3/common/SimpleBasePlayer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1973
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-direct {p0, p1, v0}, Landroidx/media3/common/SimpleBasePlayer;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;)V
    .locals 2

    .line 1983
    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 1985
    invoke-interface {p2, p1, v0}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 1986
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 1987
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 1989
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/common/SimpleBasePlayer;)V

    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 0

    .line 97
    invoke-static/range {p0 .. p5}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method private static buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLjava/util/List;IJZ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State$Builder;",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "J",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;IJZ)",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3893
    invoke-static {p2, p3, p1}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide p2

    .line 3894
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v0, :cond_1

    if-eq p5, v4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lt p5, v0, :cond_1

    :cond_0
    move-wide p6, v1

    move p5, v3

    .line 3898
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, p6, v1

    if-nez v0, :cond_2

    .line 3899
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-wide p6, p6, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {p6, p7}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p6

    .line 3901
    :cond_2
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 3902
    iget-object v2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 3906
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v2, v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3908
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object p4, p4, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v2, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    move v3, v1

    :cond_5
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    cmp-long p4, p6, p2

    if-gez p4, :cond_6

    goto :goto_2

    :cond_6
    if-nez p4, :cond_8

    .line 3919
    invoke-virtual {p0, p5}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 3920
    iget p4, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq p4, v4, :cond_7

    if-eqz p8, :cond_7

    .line 3921
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3923
    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p2

    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p4

    sub-long/2addr p2, p4

    .line 3922
    invoke-static {p2, p3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object p1

    .line 3921
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_3

    .line 3926
    :cond_7
    invoke-virtual {p0, v4, v4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p4

    .line 3929
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide p5

    sub-long/2addr p5, p2

    .line 3928
    invoke-static {p5, p6}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object p1

    .line 3927
    invoke-virtual {p4, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_3

    .line 3934
    :cond_8
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v0

    invoke-static {v0, v1, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3935
    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3936
    invoke-interface {p1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    sub-long p1, p6, p2

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 3938
    invoke-virtual {p0, p5}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3939
    invoke-virtual {p3, v4, v4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3940
    invoke-virtual {p3, p6, p7}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3941
    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3942
    invoke-static {p1, p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_3

    .line 3912
    :cond_9
    :goto_2
    invoke-virtual {p0, p5}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p1

    .line 3913
    invoke-virtual {p1, v4, v4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p1

    .line 3914
    invoke-virtual {p1, p6, p7}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p1

    .line 3915
    invoke-static {p6, p7}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p1

    sget-object p2, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 3916
    invoke-virtual {p1, p2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 3944
    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private clearVideoOutput(Ljava/lang/Object;)V
    .locals 2

    .line 2665
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2668
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2672
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2671
    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private static getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J
    .locals 2

    .line 3590
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J
    .locals 2

    .line 3586
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/media3/common/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I
    .locals 2

    .line 3579
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3580
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 6

    .line 3605
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v1

    .line 3606
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3609
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3610
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    .line 3609
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method private static getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J
    .locals 2

    .line 3704
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3705
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p0

    goto :goto_0

    .line 3706
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3707
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide p0

    sub-long p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method private static getCurrentTracksInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/Tracks;
    .locals 1

    .line 3567
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3568
    sget-object p0, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    goto :goto_0

    .line 3569
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    :goto_0
    return-object p0
.end method

.method private static getMediaItemIndexInNewPlaylist(Ljava/util/List;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Landroidx/media3/common/Timeline;",
            "I",
            "Landroidx/media3/common/Timeline$Period;",
            ")I"
        }
    .end annotation

    .line 3819
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3820
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result p0

    if-ge p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    return p2

    .line 3825
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->access$4300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object p0

    .line 3826
    invoke-virtual {p1, p0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    if-ne p2, v1, :cond_2

    return v1

    .line 3829
    :cond_2
    invoke-virtual {p1, p0, p3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    iget p0, p0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return p0
.end method

.method private static getMediaItemTransitionReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;IZLandroidx/media3/common/Timeline$Window;)I
    .locals 6

    .line 3769
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3770
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3771
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 3773
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v2, 0x3

    if-eq v1, v0, :cond_1

    return v2

    .line 3776
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3777
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3779
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3780
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v4

    invoke-virtual {v1, v4, p4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p4

    iget-object p4, p4, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3781
    instance-of v1, v0, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v1, :cond_2

    instance-of v1, p4, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v1, :cond_2

    return v3

    .line 3785
    :cond_2
    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p4, :cond_5

    if-nez p2, :cond_3

    return v1

    :cond_3
    if-ne p2, v1, :cond_4

    return v0

    :cond_4
    return v2

    :cond_5
    if-nez p2, :cond_6

    .line 3797
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v4

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide p0

    cmp-long p0, v4, p0

    if-lez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-ne p2, v1, :cond_7

    if-eqz p3, :cond_7

    return v0

    :cond_7
    return v3
.end method

.method private static getMediaMetadataInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/MediaMetadata;
    .locals 1

    .line 3573
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3574
    sget-object p0, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    goto :goto_0

    .line 3575
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->access$7100(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getPeriodIndexFromWindowPosition(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 6

    .line 3620
    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3621
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J
    .locals 1

    .line 3712
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 3714
    iget p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3715
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    goto :goto_0

    .line 3716
    :cond_0
    iget p1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    invoke-virtual {p2, p1, p0}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide p0

    .line 3717
    :goto_0
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getPositionDiscontinuityReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I
    .locals 10

    .line 3647
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-eqz v0, :cond_0

    .line 3649
    iget p0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3654
    :cond_1
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    return v0

    .line 3658
    :cond_2
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_3

    return v1

    .line 3662
    :cond_3
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3664
    invoke-static {p0, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v2

    .line 3663
    invoke-virtual {p2, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    .line 3665
    iget-object v2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 3666
    invoke-static {p1, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p3

    invoke-virtual {v2, p3}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p3

    .line 3667
    instance-of v2, p2, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v2, :cond_4

    instance-of v2, p3, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v2, :cond_4

    return v0

    .line 3671
    :cond_4
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_8

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v6, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v2, v6, :cond_8

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v6, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-eq v2, v6, :cond_5

    goto :goto_1

    .line 3690
    :cond_5
    invoke-static {p0, p2, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v1

    .line 3691
    invoke-static {p1, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v6

    sub-long v6, v1, v6

    .line 3692
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long p1, v6, v8

    if-gez p1, :cond_6

    return v0

    .line 3696
    :cond_6
    invoke-static {p0, p2, p4}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide p0

    cmp-long p2, p0, v4

    if-eqz p2, :cond_7

    cmp-long p0, v1, p0

    if-ltz p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    :goto_0
    return v3

    .line 3675
    :cond_8
    :goto_1
    iget-object p1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v0, :cond_9

    return v1

    .line 3681
    :cond_9
    invoke-static {p0, p2, p4}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide v0

    .line 3682
    invoke-static {p0, p2, p4}, Landroidx/media3/common/SimpleBasePlayer;->getPeriodOrAdDurationMs(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)J

    move-result-wide p0

    cmp-long p2, p0, v4

    if-eqz p2, :cond_a

    cmp-long p0, v0, p0

    if-ltz p0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v3, 0x3

    :goto_2
    return v3
.end method

.method private static getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3727
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v3

    .line 3730
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    .line 3731
    invoke-static {v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v4

    .line 3732
    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v2, v7}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 3733
    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6, v3, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3734
    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move v7, v4

    move-object v4, v1

    move-object v1, v6

    move-object v6, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    move-object v6, v4

    move v7, v5

    :goto_0
    if-eqz p1, :cond_2

    .line 3739
    iget-wide v8, v0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    .line 3741
    iget v2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v2, v5, :cond_1

    move-wide v10, v8

    goto :goto_2

    .line 3743
    :cond_1
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v10

    goto :goto_2

    .line 3745
    :cond_2
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v8

    .line 3747
    iget v2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v2, v5, :cond_3

    .line 3748
    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v10

    goto :goto_1

    :cond_3
    move-wide v10, v8

    :goto_1
    move-wide v15, v8

    move-wide v8, v10

    move-wide v10, v15

    .line 3751
    :goto_2
    new-instance v12, Landroidx/media3/common/Player$PositionInfo;

    iget v13, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v14, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    move-object v0, v12

    move v2, v3

    move-object v3, v4

    move-object v4, v6

    move v5, v7

    move-wide v6, v8

    move-wide v8, v10

    move v10, v13

    move v11, v14

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v12
.end method

.method private static getPositionOrDefaultInMediaItem(JLandroidx/media3/common/SimpleBasePlayer$State;)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    .line 3597
    :cond_0
    iget-object p0, p2, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    .line 3600
    :cond_1
    iget-object p0, p2, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-wide p0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Landroidx/media3/common/Timeline$Period;",
            ")",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3834
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 3835
    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 3836
    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 3837
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    .line 3838
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v4

    .line 3839
    iget-object v5, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {v5, v1, v4, p2}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Ljava/util/List;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    move-wide v7, v2

    :goto_0
    const/4 v9, 0x1

    add-int/2addr v4, v9

    :goto_1
    if-ne v5, v6, :cond_1

    .line 3842
    iget-object v10, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 3844
    iget-object v5, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 3845
    invoke-static {v5, v1, v4, p2}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Ljava/util/List;Landroidx/media3/common/Timeline;ILandroidx/media3/common/Timeline$Period;)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3849
    :cond_1
    iget p2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-eq p2, v9, :cond_2

    if-ne v5, v6, :cond_2

    const/4 p2, 0x4

    .line 3850
    invoke-virtual {v0, p2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    :cond_2
    const/4 p2, 0x1

    move-object v1, p0

    move-object v4, p1

    move-wide v6, v7

    move v8, p2

    .line 3852
    invoke-static/range {v0 .. v8}, Landroidx/media3/common/SimpleBasePlayer;->buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLjava/util/List;IJZ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;IJ)",
            "Landroidx/media3/common/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3864
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 3865
    invoke-virtual {v0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 3866
    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3867
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3870
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    .line 3868
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    .line 3873
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 3874
    invoke-static/range {v0 .. v8}, Landroidx/media3/common/SimpleBasePlayer;->buildStateForNewPosition(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$State;JLjava/util/List;IJZ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;
    .locals 2

    .line 3807
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3808
    sget-object p0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    return-object p0

    .line 3810
    :cond_0
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    .line 3811
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroidx/media3/common/util/Size;-><init>(II)V

    return-object v0
.end method

.method private static getTimelineChangeReason(Ljava/util/List;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;)I"
        }
    .end annotation

    .line 3626
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 3629
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    .line 3630
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v1, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3631
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v4, v4, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3632
    instance-of v5, v1, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3634
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z
    .locals 2

    .line 3561
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$clearVideoOutput$21(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    .line 2673
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    sget-object v0, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    invoke-virtual {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$decreaseDeviceVolume$26(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 2789
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$decreaseDeviceVolume$27(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 2803
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$handleReplaceMediaItems$30(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$increaseDeviceVolume$24(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    .line 2757
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$increaseDeviceVolume$25(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    .line 2771
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$prepare$7(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 2220
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2221
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2222
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2223
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$release$13(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$seekTo$10(Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    .line 2311
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceMuted$28(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2820
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceMuted$29(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2833
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceVolume$22(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2726
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceVolume$23(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2739
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlayWhenReady$1(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    .line 2033
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 2034
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2035
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlaybackParameters$11(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2345
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlaylistMetadata$15(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2450
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setRepeatMode$8(Landroidx/media3/common/SimpleBasePlayer$State;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2256
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setShuffleModeEnabled$9(Landroidx/media3/common/SimpleBasePlayer$State;Z)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2277
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setShuffleModeEnabled(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setTrackSelectionParameters$14(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2424
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoSurface$17(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 1

    .line 2573
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    invoke-virtual {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoSurfaceHolder$18(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2591
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoSurfaceView$19(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2610
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2611
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Landroidx/media3/common/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2612
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoTextureView$20(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2636
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVolume$16(Landroidx/media3/common/SimpleBasePlayer$State;F)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    .line 2549
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$stop$12(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3

    .line 2366
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2367
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2368
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2370
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 2369
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2371
    invoke-virtual {v0, p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 2372
    invoke-virtual {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2373
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateStateAndInformListeners$31(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3312
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$32(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3326
    invoke-interface {p3, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    .line 3327
    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$33(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3339
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$34(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3344
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$35(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3348
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/PlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$36(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3355
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$37(Landroidx/media3/common/Tracks;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3359
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$38(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3364
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$39(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 3370
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onLoadingChanged(Z)V

    .line 3371
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$40(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 3378
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$41(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3383
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$42(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 3390
    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$43(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3397
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$44(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3402
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$45(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3407
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$46(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3412
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$47(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3417
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$48(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 3422
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$49(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 3427
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$50(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 2

    .line 3433
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$51(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3438
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$52(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3443
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$53(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3448
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$54(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3453
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$55(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 3462
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 3463
    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {p0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p0

    .line 3462
    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$56(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3467
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$57(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 3474
    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$58(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    .line 3480
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v0, v0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    .line 3481
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$59(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3487
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$60(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3492
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3553
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3554
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationHandler:Landroidx/media3/common/util/HandlerWrapper;

    .line 3556
    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 2066
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v5, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v0, 0x14

    .line 2069
    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2070
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 2074
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda61;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/common/SimpleBasePlayer;Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)V

    .line 2073
    invoke-direct {p0, v0, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private shouldHandleCommand(I)Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3273
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p0, p1}, Landroidx/media3/common/Player$Commands;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iput-object v1, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3284
    iget-boolean v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-boolean v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3288
    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3289
    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->clearPositionDiscontinuity()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3290
    invoke-virtual {v3, v4}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3291
    invoke-virtual {v3}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3294
    :cond_1
    iget-boolean v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v5, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    const/4 v6, 0x1

    if-eq v3, v5, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v4

    .line 3295
    :goto_0
    iget v5, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iget v7, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-eq v5, v7, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v4

    .line 3296
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentTracksInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/Tracks;

    move-result-object v7

    .line 3297
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentTracksInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/Tracks;

    move-result-object v8

    .line 3298
    invoke-static {v2}, Landroidx/media3/common/SimpleBasePlayer;->getMediaMetadataInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/MediaMetadata;

    move-result-object v9

    .line 3299
    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->getMediaMetadataInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/MediaMetadata;

    move-result-object v10

    .line 3300
    iget-object v11, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v12, v0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    move/from16 v13, p2

    .line 3301
    invoke-static {v2, v1, v13, v11, v12}, Landroidx/media3/common/SimpleBasePlayer;->getPositionDiscontinuityReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v11

    .line 3302
    iget-object v12, v2, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iget-object v13, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v12, v13}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v6

    .line 3303
    iget-object v13, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    move/from16 v14, p3

    .line 3304
    invoke-static {v2, v1, v11, v14, v13}, Landroidx/media3/common/SimpleBasePlayer;->getMediaItemTransitionReason(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$State;IZLandroidx/media3/common/Timeline$Window;)I

    move-result v13

    if-eqz v12, :cond_4

    .line 3309
    iget-object v12, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iget-object v14, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {v12, v14}, Landroidx/media3/common/SimpleBasePlayer;->getTimelineChangeReason(Ljava/util/List;Ljava/util/List;)I

    move-result v12

    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3310
    new-instance v15, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v15, v1, v12}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    invoke-virtual {v14, v4, v15}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 3315
    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v15, v0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 3316
    invoke-static {v2, v4, v14, v15}, Landroidx/media3/common/SimpleBasePlayer;->getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v4

    .line 3317
    iget-boolean v14, v1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-object v15, v0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 3318
    invoke-static {v1, v14, v15, v6}, Landroidx/media3/common/SimpleBasePlayer;->getPositionInfo(Landroidx/media3/common/SimpleBasePlayer$State;ZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v6

    iget-object v14, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3323
    new-instance v15, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;

    invoke-direct {v15, v11, v4, v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda16;-><init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 v4, 0xb

    invoke-virtual {v14, v4, v15}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    if-eq v13, v12, :cond_7

    .line 3334
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    .line 3336
    :cond_6
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v4, v4, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    :goto_2
    iget-object v6, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3337
    new-instance v11, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;

    invoke-direct {v11, v4, v13}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/common/MediaItem;I)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4, v11}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3341
    :cond_7
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    invoke-static {v4, v6}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3342
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda30;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v11, 0xa

    invoke-virtual {v4, v11, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3345
    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3346
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda31;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v11, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3351
    :cond_8
    iget-object v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v4, v6}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3352
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda32;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v11, 0x13

    invoke-virtual {v4, v11, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3357
    :cond_9
    invoke-virtual {v7, v8}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3358
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;

    invoke-direct {v6, v8}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/common/Tracks;)V

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3361
    :cond_a
    invoke-virtual {v9, v10}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3362
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda35;

    invoke-direct {v6, v10}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/common/MediaMetadata;)V

    const/16 v7, 0xe

    invoke-virtual {v4, v7, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3366
    :cond_b
    iget-boolean v4, v2, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v6, v1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    if-eq v4, v6, :cond_c

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3367
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda36;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_c
    if-nez v3, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3375
    new-instance v6, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;

    invoke-direct {v6, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v12, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v5, :cond_f

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3381
    new-instance v5, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_f
    if-nez v3, :cond_10

    .line 3385
    iget v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-eq v3, v4, :cond_11

    :cond_10
    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3387
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3393
    :cond_11
    iget v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-eq v3, v4, :cond_12

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3394
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda7;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3399
    :cond_12
    invoke-static {v2}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result v3

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/SimpleBasePlayer;->isPlaying(Landroidx/media3/common/SimpleBasePlayer$State;)Z

    move-result v4

    if-eq v3, v4, :cond_13

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3400
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3404
    :cond_13
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v3, v4}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3405
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda9;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3409
    :cond_14
    iget v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iget v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    if-eq v3, v4, :cond_15

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3410
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3414
    :cond_15
    iget-boolean v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-eq v3, v4, :cond_16

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3415
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda12;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3419
    :cond_16
    iget-wide v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3420
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3424
    :cond_17
    iget-wide v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3425
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3429
    :cond_18
    iget-wide v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3430
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3435
    :cond_19
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v3, v4}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3436
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3440
    :cond_1a
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {v3, v4}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3441
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda18;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x19

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3445
    :cond_1b
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v3, v4}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3446
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3450
    :cond_1c
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3451
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda20;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0xf

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3455
    :cond_1d
    iget-boolean v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_1e

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3456
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;

    invoke-direct {v4}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;-><init>()V

    const/16 v5, 0x1a

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3458
    :cond_1e
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3459
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda23;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3465
    :cond_1f
    iget v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iget v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_20

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3466
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda24;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x16

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3469
    :cond_20
    iget v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v3, v4, :cond_21

    iget-boolean v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-eq v3, v4, :cond_22

    :cond_21
    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3471
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda25;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x1e

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3476
    :cond_22
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3477
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda26;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x1b

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3484
    :cond_23
    iget-object v3, v2, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-wide v3, v3, Landroidx/media3/common/Metadata;->presentationTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_24

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3486
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda27;

    invoke-direct {v4, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v5, 0x1c

    invoke-virtual {v3, v5, v4}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 3489
    :cond_24
    iget-object v2, v2, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, v1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v2, v3}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3490
    new-instance v3, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda29;

    invoke-direct {v3, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    const/16 v1, 0xd

    invoke-virtual {v2, v1, v3}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_25
    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 3494
    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method private updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3519
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    return-void
.end method

.method private updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/common/SimpleBasePlayer$State;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3532
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3533
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 3535
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3536
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3538
    invoke-virtual {p0, p2}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderState(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p2

    .line 3537
    invoke-direct {p0, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    .line 3539
    new-instance p2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;

    invoke-direct {p2, p0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/common/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance p3, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda45;

    invoke-direct {p3, p0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/common/SimpleBasePlayer;)V

    invoke-interface {p1, p2, p3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void
.end method

.method private verifyApplicationThreadAndInitState()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3499
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    if-nez v0, :cond_0

    .line 3512
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    :cond_0
    return-void

    .line 3507
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 3501
    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3508
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2000
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final addMediaItems(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2087
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2088
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2091
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/16 v2, 0x14

    .line 2092
    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2095
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2097
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda54;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)V

    .line 2096
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 2641
    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 2646
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 2656
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 2661
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final decreaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2780
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 2783
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2787
    invoke-virtual {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda48;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda48;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2786
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final decreaseDeviceVolume(I)V
    .locals 2

    .line 2794
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x22

    .line 2797
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2801
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda44;

    invoke-direct {v1, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2800
    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final getApplicationLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public final getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 0

    .line 2535
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2536
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method public final getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 0

    .line 2017
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2018
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public final getBufferedPosition()J
    .locals 4

    .line 2491
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2492
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2493
    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 2494
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getContentBufferedPosition()J
    .locals 4

    .line 2529
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2530
    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPosition()J
    .locals 2

    .line 2523
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2524
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 0

    .line 2511
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2512
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    return p0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 0

    .line 2517
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2518
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    return p0
.end method

.method public final getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 2690
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2691
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 0

    .line 2467
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2468
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 2

    .line 2461
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2462
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {v0, v1, p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 2485
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2486
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    .line 2455
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2456
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 0

    .line 2403
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2404
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentTracksInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 2696
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2697
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public final getDeviceVolume()I
    .locals 0

    .line 2702
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2703
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    return p0
.end method

.method public final getDuration()J
    .locals 3

    .line 2473
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2474
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2475
    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2476
    iget v1, v1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 2477
    invoke-virtual {v0, v1, p0}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 2478
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 2480
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxSeekToPreviousPosition()J
    .locals 2

    .line 2330
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2331
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public final getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 2429
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2430
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->getMediaMetadataInternal(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method protected getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 2

    .line 2900
    new-instance p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$PlaceholderUid;-><init>(Landroidx/media3/common/SimpleBasePlayer$1;)V

    invoke-direct {p0, v0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    .line 2901
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 2902
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    .line 2903
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    .line 2904
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object p0

    return-object p0
.end method

.method protected getPlaceholderState(Landroidx/media3/common/SimpleBasePlayer$State;)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 0

    return-object p1
.end method

.method public final getPlayWhenReady()Z
    .locals 0

    .line 2040
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2041
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    return p0
.end method

.method public final getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 2350
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2351
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final getPlaybackState()I
    .locals 0

    .line 2229
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2230
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    return p0
.end method

.method public final getPlaybackSuppressionReason()I
    .locals 0

    .line 2235
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2236
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    return p0
.end method

.method public final getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 2242
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2243
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method public final getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 2435
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2436
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final getRepeatMode()I
    .locals 0

    .line 2262
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2263
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    return p0
.end method

.method public final getSeekBackIncrement()J
    .locals 2

    .line 2318
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2319
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public final getSeekForwardIncrement()J
    .locals 2

    .line 2324
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2325
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public final getShuffleModeEnabled()Z
    .locals 0

    .line 2282
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2283
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    return p0
.end method

.method protected abstract getState()Landroidx/media3/common/SimpleBasePlayer$State;
.end method

.method public final getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 0

    .line 2684
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2685
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object p0
.end method

.method public final getTotalBufferedDuration()J
    .locals 2

    .line 2499
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2500
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 2409
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2410
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public final getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 0

    .line 2678
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2679
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public final getVolume()F
    .locals 0

    .line 2554
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2555
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    return p0
.end method

.method protected handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3189
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3152
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleDecreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3099
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3081
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3209
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2931
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_PREPARE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2957
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_RELEASE"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3247
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleReplaceMediaItems(IILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3228
    invoke-virtual {p0, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    .line 3229
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    .line 3230
    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda42;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {p3, p1}, Landroidx/media3/common/util/Util;->transformFutureAsync(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method protected handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3268
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle one of the COMMAND_SEEK_*"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3118
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME or COMMAND_ADJUST_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3063
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_DEVICE_VOLUME or COMMAND_SET_DEVICE_VOLUME_WITH_FLAGS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3173
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_MEDIA_ITEM(S)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2918
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_PLAY_PAUSE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/PlaybackParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2999
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3029
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_PLAYLIST_METADATA"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2971
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_REPEAT_MODE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2985
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_SHUFFLE_MODE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackSelectionParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3014
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_TRACK_SELECTION_PARAMETERS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3135
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3045
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VOLUME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleStop()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2944
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_STOP"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final increaseDeviceVolume()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2748
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 2751
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2755
    invoke-virtual {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda55;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2754
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final increaseDeviceVolume(I)V
    .locals 2

    .line 2762
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x22

    .line 2765
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2769
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleIncreaseDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2768
    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method protected final invalidateState()V
    .locals 2

    .line 2846
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 2847
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2851
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    const/4 v1, 0x0

    .line 2850
    invoke-direct {p0, v0, v1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDeviceMuted()Z
    .locals 0

    .line 2708
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2709
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    return p0
.end method

.method public final isLoading()Z
    .locals 0

    .line 2288
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2289
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    return p0
.end method

.method public final isPlayingAd()Z
    .locals 1

    .line 2505
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2506
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$addMediaItems$3$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;I)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 4

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 2100
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int v2, v1, p3

    .line 2102
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2101
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2104
    :cond_0
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 2105
    invoke-static {p1, v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0

    .line 2108
    :cond_1
    iget p0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2112
    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p2

    .line 2108
    invoke-static {p1, v0, p0, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$moveMediaItems$4$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;III)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 2138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2139
    invoke-static {v0, p2, p3, p4}, Landroidx/media3/common/util/Util;->moveItems(Ljava/util/List;III)V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 2140
    invoke-static {p1, v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$new$0$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 1

    .line 1993
    new-instance v0, Landroidx/media3/common/Player$Events;

    invoke-direct {v0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$6$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 2202
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2203
    invoke-static {v0, p2, p3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 2204
    invoke-static {p1, v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$replaceMediaItems$5$androidx-media3-common-SimpleBasePlayer(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 4

    .line 2157
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 2158
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int v2, v1, p3

    .line 2160
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v3}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2159
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2163
    :cond_0
    iget-object p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 2164
    invoke-static {p1, v0, p2}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    goto :goto_1

    .line 2167
    :cond_1
    iget p2, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2172
    invoke-interface {v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    .line 2168
    invoke-static {p1, v0, p2, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    :goto_1
    if-ge p4, p3, :cond_2

    .line 2175
    invoke-static {v0, p4, p3}, Landroidx/media3/common/util/Util;->removeRange(Ljava/util/List;II)V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->period:Landroidx/media3/common/Timeline$Period;

    .line 2176
    invoke-static {p1, v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylist(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method synthetic lambda$setMediaItemsInternal$2$androidx-media3-common-SimpleBasePlayer(Ljava/util/List;Landroidx/media3/common/SimpleBasePlayer$State;IJ)Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 3

    .line 2076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2077
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2078
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->getPlaceholderMediaItemData(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2080
    :cond_0
    invoke-static {p2, v0, p3, p4, p5}, Landroidx/media3/common/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;IJ)Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$updateStateForPendingOperation$61$androidx-media3-common-SimpleBasePlayer(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 3541
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 3542
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/common/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 3543
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    if-nez p1, :cond_0

    .line 3545
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->getState()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object p1

    const/4 v0, 0x0

    .line 3544
    invoke-direct {p0, p1, v0, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateAndInformListeners(Landroidx/media3/common/SimpleBasePlayer$State;ZZ)V

    :cond_0
    return-void
.end method

.method public final moveMediaItems(III)V
    .locals 7

    .line 2119
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2120
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2123
    iget-object v0, v3, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/16 v1, 0x14

    .line 2124
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 2129
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2130
    iget-object p2, v3, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    sub-int v0, v5, p1

    sub-int/2addr p2, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq p1, v5, :cond_3

    if-ne v6, p1, :cond_2

    goto :goto_1

    .line 2135
    :cond_2
    invoke-virtual {p0, p1, v5, v6}, Landroidx/media3/common/SimpleBasePlayer;->handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;

    move-object v1, p3

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;III)V

    .line 2134
    invoke-direct {p0, p2, p3}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final prepare()V
    .locals 3

    .line 2210
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x2

    .line 2213
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2217
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda52;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda52;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2216
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final release()V
    .locals 4

    .line 2378
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x20

    .line 2381
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2385
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda53;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2384
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer;->released:Z

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2387
    invoke-virtual {v2}, Landroidx/media3/common/util/ListenerSet;->release()V

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2391
    invoke-virtual {v2}, Landroidx/media3/common/SimpleBasePlayer$State;->buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v2

    .line 2392
    invoke-virtual {v2, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2393
    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2395
    invoke-static {v0}, Landroidx/media3/common/SimpleBasePlayer;->getContentPositionMsInternal(Landroidx/media3/common/SimpleBasePlayer$State;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    .line 2394
    invoke-virtual {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 2396
    invoke-virtual {v1, v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2397
    invoke-virtual {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2398
    invoke-virtual {v0}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    return-void
.end method

.method public final removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2005
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 2006
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMediaItems(II)V
    .locals 3

    .line 2185
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2186
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2189
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/16 v2, 0x14

    .line 2190
    invoke-direct {p0, v2}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-lt p1, v1, :cond_1

    goto :goto_1

    .line 2195
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p1, p2, :cond_2

    return-void

    .line 2200
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda56;

    invoke-direct {v2, p0, v0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda56;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)V

    .line 2199
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final replaceMediaItems(IILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2146
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2147
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2149
    iget-object v0, v3, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/16 v1, 0x14

    .line 2150
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 2153
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2155
    invoke-virtual {p0, p1, v5, p3}, Landroidx/media3/common/SimpleBasePlayer;->handleReplaceMediaItems(IILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda33;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p3

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;Ljava/util/List;II)V

    .line 2154
    invoke-direct {p0, p2, v0}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final seekTo(IJIZ)V
    .locals 3

    .line 2299
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2300
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2303
    invoke-direct {p0, p4}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2304
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 2305
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_1

    .line 2309
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p4

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;IJ)V

    .line 2308
    invoke-direct {p0, p4, v2, v0, p5}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setDeviceMuted(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2812
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 2815
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2819
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2818
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setDeviceMuted(ZI)V
    .locals 2

    .line 2825
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x22

    .line 2828
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2832
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceMuted(ZI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2831
    invoke-direct {p0, p2, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setDeviceVolume(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2718
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x19

    .line 2721
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2725
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 2724
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setDeviceVolume(II)V
    .locals 2

    .line 2731
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x21

    .line 2734
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2738
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer;->handleSetDeviceVolume(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 2737
    invoke-direct {p0, p2, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 2055
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2057
    iget p2, p2, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object p3, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2058
    iget-object p3, p3, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p3

    .line 2060
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/common/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 2046
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2047
    iget v0, v0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    :goto_0
    if-eqz p2, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 2048
    iget-object p2, p2, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    .line 2049
    :goto_1
    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 3

    .line 2023
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x1

    .line 2026
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2030
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda39;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2029
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 3

    .line 2336
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0xd

    .line 2339
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2343
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda63;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/PlaybackParameters;)V

    .line 2342
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 3

    .line 2441
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x13

    .line 2444
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2448
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/MediaMetadata;)V

    .line 2447
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 3

    .line 2248
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0xf

    .line 2251
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2255
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda41;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda41;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;I)V

    .line 2254
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .locals 3

    .line 2268
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0xe

    .line 2271
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2275
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda58;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda58;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Z)V

    .line 2274
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    .line 2415
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1d

    .line 2418
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2422
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda59;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/TrackSelectionParameters;)V

    .line 2421
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoSurface(Landroid/view/Surface;)V
    .locals 2

    .line 2560
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2563
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2567
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2571
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2570
    invoke-direct {p0, p1, v1}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 2578
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2581
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2585
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2589
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)V

    .line 2588
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 3

    .line 2596
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2599
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2603
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2607
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda57;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroid/view/SurfaceView;)V

    .line 2606
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4

    .line 2617
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2620
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2624
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2628
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2629
    new-instance v1, Landroidx/media3/common/util/Size;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/Size;-><init>(II)V

    goto :goto_0

    .line 2631
    :cond_2
    sget-object v1, Landroidx/media3/common/util/Size;->ZERO:Landroidx/media3/common/util/Size;

    .line 2634
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda38;

    invoke-direct {v2, v0, v1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/util/Size;)V

    .line 2633
    invoke-direct {p0, p1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 2541
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/16 v1, 0x18

    .line 2544
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2548
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/SimpleBasePlayer;->handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda47;

    invoke-direct {v2, v0, p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;F)V

    .line 2547
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 2356
    invoke-direct {p0}, Landroidx/media3/common/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer;->state:Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x3

    .line 2359
    invoke-direct {p0, v1}, Landroidx/media3/common/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2363
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/SimpleBasePlayer;->handleStop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    .line 2362
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method
