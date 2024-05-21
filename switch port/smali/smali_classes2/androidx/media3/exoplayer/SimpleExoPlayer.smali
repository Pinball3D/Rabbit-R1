.class public Landroidx/media3/exoplayer/SimpleExoPlayer;
.super Landroidx/media3/common/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
.implements Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/SimpleExoPlayer$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final constructorFinished:Landroidx/media3/common/util/ConditionVariable;

.field private final player:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;ZLandroidx/media3/common/util/Clock;Landroid/os/Looper;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    new-instance v8, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    move/from16 v0, p8

    .line 424
    invoke-virtual {v8, v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setUseLazyPreparation(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p9

    .line 425
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p10

    .line 426
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object v0

    move-object v1, p0

    .line 415
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/SimpleExoPlayer;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    return-void
.end method

.method constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V
    .locals 2

    .line 439
    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    .line 440
    new-instance v0, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v0}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 442
    :try_start_0
    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl;

    invoke-direct {v1, p1, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    .line 445
    throw p1
.end method

.method protected constructor <init>(Landroidx/media3/exoplayer/SimpleExoPlayer$Builder;)V
    .locals 0

    .line 433
    invoke-static {p1}, Landroidx/media3/exoplayer/SimpleExoPlayer$Builder;->access$000(Landroidx/media3/exoplayer/SimpleExoPlayer$Builder;)Landroidx/media3/exoplayer/ExoPlayer$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/SimpleExoPlayer;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    return-void
.end method

.method private blockUntilConstructorFinished()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    .line 1343
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 688
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 689
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    .line 597
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 598
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 790
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 791
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 905
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 906
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 917
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 918
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSource(ILandroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 911
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 912
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 929
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 930
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 923
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 924
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 0

    .line 639
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 640
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearAuxEffectInfo()V

    return-void
.end method

.method public clearCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V
    .locals 0

    .line 758
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 759
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public clearVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 746
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 747
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 0

    .line 543
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 544
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 550
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 567
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 568
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 579
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 580
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 591
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 592
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public createMessage(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 0

    .line 1085
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1086
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessage(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object p0

    return-object p0
.end method

.method public decreaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1303
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1304
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->decreaseDeviceVolume()V

    return-void
.end method

.method public decreaseDeviceVolume(I)V
    .locals 0

    .line 1309
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1310
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->decreaseDeviceVolume(I)V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 0

    .line 456
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 457
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result p0

    return p0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 0

    .line 450
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 451
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->experimentalSetOffloadSchedulingEnabled(Z)V

    return-void
.end method

.method public getAnalyticsCollector()Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    .line 682
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 683
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getAnalyticsCollector()Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 0

    .line 778
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 779
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 0

    .line 615
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 616
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getAudioComponent()Landroidx/media3/exoplayer/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getAudioDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0

    .line 734
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 735
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getAudioDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;

    move-result-object p0

    return-object p0
.end method

.method public getAudioFormat()Landroidx/media3/common/Format;
    .locals 0

    .line 720
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 721
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getAudioFormat()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public getAudioSessionId()I
    .locals 0

    .line 627
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 628
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getAudioSessionId()I

    move-result p0

    return p0
.end method

.method public getAvailableCommands()Landroidx/media3/common/Player$Commands;
    .locals 0

    .line 821
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 822
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getAvailableCommands()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1201
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1202
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Landroidx/media3/common/util/Clock;
    .locals 0

    .line 784
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 785
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object p0

    return-object p0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 1237
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1238
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1231
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1232
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 0

    .line 1219
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1220
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 0

    .line 1225
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1226
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result p0

    return p0
.end method

.method public getCurrentCues()Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 764
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 765
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentCues()Landroidx/media3/common/text/CueGroup;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 0

    .line 1183
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1184
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentPeriodIndex()I
    .locals 0

    .line 1177
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1178
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result p0

    return p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1195
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1196
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    .line 1171
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1172
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1119
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1120
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1129
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1130
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTrackSelections()Landroidx/media3/exoplayer/trackselection/TrackSelectionArray;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 0

    .line 1135
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1136
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTracks()Landroidx/media3/common/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceComponent()Landroidx/media3/exoplayer/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getDeviceInfo()Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 1249
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1250
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDeviceInfo()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceVolume()I
    .locals 0

    .line 1255
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1256
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDeviceVolume()I

    move-result p0

    return p0
.end method

.method public getDuration()J
    .locals 2

    .line 1189
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1190
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 1037
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1038
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1153
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1154
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 0

    .line 977
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 978
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPauseAtEndOfMediaItems()Z

    move-result p0

    return p0
.end method

.method public getPlayWhenReady()Z
    .locals 0

    .line 965
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 966
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p0

    return p0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 0

    .line 772
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 773
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1049
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1050
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackState()I
    .locals 0

    .line 802
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 803
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result p0

    return p0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 0

    .line 808
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 809
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackSuppressionReason()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 70
    invoke-virtual {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 0

    .line 815
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 816
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 1159
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1160
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaylistMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getRenderer(I)Landroidx/media3/exoplayer/Renderer;
    .locals 0

    .line 1103
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1104
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRenderer(I)Landroidx/media3/exoplayer/Renderer;

    move-result-object p0

    return-object p0
.end method

.method public getRendererCount()I
    .locals 0

    .line 1091
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1092
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRendererCount()I

    move-result p0

    return p0
.end method

.method public getRendererType(I)I
    .locals 0

    .line 1097
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1098
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRendererType(I)I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 983
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 984
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 1025
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1026
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 1031
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1032
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekParameters()Landroidx/media3/exoplayer/SeekParameters;
    .locals 0

    .line 1061
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1062
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getSeekParameters()Landroidx/media3/exoplayer/SeekParameters;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleModeEnabled()Z
    .locals 0

    .line 1001
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1002
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result p0

    return p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    .line 664
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 665
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getSkipSilenceEnabled()Z

    move-result p0

    return p0
.end method

.method public getSurfaceSize()Landroidx/media3/common/util/Size;
    .locals 0

    .line 537
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 538
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getSurfaceSize()Landroidx/media3/common/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getTextComponent()Landroidx/media3/exoplayer/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1207
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1208
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 1141
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1142
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelectionParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public getTrackSelector()Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1109
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1110
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getTrackSelector()Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 0

    .line 525
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 526
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVideoChangeFrameRateStrategy()I

    move-result p0

    return p0
.end method

.method public getVideoComponent()Landroidx/media3/exoplayer/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getVideoDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0

    .line 727
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 728
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVideoDecoderCounters()Landroidx/media3/exoplayer/DecoderCounters;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFormat()Landroidx/media3/common/Format;
    .locals 0

    .line 713
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 714
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVideoFormat()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public getVideoScalingMode()I
    .locals 0

    .line 512
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 513
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVideoScalingMode()I

    move-result p0

    return p0
.end method

.method public getVideoSize()Landroidx/media3/common/VideoSize;
    .locals 0

    .line 531
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 532
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVideoSize()Landroidx/media3/common/VideoSize;

    move-result-object p0

    return-object p0
.end method

.method public getVolume()F
    .locals 0

    .line 658
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 659
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getVolume()F

    move-result p0

    return p0
.end method

.method public increaseDeviceVolume()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1287
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1288
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->increaseDeviceVolume()V

    return-void
.end method

.method public increaseDeviceVolume(I)V
    .locals 0

    .line 1293
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1294
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->increaseDeviceVolume(I)V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 0

    .line 1261
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1262
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isDeviceMuted()Z

    move-result p0

    return p0
.end method

.method public isLoading()Z
    .locals 0

    .line 1007
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1008
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isLoading()Z

    move-result p0

    return p0
.end method

.method public isPlayingAd()Z
    .locals 0

    .line 1213
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1214
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result p0

    return p0
.end method

.method public isTunnelingEnabled()Z
    .locals 0

    .line 1331
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1332
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isTunnelingEnabled()Z

    move-result p0

    return p0
.end method

.method public moveMediaItems(III)V
    .locals 0

    .line 935
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 936
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->moveMediaItems(III)V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 827
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 828
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 839
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 851
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->prepare(Landroidx/media3/exoplayer/source/MediaSource;ZZ)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 1079
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1080
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->release()V

    return-void
.end method

.method public removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 694
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 695
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .locals 0

    .line 603
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 604
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public removeListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 796
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 797
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 0

    .line 947
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 948
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeMediaItems(II)V

    return-void
.end method

.method public replaceMediaItems(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 941
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 942
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->replaceMediaItems(IILjava/util/List;)V

    return-void
.end method

.method public seekTo(IJIZ)V
    .locals 6

    .line 1019
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object v0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 1020
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekTo(IJIZ)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 0

    .line 609
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 610
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    .line 621
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 622
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 0

    .line 633
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 634
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V

    return-void
.end method

.method public setCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V
    .locals 0

    .line 752
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 753
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setCameraMotionListener(Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1319
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1320
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceMuted(ZI)V
    .locals 0

    .line 1325
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1326
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setDeviceMuted(ZI)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1271
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1272
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setDeviceVolume(I)V

    return-void
.end method

.method public setDeviceVolume(II)V
    .locals 0

    .line 1277
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1278
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setDeviceVolume(II)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 0

    .line 1067
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1068
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setForegroundMode(Z)V

    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 0

    .line 700
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 701
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setHandleAudioBecomingNoisy(Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 862
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 863
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 856
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 857
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 887
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 888
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V
    .locals 0

    .line 899
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 900
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;J)V

    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 0

    .line 893
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 894
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 868
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 869
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 881
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 882
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 874
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 875
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 0

    .line 971
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 972
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPauseAtEndOfMediaItems(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 0

    .line 959
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 960
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    .line 1043
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1044
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V
    .locals 0

    .line 1165
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1166
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 646
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 647
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPreferredAudioDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)V
    .locals 0

    .line 706
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 707
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 989
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 990
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setRepeatMode(I)V

    return-void
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 0

    .line 1055
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1056
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 0

    .line 995
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 996
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 0

    .line 953
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 954
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setShuffleOrder(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    .line 676
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 677
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .locals 0

    .line 1336
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1337
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setThrowsWhenUsingWrongThread(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 0

    .line 1147
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1148
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 0

    .line 519
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 520
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setVideoEffects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 670
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 671
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoEffects(Ljava/util/List;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 740
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 741
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoFrameMetadataListener(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    .line 506
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 507
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoScalingMode(I)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 556
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 561
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 562
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 573
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 574
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 0

    .line 585
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 586
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 652
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 653
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVolume(F)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 0

    .line 1243
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1244
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setWakeMode(I)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;->blockUntilConstructorFinished()V

    iget-object p0, p0, Landroidx/media3/exoplayer/SimpleExoPlayer;->player:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 1074
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stop()V

    return-void
.end method
