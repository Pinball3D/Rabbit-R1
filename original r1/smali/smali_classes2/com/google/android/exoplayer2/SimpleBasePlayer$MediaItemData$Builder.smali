.class public final Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultPositionUs:J

.field private durationUs:J

.field private elapsedRealtimeEpochOffsetMs:J

.field private isDynamic:Z

.field private isPlaceholder:Z

.field private isSeekable:Z

.field private liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private manifest:Ljava/lang/Object;

.field private mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

.field private periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;",
            ">;"
        }
    .end annotation
.end field

.field private positionInFirstPeriodUs:J

.field private presentationStartTimeMs:J

.field private tracks:Lcom/google/android/exoplayer2/Tracks;

.field private uid:Ljava/lang/Object;

.field private windowStartTimeMs:J


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)V
    .locals 2

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1253
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1254
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->tracks:Lcom/google/android/exoplayer2/Tracks;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1255
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 1256
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    .line 1257
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    .line 1258
    iget-object v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    .line 1259
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    .line 1260
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    .line 1261
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    .line 1262
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    .line 1263
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    .line 1264
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    .line 1265
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->durationUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    .line 1266
    iget-wide v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    .line 1267
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1268
    iget-object p1, p1, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V
    .locals 0

    .line 1208
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    .line 1235
    sget-object p1, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    .line 1236
    sget-object p1, Lcom/google/android/exoplayer2/MediaItem;->EMPTY:Lcom/google/android/exoplayer2/MediaItem;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    .line 1249
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$4900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$5000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    return-wide v0
.end method

.method static synthetic access$5100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    return-wide v0
.end method

.method static synthetic access$5300(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    return-wide v0
.end method

.method static synthetic access$5400(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/Tracks;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1208
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5900(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z
    .locals 0

    .line 1208
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z
    .locals 0

    .line 1208
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method static synthetic access$6200(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;)Z
    .locals 0

    .line 1208
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;
    .locals 2

    .line 1524
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData;-><init>(Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;Lcom/google/android/exoplayer2/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public setDefaultPositionUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1443
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->defaultPositionUs:J

    return-object p0
.end method

.method public setDurationUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1461
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->durationUs:J

    return-object p0
.end method

.method public setElapsedRealtimeEpochOffsetMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->elapsedRealtimeEpochOffsetMs:J

    return-object p0
.end method

.method public setIsDynamic(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isDynamic:Z

    return-object p0
.end method

.method public setIsPlaceholder(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isPlaceholder:Z

    return-object p0
.end method

.method public setIsSeekable(Z)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->isSeekable:Z

    return-object p0
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-object p0
.end method

.method public setManifest(Ljava/lang/Object;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->manifest:Ljava/lang/Object;

    return-object p0
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public setMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->mediaMetadata:Lcom/google/android/exoplayer2/MediaMetadata;

    return-object p0
.end method

.method public setPeriods(Ljava/util/List;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;",
            ">;)",
            "Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;"
        }
    .end annotation

    .line 1508
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    .line 1511
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    const-string v5, "Periods other than last need a duration"

    .line 1510
    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v3, v2, 0x1

    move v5, v3

    :goto_2
    if-ge v5, v0, :cond_1

    .line 1514
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-object v6, v6, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;

    iget-object v7, v7, Lcom/google/android/exoplayer2/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v4

    const-string v7, "Duplicate PeriodData UIDs in period list"

    .line 1513
    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 1518
    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->periods:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setPositionInFirstPeriodUs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1476
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->positionInFirstPeriodUs:J

    return-object p0
.end method

.method public setPresentationStartTimeMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->presentationStartTimeMs:J

    return-object p0
.end method

.method public setTracks(Lcom/google/android/exoplayer2/Tracks;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->tracks:Lcom/google/android/exoplayer2/Tracks;

    return-object p0
.end method

.method public setUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->uid:Ljava/lang/Object;

    return-object p0
.end method

.method public setWindowStartTimeMs(J)Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/SimpleBasePlayer$MediaItemData$Builder;->windowStartTimeMs:J

    return-object p0
.end method
