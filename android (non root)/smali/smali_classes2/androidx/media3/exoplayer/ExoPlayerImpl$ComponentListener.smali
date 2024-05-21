.class final Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.implements Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.implements Landroidx/media3/exoplayer/text/TextOutput;
.implements Landroidx/media3/exoplayer/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;
.implements Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;
.implements Landroidx/media3/exoplayer/StreamVolumeManager$Listener;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V
    .locals 0

    .line 2895
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method static synthetic lambda$onCues$2(Ljava/util/List;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3040
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$3(Landroidx/media3/common/text/CueGroup;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3046
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onCues(Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$5(Landroidx/media3/common/Metadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3062
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMetadata(Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$1(ZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3024
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onStreamTypeChanged$6(Landroidx/media3/common/DeviceInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3157
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onStreamVolumeChanged$7(IZLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 3165
    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$0(Landroidx/media3/common/VideoSize;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 2939
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3134
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3136
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2100(ZI)I

    move-result v1

    .line 3135
    invoke-static {p0, v0, p1, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2200(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V

    return-void
.end method

.method synthetic lambda$onMetadata$4$androidx-media3-exoplayer-ExoPlayerImpl$ComponentListener(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3060
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 3

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3143
    invoke-static {p0, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2200(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3034
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2983
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3006
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3011
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 3012
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1002(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3013
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$902(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2976
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$902(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2977
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2990
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1002(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2991
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2996
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3029
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3001
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3045
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1202(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/text/CueGroup;)Landroidx/media3/common/text/CueGroup;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3046
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/common/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3040
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2932
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3172
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2600(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3054
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1300(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/media3/common/MediaMetadata$Builder;->populateFromMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    .line 3053
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1302(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3055
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3056
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3057
    invoke-static {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1502(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3058
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3062
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/common/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3063
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2944
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2945
    invoke-static {p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2946
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;

    invoke-direct {p1}, Landroidx/media3/common/SimpleBasePlayer$$ExternalSyntheticLambda21;-><init>()V

    const/16 p2, 0x1a

    invoke-virtual {p0, p2, p1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3018
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1100(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3021
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1102(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Z

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3022
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3153
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2300(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2400(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3154
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3155
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2502(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/DeviceInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3156
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/common/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3163
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3092
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3093
    invoke-static {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 3103
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 p1, 0x0

    .line 3104
    invoke-static {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3098
    invoke-static {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2969
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2919
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2952
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2957
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 2958
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$502(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2959
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$302(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2912
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$302(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2913
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2964
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2926
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$502(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2927
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2937
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2938
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p0

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/common/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3117
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 p1, 0x0

    .line 3122
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3129
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$2000(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3077
    invoke-static {p0, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3070
    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3071
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 3082
    invoke-static {p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 3083
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->this$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 p1, 0x0

    .line 3085
    invoke-static {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V

    return-void
.end method
