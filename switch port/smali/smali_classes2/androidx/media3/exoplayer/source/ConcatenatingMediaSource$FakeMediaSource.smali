.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeMediaSource"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1012
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$1;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$FakeMediaSource;-><init>()V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 1036
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    .line 1021
    invoke-static {}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;->access$100()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

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
