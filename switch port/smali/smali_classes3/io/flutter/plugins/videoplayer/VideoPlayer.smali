.class final Lio/flutter/plugins/videoplayer/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static final FORMAT_DASH:Ljava/lang/String; = "dash"

.field private static final FORMAT_HLS:Ljava/lang/String; = "hls"

.field private static final FORMAT_OTHER:Ljava/lang/String; = "other"

.field private static final FORMAT_SS:Ljava/lang/String; = "ss"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final eventChannel:Lio/flutter/plugin/common/EventChannel;

.field private eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

.field private exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field private httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

.field isInitialized:Z

.field private final options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

.field private surface:Landroid/view/Surface;

.field private final textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/flutter/plugin/common/EventChannel;",
            "Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugins/videoplayer/VideoPlayerOptions;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    iput-object p7, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 79
    new-instance p2, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p2

    .line 80
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 82
    invoke-virtual {p0, p6}, Lio/flutter/plugins/videoplayer/VideoPlayer;->buildHttpDataSourceFactory(Ljava/util/Map;)V

    .line 83
    new-instance p4, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    iget-object p6, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {p4, p1, p6}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 86
    invoke-direct {p0, p3, p4, p5}, Lio/flutter/plugins/videoplayer/VideoPlayer;->buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    .line 88
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 89
    invoke-interface {p2}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 91
    new-instance p1, Lio/flutter/plugins/videoplayer/QueuingEventSink;

    invoke-direct {p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;-><init>()V

    invoke-direct {p0, p2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer;Lio/flutter/plugin/common/EventChannel;Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;Lio/flutter/plugins/videoplayer/VideoPlayerOptions;Lio/flutter/plugins/videoplayer/QueuingEventSink;Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    iput-object p4, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    iput-object p6, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 108
    invoke-direct {p0, p1, p5}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V

    return-void
.end method

.method private buildMediaSource(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 5

    const/4 p0, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 130
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p3

    goto :goto_2

    .line 132
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move p3, v4

    goto :goto_1

    :sswitch_0
    const-string v2, "other"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "dash"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_1

    :sswitch_2
    const-string v2, "hls"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move p3, v1

    goto :goto_1

    :sswitch_3
    const-string v2, "ss"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    move p3, v3

    :goto_1
    packed-switch p3, :pswitch_data_0

    move p3, v4

    goto :goto_2

    :pswitch_0
    move p3, p0

    goto :goto_2

    :pswitch_1
    move p3, v3

    goto :goto_2

    :pswitch_2
    move p3, v0

    goto :goto_2

    :pswitch_3
    move p3, v1

    :goto_2
    if-eqz p3, :cond_8

    if-eq p3, v1, :cond_7

    if-eq p3, v0, :cond_6

    if-ne p3, p0, :cond_5

    .line 163
    new-instance p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 164
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0

    .line 167
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_6
    new-instance p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 161
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p0

    return-object p0

    .line 152
    :cond_7
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance p3, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 154
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p0

    return-object p0

    .line 156
    :cond_8
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance p3, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p0, p3, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 158
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xe60 -> :sswitch_3
        0x193ef -> :sswitch_2
        0x2eef92 -> :sswitch_1
        0x6527f10 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setAudioAttributes(Lcom/google/android/exoplayer2/ExoPlayer;Z)V
    .locals 2

    .line 261
    new-instance v0, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 262
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->setContentType(I)Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/audio/AudioAttributes$Builder;->build()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    .line 261
    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    return-void
.end method

.method private setUpVideoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V
    .locals 2

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    .line 176
    new-instance v1, Lio/flutter/plugins/videoplayer/VideoPlayer$1;

    invoke-direct {v1, p0, p2}, Lio/flutter/plugins/videoplayer/VideoPlayer$1;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    .line 189
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    invoke-interface {v1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    .line 190
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->options:Lio/flutter/plugins/videoplayer/VideoPlayerOptions;

    .line 191
    iget-boolean v0, v0, Lio/flutter/plugins/videoplayer/VideoPlayerOptions;->mixWithOthers:Z

    invoke-static {p1, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->setAudioAttributes(Lcom/google/android/exoplayer2/ExoPlayer;Z)V

    .line 193
    new-instance v0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;

    invoke-direct {v0, p0, p2, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;-><init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;Lcom/google/android/exoplayer2/ExoPlayer;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method


# virtual methods
.method public buildHttpDataSourceFactory(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    const-string v2, "User-Agent"

    .line 115
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "ExoPlayer"

    :goto_0
    iget-object v3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 119
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->httpDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    :cond_1
    return-void
.end method

.method dispose()V
    .locals 2

    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 335
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->textureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 337
    invoke-interface {v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->release()V

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventChannel:Lio/flutter/plugin/common/EventChannel;

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/EventChannel;->setStreamHandler(Lio/flutter/plugin/common/EventChannel$StreamHandler;)V

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_1
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p0, :cond_2

    .line 343
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->release()V

    :cond_2
    return-void
.end method

.method getPosition()J
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 296
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method pause()V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x0

    .line 271
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method play()V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v0, 0x1

    .line 267
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method seekTo(I)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    int-to-long v0, p1

    .line 292
    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekTo(J)V

    return-void
.end method

.method sendBufferingUpdate()V
    .locals 4

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "bufferingUpdate"

    .line 253
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Number;

    const/4 v2, 0x0

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "values"

    .line 256
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 257
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method sendInitialized()V
    .locals 5

    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    if-eqz v0, :cond_3

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "initialized"

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 305
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 307
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 308
    invoke-interface {v1}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 309
    iget v2, v1, Lcom/google/android/exoplayer2/Format;->width:I

    .line 310
    iget v3, v1, Lcom/google/android/exoplayer2/Format;->height:I

    .line 311
    iget v1, v1, Lcom/google/android/exoplayer2/Format;->rotationDegrees:I

    const/16 v4, 0x5a

    if-eq v1, v4, :cond_0

    const/16 v4, 0x10e

    if-ne v1, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 314
    invoke-interface {v2}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplayer2/Format;->height:I

    iget-object v3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 315
    invoke-interface {v3}, Lcom/google/android/exoplayer2/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplayer2/Format;->width:I

    :cond_1
    const-string v4, "width"

    .line 317
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "height"

    .line 318
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    const-string v2, "rotationCorrection"

    .line 325
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 329
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method setLooping(Z)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 275
    :goto_0
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setRepeatMode(I)V

    return-void
.end method

.method setPlaybackSpeed(D)V
    .locals 1

    .line 286
    new-instance v0, Lcom/google/android/exoplayer2/PlaybackParameters;

    double-to-float p1, p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 288
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method setVolume(D)V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 279
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 280
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setVolume(F)V

    return-void
.end method
