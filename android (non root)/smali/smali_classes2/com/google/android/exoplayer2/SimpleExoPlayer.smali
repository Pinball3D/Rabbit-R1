.class public Lcom/google/android/exoplayer2/SimpleExoPlayer;
.super Lcom/google/android/exoplayer2/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ExoPlayer;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

.field private final player:Lcom/google/android/exoplayer2/ExoPlayerImpl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/RenderersFactory;Lcom/google/android/exoplayer2/trackselection/TrackSelector;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/LoadControl;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;ZLcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 403
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

    move/from16 v0, p8

    .line 412
    invoke-virtual {v8, v0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p9

    .line 413
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p10

    .line 414
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    move-object v1, p0

    .line 403
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V
    .locals 2

    .line 427
    invoke-direct {p0}, Lcom/google/android/exoplayer2/BasePlayer;-><init>()V

    .line 428
    new-instance v0, Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 430
    :try_start_0
    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-direct {v1, p1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;Lcom/google/android/exoplayer2/Player;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 433
    throw p1
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)V
    .locals 0

    .line 421
    invoke-static {p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplayer2/SimpleExoPlayer$Builder;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;-><init>(Lcom/google/android/exoplayer2/ExoPlayer$Builder;)V

    return-void
.end method

.method private blockUntilConstructorFinished()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplayer2/util/ConditionVariable;

    .line 1312
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 671
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 586
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 772
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 773
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 899
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 910
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 911
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSource(ILcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 904
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 905
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 922
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 916
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 917
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 0

    .line 627
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 628
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearAuxEffectInfo()V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 0

    .line 740
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 741
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 728
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 729
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    .line 531
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 538
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 556
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 567
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 568
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 579
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 580
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 0

    .line 1084
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1085
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplayer2/PlayerMessage$Target;)Lcom/google/android/exoplayer2/PlayerMessage;

    move-result-object p0

    return-object p0
.end method

.method public decreaseDeviceVolume()V
    .locals 0

    .line 1288
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1289
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->decreaseDeviceVolume()V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 445
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result p0

    return p0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->experimentalSetOffloadSchedulingEnabled(Z)V

    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
    .locals 0

    .line 664
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 665
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAnalyticsCollector()Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 0

    .line 760
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 761
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;
    .locals 0

    .line 603
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 604
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioAttributes()Lcom/google/android/exoplayer2/audio/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getAudioComponent()Lcom/google/android/exoplayer2/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 716
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 717
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object p0

    return-object p0
.end method

.method public getAudioFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 702
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 703
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getAudioSessionId()I
    .locals 0

    .line 615
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 616
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;
    .locals 0

    .line 814
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 815
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getAvailableCommands()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1201
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplayer2/util/Clock;
    .locals 0

    .line 766
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 767
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getClock()Lcom/google/android/exoplayer2/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 1236
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1237
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1230
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 0

    .line 1218
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 0

    .line 1224
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1225
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result p0

    return p0
.end method

.method public getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;
    .locals 0

    .line 746
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 747
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentCues()Lcom/google/android/exoplayer2/text/CueGroup;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 0

    .line 1182
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentPeriodIndex()I
    .locals 0

    .line 1176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1194
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    .line 1170
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1118
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1119
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1129
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTrackSelections()Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;
    .locals 0

    .line 1134
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1135
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getCurrentTracks()Lcom/google/android/exoplayer2/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplayer2/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;
    .locals 0

    .line 1258
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1259
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDeviceInfo()Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceVolume()I
    .locals 0

    .line 1264
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1265
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDeviceVolume()I

    move-result p0

    return p0
.end method

.method public getDuration()J
    .locals 2

    .line 1188
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 1024
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1025
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 1152
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1153
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getMediaMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 0

    .line 964
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPauseAtEndOfMediaItems()Z

    move-result p0

    return p0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    .line 952
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 953
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    return p0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 0

    .line 754
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 755
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    .line 1036
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1037
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackState()I
    .locals 0

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 785
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackState()I

    move-result p0

    return p0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 0

    .line 790
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 791
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaybackSuppressionReason()I

    move-result p0

    return p0
.end method

.method public getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 0

    .line 797
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 798
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplayer2/PlaybackException;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;
    .locals 0

    .line 1158
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1159
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlaylistMetadata()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer(I)Lcom/google/android/exoplayer2/Renderer;
    .locals 0

    .line 1102
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1103
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRenderer(I)Lcom/google/android/exoplayer2/Renderer;

    move-result-object p0

    return-object p0
.end method

.method public getRendererCount()I
    .locals 0

    .line 1090
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1091
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRendererCount()I

    move-result p0

    return p0
.end method

.method public getRendererType(I)I
    .locals 0

    .line 1096
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1097
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRendererType(I)I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 970
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 971
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 1012
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1013
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 1018
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1019
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;
    .locals 0

    .line 1048
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1049
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSeekParameters()Lcom/google/android/exoplayer2/SeekParameters;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleModeEnabled()Z
    .locals 0

    .line 988
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 989
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result p0

    return p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    .line 652
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 653
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSkipSilenceEnabled()Z

    move-result p0

    return p0
.end method

.method public getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 526
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getSurfaceSize()Lcom/google/android/exoplayer2/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getTextComponent()Lcom/google/android/exoplayer2/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1206
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 0

    .line 1140
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1141
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTrackSelectionParameters()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;
    .locals 0

    .line 1108
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getTrackSelector()Lcom/google/android/exoplayer2/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 0

    .line 513
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoChangeFrameRateStrategy()I

    move-result p0

    return p0
.end method

.method public getVideoComponent()Lcom/google/android/exoplayer2/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 709
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 710
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoDecoderCounters()Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 695
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 696
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getVideoScalingMode()I
    .locals 0

    .line 500
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 501
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoScalingMode()I

    move-result p0

    return p0
.end method

.method public getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;
    .locals 0

    .line 519
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 520
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVideoSize()Lcom/google/android/exoplayer2/video/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public getVolume()F
    .locals 0

    .line 646
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 647
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getVolume()F

    move-result p0

    return p0
.end method

.method public increaseDeviceVolume()V
    .locals 0

    .line 1282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1283
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->increaseDeviceVolume()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 0

    .line 1270
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1271
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isDeviceMuted()Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    .line 994
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 995
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isLoading()Z

    move-result p0

    return p0
.end method

.method public isPlayingAd()Z
    .locals 0

    .line 1212
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1213
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method public isTunnelingEnabled()Z
    .locals 0

    .line 1300
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1301
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->isTunnelingEnabled()Z

    move-result p0

    return p0
.end method

.method public moveMediaItems(III)V
    .locals 0

    .line 928
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 929
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->moveMediaItems(III)V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 821
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 831
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 832
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 843
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 844
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;ZZ)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 1078
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1079
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->release()V

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
    .locals 0

    .line 676
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 677
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeAnalyticsListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 592
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeAudioOffloadListener(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 778
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 779
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 0

    .line 934
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 935
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->removeMediaItems(II)V

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 808
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 809
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->retry()V

    return-void
.end method

.method public seekTo(IJIZ)V
    .locals 6

    .line 1006
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 1007
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->seekTo(IJIZ)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V
    .locals 0

    .line 597
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 598
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAudioAttributes(Lcom/google/android/exoplayer2/audio/AudioAttributes;Z)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    .line 609
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 610
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 622
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setAuxEffectInfo(Lcom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V
    .locals 0

    .line 734
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 735
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setCameraMotionListener(Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0

    .line 1294
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1295
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0

    .line 1276
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1277
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setDeviceVolume(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 0

    .line 1054
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1055
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setForegroundMode(Z)V

    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 0

    .line 682
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 683
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setHandleAudioBecomingNoisy(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1246
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1247
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setHandleWakeLock(Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 855
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 856
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 849
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 850
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 881
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V
    .locals 0

    .line 892
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 893
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;J)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V
    .locals 0

    .line 886
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 887
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 861
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 862
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 874
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 875
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 867
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 868
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 0

    .line 958
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 959
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPauseAtEndOfMediaItems(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    .line 946
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 947
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 1030
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1031
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0

    .line 1164
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1165
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPlaylistMetadata(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 634
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 635
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 689
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setPriorityTaskManager(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 976
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 977
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setRepeatMode(I)V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V
    .locals 0

    .line 1042
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1043
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSeekParameters(Lcom/google/android/exoplayer2/SeekParameters;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    .line 982
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 983
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 0

    .line 940
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 941
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setShuffleOrder(Lcom/google/android/exoplayer2/source/ShuffleOrder;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    .line 658
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 659
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .locals 0

    .line 1305
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1306
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setThrowsWhenUsingWrongThread(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    .line 1146
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1147
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setTrackSelectionParameters(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 0

    .line 507
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 508
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 722
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 723
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoFrameMetadataListener(Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    .line 494
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 495
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoScalingMode(I)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 543
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 544
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 550
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 561
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 562
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 574
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 640
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 641
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setVolume(F)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 0

    .line 1252
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1253
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->setWakeMode(I)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1060
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1061
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop()V

    return-void
.end method

.method public stop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1072
    invoke-direct {p0}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/SimpleExoPlayer;->player:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 1073
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->stop(Z)V

    return-void
.end method
