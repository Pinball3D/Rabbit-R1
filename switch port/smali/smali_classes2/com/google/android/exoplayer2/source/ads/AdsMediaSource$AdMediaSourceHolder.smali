.class final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdMediaSourceHolder"
.end annotation


# instance fields
.field private final activeMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private adUri:Landroid/net/Uri;

.field private final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

.field private timeline:Lcom/google/android/exoplayer2/Timeline;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 458
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 1

    .line 474
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 476
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz p2, :cond_0

    .line 478
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 479
    new-instance p2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adUri:Landroid/net/Uri;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/Uri;

    invoke-direct {p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setPrepareListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz p0, :cond_1

    const/4 p2, 0x0

    .line 482
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    .line 483
    new-instance p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide p3, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {p2, p0, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 484
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    :cond_1
    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    .line 506
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 6

    .line 490
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    if-nez v0, :cond_1

    .line 492
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 493
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 494
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 495
    new-instance v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v3, v0, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 497
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-void
.end method

.method public hasMediaSource()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initializeWithMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/net/Uri;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->adUri:Landroid/net/Uri;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 464
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 465
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 466
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 467
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    invoke-direct {v2, v3, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setPrepareListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 469
    invoke-static {p2, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public isInactive()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 525
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 516
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 510
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    return-void
.end method
