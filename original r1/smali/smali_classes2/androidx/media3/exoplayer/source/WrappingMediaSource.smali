.class public abstract Landroidx/media3/exoplayer/source/WrappingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "WrappingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_ID:Ljava/lang/Void;


# instance fields
.field protected final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 113
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p0

    return-object p0
.end method

.method protected final disableChildSource()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 224
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method protected final enableChildSource()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 219
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->enableChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method public getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 82
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->getInitialTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 100
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 168
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaTimeForChildMediaTime(J)J
    .locals 0

    return-wide p1
.end method

.method protected bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected final getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J
    .locals 0

    .line 187
    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected getWindowIndexForChildWindowIndex(I)I
    .locals 0

    return p1
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I

    move-result p0

    return p0
.end method

.method protected final getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I
    .locals 0

    .line 150
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(I)I

    move-result p0

    return p0
.end method

.method public isSingleWindow()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 87
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->isSingleWindow()Z

    move-result p0

    return p0
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Void;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected final prepareChildSource()V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 214
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method protected prepareSourceInternal()V
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->prepareChildSource()V

    return-void
.end method

.method protected final prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 67
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->prepareSourceInternal()V

    return-void
.end method

.method protected final releaseChildSource()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 229
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 126
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method
