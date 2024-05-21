.class public Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.super Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;,
        Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    }
.end annotation


# static fields
.field private static final HEVC_MAX_INPUT_SIZE_THRESHOLD:I = 0x200000

.field private static final INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR:F = 1.5f

.field private static final KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final STANDARD_LONG_EDGE_VIDEO_PX:[I

.field private static final TAG:Ljava/lang/String; = "MediaCodecVideoRenderer"

.field private static final TUNNELING_EOS_PRESENTATION_TIME_US:J = 0x7fffffffffffffffL

.field private static deviceNeedsSetOutputSurfaceWorkaround:Z

.field private static evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z


# instance fields
.field private final allowedJoiningTimeMs:J

.field private buffersInCodecCount:I

.field private codecHandlesHdr10PlusOutOfBandMetadata:Z

.field private codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

.field private codecNeedsSetOutputSurfaceWorkaround:Z

.field private consecutiveDroppedFrameCount:I

.field private final context:Landroid/content/Context;

.field private decodedVideoSize:Landroidx/media3/common/VideoSize;

.field private final deviceNeedsNoPostProcessWorkaround:Z

.field private displaySurface:Landroid/view/Surface;

.field private droppedFrameAccumulationStartTimeMs:J

.field private droppedFrames:I

.field private final eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field private frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

.field private final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field private haveReportedFirstFrameRenderedForCurrentSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private lastBufferPresentationTimeUs:J

.field private lastFrameReleaseTimeNs:J

.field private lastRenderRealtimeUs:J

.field private final maxDroppedFramesToNotify:I

.field private mayRenderFirstFrameAfterEnableIfNotStarted:Z

.field private placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

.field private renderedFirstFrameAfterEnable:Z

.field private renderedFirstFrameAfterReset:Z

.field private reportedVideoSize:Landroidx/media3/common/VideoSize;

.field private scalingMode:I

.field private totalVideoFrameProcessingOffsetUs:J

.field private tunneling:Z

.field private tunnelingAudioSessionId:I

.field tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

.field private videoFrameProcessingOffsetCount:I

.field private final videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    return-void

    :array_0
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 11

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    .line 302
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V
    .locals 7

    move-object v6, p0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move/from16 v5, p10

    .line 345
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;-><init>(ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V

    move-wide v0, p4

    iput-wide v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    move/from16 v0, p9

    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 354
    new-instance v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 355
    new-instance v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    move-object v2, p7

    move-object v3, p8

    invoke-direct {v0, p7, p8}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 356
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 358
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround()Z

    move-result v0

    iput-boolean v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const/4 v0, 0x1

    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 361
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    const/4 v0, 0x0

    iput v0, v6, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    .line 363
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 192
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;J)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 203
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 11

    .line 230
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    const/4 v6, 0x0

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V
    .locals 11

    .line 264
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    const/high16 v10, 0x41f00000    # 30.0f

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;IF)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 121
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecAppliesRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/content/Context;
    .locals 0

    .line 121
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJJJZ)J
    .locals 0

    .line 121
    invoke-direct/range {p0 .. p9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->calculateEarlyTimeUs(JJJJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJ)Z
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldForceRender(JJ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)J
    .locals 2

    .line 121
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    return-wide v0
.end method

.method static synthetic access$1700(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;JJLandroidx/media3/common/Format;)V
    .locals 0

    .line 121
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic access$1800(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method static synthetic access$1902(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;J)J
    .locals 0

    .line 121
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    return-wide p1
.end method

.method static synthetic access$2000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 0

    .line 121
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledEndOfStream()V

    return-void
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setPendingPlaybackException(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    return-void
.end method

.method private calculateEarlyTimeUs(JJJJZ)J
    .locals 2

    .line 1313
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getPlaybackSpeed()F

    move-result p0

    float-to-double v0, p0

    sub-long/2addr p7, p1

    long-to-double p0, p7

    div-double/2addr p0, v0

    double-to-long p0, p0

    if-eqz p9, :cond_0

    sub-long/2addr p5, p3

    sub-long/2addr p0, p5

    :cond_0
    return-wide p0
.end method

.method private clearRenderedFirstFrame()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    .line 1643
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1644
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1647
    new-instance v1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    return-void
.end method

.method private clearReportedVideoSize()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    return-void
.end method

.method private static codecAppliesRotation()Z
    .locals 2

    .line 2449
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static configureTunnelingV21(Landroid/media/MediaFormat;I)V
    .locals 2

    const-string v0, "tunneled-playback"

    const/4 v1, 0x1

    .line 1728
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const-string v0, "audio-session-id"

    .line 1729
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private static deviceNeedsNoPostProcessWorkaround()Z
    .locals 2

    const-string v0, "NVIDIA"

    .line 2467
    sget-object v1, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z
    .locals 15

    .line 2538
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x1c

    if-gt v0, v10, :cond_8

    .line 2545
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    move v0, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "machuca"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v11, "once"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v11, "magnolia"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v11, "aquaman"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v11, "oneday"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :sswitch_5
    const-string v11, "dangalUHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_1

    :sswitch_6
    const-string v11, "dangalFHD"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v9

    goto :goto_1

    :sswitch_7
    const-string v11, "dangal"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v0, v8

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v9

    .line 2559
    :cond_8
    :goto_2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x1b

    if-gt v0, v11, :cond_9

    const-string v0, "HWEML"

    sget-object v12, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v9

    .line 2564
    :cond_9
    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/16 v13, 0x8

    sparse-switch v12, :sswitch_data_1

    :goto_3
    move v0, v7

    goto/16 :goto_4

    :sswitch_8
    const-string v12, "AFTEUFF014"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move v0, v13

    goto/16 :goto_4

    :sswitch_9
    const-string v12, "AFTSO001"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    move v0, v1

    goto :goto_4

    :sswitch_a
    const-string v12, "AFTEU014"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_3

    :cond_c
    move v0, v2

    goto :goto_4

    :sswitch_b
    const-string v12, "AFTEU011"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3

    :cond_d
    move v0, v3

    goto :goto_4

    :sswitch_c
    const-string v12, "AFTR"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_3

    :cond_e
    move v0, v4

    goto :goto_4

    :sswitch_d
    const-string v12, "AFTN"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3

    :cond_f
    move v0, v5

    goto :goto_4

    :sswitch_e
    const-string v12, "AFTA"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_3

    :cond_10
    move v0, v6

    goto :goto_4

    :sswitch_f
    const-string v12, "AFTKMST12"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_3

    :cond_11
    move v0, v9

    goto :goto_4

    :sswitch_10
    const-string v12, "AFTJMST12"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_3

    :cond_12
    move v0, v8

    :goto_4
    packed-switch v0, :pswitch_data_1

    .line 2579
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v12, 0x1a

    if-gt v0, v12, :cond_a0

    .line 2599
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_2

    :goto_5
    move v1, v7

    goto/16 :goto_6

    :sswitch_11
    const-string v1, "HWWAS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_5

    :cond_13
    const/16 v1, 0x8b

    goto/16 :goto_6

    :sswitch_12
    const-string v1, "HWVNS-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_5

    :cond_14
    const/16 v1, 0x8a

    goto/16 :goto_6

    :sswitch_13
    const-string v1, "ELUGA_Prim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_5

    :cond_15
    const/16 v1, 0x89

    goto/16 :goto_6

    :sswitch_14
    const-string v1, "ELUGA_Note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_5

    :cond_16
    const/16 v1, 0x88

    goto/16 :goto_6

    :sswitch_15
    const-string v1, "ASUS_X00AD_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_5

    :cond_17
    const/16 v1, 0x87

    goto/16 :goto_6

    :sswitch_16
    const-string v1, "HWCAM-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5

    :cond_18
    const/16 v1, 0x86

    goto/16 :goto_6

    :sswitch_17
    const-string v1, "HWBLN-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_5

    :cond_19
    const/16 v1, 0x85

    goto/16 :goto_6

    :sswitch_18
    const-string v1, "DM-01K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_5

    :cond_1a
    const/16 v1, 0x84

    goto/16 :goto_6

    :sswitch_19
    const-string v1, "BRAVIA_ATV3_4K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_5

    :cond_1b
    const/16 v1, 0x83

    goto/16 :goto_6

    :sswitch_1a
    const-string v1, "Infinix-X572"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_5

    :cond_1c
    const/16 v1, 0x82

    goto/16 :goto_6

    :sswitch_1b
    const-string v1, "PB2-670M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_5

    :cond_1d
    const/16 v1, 0x81

    goto/16 :goto_6

    :sswitch_1c
    const-string v1, "santoni"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_5

    :cond_1e
    const/16 v1, 0x80

    goto/16 :goto_6

    :sswitch_1d
    const-string v1, "iball8735_9806"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_5

    :cond_1f
    const/16 v1, 0x7f

    goto/16 :goto_6

    :sswitch_1e
    const-string v1, "CPH1715"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_5

    :cond_20
    const/16 v1, 0x7e

    goto/16 :goto_6

    :sswitch_1f
    const-string v1, "CPH1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_5

    :cond_21
    const/16 v1, 0x7d

    goto/16 :goto_6

    :sswitch_20
    const-string v1, "woods_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_5

    :cond_22
    const/16 v1, 0x7c

    goto/16 :goto_6

    :sswitch_21
    const-string v1, "htc_e56ml_dtul"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_5

    :cond_23
    const/16 v1, 0x7b

    goto/16 :goto_6

    :sswitch_22
    const-string v1, "EverStar_S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_5

    :cond_24
    const/16 v1, 0x7a

    goto/16 :goto_6

    :sswitch_23
    const-string v1, "hwALE-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_5

    :cond_25
    const/16 v1, 0x79

    goto/16 :goto_6

    :sswitch_24
    const-string v1, "itel_S41"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto/16 :goto_5

    :cond_26
    const/16 v1, 0x78

    goto/16 :goto_6

    :sswitch_25
    const-string v1, "LS-5017"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_5

    :cond_27
    const/16 v1, 0x77

    goto/16 :goto_6

    :sswitch_26
    const-string v1, "panell_d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto/16 :goto_5

    :cond_28
    const/16 v1, 0x76

    goto/16 :goto_6

    :sswitch_27
    const-string v1, "j2xlteins"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_5

    :cond_29
    const/16 v1, 0x75

    goto/16 :goto_6

    :sswitch_28
    const-string v1, "A7000plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_5

    :cond_2a
    const/16 v1, 0x74

    goto/16 :goto_6

    :sswitch_29
    const-string v1, "manning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_5

    :cond_2b
    const/16 v1, 0x73

    goto/16 :goto_6

    :sswitch_2a
    const-string v1, "GIONEE_WBL7519"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto/16 :goto_5

    :cond_2c
    const/16 v1, 0x72

    goto/16 :goto_6

    :sswitch_2b
    const-string v1, "GIONEE_WBL7365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_5

    :cond_2d
    const/16 v1, 0x71

    goto/16 :goto_6

    :sswitch_2c
    const-string v1, "GIONEE_WBL5708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_5

    :cond_2e
    const/16 v1, 0x70

    goto/16 :goto_6

    :sswitch_2d
    const-string v1, "QM16XE_U"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_5

    :cond_2f
    const/16 v1, 0x6f

    goto/16 :goto_6

    :sswitch_2e
    const-string v1, "Pixi5-10_4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_5

    :cond_30
    const/16 v1, 0x6e

    goto/16 :goto_6

    :sswitch_2f
    const-string v1, "TB3-850M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_5

    :cond_31
    const/16 v1, 0x6d

    goto/16 :goto_6

    :sswitch_30
    const-string v1, "TB3-850F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_5

    :cond_32
    const/16 v1, 0x6c

    goto/16 :goto_6

    :sswitch_31
    const-string v1, "TB3-730X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_5

    :cond_33
    const/16 v1, 0x6b

    goto/16 :goto_6

    :sswitch_32
    const-string v1, "TB3-730F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_5

    :cond_34
    const/16 v1, 0x6a

    goto/16 :goto_6

    :sswitch_33
    const-string v1, "A7020a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_5

    :cond_35
    const/16 v1, 0x69

    goto/16 :goto_6

    :sswitch_34
    const-string v1, "A7010a48"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_5

    :cond_36
    const/16 v1, 0x68

    goto/16 :goto_6

    :sswitch_35
    const-string v1, "griffin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_5

    :cond_37
    const/16 v1, 0x67

    goto/16 :goto_6

    :sswitch_36
    const-string v1, "marino_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_5

    :cond_38
    const/16 v1, 0x66

    goto/16 :goto_6

    :sswitch_37
    const-string v1, "CPY83_I00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_5

    :cond_39
    const/16 v1, 0x65

    goto/16 :goto_6

    :sswitch_38
    const-string v1, "A2016a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_5

    :cond_3a
    const/16 v1, 0x64

    goto/16 :goto_6

    :sswitch_39
    const-string v1, "le_x6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_5

    :cond_3b
    const/16 v1, 0x63

    goto/16 :goto_6

    :sswitch_3a
    const-string v1, "l5460"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_5

    :cond_3c
    const/16 v1, 0x62

    goto/16 :goto_6

    :sswitch_3b
    const-string v1, "i9031"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_5

    :cond_3d
    const/16 v1, 0x61

    goto/16 :goto_6

    :sswitch_3c
    const-string v1, "X3_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_5

    :cond_3e
    const/16 v1, 0x60

    goto/16 :goto_6

    :sswitch_3d
    const-string v1, "V23GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_5

    :cond_3f
    const/16 v1, 0x5f

    goto/16 :goto_6

    :sswitch_3e
    const-string v1, "Q4310"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_5

    :cond_40
    const/16 v1, 0x5e

    goto/16 :goto_6

    :sswitch_3f
    const-string v1, "Q4260"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_5

    :cond_41
    const/16 v1, 0x5d

    goto/16 :goto_6

    :sswitch_40
    const-string v1, "PRO7S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_5

    :cond_42
    const/16 v1, 0x5c

    goto/16 :goto_6

    :sswitch_41
    const-string v1, "F3311"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_5

    :cond_43
    const/16 v1, 0x5b

    goto/16 :goto_6

    :sswitch_42
    const-string v1, "F3215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_5

    :cond_44
    const/16 v1, 0x5a

    goto/16 :goto_6

    :sswitch_43
    const-string v1, "F3213"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_5

    :cond_45
    const/16 v1, 0x59

    goto/16 :goto_6

    :sswitch_44
    const-string v1, "F3211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_5

    :cond_46
    const/16 v1, 0x58

    goto/16 :goto_6

    :sswitch_45
    const-string v1, "F3116"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_5

    :cond_47
    const/16 v1, 0x57

    goto/16 :goto_6

    :sswitch_46
    const-string v1, "F3113"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_5

    :cond_48
    const/16 v1, 0x56

    goto/16 :goto_6

    :sswitch_47
    const-string v1, "F3111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_5

    :cond_49
    const/16 v1, 0x55

    goto/16 :goto_6

    :sswitch_48
    const-string v1, "E5643"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_5

    :cond_4a
    const/16 v1, 0x54

    goto/16 :goto_6

    :sswitch_49
    const-string v1, "A1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto/16 :goto_5

    :cond_4b
    const/16 v1, 0x53

    goto/16 :goto_6

    :sswitch_4a
    const-string v1, "Aura_Note_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto/16 :goto_5

    :cond_4c
    const/16 v1, 0x52

    goto/16 :goto_6

    :sswitch_4b
    const-string v1, "602LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_5

    :cond_4d
    const/16 v1, 0x51

    goto/16 :goto_6

    :sswitch_4c
    const-string v1, "601LV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto/16 :goto_5

    :cond_4e
    const/16 v1, 0x50

    goto/16 :goto_6

    :sswitch_4d
    const-string v1, "MEIZU_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_5

    :cond_4f
    const/16 v1, 0x4f

    goto/16 :goto_6

    :sswitch_4e
    const-string v1, "p212"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto/16 :goto_5

    :cond_50
    const/16 v1, 0x4e

    goto/16 :goto_6

    :sswitch_4f
    const-string v1, "mido"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_5

    :cond_51
    const/16 v1, 0x4d

    goto/16 :goto_6

    :sswitch_50
    const-string v1, "kate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto/16 :goto_5

    :cond_52
    const/16 v1, 0x4c

    goto/16 :goto_6

    :sswitch_51
    const-string v1, "fugu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_5

    :cond_53
    const/16 v1, 0x4b

    goto/16 :goto_6

    :sswitch_52
    const-string v1, "XE2X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    goto/16 :goto_5

    :cond_54
    const/16 v1, 0x4a

    goto/16 :goto_6

    :sswitch_53
    const-string v1, "Q427"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    goto/16 :goto_5

    :cond_55
    const/16 v1, 0x49

    goto/16 :goto_6

    :sswitch_54
    const-string v1, "Q350"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto/16 :goto_5

    :cond_56
    const/16 v1, 0x48

    goto/16 :goto_6

    :sswitch_55
    const-string v1, "P681"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_57

    goto/16 :goto_5

    :cond_57
    const/16 v1, 0x47

    goto/16 :goto_6

    :sswitch_56
    const-string v1, "F04J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_5

    :cond_58
    const/16 v1, 0x46

    goto/16 :goto_6

    :sswitch_57
    const-string v1, "F04H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto/16 :goto_5

    :cond_59
    const/16 v1, 0x45

    goto/16 :goto_6

    :sswitch_58
    const-string v1, "F03H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    goto/16 :goto_5

    :cond_5a
    const/16 v1, 0x44

    goto/16 :goto_6

    :sswitch_59
    const-string v1, "F02H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_5

    :cond_5b
    const/16 v1, 0x43

    goto/16 :goto_6

    :sswitch_5a
    const-string v1, "F01J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto/16 :goto_5

    :cond_5c
    const/16 v1, 0x42

    goto/16 :goto_6

    :sswitch_5b
    const-string v1, "F01H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_5

    :cond_5d
    const/16 v1, 0x41

    goto/16 :goto_6

    :sswitch_5c
    const-string v1, "1714"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto/16 :goto_5

    :cond_5e
    const/16 v1, 0x40

    goto/16 :goto_6

    :sswitch_5d
    const-string v1, "1713"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_5

    :cond_5f
    const/16 v1, 0x3f

    goto/16 :goto_6

    :sswitch_5e
    const-string v1, "1601"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    goto/16 :goto_5

    :cond_60
    const/16 v1, 0x3e

    goto/16 :goto_6

    :sswitch_5f
    const-string v1, "flo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_5

    :cond_61
    const/16 v1, 0x3d

    goto/16 :goto_6

    :sswitch_60
    const-string v1, "deb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto/16 :goto_5

    :cond_62
    const/16 v1, 0x3c

    goto/16 :goto_6

    :sswitch_61
    const-string v1, "cv3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto/16 :goto_5

    :cond_63
    const/16 v1, 0x3b

    goto/16 :goto_6

    :sswitch_62
    const-string v1, "cv1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto/16 :goto_5

    :cond_64
    const/16 v1, 0x3a

    goto/16 :goto_6

    :sswitch_63
    const-string v1, "Z80"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_5

    :cond_65
    const/16 v1, 0x39

    goto/16 :goto_6

    :sswitch_64
    const-string v1, "QX1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_5

    :cond_66
    const/16 v1, 0x38

    goto/16 :goto_6

    :sswitch_65
    const-string v1, "PLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    goto/16 :goto_5

    :cond_67
    const/16 v1, 0x37

    goto/16 :goto_6

    :sswitch_66
    const-string v1, "P85"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto/16 :goto_5

    :cond_68
    const/16 v1, 0x36

    goto/16 :goto_6

    :sswitch_67
    const-string v1, "MX6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_5

    :cond_69
    const/16 v1, 0x35

    goto/16 :goto_6

    :sswitch_68
    const-string v1, "M5c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto/16 :goto_5

    :cond_6a
    const/16 v1, 0x34

    goto/16 :goto_6

    :sswitch_69
    const-string v1, "M04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    goto/16 :goto_5

    :cond_6b
    const/16 v1, 0x33

    goto/16 :goto_6

    :sswitch_6a
    const-string v1, "JGZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    goto/16 :goto_5

    :cond_6c
    const/16 v1, 0x32

    goto/16 :goto_6

    :sswitch_6b
    const-string v1, "mh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_5

    :cond_6d
    const/16 v1, 0x31

    goto/16 :goto_6

    :sswitch_6c
    const-string v1, "b5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    goto/16 :goto_5

    :cond_6e
    const/16 v1, 0x30

    goto/16 :goto_6

    :sswitch_6d
    const-string v1, "V5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_5

    :cond_6f
    const/16 v1, 0x2f

    goto/16 :goto_6

    :sswitch_6e
    const-string v1, "V1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    goto/16 :goto_5

    :cond_70
    const/16 v1, 0x2e

    goto/16 :goto_6

    :sswitch_6f
    const-string v1, "Q5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    goto/16 :goto_5

    :cond_71
    const/16 v1, 0x2d

    goto/16 :goto_6

    :sswitch_70
    const-string v1, "C1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    goto/16 :goto_5

    :cond_72
    const/16 v1, 0x2c

    goto/16 :goto_6

    :sswitch_71
    const-string v1, "woods_fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto/16 :goto_5

    :cond_73
    const/16 v1, 0x2b

    goto/16 :goto_6

    :sswitch_72
    const-string v1, "ELUGA_A3_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    goto/16 :goto_5

    :cond_74
    const/16 v1, 0x2a

    goto/16 :goto_6

    :sswitch_73
    const-string v1, "Z12_PRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto/16 :goto_5

    :cond_75
    const/16 v1, 0x29

    goto/16 :goto_6

    :sswitch_74
    const-string v1, "BLACK-1X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    goto/16 :goto_5

    :cond_76
    const/16 v1, 0x28

    goto/16 :goto_6

    :sswitch_75
    const-string v1, "taido_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto/16 :goto_5

    :cond_77
    const/16 v1, 0x27

    goto/16 :goto_6

    :sswitch_76
    const-string v1, "Pixi4-7_3G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    goto/16 :goto_5

    :cond_78
    const/16 v1, 0x26

    goto/16 :goto_6

    :sswitch_77
    const-string v1, "GIONEE_GBL7360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    goto/16 :goto_5

    :cond_79
    const/16 v1, 0x25

    goto/16 :goto_6

    :sswitch_78
    const-string v1, "GiONEE_CBL7513"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto/16 :goto_5

    :cond_7a
    const/16 v1, 0x24

    goto/16 :goto_6

    :sswitch_79
    const-string v1, "OnePlus5T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_5

    :cond_7b
    const/16 v1, 0x23

    goto/16 :goto_6

    :sswitch_7a
    const-string v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    goto/16 :goto_5

    :cond_7c
    const/16 v1, 0x22

    goto/16 :goto_6

    :sswitch_7b
    const-string v1, "watson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_5

    :cond_7d
    const/16 v1, 0x21

    goto/16 :goto_6

    :sswitch_7c
    const-string v1, "SVP-DTV15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto/16 :goto_5

    :cond_7e
    const/16 v1, 0x20

    goto/16 :goto_6

    :sswitch_7d
    const-string v1, "A7000-a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto/16 :goto_5

    :cond_7f
    const/16 v1, 0x1f

    goto/16 :goto_6

    :sswitch_7e
    const-string v1, "nicklaus_f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto/16 :goto_5

    :cond_80
    const/16 v1, 0x1e

    goto/16 :goto_6

    :sswitch_7f
    const-string v1, "tcl_eu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    goto/16 :goto_5

    :cond_81
    const/16 v1, 0x1d

    goto/16 :goto_6

    :sswitch_80
    const-string v1, "ELUGA_Ray_X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_82

    goto/16 :goto_5

    :cond_82
    move v1, v10

    goto/16 :goto_6

    :sswitch_81
    const-string v1, "s905x018"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto/16 :goto_5

    :cond_83
    move v1, v11

    goto/16 :goto_6

    :sswitch_82
    const-string v1, "A10-70L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    goto/16 :goto_5

    :cond_84
    move v1, v12

    goto/16 :goto_6

    :sswitch_83
    const-string v1, "A10-70F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto/16 :goto_5

    :cond_85
    const/16 v1, 0x19

    goto/16 :goto_6

    :sswitch_84
    const-string v1, "namath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    goto/16 :goto_5

    :cond_86
    const/16 v1, 0x18

    goto/16 :goto_6

    :sswitch_85
    const-string v1, "Slate_Pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_87

    goto/16 :goto_5

    :cond_87
    const/16 v1, 0x17

    goto/16 :goto_6

    :sswitch_86
    const-string v1, "iris60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto/16 :goto_5

    :cond_88
    const/16 v1, 0x16

    goto/16 :goto_6

    :sswitch_87
    const-string v1, "BRAVIA_ATV2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_89

    goto/16 :goto_5

    :cond_89
    const/16 v1, 0x15

    goto/16 :goto_6

    :sswitch_88
    const-string v1, "GiONEE_GBL7319"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto/16 :goto_5

    :cond_8a
    const/16 v1, 0x14

    goto/16 :goto_6

    :sswitch_89
    const-string v1, "panell_dt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_5

    :cond_8b
    const/16 v1, 0x13

    goto/16 :goto_6

    :sswitch_8a
    const-string v1, "panell_ds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    goto/16 :goto_5

    :cond_8c
    const/16 v1, 0x12

    goto/16 :goto_6

    :sswitch_8b
    const-string v1, "panell_dl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    goto/16 :goto_5

    :cond_8d
    const/16 v1, 0x11

    goto/16 :goto_6

    :sswitch_8c
    const-string v1, "vernee_M5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto/16 :goto_5

    :cond_8e
    const/16 v1, 0x10

    goto/16 :goto_6

    :sswitch_8d
    const-string v1, "pacificrim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    goto/16 :goto_5

    :cond_8f
    const/16 v1, 0xf

    goto/16 :goto_6

    :sswitch_8e
    const-string v1, "Phantom6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto/16 :goto_5

    :cond_90
    const/16 v1, 0xe

    goto/16 :goto_6

    :sswitch_8f
    const-string v1, "ComioS1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_91

    goto/16 :goto_5

    :cond_91
    const/16 v1, 0xd

    goto/16 :goto_6

    :sswitch_90
    const-string v1, "XT1663"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    goto/16 :goto_5

    :cond_92
    const/16 v1, 0xc

    goto/16 :goto_6

    :sswitch_91
    const-string v1, "RAIJIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto/16 :goto_5

    :cond_93
    const/16 v1, 0xb

    goto/16 :goto_6

    :sswitch_92
    const-string v1, "AquaPowerM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto/16 :goto_5

    :cond_94
    const/16 v1, 0xa

    goto/16 :goto_6

    :sswitch_93
    const-string v1, "PGN611"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto/16 :goto_5

    :cond_95
    const/16 v1, 0x9

    goto/16 :goto_6

    :sswitch_94
    const-string v1, "PGN610"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto/16 :goto_5

    :cond_96
    move v1, v13

    goto/16 :goto_6

    :sswitch_95
    const-string v2, "PGN528"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_5

    :sswitch_96
    const-string v1, "NX573J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto/16 :goto_5

    :cond_97
    move v1, v2

    goto :goto_6

    :sswitch_97
    const-string v1, "NX541J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto/16 :goto_5

    :cond_98
    move v1, v3

    goto :goto_6

    :sswitch_98
    const-string v1, "CP8676_I02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto/16 :goto_5

    :cond_99
    move v1, v4

    goto :goto_6

    :sswitch_99
    const-string v1, "K50a40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto/16 :goto_5

    :cond_9a
    move v1, v5

    goto :goto_6

    :sswitch_9a
    const-string v1, "GIONEE_SWW1631"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto/16 :goto_5

    :cond_9b
    move v1, v6

    goto :goto_6

    :sswitch_9b
    const-string v1, "GIONEE_SWW1627"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_5

    :cond_9c
    move v1, v9

    goto :goto_6

    :sswitch_9c
    const-string v1, "GIONEE_SWW1609"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_5

    :cond_9d
    move v1, v8

    :cond_9e
    :goto_6
    packed-switch v1, :pswitch_data_2

    .line 2744
    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "JSN-L21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto :goto_7

    :cond_9f
    :pswitch_1
    return v9

    :cond_a0
    :goto_7
    return v8

    :pswitch_2
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4fd0ea5f -> :sswitch_7
        -0x48b8f57f -> :sswitch_6
        -0x48b8bd30 -> :sswitch_5
        -0x3c588c8a -> :sswitch_4
        -0x2d5172e2 -> :sswitch_3
        -0x3de1850 -> :sswitch_2
        0x341e81 -> :sswitch_1
        0x31316ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x14d76e6c -> :sswitch_10
        -0x132295cd -> :sswitch_f
        0x1e9d52 -> :sswitch_e
        0x1e9d5f -> :sswitch_d
        0x1e9d63 -> :sswitch_c
        0x6a6b6031 -> :sswitch_b
        0x6a6b6034 -> :sswitch_a
        0x6b2deee6 -> :sswitch_9
        0x7e53ab34 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_9c
        -0x7fd6c381 -> :sswitch_9b
        -0x7fd6c368 -> :sswitch_9a
        -0x7d026749 -> :sswitch_99
        -0x78929d6a -> :sswitch_98
        -0x75f50a1e -> :sswitch_97
        -0x75f4fe9d -> :sswitch_96
        -0x736f875c -> :sswitch_95
        -0x736f83c2 -> :sswitch_94
        -0x736f83c1 -> :sswitch_93
        -0x7327ce1c -> :sswitch_92
        -0x705c574b -> :sswitch_91
        -0x651ebb62 -> :sswitch_90
        -0x6423293b -> :sswitch_8f
        -0x604f5117 -> :sswitch_8e
        -0x5f691e13 -> :sswitch_8d
        -0x5ca40cc4 -> :sswitch_8c
        -0x58520ec1 -> :sswitch_8b
        -0x58520eba -> :sswitch_8a
        -0x58520eb9 -> :sswitch_89
        -0x4eaed329 -> :sswitch_88
        -0x4892fb4f -> :sswitch_87
        -0x465b3df3 -> :sswitch_86
        -0x43e6c939 -> :sswitch_85
        -0x3ec0fcc5 -> :sswitch_84
        -0x3b33cca0 -> :sswitch_83
        -0x3b33cc9a -> :sswitch_82
        -0x398ae3f6 -> :sswitch_81
        -0x391f0fb4 -> :sswitch_80
        -0x346837ae -> :sswitch_7f
        -0x323788e3 -> :sswitch_7e
        -0x30f57652 -> :sswitch_7d
        -0x2f88a116 -> :sswitch_7c
        -0x2f61ed98 -> :sswitch_7b
        -0x2efd0837 -> :sswitch_7a
        -0x2e9e9441 -> :sswitch_79
        -0x2247b8b1 -> :sswitch_78
        -0x1f0fa2b7 -> :sswitch_77
        -0x19af3b41 -> :sswitch_76
        -0x114fad3e -> :sswitch_75
        -0x10dae90b -> :sswitch_74
        -0x1084b7b7 -> :sswitch_73
        -0xa5988e9 -> :sswitch_72
        -0x35f9fbf -> :sswitch_71
        0x84e -> :sswitch_70
        0xa04 -> :sswitch_6f
        0xa9b -> :sswitch_6e
        0xa9f -> :sswitch_6d
        0xc13 -> :sswitch_6c
        0xd9b -> :sswitch_6b
        0x11ebd -> :sswitch_6a
        0x12711 -> :sswitch_69
        0x127db -> :sswitch_68
        0x12beb -> :sswitch_67
        0x1334d -> :sswitch_66
        0x135c9 -> :sswitch_65
        0x13aea -> :sswitch_64
        0x158d2 -> :sswitch_63
        0x1821e -> :sswitch_62
        0x18220 -> :sswitch_61
        0x18401 -> :sswitch_60
        0x18c69 -> :sswitch_5f
        0x1716e6 -> :sswitch_5e
        0x171ac8 -> :sswitch_5d
        0x171ac9 -> :sswitch_5c
        0x208c61 -> :sswitch_5b
        0x208c63 -> :sswitch_5a
        0x208c80 -> :sswitch_59
        0x208c9f -> :sswitch_58
        0x208cbe -> :sswitch_57
        0x208cc0 -> :sswitch_56
        0x252f5f -> :sswitch_55
        0x25981d -> :sswitch_54
        0x259b88 -> :sswitch_53
        0x290a13 -> :sswitch_52
        0x3021fd -> :sswitch_51
        0x321e47 -> :sswitch_50
        0x332327 -> :sswitch_4f
        0x33ab63 -> :sswitch_4e
        0x27691fb -> :sswitch_4d
        0x30f8881 -> :sswitch_4c
        0x30f8c42 -> :sswitch_4b
        0x349f581 -> :sswitch_4a
        0x3ab0ea7 -> :sswitch_49
        0x3e53ea5 -> :sswitch_48
        0x3f25a44 -> :sswitch_47
        0x3f25a46 -> :sswitch_46
        0x3f25a49 -> :sswitch_45
        0x3f25e05 -> :sswitch_44
        0x3f25e07 -> :sswitch_43
        0x3f25e09 -> :sswitch_42
        0x3f261c6 -> :sswitch_41
        0x48dce49 -> :sswitch_40
        0x48dd589 -> :sswitch_3f
        0x48dd8af -> :sswitch_3e
        0x4d36832 -> :sswitch_3d
        0x4f0b0e7 -> :sswitch_3c
        0x5e2479e -> :sswitch_3b
        0x60acc05 -> :sswitch_3a
        0x6214744 -> :sswitch_39
        0x9d91379 -> :sswitch_38
        0xadc0551 -> :sswitch_37
        0xea056b3 -> :sswitch_36
        0x1121dbc3 -> :sswitch_35
        0x1255818c -> :sswitch_34
        0x1263990d -> :sswitch_33
        0x12d90f3a -> :sswitch_32
        0x12d90f4c -> :sswitch_31
        0x12d98b1b -> :sswitch_30
        0x12d98b22 -> :sswitch_2f
        0x1844c711 -> :sswitch_2e
        0x1e3e8044 -> :sswitch_2d
        0x2f5336ed -> :sswitch_2c
        0x2f54115e -> :sswitch_2b
        0x2f541849 -> :sswitch_2a
        0x31cf010e -> :sswitch_29
        0x36ad82f4 -> :sswitch_28
        0x391a0b61 -> :sswitch_27
        0x3f3728cd -> :sswitch_26
        0x448ec687 -> :sswitch_25
        0x46260f63 -> :sswitch_24
        0x4c505106 -> :sswitch_23
        0x4de67084 -> :sswitch_22
        0x506ac5a9 -> :sswitch_21
        0x5abad9cd -> :sswitch_20
        0x64d2e6e9 -> :sswitch_1f
        0x64d2eac5 -> :sswitch_1e
        0x65e4085b -> :sswitch_1d
        0x6f373556 -> :sswitch_1c
        0x719f1dcb -> :sswitch_1b
        0x75d9a0f0 -> :sswitch_1a
        0x7796d144 -> :sswitch_19
        0x785bcb26 -> :sswitch_18
        0x78fc0e50 -> :sswitch_17
        0x790521fb -> :sswitch_16
        0x7933207f -> :sswitch_15
        0x7a05a409 -> :sswitch_14
        0x7a0696bd -> :sswitch_13
        0x7a16dfe7 -> :sswitch_12
        0x7a1f0e95 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 9

    .line 881
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    .line 882
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    if-ne v1, v2, :cond_0

    goto/16 :goto_4

    .line 888
    :cond_0
    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 889
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "video/avc"

    const-string v6, "video/hevc"

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v4, :cond_3

    .line 897
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 899
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v3, 0x200

    if-eq p1, v3, :cond_1

    if-eq p1, v7, :cond_1

    if-ne p1, v8, :cond_2

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    move-object v3, v6

    .line 909
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v4, 0x4

    sparse-switch p1, :sswitch_data_0

    :goto_1
    move v7, v2

    goto :goto_2

    :sswitch_0
    const-string p1, "video/x-vnd.on2.vp9"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v7, 0x6

    goto :goto_2

    :sswitch_1
    const-string p1, "video/x-vnd.on2.vp8"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_2
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v7, v4

    goto :goto_2

    :sswitch_3
    const-string p1, "video/mp4v-es"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move v7, v8

    goto :goto_2

    :sswitch_5
    const-string p1, "video/av01"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :sswitch_6
    const-string p1, "video/3gpp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_2
    packed-switch v7, :pswitch_data_0

    return v2

    :pswitch_0
    mul-int/2addr v0, v1

    .line 936
    invoke-static {v0, v4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :pswitch_1
    const-string p1, "BRAVIA 4K 2015"

    .line 924
    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "Amazon"

    sget-object v3, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    .line 925
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "KFSOWI"

    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 926
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const-string p1, "AFTS"

    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    .line 927
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-boolean p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p0, :cond_b

    goto :goto_3

    :cond_b
    const/16 p0, 0x10

    .line 933
    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result p1

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result p0

    mul-int/2addr p1, p0

    mul-int/lit16 p1, p1, 0x100

    .line 934
    invoke-static {p1, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :cond_c
    :goto_3
    return v2

    :pswitch_2
    mul-int/2addr v0, v1

    .line 922
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    const/high16 p1, 0x200000

    .line 920
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :pswitch_3
    mul-int/2addr v0, v1

    .line 916
    invoke-static {v0, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxSampleSize(II)I

    move-result p0

    return p0

    :cond_d
    :goto_4
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_6
        -0x631b55f6 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static getCodecMaxSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)Landroid/graphics/Point;
    .locals 13

    .line 2388
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2389
    iget v1, p1, Landroidx/media3/common/Format;->height:I

    goto :goto_1

    :cond_1
    iget v1, p1, Landroidx/media3/common/Format;->width:I

    :goto_1
    if-eqz v0, :cond_2

    .line 2390
    iget v3, p1, Landroidx/media3/common/Format;->width:I

    goto :goto_2

    :cond_2
    iget v3, p1, Landroidx/media3/common/Format;->height:I

    :goto_2
    int-to-float v4, v3

    int-to-float v5, v1

    div-float/2addr v4, v5

    sget-object v5, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->STANDARD_LONG_EDGE_VIDEO_PX:[I

    .line 2392
    array-length v6, v5

    :goto_3
    const/4 v7, 0x0

    if-ge v2, v6, :cond_a

    aget v8, v5, v2

    int-to-float v9, v8

    mul-float/2addr v9, v4

    float-to-int v9, v9

    if-le v8, v1, :cond_a

    if-gt v9, v3, :cond_3

    goto :goto_8

    .line 2397
    :cond_3
    sget v10, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_6

    if-eqz v0, :cond_4

    move v7, v9

    goto :goto_4

    :cond_4
    move v7, v8

    :goto_4
    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v8, v9

    .line 2399
    :goto_5
    invoke-virtual {p0, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->alignVideoSizeV21(II)Landroid/graphics/Point;

    move-result-object v7

    .line 2402
    iget v8, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 2403
    iget v9, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    float-to-double v11, v8

    invoke-virtual {p0, v9, v10, v11, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result v8

    if-eqz v8, :cond_9

    return-object v7

    :cond_6
    const/16 v10, 0x10

    .line 2409
    :try_start_0
    invoke-static {v8, v10}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v8

    mul-int/2addr v8, v10

    .line 2410
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v9

    mul-int/2addr v9, v10

    mul-int v10, v8, v9

    .line 2411
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v11

    if-gt v10, v11, :cond_9

    .line 2412
    new-instance p0, Landroid/graphics/Point;

    if-eqz v0, :cond_7

    move p1, v9

    goto :goto_6

    :cond_7
    move p1, v8

    :goto_6
    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v8, v9

    .line 2414
    :goto_7
    invoke-direct {p0, p1, v8}, Landroid/graphics/Point;-><init>(II)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    :cond_a
    :goto_8
    return-object v7
.end method

.method private static getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 502
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 503
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 505
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const-string v0, "video/dolby-vision"

    iget-object v1, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-static {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 509
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 511
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 515
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected static getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I
    .locals 3

    .line 2434
    iget v0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2438
    iget-object p0, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 2440
    iget-object v2, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2442
    :cond_0
    iget p0, p1, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr p0, v1

    return p0

    .line 2444
    :cond_1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method private static getMaxSampleSize(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p1, p1, 0x2

    .line 2534
    div-int/2addr p0, p1

    return p0
.end method

.method private static isBufferLate(J)Z
    .locals 2

    const-wide/16 v0, -0x7530

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isBufferVeryLate(J)Z
    .locals 2

    const-wide/32 v0, -0x7a120

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeNotifyDroppedFrames()V
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lez v0, :cond_0

    .line 1687
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    sub-long v2, v0, v2

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 1689
    invoke-virtual {v4, v5, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->droppedFrames(IJ)V

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoFrameProcessingOffset()V
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    .line 1697
    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->reportVideoFrameProcessingOffset(JI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    :cond_0
    return-void
.end method

.method private maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 1

    .line 1673
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    invoke-virtual {p1, v0}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 1675
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyRenderedFirstFrame()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 1663
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private maybeRenotifyVideoSizeChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->reportedVideoSize:Landroidx/media3/common/VideoSize;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 1681
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    :cond_0
    return-void
.end method

.method private notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecOutputMediaFormat()Landroid/media/MediaFormat;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1330
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    :cond_0
    return-void
.end method

.method private onProcessedTunneledEndOfStream()V
    .locals 0

    .line 1346
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setPendingOutputEndOfStream()V

    return-void
.end method

.method private releasePlaceholderSurface()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 1626
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->release()V

    iput-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-void
.end method

.method private renderOutputBufferNow(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/common/Format;IJZ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1546
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1548
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v1

    .line 1547
    invoke-virtual {v0, p4, p5, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->getCorrectedFramePresentationTimeUs(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0

    .line 1550
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    if-eqz p6, :cond_1

    move-object v2, p0

    move-wide v3, p4

    move-wide v5, v0

    move-object v7, p2

    .line 1552
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    .line 1554
    :cond_1
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p6, 0x15

    if-lt p2, p6, :cond_2

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-wide v5, p4

    move-wide v7, v0

    .line 1555
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    goto :goto_1

    .line 1557
    :cond_2
    invoke-virtual {p0, p1, p3, p4, p5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    :goto_1
    return-void
.end method

.method private static setHdr10PlusInfoV29(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V
    .locals 2

    .line 1716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hdr10-plus-info"

    .line 1717
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 1718
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method private setJoiningDeadlineMs()V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return-void
.end method

.method private setOutput(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 711
    instance-of v0, p1, Landroid/view/Surface;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/Surface;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 718
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 719
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 720
    iget-boolean v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_7

    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 729
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    .line 732
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    .line 733
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 734
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 735
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    if-nez v2, :cond_3

    .line 736
    invoke-virtual {p0, v1, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V

    goto :goto_2

    .line 738
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseCodec()V

    .line 739
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeInitCodecOrBypass()V

    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eq p1, v1, :cond_6

    .line 744
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 746
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 749
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 753
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 754
    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    goto :goto_3

    .line 758
    :cond_6
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 759
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 760
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 761
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->clearOutputSurfaceInfo()V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eq p1, v0, :cond_8

    .line 767
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyVideoSizeChanged()V

    .line 768
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeRenotifyRenderedFirstFrame()V

    :cond_8
    :goto_3
    return-void
.end method

.method private shouldForceRender(JJ)Z
    .locals 10

    .line 1278
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    .line 1283
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1286
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v6

    cmp-long p1, p1, v6

    if-ltz p1, :cond_4

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    .line 1288
    invoke-virtual {p0, p3, p4, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldForceRenderOutputBuffer(JJ)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :cond_5
    :goto_3
    return v2
.end method

.method private shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 2

    .line 1615
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1617
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 1618
    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 8

    .line 831
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    .line 833
    iget v1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->discardReasons:I

    .line 834
    iget v2, p3, Landroidx/media3/common/Format;->width:I

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    if-gt v2, v3, :cond_0

    iget v2, p3, Landroidx/media3/common/Format;->height:I

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    if-le v2, v3, :cond_1

    :cond_0
    or-int/lit16 v1, v1, 0x100

    .line 837
    :cond_1
    invoke-static {p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v2

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    if-le v2, p0, :cond_2

    or-int/lit8 v1, v1, 0x40

    :cond_2
    move v7, v1

    .line 841
    new-instance p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v3, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 845
    :cond_3
    iget p1, v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    :goto_0
    move v6, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object p0
.end method

.method protected codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "OMX.google"

    .line 2493
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-class p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 2497
    monitor-enter p0

    :try_start_0
    sget-boolean p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    if-nez p1, :cond_1

    .line 2499
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluateDeviceNeedsSetOutputSurfaceWorkaround()Z

    move-result p1

    sput-boolean p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    const/4 p1, 0x1

    sput-boolean p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->evaluatedDeviceNeedsSetOutputSurfaceWorkaround:Z

    .line 2502
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsSetOutputSurfaceWorkaround:Z

    return p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1

    .line 1862
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    invoke-direct {v0, p1, p2, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/view/Surface;)V

    return-object v0
.end method

.method protected dropOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    const-string p3, "dropVideoBuffer"

    .line 1429
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1430
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1431
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    const/4 p1, 0x1

    .line 1432
    invoke-virtual {p0, p3, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    return-void
.end method

.method protected experimentalGetVideoFrameProcessorColorConfiguration(Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/ColorInfo;",
            "Landroidx/media3/common/ColorInfo;",
            ">;"
        }
    .end annotation

    .line 1511
    invoke-static {p1}, Landroidx/media3/common/ColorInfo;->isTransferHdr(Landroidx/media3/common/ColorInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1512
    sget-object p0, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    sget-object p1, Landroidx/media3/common/ColorInfo;->SDR_BT709_LIMITED:Landroidx/media3/common/ColorInfo;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1515
    :cond_0
    iget p0, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    .line 1519
    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->buildUpon()Landroidx/media3/common/ColorInfo$Builder;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->build()Landroidx/media3/common/ColorInfo;

    move-result-object p0

    .line 1517
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 1522
    :cond_1
    invoke-static {p1, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected getCodecMaxValues(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;[Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;
    .locals 10

    .line 1807
    iget p0, p2, Landroidx/media3/common/Format;->width:I

    .line 1808
    iget v0, p2, Landroidx/media3/common/Format;->height:I

    .line 1809
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v1

    .line 1810
    array-length v2, p3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    if-eq v1, v3, :cond_0

    .line 1814
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p1

    if-eq p1, v3, :cond_0

    int-to-float p2, v1

    const/high16 p3, 0x3fc00000    # 1.5f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 1822
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1825
    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1

    .line 1828
    :cond_1
    array-length v2, p3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v6, v2, :cond_6

    aget-object v8, p3, v6

    .line 1829
    iget-object v9, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v9, :cond_2

    iget-object v9, v8, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-nez v9, :cond_2

    .line 1832
    invoke-virtual {v8}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v8

    iget-object v9, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v8, v9}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v8

    .line 1834
    :cond_2
    invoke-virtual {p1, p2, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v9

    iget v9, v9, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v9, :cond_5

    .line 1835
    iget v9, v8, Landroidx/media3/common/Format;->width:I

    if-eq v9, v3, :cond_4

    iget v9, v8, Landroidx/media3/common/Format;->height:I

    if-ne v9, v3, :cond_3

    goto :goto_1

    :cond_3
    move v9, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v9, v4

    :goto_2
    or-int/2addr v7, v9

    .line 1837
    iget v9, v8, Landroidx/media3/common/Format;->width:I

    invoke-static {p0, v9}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1838
    iget v9, v8, Landroidx/media3/common/Format;->height:I

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1839
    invoke-static {p1, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    .line 1843
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Resolutions unknown. Codec max resolution: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "x"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "MediaCodecVideoRenderer"

    invoke-static {v3, p3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 1846
    iget v4, p3, Landroid/graphics/Point;->x:I

    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1847
    iget p3, p3, Landroid/graphics/Point;->y:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1852
    invoke-virtual {p2}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p2

    .line 1851
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxInputSize(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;)I

    move-result p1

    .line 1849
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1853
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Codec max resolution adjusted to: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :cond_7
    new-instance p1, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p1
.end method

.method protected getCodecNeedsEosPropagation()Z
    .locals 1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p0, :cond_0

    .line 780
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 4

    .line 949
    array-length p0, p3

    const/high16 p2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v2, p3, v0

    .line 950
    iget v2, v2, Landroidx/media3/common/Format;->frameRate:F

    cmpl-float v3, v2, p2

    if-eqz v3, :cond_0

    .line 952
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float p0, v1, p2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    mul-float p2, v1, p1

    :goto_1
    return p2
.end method

.method protected getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 475
    invoke-static {v0, p1, p2, p3, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 474
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    .line 790
    iget-boolean v0, v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eq v0, v1, :cond_0

    .line 792
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 794
    :cond_0
    iget-object v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    .line 795
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecMaxValues(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;[Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    move-result-object v5

    iput-object v5, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecMaxValues:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;

    iget-boolean v7, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->deviceNeedsNoPostProcessWorkaround:Z

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    move-object v2, p0

    move-object v3, p2

    move v6, p4

    .line 797
    invoke-virtual/range {v2 .. v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;

    move-result-object p4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v0, :cond_4

    .line 805
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 809
    iget-boolean v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    goto :goto_1

    .line 806
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 814
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 815
    invoke-virtual {v0, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->amendMediaFormatKeys(Landroid/media/MediaFormat;)Landroid/media/MediaFormat;

    move-result-object p4

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 822
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 823
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->getInputSurface()Landroid/view/Surface;

    move-result-object p0

    goto :goto_2

    :cond_6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 818
    :goto_2
    invoke-static {p1, p4, p2, p0, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->createForVideoDecoding(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaFormat(Landroidx/media3/common/Format;Ljava/lang/String;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;FZI)Landroid/media/MediaFormat;
    .locals 1

    .line 1755
    new-instance p0, Landroid/media/MediaFormat;

    invoke-direct {p0}, Landroid/media/MediaFormat;-><init>()V

    const-string v0, "mime"

    .line 1757
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "width"

    .line 1758
    iget v0, p1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {p0, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "height"

    .line 1759
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {p0, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1760
    iget-object p2, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-static {p0, p2}, Landroidx/media3/common/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "frame-rate"

    .line 1762
    iget v0, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-static {p0, p2, v0}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetFloat(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    const-string p2, "rotation-degrees"

    .line 1763
    iget v0, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    invoke-static {p0, p2, v0}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1764
    iget-object p2, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {p0, p2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetColorInfo(Landroid/media/MediaFormat;Landroidx/media3/common/ColorInfo;)V

    const-string p2, "video/dolby-vision"

    .line 1765
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1768
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1770
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 1771
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "profile"

    .line 1770
    invoke-static {p0, p2, p1}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    :cond_0
    const-string p1, "max-width"

    .line 1775
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->width:I

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-height"

    .line 1776
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->height:I

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-input-size"

    .line 1777
    iget p2, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$CodecMaxValues;->inputSize:I

    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 1780
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    if-lt p1, p2, :cond_1

    const-string p1, "priority"

    .line 1781
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_1

    const-string p1, "operating-rate"

    .line 1783
    invoke-virtual {p0, p1, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_1
    if-eqz p5, :cond_2

    const-string p1, "no-post-process"

    const/4 p2, 0x1

    .line 1787
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "auto-frc"

    .line 1788
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    if-eqz p6, :cond_3

    .line 1791
    invoke-static {p0, p6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->configureTunnelingV21(Landroid/media/MediaFormat;I)V

    :cond_3
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MediaCodecVideoRenderer"

    return-object p0
.end method

.method protected getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    return-object p0
.end method

.method protected handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    if-nez v0, :cond_0

    return-void

    .line 1094
    :cond_0
    iget-object p1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 1095
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    .line 1097
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1098
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 1099
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 1100
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 1101
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    const/4 v5, 0x0

    .line 1102
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, -0x4b

    if-ne v0, v6, :cond_2

    const/16 v0, 0x3c

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    const/4 v1, 0x4

    if-ne v3, v1, :cond_2

    if-eqz v4, :cond_1

    if-ne v4, v0, :cond_2

    .line 1110
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 1111
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1112
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1113
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setHdr10PlusInfoV29(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;[B)V

    :cond_2
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    .line 705
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 691
    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/util/Size;

    .line 692
    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result p2

    if-eqz p2, :cond_7

    .line 693
    invoke-virtual {p1}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eqz p2, :cond_7

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 695
    invoke-virtual {p0, p2, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setOutputSurfaceInfo(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V

    goto :goto_0

    .line 687
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 688
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setVideoEffects(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 671
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    goto :goto_0

    .line 664
    :cond_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 665
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    iget p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 667
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    goto :goto_0

    .line 677
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eq p2, p1, :cond_7

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p1, :cond_7

    .line 681
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseCodec()V

    goto :goto_0

    .line 674
    :cond_5
    check-cast p2, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameMetadataListener:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    goto :goto_0

    .line 661
    :cond_6
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setOutput(Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 2

    .line 576
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 577
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 578
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releasedLastFrame()Z

    move-result p0

    and-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public isReady()Z
    .locals 9

    .line 585
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 586
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    iget-object v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-eq v4, v0, :cond_2

    .line 589
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v1

    :cond_3
    iget-wide v4, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_4

    return v4

    .line 597
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_5

    return v1

    :cond_5
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    return v4
.end method

.method protected maybeDropBuffersToKeyframe(JZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1449
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipSource(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p2, 0x1

    if-eqz p3, :cond_1

    .line 1456
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    add-int/2addr v0, p1

    iput v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 1457
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/2addr p3, v0

    iput p3, p1, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    goto :goto_0

    .line 1459
    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    add-int/2addr v0, p2

    iput v0, p3, Landroidx/media3/exoplayer/DecoderCounters;->droppedToKeyframeCount:I

    iget p3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1460
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 1463
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->flushOrReinitializeCodec()Z

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1464
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1465
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->flush()V

    :cond_2
    return p2
.end method

.method maybeNotifyRenderedFirstFrame()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterReset:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    .line 1656
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->renderedFirstFrame(Ljava/lang/Object;)V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    :cond_0
    return-void
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecVideoRenderer"

    const-string v1, "Video codec error"

    .line 989
    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 990
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 972
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 973
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecNeedsSetOutputSurfaceWorkaround:Z

    .line 975
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isHdr10PlusOutOfBandMetadataSupported()Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecHandlesHdr10PlusOutOfBandMetadata:Z

    .line 976
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    iget-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz p2, :cond_0

    .line 977
    new-instance p2, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object p3

    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-direct {p2, p0, p3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 979
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->onCodecInitialized(Ljava/lang/String;)V

    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 984
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    .line 629
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearReportedVideoSize()V

    .line 630
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->haveReportedFirstFrameRenderedForCurrentSurface:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingOnFrameRenderedListener:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$OnFrameRenderedListenerV23;

    .line 634
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 636
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 637
    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 636
    iget-object v2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->disabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 637
    sget-object v1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->videoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 638
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 544
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 545
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Landroidx/media3/exoplayer/RendererConfiguration;->tunneling:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunnelingAudioSessionId:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 546
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eq v1, p1, :cond_2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    .line 549
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releaseCodec()V

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 551
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->enabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    iput-boolean p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->mayRenderFirstFrameAfterEnableIfNotStarted:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderedFirstFrameAfterEnable:Z

    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 997
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->eventDispatcher:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 998
    iget-object p1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1027
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->scalingMode:I

    .line 1030
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setVideoScalingMode(I)V

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1038
    iget p2, p1, Landroidx/media3/common/Format;->width:I

    .line 1039
    iget v0, p1, Landroidx/media3/common/Format;->height:I

    goto :goto_3

    .line 1041
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crop-right"

    .line 1043
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "crop-top"

    const-string v4, "crop-bottom"

    const-string v5, "crop-left"

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    .line 1044
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1046
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 1049
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    goto :goto_1

    :cond_3
    const-string v0, "width"

    .line 1050
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_1
    if-eqz v2, :cond_4

    .line 1053
    invoke-virtual {p2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v2, p2

    add-int/2addr v2, v6

    move p2, v2

    goto :goto_2

    :cond_4
    const-string v2, "height"

    .line 1054
    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    :goto_2
    move v7, v0

    move v0, p2

    move p2, v7

    .line 1056
    :goto_3
    iget v2, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1057
    invoke-static {}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->codecAppliesRotation()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1061
    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_5

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_7

    :cond_5
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    move v7, v0

    move v0, p2

    move p2, v7

    goto :goto_4

    :cond_6
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1067
    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1069
    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 1071
    :cond_7
    :goto_4
    new-instance v3, Landroidx/media3/common/VideoSize;

    invoke-direct {v3, p2, v0, v1, v2}, Landroidx/media3/common/VideoSize;-><init>(IIIF)V

    iput-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 1073
    iget v4, p1, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1075
    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1078
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1079
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1080
    invoke-virtual {p1, v0}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1081
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1082
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 1083
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 1076
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->setInputFormat(Landroidx/media3/common/Format;)V

    :cond_8
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 558
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 559
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 560
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->flush()V

    .line 562
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 563
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    if-eqz p3, :cond_1

    .line 568
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->setJoiningDeadlineMs()V

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    :goto_0
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 0

    .line 1352
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    :cond_0
    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 0

    .line 1360
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 1361
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->clearRenderedFirstFrame()V

    return-void
.end method

.method protected onProcessedTunneledBuffer(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1337
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateOutputFormatForTime(J)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 1338
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1339
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    .line 1340
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    .line 1341
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedOutputBuffer(J)V

    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    .line 1018
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->tunneling:Z

    if-eqz v0, :cond_1

    .line 1021
    iget-wide v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->onProcessedTunneledBuffer(J)V

    :cond_1
    return-void
.end method

.method protected onReadyToInitializeCodec(Landroidx/media3/common/Format;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 961
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 962
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeEnable(Landroidx/media3/common/Format;J)Z

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 645
    :try_start_0
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 647
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 648
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->reset()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_1

    .line 651
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 647
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 648
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->reset()V

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v1, :cond_3

    .line 651
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->releasePlaceholderSurface()V

    .line 653
    :cond_3
    throw v0
.end method

.method protected onStarted()V
    .locals 5

    .line 609
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStarted()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrameAccumulationStartTimeMs:J

    .line 612
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 615
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStarted()V

    return-void
.end method

.method protected onStopped()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    .line 621
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    .line 622
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoFrameProcessingOffset()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 623
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStopped()V

    .line 624
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-wide/from16 v11, p1

    move-object/from16 v13, p5

    move/from16 v14, p7

    move-wide/from16 v7, p10

    move/from16 v15, p13

    move-object/from16 v9, p14

    .line 1132
    invoke-static/range {p5 .. p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v16

    if-nez v0, :cond_0

    iput-wide v11, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    :cond_0
    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1139
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 1140
    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    :cond_1
    iput-wide v7, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastBufferPresentationTimeUs:J

    .line 1145
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getOutputStreamOffsetUs()J

    move-result-wide v0

    sub-long v5, v7, v0

    const/16 v18, 0x1

    if-eqz p12, :cond_3

    if-nez v15, :cond_3

    .line 1149
    invoke-virtual {v10, v13, v14, v5, v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    return v18

    .line 1154
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/16 v19, 0x0

    if-ne v0, v1, :cond_4

    move/from16 v20, v18

    goto :goto_0

    :cond_4
    move/from16 v20, v19

    .line 1155
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v21, 0x3e8

    mul-long v23, v0, v21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide v11, v5

    move-wide/from16 v5, v23

    move-wide/from16 v7, p10

    move/from16 v9, v20

    .line 1157
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->calculateEarlyTimeUs(JJJJZ)J

    move-result-wide v7

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    iget-object v1, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->placeholderSurface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-ne v0, v1, :cond_6

    .line 1166
    invoke-static {v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1167
    invoke-virtual {v10, v13, v14, v11, v12}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1168
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v18

    :cond_5
    return v19

    :cond_6
    move-wide v5, v11

    move-wide/from16 v11, p1

    .line 1174
    invoke-direct {v10, v11, v12, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldForceRender(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1177
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move-object/from16 v9, p14

    .line 1179
    invoke-virtual {v0, v9, v5, v6, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeRegisterFrame(Landroidx/media3/common/Format;JZ)Z

    move-result v0

    if-nez v0, :cond_8

    return v19

    :cond_7
    move-object/from16 v9, p14

    move/from16 v19, v18

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    move/from16 v3, p7

    move-wide v4, v5

    move/from16 v6, v19

    .line 1186
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferNow(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/common/Format;IJZ)V

    .line 1188
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v18

    :cond_9
    move-object/from16 v9, p14

    if-eqz v20, :cond_15

    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->initialPositionUs:J

    cmp-long v0, v11, v0

    if-nez v0, :cond_a

    goto/16 :goto_5

    .line 1197
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    mul-long v2, v7, v21

    add-long/2addr v2, v0

    iget-object v4, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 1201
    invoke-virtual {v4, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(J)J

    move-result-wide v3

    iget-object v2, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1202
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    sub-long v0, v3, v0

    .line 1203
    div-long v7, v0, v21

    :cond_b
    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->joiningDeadlineMs:J

    cmp-long v0, v0, v16

    if-eqz v0, :cond_c

    move/from16 v1, v18

    goto :goto_1

    :cond_c
    move/from16 v1, v19

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v16, v5

    move v6, v1

    move-wide v1, v7

    move-wide/from16 v25, v3

    move-wide/from16 v3, p3

    move-wide/from16 v27, v16

    move/from16 v5, p13

    .line 1207
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropBuffersToKeyframe(JJZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1208
    invoke-virtual {v10, v11, v12, v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeDropBuffersToKeyframe(JZ)Z

    move-result v0

    if-eqz v0, :cond_d

    return v19

    :cond_d
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide/from16 v3, p3

    move/from16 v5, p13

    .line 1210
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldDropOutputBuffer(JJZ)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v6, :cond_e

    move-wide/from16 v4, v27

    .line 1212
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_2

    :cond_e
    move-wide/from16 v4, v27

    .line 1214
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->dropOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1216
    :goto_2
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v18

    :cond_f
    move-wide/from16 v4, v27

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1220
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    move-wide/from16 v1, p3

    .line 1221
    invoke-virtual {v0, v11, v12, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrames(JJ)V

    iget-object v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1222
    invoke-virtual {v0, v9, v4, v5, v15}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->maybeRegisterFrame(Landroidx/media3/common/Format;JZ)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p14

    move/from16 v3, p7

    .line 1223
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferNow(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroidx/media3/common/Format;IJZ)V

    return v18

    :cond_10
    return v19

    .line 1234
    :cond_11
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    const-wide/32 v0, 0xc350

    cmp-long v0, v7, v0

    if-gez v0, :cond_15

    iget-wide v0, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    move-wide/from16 v2, v25

    cmp-long v0, v2, v0

    if-nez v0, :cond_12

    .line 1242
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    goto :goto_3

    :cond_12
    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 1244
    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    move-object/from16 p9, p5

    move/from16 p10, p7

    move-wide/from16 p11, v4

    move-wide/from16 p13, v2

    .line 1245
    invoke-virtual/range {p8 .. p14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V

    .line 1247
    :goto_3
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    iput-wide v2, v10, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastFrameReleaseTimeNs:J

    return v18

    :cond_13
    move-wide/from16 v2, v25

    const-wide/16 v0, 0x7530

    cmp-long v0, v7, v0

    if-gez v0, :cond_15

    const-wide/16 v0, 0x2af8

    cmp-long v0, v7, v0

    if-lez v0, :cond_14

    const-wide/16 v0, 0x2710

    sub-long v0, v7, v0

    .line 1259
    :try_start_0
    div-long v0, v0, v21

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1261
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v19

    :cond_14
    :goto_4
    move-object/from16 p8, p0

    move-wide/from16 p9, v4

    move-wide/from16 p11, v2

    move-object/from16 p13, p14

    .line 1265
    invoke-direct/range {p8 .. p13}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->notifyFrameMetadataListener(JJLandroidx/media3/common/Format;)V

    .line 1266
    invoke-virtual {v10, v13, v14, v4, v5}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 1267
    invoke-virtual {v10, v7, v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateVideoFrameProcessingOffsetCounters(J)V

    return v18

    :cond_15
    :goto_5
    return v19
.end method

.method public render(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 852
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->render(JJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 853
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 854
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->releaseProcessedFrames(JJ)V

    :cond_0
    return-void
.end method

.method protected renderOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    const-string p3, "releaseOutputBuffer"

    .line 1574
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1575
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1576
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1577
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p2, p3

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1579
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1580
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 1581
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1582
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :cond_0
    return-void
.end method

.method protected renderOutputBufferV21(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJJ)V
    .locals 0

    const-string p3, "releaseOutputBuffer"

    .line 1602
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1603
    invoke-interface {p1, p2, p5, p6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IJ)V

    .line 1604
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1605
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->renderedOutputBufferCount:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessorManager:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;

    .line 1607
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$VideoFrameProcessorManager;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1608
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->lastRenderRealtimeUs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decodedVideoSize:Landroidx/media3/common/VideoSize;

    .line 1609
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1610
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyRenderedFirstFrame()V

    :cond_0
    return-void
.end method

.method protected resetCodecStateForFlush()V
    .locals 1

    .line 861
    invoke-super {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->buffersInCodecCount:I

    return-void
.end method

.method protected setOutputSurfaceV23(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Landroid/view/Surface;)V
    .locals 0

    .line 1723
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 868
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setPlaybackSpeed(FF)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 869
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    return-void
.end method

.method protected shouldDropBuffersToKeyframe(JJZ)Z
    .locals 0

    .line 1390
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferVeryLate(J)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p5, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldDropOutputBuffer(JJZ)Z
    .locals 0

    .line 1375
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p5, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldForceRenderOutputBuffer(JJ)Z
    .locals 0

    .line 1404
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->isBufferLate(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/32 p0, 0x186a0

    cmp-long p0, p3, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->displaySurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 774
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->shouldUsePlaceholderSurface(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected skipOutputBuffer(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V
    .locals 0

    const-string p3, "skipVideoBuffer"

    .line 1415
    invoke-static {p3}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1416
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 1417
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1418
    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/DecoderCounters;->skippedOutputBufferCount:I

    return-void
.end method

.method protected supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 374
    iget-object v0, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 375
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 376
    invoke-static {v1}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 378
    :cond_0
    iget-object v0, p2, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 382
    invoke-static {v3, p1, p2, v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v0, :cond_2

    .line 388
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 391
    invoke-static {v3, p1, p2, v1, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object v3

    .line 398
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 401
    :cond_3
    invoke-static {p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->supportsFormatDrm(Landroidx/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 p0, 0x2

    .line 402
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 406
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 407
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v5

    if-nez v5, :cond_6

    move v6, v2

    .line 411
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 412
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 413
    invoke-virtual {v7, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v1

    move v5, v2

    move-object v4, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    move v3, v2

    :goto_2
    if-eqz v5, :cond_7

    const/4 v6, 0x4

    goto :goto_3

    :cond_7
    const/4 v6, 0x3

    .line 425
    :goto_3
    invoke-virtual {v4, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x10

    goto :goto_4

    :cond_8
    const/16 v7, 0x8

    .line 430
    :goto_4
    iget-boolean v4, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x40

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    if-eqz v3, :cond_a

    const/16 v3, 0x80

    goto :goto_6

    :cond_a
    move v3, v1

    .line 436
    :goto_6
    sget v8, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v9, 0x1a

    if-lt v8, v9, :cond_b

    const-string v8, "video/dolby-vision"

    iget-object v9, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 437
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 438
    invoke-static {v8}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;->doesDisplaySupportDolbyVision(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    const/16 v3, 0x100

    :cond_b
    if-eqz v5, :cond_c

    iget-object p0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->context:Landroid/content/Context;

    .line 445
    invoke-static {p0, p1, p2, v0, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->getDecoderInfos(Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    .line 451
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 453
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;

    move-result-object p0

    .line 454
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 455
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroidx/media3/common/Format;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 456
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 v1, 0x20

    .line 462
    :cond_c
    invoke-static {v6, v7, v1, v4, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIIII)I

    move-result p0

    return p0
.end method

.method protected updateDroppedBufferCounters(II)V
    .locals 2

    .line 1480
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->droppedInputBufferCount:I

    add-int/2addr p1, p2

    .line 1482
    iget-object p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    add-int/2addr v0, p1

    iput v0, p2, Landroidx/media3/exoplayer/DecoderCounters;->droppedBufferCount:I

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    .line 1485
    iget-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->consecutiveDroppedFrameCount:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v0, v0, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    .line 1486
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroidx/media3/exoplayer/DecoderCounters;->maxConsecutiveDroppedBufferCount:I

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maxDroppedFramesToNotify:I

    if-lez p1, :cond_0

    iget p2, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->droppedFrames:I

    if-lt p2, p1, :cond_0

    .line 1488
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->maybeNotifyDroppedFrames()V

    :cond_0
    return-void
.end method

.method protected updateVideoFrameProcessingOffsetCounters(J)V
    .locals 2

    .line 1498
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/DecoderCounters;->addVideoFrameProcessingOffset(J)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->totalVideoFrameProcessingOffsetUs:J

    iget p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->videoFrameProcessingOffsetCount:I

    return-void
.end method
