.class final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field private final mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

.field private final streamIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;I)V
    .locals 0

    .line 1222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    iput p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->streamIndex:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 1229
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->streamIndex:I

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isReady(I)Z

    move-result p0

    return p0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 1234
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->streamIndex:I

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->maybeThrowError(I)V

    return-void
.end method

.method public readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 1240
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    iget v3, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->streamIndex:I

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->readData(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;ILandroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result p0

    return p0
.end method

.method public skipData(J)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 1246
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->mediaPeriod:Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    iget p0, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;->streamIndex:I

    invoke-virtual {v0, v1, p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->skipData(Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;IJ)I

    move-result p0

    return p0
.end method
