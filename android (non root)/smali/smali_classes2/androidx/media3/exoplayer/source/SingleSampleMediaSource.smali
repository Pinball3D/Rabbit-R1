.class public final Landroidx/media3/exoplayer/source/SingleSampleMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final dataSpec:Landroidx/media3/datasource/DataSpec;

.field private final durationUs:J

.field private final format:Landroidx/media3/common/Format;

.field private final loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final timeline:Landroidx/media3/common/Timeline;

.field private transferListener:Landroidx/media3/datasource/TransferListener;

.field private final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;JLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    .line 161
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    move-object v2, p3

    iput-object v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    move-wide v2, p4

    iput-wide v2, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->durationUs:J

    move-object/from16 v4, p6

    iput-object v4, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    move/from16 v4, p7

    iput-boolean v4, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    .line 166
    new-instance v4, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v4}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 168
    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 169
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v4

    .line 170
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v4

    move-object/from16 v5, p8

    .line 171
    invoke-virtual {v4, v5}, Landroidx/media3/common/MediaItem$Builder;->setTag(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v4

    .line 172
    invoke-virtual {v4}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v8

    iput-object v8, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 173
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const-string v6, "text/x-unknown"

    .line 175
    invoke-static {v5, v6}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 176
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 177
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 178
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 179
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 180
    iget-object v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    .line 181
    invoke-virtual {v4}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->format:Landroidx/media3/common/Format;

    .line 182
    new-instance v4, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v4}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v1, v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 184
    invoke-virtual {v4, v1}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    const/4 v4, 0x1

    .line 185
    invoke-virtual {v1, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 187
    new-instance v9, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    iput-object v9, v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->timeline:Landroidx/media3/common/Timeline;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;JLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;Landroidx/media3/exoplayer/source/SingleSampleMediaSource$1;)V
    .locals 0

    .line 41
    invoke-direct/range {p0 .. p8}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/datasource/DataSource$Factory;JLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 10

    .line 217
    new-instance p2, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->format:Landroidx/media3/common/Format;

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->durationUs:J

    iget-object v7, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 224
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->createEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v8

    iget-boolean v9, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->treatLoadErrorsAsEndOfStream:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;-><init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/datasource/TransferListener;Landroidx/media3/common/Format;JLandroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Z)V

    return-object p2
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->timeline:Landroidx/media3/common/Timeline;

    .line 207
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    .line 230
    check-cast p1, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;->release()V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
