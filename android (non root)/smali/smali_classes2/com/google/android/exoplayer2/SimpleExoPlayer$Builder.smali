.class public final Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p3}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v8, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)V

    move-object v0, p0

    iput-object v8, v0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    new-instance v1, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/SimpleExoPlayer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 381
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->buildSimpleExoPlayer()Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object p0

    return-object p0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 147
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 207
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setAnalyticsCollector(Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 229
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 187
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setBandwidthMeter(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 372
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 340
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 249
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 361
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLivePlaybackSpeedControl(Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 177
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 197
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 167
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplayer2/source/MediaSource$Factory;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 350
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 218
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 330
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setReleaseTimeoutMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 310
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekBackIncrementMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 320
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekForwardIncrementMs(J)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 300
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 259
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setSkipSilenceEnabled(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 157
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 290
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 280
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setVideoScalingMode(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 269
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setVideoScalingMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method

.method public setWakeMode(I)Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    .line 239
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setWakeMode(I)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    return-object p0
.end method
