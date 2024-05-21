.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
.implements Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V
    .locals 0

    .line 2772
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method static synthetic lambda$onCues$2(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2917
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$3(Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2923
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$5(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2939
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$1(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2901
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onStreamTypeChanged$6(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3034
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onStreamVolumeChanged$7(IZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3042
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$0(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2816
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3011
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3013
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2100(ZI)I

    move-result v1

    .line 3012
    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2200(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V

    return-void
.end method

.method synthetic lambda$onMetadata$4$com-google-android-exoplayer2-ExoPlayerImpl$ComponentListener(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2937
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 3020
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2200(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2911
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2860
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2883
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2888
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 2889
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1002(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2890
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$902(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2853
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$902(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2854
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2867
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1002(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2868
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2873
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2906
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2878
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2922
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1202(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/text/CueGroup;)Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2923
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/exoplayer2/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2917
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2809
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3049
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2931
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    .line 2930
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2932
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2933
    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2934
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)Lcom/google/android/exoplayer2/MediaMetadata;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2935
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2939
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2940
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2821
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2822
    invoke-static {p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$800(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2823
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance p1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>()V

    const/16 p2, 0x1a

    invoke-virtual {p0, p2, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2895
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1100(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2898
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1102(Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2899
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3030
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2300(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2400(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3031
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2500(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3032
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/DeviceInfo;)Lcom/google/android/exoplayer2/DeviceInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3033
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3040
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2969
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1900(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2970
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 2980
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 p1, 0x0

    .line 2981
    invoke-static {p0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2975
    invoke-static {p0, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2846
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2796
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2829
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2834
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 2835
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2836
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2789
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$302(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)Lcom/google/android/exoplayer2/decoder/DecoderCounters;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2790
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2841
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2803
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$502(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2804
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$400(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2814
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$602(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/video/VideoSize;)Lcom/google/android/exoplayer2/video/VideoSize;

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2815
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p0

    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/video/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2994
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 p1, 0x0

    .line 2999
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3006
    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$2000(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2954
    invoke-static {p0, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2947
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2948
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 2959
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1600(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    .line 2960
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 p1, 0x0

    .line 2962
    invoke-static {p0, p1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method
