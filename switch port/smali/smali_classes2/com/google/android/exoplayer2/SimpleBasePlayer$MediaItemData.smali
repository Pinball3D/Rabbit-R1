.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MediaItemData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    }
.end annotation


# instance fields
.field private final combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field public final defaultPositionUs:J

.field public final durationUs:J

.field public final elapsedRealtimeEpochOffsetMs:J

.field public final isDynamic:Z

.field public final isPlaceholder:Z

.field public final isSeekable:Z

.field public final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field public final manifest:Ljava/lang/Object;

.field public final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field public final mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private final periodPositionInWindowUs:[J

.field public final periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;",
            ">;"
        }
    .end annotation
.end field

.field public final positionInFirstPeriodUs:J

.field public final presentationStartTimeMs:J

.field public final tracks:Lcom/google/android/exoplayer2/Tracks;

.field public final uid:Ljava/lang/Object;

.field public final windowStartTimeMs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)V
    .locals 9

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 1595
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const-string v5, "presentationStartTimeMs can only be set if liveConfiguration != null"

    .line 1594
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1598
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    const-string v5, "windowStartTimeMs can only be set if liveConfiguration != null"

    .line 1597
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1601
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    const-string v5, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null"

    .line 1600
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_4

    .line 1603
    :cond_3
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_5

    .line 1604
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_5

    .line 1606
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v4

    :goto_3
    const-string v5, "windowStartTimeMs can\'t be less than presentationStartTimeMs"

    .line 1605
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1609
    :cond_5
    :goto_4
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 1610
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-eqz v1, :cond_7

    .line 1612
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-gtz v1, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    move v1, v4

    :goto_5
    const-string v2, "defaultPositionUs can\'t be greater than durationUs"

    .line 1611
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 1615
    :cond_7
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1616
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1617
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1618
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1619
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    .line 1620
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1621
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    .line 1622
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    .line 1623
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    .line 1624
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    .line 1625
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$6000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    .line 1626
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    .line 1627
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    .line 1628
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$6100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    .line 1629
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$6200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    .line 1630
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->access$5100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1631
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v5

    new-array v5, v5, [J

    iput-object v5, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    .line 1632
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    neg-long v1, v1

    .line 1633
    aput-wide v1, v5, v4

    :goto_6
    add-int/lit8 p1, v0, -0x1

    if-ge v4, p1, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    add-int/lit8 v1, v4, 0x1

    .line 1635
    aget-wide v5, p1, v4

    iget-object v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-wide v7, v2, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    add-long/2addr v5, v7

    aput-wide v5, p1, v1

    move v4, v1

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1639
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getCombinedMediaMetadata(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/Tracks;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p1

    :goto_7
    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;
    .locals 0

    .line 1205
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    .line 1205
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 1205
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->getPeriod(IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->combinedMediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method private static getCombinedMediaMetadata(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/Tracks;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 9

    .line 1755
    new-instance v0, Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;-><init>()V

    .line 1756
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1758
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Tracks$Group;

    move v5, v2

    .line 1759
    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    if-ge v5, v6, :cond_1

    .line 1760
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSelected(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1761
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v6

    .line 1762
    iget-object v7, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v7, :cond_0

    move v7, v2

    .line 1763
    :goto_2
    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 1764
    iget-object v8, v6, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v8

    invoke-interface {v8, v0}, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;->populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1770
    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populate(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method private getPeriod(IILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1721
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    add-long v5, v0, v4

    const-wide/16 v7, 0x0

    .line 1722
    sget-object v9, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->NONE:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-boolean v10, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    move-object v1, p3

    move-object v2, v3

    move v4, p1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1731
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    .line 1732
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1733
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 1734
    iget-wide v5, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    aget-wide v7, p0, p2

    iget-object v9, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    move-object v1, p3

    move v4, p1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplayer2/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    :goto_0
    return-object p3
.end method

.method private getPeriodUid(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1747
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1750
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1751
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1699
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    const/16 v18, 0x1

    if-eqz v2, :cond_0

    move/from16 v19, v18

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    move/from16 v19, v2

    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v4, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-wide v5, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v11, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v12, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-object v13, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-wide v14, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    move-object/from16 v22, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    move-wide/from16 v16, v1

    add-int v1, p1, v19

    add-int/lit8 v19, v1, -0x1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    move-wide/from16 v20, v1

    move-object/from16 v2, p2

    move-object/from16 v1, p2

    move/from16 v18, p1

    move-object/from16 v2, v22

    .line 1700
    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    .line 1715
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

    return-object v1
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2

    .line 1644
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1652
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1655
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1656
    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1657
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1658
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1659
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    .line 1660
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1661
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1671
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1677
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1678
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Tracks;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1679
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 1680
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaMetadata;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    .line 1681
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    if-nez v0, :cond_2

    goto :goto_2

    .line 1682
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1694
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method
