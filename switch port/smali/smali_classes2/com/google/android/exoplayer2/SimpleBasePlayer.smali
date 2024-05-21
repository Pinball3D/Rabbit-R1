.class public abstract Lcom/google/android/exoplayer2/SimpleBasePlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaylistTimeline;,
        Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    }
.end annotation


# static fields
.field private static final POSITION_DISCONTINUITY_THRESHOLD_MS:J = 0x3e8L


# instance fields
.field private final applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final applicationLooper:Landroid/os/Looper;

.field private final listeners:Lcom/google/android/exoplayer2/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/ListenerSet<",
            "Lcom/google/android/exoplayer2/Player$Listener;",
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

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private released:Z

.field private state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;


# direct methods
.method public static synthetic $r8$lambda$qUaq_FRLluRZtP5EFdBK3M77tX8(Lcom/google/android/exoplayer2/SimpleBasePlayer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1976
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 2

    .line 1986
    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    const/4 v0, 0x0

    .line 1988
    invoke-interface {p2, p1, v0}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 1989
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 1990
    new-instance v0, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1992
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda44;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .locals 0

    .line 100
    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method private static buildStateForNewPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;JLjava/util/List;IJZ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;IJZ)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3749
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide p2

    .line 3750
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

    .line 3754
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, p6, v1

    if-nez v0, :cond_2

    .line 3755
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-wide p6, p6, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {p6, p7}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p6

    .line 3757
    :cond_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

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

    .line 3758
    iget-object v2, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 3762
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v2, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3764
    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object p4, p4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

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

    .line 3775
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3776
    iget p4, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq p4, v4, :cond_7

    if-eqz p8, :cond_7

    .line 3777
    iget-object p2, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 3779
    invoke-interface {p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p2

    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p4

    sub-long/2addr p2, p4

    .line 3778
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object p1

    .line 3777
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    goto :goto_3

    .line 3782
    :cond_7
    invoke-virtual {p0, v4, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p4

    .line 3785
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide p5

    sub-long/2addr p5, p2

    .line 3784
    invoke-static {p5, p6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object p1

    .line 3783
    invoke-virtual {p4, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    goto :goto_3

    .line 3790
    :cond_8
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    invoke-static {v0, v1, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3791
    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 3792
    invoke-interface {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    sub-long p1, p6, p2

    sub-long/2addr v2, p1

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 3794
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3795
    invoke-virtual {p3, v4, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3796
    invoke-virtual {p3, p6, p7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3797
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p3

    .line 3798
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    goto :goto_3

    .line 3768
    :cond_9
    :goto_2
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentMediaItemIndex(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p1

    .line 3769
    invoke-virtual {p1, v4, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setCurrentAd(II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p1

    .line 3770
    invoke-virtual {p1, p6, p7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentPositionMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p1

    .line 3771
    invoke-static {p6, p7}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 3772
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3800
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private clearVideoOutput(Ljava/lang/Object;)V
    .locals 2

    .line 2628
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2631
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2635
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleClearVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda32;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2634
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private static getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J
    .locals 2

    .line 3446
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J
    .locals 2

    .line 3442
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I
    .locals 2

    .line 3435
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3436
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .locals 6

    .line 3461
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v1

    .line 3462
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3465
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3466
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    .line 3465
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method private static getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J
    .locals 2

    .line 3560
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3561
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p0

    goto :goto_0

    .line 3562
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3563
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide p0

    sub-long p0, v0, p0

    :goto_0
    return-wide p0
.end method

.method private static getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;
    .locals 1

    .line 3423
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3424
    sget-object p0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    goto :goto_0

    .line 3425
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    :goto_0
    return-object p0
.end method

.method private static getMediaItemIndexInNewPlaylist(Ljava/util/List;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/Timeline$Period;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Lcom/google/android/exoplayer2/Timeline;",
            "I",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")I"
        }
    .end annotation

    .line 3675
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 3676
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result p0

    if-ge p2, p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    return p2

    .line 3681
    :cond_1
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;

    move-result-object p0

    .line 3682
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p2

    if-ne p2, v1, :cond_2

    return v1

    .line 3685
    :cond_2
    invoke-virtual {p1, p0, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    return p0
.end method

.method private static getMediaItemTransitionReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IZLcom/google/android/exoplayer2/Timeline$Window;)I
    .locals 6

    .line 3625
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3626
    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3627
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 3629
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    const/4 v2, 0x3

    if-eq v1, v0, :cond_1

    return v2

    .line 3632
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3633
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v1

    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3635
    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3636
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v4

    invoke-virtual {v1, v4, p4}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p4

    iget-object p4, p4, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3637
    instance-of v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-eqz v1, :cond_2

    instance-of v1, p4, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-nez v1, :cond_2

    return v3

    .line 3641
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

    .line 3653
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

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

.method private static getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 1

    .line 3429
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3430
    sget-object p0, Lcom/google/android/exoplayer2/MediaMetadata;->EMPTY:Lcom/google/android/exoplayer2/MediaMetadata;

    goto :goto_0

    .line 3431
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->access$7100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getPeriodIndexFromWindowPosition(Lcom/google/android/exoplayer2/Timeline;IJLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .locals 6

    .line 3476
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3477
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static getPeriodOrAdDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J
    .locals 1

    .line 3568
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3570
    iget p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 3571
    iget-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    goto :goto_0

    .line 3572
    :cond_0
    iget p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    invoke-virtual {p2, p1, p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide p0

    .line 3573
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getPositionDiscontinuityReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I
    .locals 10

    .line 3503
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-eqz v0, :cond_0

    .line 3505
    iget p0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    return p0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 3510
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    return v0

    .line 3514
    :cond_2
    iget-object p2, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p2

    const/4 v1, 0x4

    if-eqz p2, :cond_3

    return v1

    .line 3518
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3520
    invoke-static {p0, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v2

    .line 3519
    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p2

    .line 3521
    iget-object v2, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 3522
    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result p3

    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p3

    .line 3523
    instance-of v2, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-eqz v2, :cond_4

    instance-of v2, p3, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-nez v2, :cond_4

    return v0

    .line 3527
    :cond_4
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v6, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v2, v6, :cond_8

    iget v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v6, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-eq v2, v6, :cond_5

    goto :goto_1

    .line 3546
    :cond_5
    invoke-static {p0, p2, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v1

    .line 3547
    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v6

    sub-long v6, v1, v6

    .line 3548
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    cmp-long p1, v6, v8

    if-gez p1, :cond_6

    return v0

    .line 3552
    :cond_6
    invoke-static {p0, p2, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodOrAdDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

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

    .line 3531
    :cond_8
    :goto_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, v0, :cond_9

    return v1

    .line 3537
    :cond_9
    invoke-static {p0, p2, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodOrAdPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

    move-result-wide v0

    .line 3538
    invoke-static {p0, p2, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPeriodOrAdDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/lang/Object;Lcom/google/android/exoplayer2/Timeline$Period;)J

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

.method private static getPositionInfo(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Player$PositionInfo;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3583
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v3

    .line 3586
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    .line 3587
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v4

    .line 3588
    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v2, v7}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    .line 3589
    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v6, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/exoplayer2/Timeline$Window;->uid:Ljava/lang/Object;

    .line 3590
    iget-object v1, v1, Lcom/google/android/exoplayer2/Timeline$Window;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

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

    .line 3595
    iget-wide v8, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->discontinuityPositionMs:J

    .line 3597
    iget v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v2, v5, :cond_1

    move-wide v10, v8

    goto :goto_2

    .line 3599
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v10

    goto :goto_2

    .line 3601
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v8

    .line 3603
    iget v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-eq v2, v5, :cond_3

    .line 3604
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v10

    goto :goto_1

    :cond_3
    move-wide v10, v8

    :goto_1
    move-wide v15, v8

    move-wide v8, v10

    move-wide v10, v15

    .line 3607
    :goto_2
    new-instance v12, Lcom/google/android/exoplayer2/Player$PositionInfo;

    iget v13, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    move-object v0, v12

    move v2, v3

    move-object v3, v4

    move-object v4, v6

    move v5, v7

    move-wide v6, v8

    move-wide v8, v10

    move v10, v13

    move v11, v14

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v12
.end method

.method private static getPositionOrDefaultInMediaItem(JLcom/google/android/exoplayer2/SimpleBasePlayer$State;)J
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    return-wide p0

    .line 3453
    :cond_0
    iget-object p0, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    .line 3456
    :cond_1
    iget-object p0, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-wide p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3690
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 3691
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3692
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->access$100(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    .line 3693
    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    .line 3694
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v4

    .line 3695
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {v5, v1, v4, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Ljava/util/List;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/Timeline$Period;)I

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

    .line 3698
    iget-object v10, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v10}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 3700
    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 3701
    invoke-static {v5, v1, v4, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaItemIndexInNewPlaylist(Ljava/util/List;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3705
    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    if-eq p2, v9, :cond_2

    if-ne v5, v6, :cond_2

    const/4 p2, 0x4

    .line 3706
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    :cond_2
    const/4 p2, 0x1

    move-object v1, p0

    move-object v4, p1

    move-wide v6, v7

    move v8, p2

    .line 3708
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->buildStateForNewPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;JLjava/util/List;IJZ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;IJ)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;"
        }
    .end annotation

    .line 3720
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 3721
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaylist(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3722
    iget v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3723
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 3724
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3726
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    .line 3729
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    .line 3730
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->buildStateForNewPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;JLjava/util/List;IJZ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method private static getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/util/Size;
    .locals 2

    .line 3663
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3664
    sget-object p0, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    return-object p0

    .line 3666
    :cond_0
    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p0

    .line 3667
    new-instance v0, Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    return-object v0
.end method

.method private static getTimelineChangeReason(Ljava/util/List;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;",
            ">;)I"
        }
    .end annotation

    .line 3482
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 3485
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v0, v1, :cond_3

    .line 3486
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v1, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3487
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v4, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 3488
    instance-of v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-eqz v5, :cond_1

    instance-of v5, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 3490
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

.method private static isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z
    .locals 2

    .line 3417
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$clearVideoOutput$20(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 1

    .line 2636
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$decreaseDeviceVolume$23(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 2

    .line 2713
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$increaseDeviceVolume$22(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 1

    .line 2699
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$prepare$6(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 2

    .line 2175
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2176
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2177
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2178
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$release$12(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$seekTo$9(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 1

    .line 2266
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceMuted$24(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2726
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsDeviceMuted(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setDeviceVolume$21(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2685
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setDeviceVolume(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlayWhenReady$1(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 1

    .line 2036
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 2037
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2038
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlaybackParameters$10(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2300
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setPlaylistMetadata$14(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2413
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setRepeatMode$7(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2211
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setRepeatMode(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setShuffleModeEnabled$8(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2232
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setShuffleModeEnabled(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setTrackSelectionParameters$13(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2387
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoSurface$16(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 1

    .line 2536
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/android/exoplayer2/util/Size;->UNKNOWN:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoSurfaceHolder$17(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2554
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoSurfaceView$18(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceView;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2573
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2574
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getSurfaceHolderSize(Landroid/view/SurfaceHolder;)Lcom/google/android/exoplayer2/util/Size;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2575
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVideoTextureView$19(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2599
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setSurfaceSize(Lcom/google/android/exoplayer2/util/Size;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$setVolume$15(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;F)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    .line 2512
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setVolume(F)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$stop$11(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 3

    .line 2321
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2322
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2323
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2325
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 2324
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2326
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 2327
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 2328
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$updateStateAndInformListeners$25(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3165
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$26(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3179
    invoke-interface {p3, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    .line 3180
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$27(Lcom/google/android/exoplayer2/MediaItem;ILcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3192
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$28(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3197
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$29(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3201
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/PlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$30(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$31(Lcom/google/android/exoplayer2/Tracks;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3212
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$32(Lcom/google/android/exoplayer2/MediaMetadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3217
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$33(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 3223
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onLoadingChanged(Z)V

    .line 3224
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$34(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 3231
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$35(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3236
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$36(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 3243
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$37(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3250
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$38(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3255
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$39(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3260
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$40(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3265
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$41(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3270
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$42(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    .line 3275
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$43(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    .line 3280
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$44(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 2

    .line 3286
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$45(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3291
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$46(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3296
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$47(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3301
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$48(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3306
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$49(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 3315
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    .line 3316
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/Size;->getHeight()I

    move-result p0

    .line 3315
    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$50(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3320
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$51(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 3327
    iget v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$52(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 3333
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v0, v0, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    .line 3334
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$53(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3340
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$updateStateAndInformListeners$54(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3348
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method private postOrRunOnApplicationHandler(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 3409
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3410
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationHandler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    .line 3412
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setMediaItemsInternal(Ljava/util/List;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
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

    .line 2069
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v0, 0x14

    .line 2072
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2073
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-void

    .line 2077
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda42;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda42;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Ljava/util/List;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)V

    .line 2076
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private shouldHandleCommand(I)Z
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3126
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/Player$Commands;->contains(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iput-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3137
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-boolean v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3141
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3142
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->clearPositionDiscontinuity()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3143
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setNewlyRenderedFirstFrame(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v3

    .line 3144
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3147
    :cond_1
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    iget-boolean v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    const/4 v6, 0x1

    if-eq v3, v5, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v4

    .line 3148
    :goto_0
    iget v5, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    iget v7, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    if-eq v5, v7, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    move v5, v4

    .line 3149
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v7

    .line 3150
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v8

    .line 3151
    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v9

    .line 3152
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v10

    .line 3153
    iget-object v11, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    move/from16 v13, p2

    .line 3154
    invoke-static {v2, v1, v13, v11, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionDiscontinuityReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result v11

    .line 3155
    iget-object v12, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v13, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v12, v13}, Lcom/google/android/exoplayer2/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v12

    xor-int/2addr v12, v6

    .line 3156
    iget-object v13, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    move/from16 v14, p3

    .line 3157
    invoke-static {v2, v1, v11, v14, v13}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaItemTransitionReason(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IZLcom/google/android/exoplayer2/Timeline$Window;)I

    move-result v13

    if-eqz v12, :cond_4

    .line 3162
    iget-object v12, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iget-object v14, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static {v12, v14}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getTimelineChangeReason(Ljava/util/List;Ljava/util/List;)I

    move-result v12

    iget-object v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3163
    new-instance v15, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v15, v1, v12}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda10;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    invoke-virtual {v14, v4, v15}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_4
    const/4 v12, -0x1

    if-eq v11, v12, :cond_5

    .line 3168
    iget-object v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v15, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3169
    invoke-static {v2, v4, v14, v15}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionInfo(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v4

    .line 3170
    iget-boolean v14, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-object v15, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 3171
    invoke-static {v1, v14, v15, v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPositionInfo(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZLcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Player$PositionInfo;

    move-result-object v6

    iget-object v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3176
    new-instance v15, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda23;

    invoke-direct {v15, v11, v4, v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda23;-><init>(ILcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;)V

    const/16 v4, 0xb

    invoke-virtual {v14, v4, v15}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_5
    if-eq v13, v12, :cond_7

    .line 3187
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_2

    .line 3189
    :cond_6
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v4, v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    :goto_2
    iget-object v6, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3190
    new-instance v14, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda34;

    invoke-direct {v14, v4, v13}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda34;-><init>(Lcom/google/android/exoplayer2/MediaItem;I)V

    const/4 v4, 0x1

    invoke-virtual {v6, v4, v14}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3194
    :cond_7
    iget-object v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3195
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda36;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda36;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v13, 0xa

    invoke-virtual {v4, v13, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3198
    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3199
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda37;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda37;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v13, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3204
    :cond_8
    iget-object v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-object v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3205
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda38;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda38;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v13, 0x13

    invoke-virtual {v4, v13, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3210
    :cond_9
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3211
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda39;

    invoke-direct {v6, v8}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda39;-><init>(Lcom/google/android/exoplayer2/Tracks;)V

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3214
    :cond_a
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3215
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda40;

    invoke-direct {v6, v10}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda40;-><init>(Lcom/google/android/exoplayer2/MediaMetadata;)V

    const/16 v7, 0xe

    invoke-virtual {v4, v7, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3219
    :cond_b
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v6, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    if-eq v4, v6, :cond_c

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3220
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda41;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda41;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_c
    if-nez v3, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3228
    new-instance v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda43;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda43;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    invoke-virtual {v4, v12, v6}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v5, :cond_f

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3234
    new-instance v5, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda12;

    invoke-direct {v5, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v5}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_f
    if-nez v3, :cond_10

    .line 3238
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-eq v3, v4, :cond_11

    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3240
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda13;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v5, 0x5

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3246
    :cond_11
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-eq v3, v4, :cond_12

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3247
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda14;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda14;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v5, 0x6

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3252
    :cond_12
    invoke-static {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z

    move-result v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlaying(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Z

    move-result v4

    if-eq v3, v4, :cond_13

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3253
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda15;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/4 v5, 0x7

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3257
    :cond_13
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3258
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda16;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda16;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3262
    :cond_14
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    if-eq v3, v4, :cond_15

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3263
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda17;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda17;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x8

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3267
    :cond_15
    iget-boolean v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-eq v3, v4, :cond_16

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3268
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda18;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda18;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3272
    :cond_16
    iget-wide v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3273
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda19;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3277
    :cond_17
    iget-wide v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3278
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda20;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda20;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3282
    :cond_18
    iget-wide v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v5, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3283
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda21;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda21;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x12

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3288
    :cond_19
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/audio/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3289
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda24;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda24;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x14

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3293
    :cond_1a
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/video/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3294
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda25;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda25;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x19

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3298
    :cond_1b
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3299
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda26;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda26;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x1d

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3303
    :cond_1c
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3304
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda27;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda27;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0xf

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3308
    :cond_1d
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3309
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>()V

    const/16 v5, 0x1a

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3311
    :cond_1e
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3312
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda28;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda28;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3318
    :cond_1f
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_20

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3319
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda29;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda29;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x16

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3322
    :cond_20
    iget v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    iget v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v3, v4, :cond_21

    iget-boolean v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-eq v3, v4, :cond_22

    :cond_21
    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3324
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda30;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda30;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x1e

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3329
    :cond_22
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3330
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda31;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda31;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x1b

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3337
    :cond_23
    iget-object v3, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-object v4, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timedMetadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/metadata/Metadata;->presentationTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_24

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3339
    new-instance v4, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda33;

    invoke-direct {v4, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda33;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v5, 0x1c

    invoke-virtual {v3, v5, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_24
    const/4 v3, 0x1

    if-ne v11, v3, :cond_25

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3343
    new-instance v4, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v3, v12, v4}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 3345
    :cond_25
    iget-object v2, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    iget-object v3, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3346
    new-instance v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda35;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda35;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    const/16 v1, 0xd

    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_26
    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 3350
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

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
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3375
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

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
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$State;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "state"
        }
    .end annotation

    .line 3388
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3389
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 3391
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3392
    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3394
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderState(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p2

    .line 3393
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    .line 3395
    new-instance p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda49;

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda49;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance p3, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda50;

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda50;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;)V

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

    .line 3355
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    if-nez v0, :cond_0

    .line 3368
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    :cond_0
    return-void

    .line 3363
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 3357
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 3364
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 2003
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public final addMediaItems(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 2090
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2091
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2094
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/16 v2, 0x14

    .line 2095
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 2098
    :cond_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2100
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;I)V

    .line 2099
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final clearVideoSurface()V
    .locals 1

    const/4 v0, 0x0

    .line 2604
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 2609
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 2614
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 2619
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 2624
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public final decreaseDeviceVolume()V
    .locals 3

    .line 2704
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 2707
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2711
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleDecreaseDeviceVolume()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda55;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda55;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2710
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final getApplicationLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->applicationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public final getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    .line 2498
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2499
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->audioAttributes:Lcom/google/android/exoplayer2/audio/AudioAttributes;

    return-object p0
.end method

.method public final getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 0

    .line 2020
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2021
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->availableCommands:Lcom/google/android/exoplayer2/Player$Commands;

    return-object p0
.end method

.method public final getBufferedPosition()J
    .locals 4

    .line 2454
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2455
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2456
    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 2457
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getContentBufferedPosition()J
    .locals 4

    .line 2492
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2493
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentBufferedPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPosition()J
    .locals 2

    .line 2486
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2487
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 0

    .line 2474
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2475
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    return p0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 0

    .line 2480
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2481
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    return p0
.end method

.method public final getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;
    .locals 0

    .line 2653
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2654
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentCues:Lcom/google/android/exoplayer2/text/CueGroup;

    return-object p0
.end method

.method public final getCurrentMediaItemIndex()I
    .locals 0

    .line 2430
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2431
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentMediaItemIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 2

    .line 2424
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2425
    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->window:Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndexInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/Timeline$Window;Lcom/google/android/exoplayer2/Timeline$Period;)I

    move-result p0

    return p0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 2448
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2449
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    .line 2418
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2419
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public final getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;
    .locals 0

    .line 2366
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2367
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentTracksInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public final getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    .line 2659
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2660
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceInfo:Lcom/google/android/exoplayer2/DeviceInfo;

    return-object p0
.end method

.method public final getDeviceVolume()I
    .locals 0

    .line 2665
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2666
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->deviceVolume:I

    return p0
.end method

.method public final getDuration()J
    .locals 3

    .line 2436
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    .line 2437
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2438
    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->timeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2439
    iget v1, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    .line 2440
    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 2441
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 2443
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxSeekToPreviousPosition()J
    .locals 2

    .line 2285
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2286
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method public final getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 2392
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2393
    invoke-static {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getMediaMetadataInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method protected getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .locals 2

    .line 2793
    new-instance p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PlaceholderUid;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    .line 2794
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 2795
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    .line 2796
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object p0

    .line 2797
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object p0

    return-object p0
.end method

.method protected getPlaceholderState(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 0

    return-object p1
.end method

.method public final getPlayWhenReady()Z
    .locals 0

    .line 2043
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2044
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playWhenReady:Z

    return p0
.end method

.method public final getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 2305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2306
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method public final getPlaybackState()I
    .locals 0

    .line 2184
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2185
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackState:I

    return p0
.end method

.method public final getPlaybackSuppressionReason()I
    .locals 0

    .line 2190
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2191
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playbackSuppressionReason:I

    return p0
.end method

.method public final getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0

    .line 2197
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2198
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playerError:Lcom/google/android/exoplayer2/PlaybackException;

    return-object p0
.end method

.method public final getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 2398
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2399
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlistMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public final getRepeatMode()I
    .locals 0

    .line 2217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2218
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->repeatMode:I

    return p0
.end method

.method public final getSeekBackIncrement()J
    .locals 2

    .line 2273
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2274
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public final getSeekForwardIncrement()J
    .locals 2

    .line 2279
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2280
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public final getShuffleModeEnabled()Z
    .locals 0

    .line 2237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2238
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    return p0
.end method

.method protected abstract getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
.end method

.method public final getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;
    .locals 0

    .line 2647
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2648
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->surfaceSize:Lcom/google/android/exoplayer2/util/Size;

    return-object p0
.end method

.method public final getTotalBufferedDuration()J
    .locals 2

    .line 2462
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2463
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 0

    .line 2372
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2373
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->trackSelectionParameters:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    return-object p0
.end method

.method public final getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    .line 2641
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2642
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->videoSize:Lcom/google/android/exoplayer2/video/VideoSize;

    return-object p0
.end method

.method public final getVolume()F
    .locals 0

    .line 2517
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2518
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->volume:F

    return p0
.end method

.method protected handleAddMediaItems(ILjava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3063
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

    .line 3026
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_VIDEO_SURFACE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleDecreaseDeviceVolume()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2978
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleIncreaseDeviceVolume()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2964
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    .line 3083
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

    .line 2824
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

    .line 2849
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

    .line 3100
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_CHANGE_MEDIA_ITEMS"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 3121
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle one of the COMMAND_SEEK_*"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetDeviceMuted(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2993
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_ADJUST_DEVICE_VOLUME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2951
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_DEVICE_VOLUME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetMediaItems(Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 3047
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

    .line 2811
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_PLAY_PAUSE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/PlaybackParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2891
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_SPEED_AND_PITCH"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2921
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_MEDIA_ITEMS_METADATA"

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

    .line 2863
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

    .line 2877
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing implementation to handle COMMAND_SET_SHUFFLE_MODE"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected handleSetTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 2906
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

    .line 3009
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

    .line 2937
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

    .line 2837
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing implementation to handle COMMAND_STOP"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final increaseDeviceVolume()V
    .locals 3

    .line 2690
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 2693
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2697
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleIncreaseDeviceVolume()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2696
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method protected final invalidateState()V
    .locals 2

    .line 2739
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 2740
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2744
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    const/4 v1, 0x0

    .line 2743
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final isDeviceMuted()Z
    .locals 0

    .line 2671
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2672
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isDeviceMuted:Z

    return p0
.end method

.method public final isLoading()Z
    .locals 0

    .line 2243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2244
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->isLoading:Z

    return p0
.end method

.method public final isPlayingAd()Z
    .locals 1

    .line 2468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2469
    iget p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentAdGroupIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$addMediaItems$3$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 4

    .line 2102
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 2103
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int v2, v1, p3

    .line 2105
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object v3

    .line 2104
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2107
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$moveMediaItems$4$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;III)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 2

    .line 2132
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2133
    invoke-static {v0, p2, p3, p4}, Lcom/google/android/exoplayer2/util/Util;->moveItems(Ljava/util/List;III)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2134
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$new$0$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/Player$Listener;Lcom/google/android/exoplayer2/util/FlagSet;)V
    .locals 1

    .line 1996
    new-instance v0, Lcom/google/android/exoplayer2/Player$Events;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/Player$Events;-><init>(Lcom/google/android/exoplayer2/util/FlagSet;)V

    invoke-interface {p1, p0, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method synthetic lambda$removeMediaItems$5$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;II)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 2

    .line 2157
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2158
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 2159
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylist(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$setMediaItemsInternal$2$com-google-android-exoplayer2-SimpleBasePlayer(Ljava/util/List;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 3

    .line 2079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2080
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2081
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/MediaItem;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getPlaceholderMediaItemData(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2083
    :cond_0
    invoke-static {p2, v0, p3, p4, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getStateWithNewPlaylistAndPosition(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Ljava/util/List;IJ)Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$updateStateForPendingOperation$55$com-google-android-exoplayer2-SimpleBasePlayer(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 3397
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 3398
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->pendingOperations:Ljava/util/HashSet;

    .line 3399
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-nez p1, :cond_0

    .line 3401
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p1

    const/4 v0, 0x0

    .line 3400
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateAndInformListeners(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;ZZ)V

    :cond_0
    return-void
.end method

.method public final moveMediaItems(III)V
    .locals 7

    .line 2113
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2114
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2117
    iget-object v0, v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/16 v1, 0x14

    .line 2118
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 2123
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2124
    iget-object p2, v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p2

    sub-int v0, v5, p1

    sub-int/2addr p2, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-eq p1, v5, :cond_3

    if-ne v6, p1, :cond_2

    goto :goto_1

    .line 2129
    :cond_2
    invoke-virtual {p0, p1, v5, v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleMoveMediaItems(III)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    new-instance p3, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;

    move-object v1, p3

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;III)V

    .line 2128
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final prepare()V
    .locals 3

    .line 2165
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/4 v1, 0x2

    .line 2168
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2172
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handlePrepare()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda46;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda46;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2171
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final release()V
    .locals 4

    .line 2341
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    if-eqz v1, :cond_0

    return-void

    .line 2348
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleRelease()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda54;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda54;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2347
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->released:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 2350
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2354
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v2

    .line 2355
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlaybackState(I)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->ZERO:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2356
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setTotalBufferedDurationMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    .line 2358
    invoke-static {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->getContentPositionMsInternal(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->getConstant(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    .line 2357
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setContentBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->adPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    .line 2359
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setAdBufferedPositionMs(Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2360
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setIsLoading(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    .line 2361
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    return-void
.end method

.method public final removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2008
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->listeners:Lcom/google/android/exoplayer2/util/ListenerSet;

    .line 2009
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMediaItems(II)V
    .locals 3

    .line 2140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2141
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2144
    iget-object v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/16 v2, 0x14

    .line 2145
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-lt p1, v1, :cond_1

    goto :goto_1

    .line 2150
    :cond_1
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-ne p1, p2, :cond_2

    return-void

    .line 2155
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleRemoveMediaItems(II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda48;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda48;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer;Lcom/google/android/exoplayer2/SimpleBasePlayer$State;II)V

    .line 2154
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final seekTo(IJIZ)V
    .locals 3

    .line 2254
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2255
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2258
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2259
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 2260
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto :goto_1

    .line 2264
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSeek(IJI)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p4

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;IJ)V

    .line 2263
    invoke-direct {p0, p4, v2, v0, p5}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;ZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setDeviceMuted(Z)V
    .locals 3

    .line 2718
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1a

    .line 2721
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2725
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetDeviceMuted(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2724
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setDeviceVolume(I)V
    .locals 3

    .line 2677
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x19

    .line 2680
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2684
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetDeviceVolume(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    .line 2683
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 2058
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2060
    iget p2, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget-object p3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2061
    iget-object p3, p3, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide p3

    .line 2063
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 2049
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2050
    iget v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->currentMediaItemIndex:I

    :goto_0
    if-eqz p2, :cond_1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    .line 2051
    iget-object p2, p2, Lcom/google/android/exoplayer2/SimpleBasePlayer$State;->contentPositionMsSupplier:Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v1

    .line 2052
    :goto_1
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->setMediaItemsInternal(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 3

    .line 2026
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/4 v1, 0x1

    .line 2029
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2033
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2032
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 3

    .line 2291
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0xd

    .line 2294
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2298
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda47;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/PlaybackParameters;)V

    .line 2297
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 3

    .line 2404
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x13

    .line 2407
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda51;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 2410
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 3

    .line 2203
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0xf

    .line 2206
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2210
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetRepeatMode(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;I)V

    .line 2209
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .locals 3

    .line 2223
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0xe

    .line 2226
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2230
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetShuffleModeEnabled(Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Z)V

    .line 2229
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 3

    .line 2378
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1d

    .line 2381
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda11;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 2384
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoSurface(Landroid/view/Surface;)V
    .locals 2

    .line 2523
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2526
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2530
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2534
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2533
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 2541
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2544
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2548
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2552
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda45;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda45;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceHolder;)V

    .line 2551
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 3

    .line 2559
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2562
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2566
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2570
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda56;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda56;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Landroid/view/SurfaceView;)V

    .line 2569
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVideoTextureView(Landroid/view/TextureView;)V
    .locals 4

    .line 2580
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x1b

    .line 2583
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2587
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearVideoSurface()V

    return-void

    .line 2591
    :cond_1
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2592
    new-instance v1, Lcom/google/android/exoplayer2/util/Size;

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/util/Size;-><init>(II)V

    goto :goto_0

    .line 2594
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/util/Size;->ZERO:Lcom/google/android/exoplayer2/util/Size;

    .line 2597
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVideoOutput(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;Lcom/google/android/exoplayer2/util/Size;)V

    .line 2596
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 2504
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/16 v1, 0x18

    .line 2507
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2511
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleSetVolume(F)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda52;

    invoke-direct {v2, v0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda52;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;F)V

    .line 2510
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 2311
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->verifyApplicationThreadAndInitState()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer;->state:Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    const/4 v1, 0x3

    .line 2314
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->shouldHandleCommand(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2318
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->handleStop()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda53;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$$ExternalSyntheticLambda53;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$State;)V

    .line 2317
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->updateStateForPendingOperation(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public final stop(Z)V
    .locals 0

    .line 2333
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->stop()V

    if-eqz p1, :cond_0

    .line 2335
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer;->clearMediaItems()V

    :cond_0
    return-void
.end method
