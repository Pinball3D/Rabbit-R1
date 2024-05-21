.class public abstract Lcom/google/android/exoplayer2/source/WrappingMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "WrappingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_ID:Ljava/lang/Void;


# instance fields
.field protected final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 111
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p0

    return-object p0
.end method

.method protected final disableChildSource()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->disableChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method protected final enableChildSource()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 217
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->enableChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 80
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 98
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected final getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 166
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaTimeForChildMediaTime(J)J
    .locals 0

    return-wide p1
.end method

.method protected bridge synthetic getMediaTimeForChildMediaTime(Ljava/lang/Object;J)J
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected final getMediaTimeForChildMediaTime(Ljava/lang/Void;J)J
    .locals 0

    .line 185
    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getMediaTimeForChildMediaTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected getWindowIndexForChildWindowIndex(I)I
    .locals 0

    return p1
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I

    move-result p0

    return p0
.end method

.method protected final getWindowIndexForChildWindowIndex(Ljava/lang/Void;I)I
    .locals 0

    .line 148
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->getWindowIndexForChildWindowIndex(I)I

    move-result p0

    return p0
.end method

.method public isSingleWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 85
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->isSingleWindow()Z

    move-result p0

    return p0
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected final onChildSourceInfoRefreshed(Ljava/lang/Void;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 130
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected final prepareChildSource()V
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method protected prepareSourceInternal()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareChildSource()V

    return-void
.end method

.method protected final prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->prepareSourceInternal()V

    return-void
.end method

.method protected final releaseChildSource()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->CHILD_SOURCE_ID:Ljava/lang/Void;

    .line 227
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/WrappingMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 124
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method
