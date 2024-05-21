.class final Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;
.super Ljava/lang/Object;
.source "SilenceMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/SilenceMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SilenceSampleStream"
.end annotation


# instance fields
.field private final durationBytes:J

.field private positionBytes:J

.field private sentFormat:Z


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$300(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    const-wide/16 p1, 0x0

    .line 273
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public maybeThrowError()V
    .locals 0

    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 8

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr v2, v4

    const-wide/16 v6, 0x0

    cmp-long p1, v2, v6

    const/4 v0, -0x4

    if-nez p1, :cond_1

    const/4 p0, 0x4

    .line 299
    invoke-virtual {p2, p0}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    return v0

    .line 303
    :cond_1
    invoke-static {v4, v5}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$400(J)J

    move-result-wide v4

    iput-wide v4, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 304
    invoke-virtual {p2, v1}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    .line 305
    invoke-static {}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$500()[B

    move-result-object p1

    array-length p1, p1

    int-to-long v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    and-int/lit8 v2, p3, 0x4

    if-nez v2, :cond_2

    .line 307
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 308
    iget-object p2, p2, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$500()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_2
    and-int/lit8 p2, p3, 0x1

    if-nez p2, :cond_3

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    int-to-long v1, p1

    add-long/2addr p2, v1

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    :cond_3
    return v0

    .line 292
    :cond_4
    :goto_0
    invoke-static {}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$200()Landroidx/media3/common/Format;

    move-result-object p2

    iput-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->sentFormat:Z

    const/4 p0, -0x5

    return p0
.end method

.method public seekTo(J)V
    .locals 6

    .line 277
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$300(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->durationBytes:J

    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    return-void
.end method

.method public skipData(J)I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    .line 319
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->seekTo(J)V

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/SilenceMediaSource$SilenceSampleStream;->positionBytes:J

    sub-long/2addr p0, v0

    .line 320
    invoke-static {}, Landroidx/media3/exoplayer/source/SilenceMediaSource;->access$500()[B

    move-result-object p2

    array-length p2, p2

    int-to-long v0, p2

    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
