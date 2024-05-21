.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private index:I

.field private mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private final mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 128
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->add(Lcom/google/android/exoplayer2/MediaItem;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/google/android/exoplayer2/MediaItem;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 2

    .line 151
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    const-string v1, "Must use useDefaultMediaSourceFactory or setMediaSourceFactory first."

    .line 152
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 155
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->add(Lcom/google/android/exoplayer2/source/MediaSource;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 170
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->add(Lcom/google/android/exoplayer2/source/MediaSource;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object p0

    return-object p0
.end method

.method public add(Lcom/google/android/exoplayer2/source/MediaSource;J)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 4

    .line 190
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    instance-of v0, p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    if-eqz v0, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Progressive media source must define an initial placeholder duration."

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 195
    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    iget v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->index:I

    .line 196
    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p2

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/MediaSource;IJ)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->index:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must add at least one source to the concatenation."

    .line 202
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    if-nez v0, :cond_1

    .line 204
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 206
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceHoldersBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$1;)V

    return-object v0
.end method

.method public setMediaItem(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->mediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    return-object p0
.end method

.method public useDefaultMediaSourceFactory(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    .locals 1

    .line 79
    new-instance v0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;

    move-result-object p0

    return-object p0
.end method
