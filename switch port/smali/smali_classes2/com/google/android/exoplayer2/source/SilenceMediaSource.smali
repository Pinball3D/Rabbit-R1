.class public final Lcom/google/android/exoplayer2/source/SilenceMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceSampleStream;,
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;,
        Lcom/google/android/exoplayer2/source/SilenceMediaSource$Factory;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final FORMAT:Lcom/google/android/exoplayer2/Format;

.field public static final MEDIA_ID:Ljava/lang/String; = "SilenceMediaSource"

.field private static final MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

.field private static final PCM_ENCODING:I = 0x2

.field private static final SAMPLE_RATE_HZ:I = 0xac44

.field private static final SILENCE_SAMPLE:[B


# instance fields
.field private final durationUs:J

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const v2, 0xac44

    .line 95
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;

    .line 98
    new-instance v2, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    const-string v3, "SilenceMediaSource"

    .line 100
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 101
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 102
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 105
    invoke-static {v1, v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;-><init>(JLcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method private constructor <init>(JLcom/google/android/exoplayer2/MediaItem;)V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/source/SilenceMediaSource$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;-><init>(JLcom/google/android/exoplayer2/MediaItem;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/exoplayer2/MediaItem;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplayer2/MediaItem;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/android/exoplayer2/Format;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method static synthetic access$300(J)J
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioByteCount(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(J)J
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->getAudioPositionUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500()[B
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-object v0
.end method

.method private static getAudioByteCount(J)J
    .locals 2

    const-wide/32 v0, 0xac44

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    .line 322
    div-long/2addr p0, v0

    const/4 v0, 0x2

    .line 323
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, p0

    return-wide v0
.end method

.method private static getAudioPositionUs(J)J
    .locals 2

    const/4 v0, 0x2

    .line 327
    invoke-static {v0, v0}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xac44

    .line 328
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    .line 148
    new-instance p1, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/source/SilenceMediaSource$SilenceMediaPeriod;-><init>(J)V

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 8

    .line 133
    new-instance p1, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->durationUs:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SilenceMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
