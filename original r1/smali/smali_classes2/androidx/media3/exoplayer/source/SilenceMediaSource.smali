.class public final Landroidx/media3/exoplayer/source/SilenceMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceMediaPeriod;,
        Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;,
        Landroidx/media3/exoplayer/source/SilenceMediaSource$Factory;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final FORMAT:Landroidx/media3/common/Format;

.field public static final MEDIA_ID:Ljava/lang/String; = "SilenceMediaSource"

.field private static final MEDIA_ITEM:Landroidx/media3/common/MediaItem;

.field private static final PCM_ENCODING:I = 0x2

.field private static final SAMPLE_RATE_HZ:I = 0xac44

.field private static final SILENCE_SAMPLE:[B


# instance fields
.field private final durationUs:J

.field private final mediaItem:Landroidx/media3/common/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 94
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    .line 96
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 97
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const v2, 0xac44

    .line 98
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->FORMAT:Landroidx/media3/common/Format;

    .line 101
    new-instance v2, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v2}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v3, "SilenceMediaSource"

    .line 103
    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 104
    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v2

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v0}, Landroidx/media3/common/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 108
    invoke-static {v1, v1}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 119
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/source/SilenceMediaSource;-><init>(JLandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method private constructor <init>(JLandroidx/media3/common/MediaItem;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->durationUs:J

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method synthetic constructor <init>(JLandroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/SilenceMediaSource$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SilenceMediaSource;-><init>(JLandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method static synthetic access$000()Landroidx/media3/common/MediaItem;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method static synthetic access$200()Landroidx/media3/common/Format;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->FORMAT:Landroidx/media3/common/Format;

    return-object v0
.end method

.method static synthetic access$300(J)J
    .locals 0

    .line 44
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->getAudioByteCount(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(J)J
    .locals 0

    .line 44
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->getAudioPositionUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500()[B
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-object v0
.end method

.method private static getAudioByteCount(J)J
    .locals 2

    const-wide/32 v0, 0xac44

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    .line 325
    div-long/2addr p0, v0

    const/4 v0, 0x2

    .line 326
    invoke-static {v0, v0}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method private static getAudioPositionUs(J)J
    .locals 2

    const/4 v0, 0x2

    .line 330
    invoke-static {v0, v0}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xac44

    .line 331
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 151
    new-instance p1, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceMediaPeriod;

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->durationUs:J

    invoke-direct {p1, p2, p3}, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceMediaPeriod;-><init>(J)V

    return-object p1
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 8

    .line 136
    new-instance p1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->durationUs:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
