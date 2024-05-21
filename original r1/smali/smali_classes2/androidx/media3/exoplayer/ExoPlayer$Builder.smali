.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Landroidx/media3/common/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Landroidx/media3/common/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field deviceVolumeControlEnabled:Z

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field playbackLooper:Landroid/os/Looper;

.field priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 543
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda11;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;)V
    .locals 2

    .line 563
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 567
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2

    .line 609
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda14;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;

    invoke-direct {v1, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 610
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/RenderersFactory;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V
    .locals 8

    .line 638
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda18;

    invoke-direct {v2, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    new-instance v3, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda19;

    invoke-direct {v3, p3}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda20;

    invoke-direct {v4, p4}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/trackselection/TrackSelector;)V

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda21;

    invoke-direct {v5, p5}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda22;

    invoke-direct {v6, p6}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda23;

    invoke-direct {v7, p7}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    .line 646
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-static {p6}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-static {p7}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/source/MediaSource$Factory;)V
    .locals 2

    .line 585
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 586
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 657
    new-instance v4, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda9;

    invoke-direct {v4, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda10;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda12;

    invoke-direct {v6, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda12;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda13;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 682
    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 683
    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 688
    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 691
    new-instance p1, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 692
    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    .line 545
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    .line 546
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$10(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$11(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$12(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$13(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$14(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 1

    .line 661
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$15(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 663
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$2(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$3(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    .line 566
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$4(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    .line 585
    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$5(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$6(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$7(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$8(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$9(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setAnalyticsCollector$21(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setBandwidthMeter$20(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setLoadControl$19(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setMediaSourceFactory$17(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setRenderersFactory$16(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setTrackSelector$18(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1184
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 1186
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    return-object v0
.end method

.method buildSimpleExoPlayer()Landroidx/media3/exoplayer/SimpleExoPlayer;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1190
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    .line 1192
    new-instance v0, Landroidx/media3/exoplayer/SimpleExoPlayer;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/SimpleExoPlayer;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 710
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-object p0
.end method

.method public setAnalyticsCollector(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 821
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 822
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    return-object p0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 859
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 860
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

.method public setBandwidthMeter(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 788
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 789
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1155
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1079
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-object p0
.end method

.method public setDeviceVolumeControlEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 932
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 902
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Landroidx/media3/exoplayer/LivePlaybackSpeedControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1115
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1116
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    return-object p0
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 772
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 773
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/LoadControl;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 805
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 806
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 740
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 741
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/source/MediaSource$Factory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1099
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return-object p0
.end method

.method public setPlaybackLooper(Landroid/os/Looper;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1173
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public setPriorityTaskManager(Landroidx/media3/common/PriorityTaskManager;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 839
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->priorityTaskManager:Landroidx/media3/common/PriorityTaskManager;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1060
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    return-object p0
.end method

.method public setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 725
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 726
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/exoplayer/RenderersFactory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1023
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    .line 1024
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1040
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    .line 1041
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    return-object p0
.end method

.method public setSeekParameters(Landroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1007
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1008
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 917
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    return-object p0
.end method

.method public setTrackSelector(Landroidx/media3/exoplayer/trackselection/TrackSelector;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 756
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 757
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/trackselection/TrackSelector;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 992
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    return-object p0
.end method

.method public setUsePlatformDiagnostics(Z)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1138
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 973
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    return-object p0
.end method

.method public setVideoScalingMode(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 950
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    return-object p0
.end method

.method public setWakeMode(I)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 884
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    return-object p0
.end method
