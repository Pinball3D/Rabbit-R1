.class public final Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "CameraMotionRenderer.java"


# static fields
.field private static final SAMPLE_WINDOW_DURATION_US:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "CameraMotionRenderer"


# instance fields
.field private final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private lastTimestampUs:J

.field private listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

.field private offsetUs:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    .line 50
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 51
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 52
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private parseMetadata(Ljava/nio/ByteBuffer;)[F
    .locals 3

    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 138
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private resetListener()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_0

    .line 145
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraMotionRenderer"

    return-object p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 71
    check-cast p2, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 73
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result p0

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onDisabled()V
    .locals 0

    .line 90
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->resetListener()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 85
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->resetListener()V

    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJ)V
    .locals 0

    iput-wide p4, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->offsetUs:J

    return-void
.end method

.method public render(JJ)V
    .locals 4

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_4

    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 97
    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 98
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object p3

    iget-object p4, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 100
    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 104
    iget-wide p3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 105
    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 109
    invoke-virtual {p3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 110
    iget-object p3, p3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->parseMetadata(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    .line 115
    invoke-static {p4}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->offsetUs:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0

    const-string p0, "application/x-camera-motion"

    .line 62
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 63
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 64
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    :goto_0
    return p0
.end method
