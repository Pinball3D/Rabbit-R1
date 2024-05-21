.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_ADJUSTMENT_NS:J = 0x1312d00L

.field private static final MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE:I = 0x1e

.field private static final MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS:J = 0x12a05f200L

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE:F = 0.02f

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFrameReleaseHelper"

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L

.field private static final VSYNC_SAMPLE_UPDATE_PERIOD_MS:J = 0x1f4L


# instance fields
.field private changeFrameRateStrategy:I

.field private final displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

.field private formatFrameRate:F

.field private frameIndex:J

.field private final frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field private lastAdjustedFrameIndex:J

.field private lastAdjustedReleaseTimeNs:J

.field private pendingLastAdjustedFrameIndex:J

.field private pendingLastAdjustedReleaseTimeNs:J

.field private playbackSpeed:F

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private surfaceMediaFrameRate:F

.field private surfacePlaybackFrameRate:F

.field private vsyncDurationNs:J

.field private vsyncOffsetNs:J

.field private final vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public static synthetic $r8$lambda$WbudJvHtCuLhW2WO42EFcted6Ik(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 132
    invoke-static {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->maybeBuildDisplayHelper(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz p1, :cond_0

    .line 133
    invoke-static {}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->getInstance()Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    return-void
.end method

.method private static adjustmentAllowed(JJ)Z
    .locals 0

    sub-long/2addr p0, p2

    .line 290
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/32 p2, 0x1312d00

    cmp-long p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clearSurfaceFrameRate()V
    .locals 3

    .line 375
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 382
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 4

    sub-long v0, p0, p2

    .line 400
    div-long/2addr v0, p4

    mul-long/2addr v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    add-long/2addr p4, p2

    move-wide v2, p2

    move-wide p2, p4

    move-wide p4, v2

    :goto_0
    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p4

    :goto_1
    return-wide p2
.end method

.method private static maybeBuildDisplayHelper(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 420
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 421
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 422
    invoke-static {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV17;->maybeBuildNewInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 425
    invoke-static {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelperV16;->maybeBuildNewInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private resetAdjustment()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    return-void
.end method

.method private updateDefaultDisplayRefreshRateParams(Landroid/view/Display;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    double-to-long v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    .line 391
    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    goto :goto_0

    :cond_0
    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Unable to query display refresh rate"

    .line 393
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    :goto_0
    return-void
.end method

.method private updateSurfaceMediaFrameRate()V
    .locals 5

    .line 301
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 306
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameRate()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v0, v3

    if-eqz v4, :cond_4

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 316
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 317
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getMatchingFrameDurationSumNs()J

    move-result-wide v1

    const-wide v3, 0x12a05f200L

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    const v1, 0x3ca3d70a    # 0.02f

    goto :goto_1

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v2, v0, v2

    .line 323
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_6

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 328
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFramesWithoutSyncCount()I

    move-result v2

    if-lt v2, v1, :cond_6

    :goto_2
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private updateSurfacePlaybackFrameRate(Z)V
    .locals 3

    .line 349
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 365
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(J)J
    .locals 10

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 255
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 256
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameDurationNs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v6, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v4, v6

    mul-long/2addr v0, v4

    long-to-float v0, v0

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    add-long/2addr v2, v0

    .line 260
    invoke-static {p1, p2, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v4, v2

    goto :goto_0

    .line 263
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    :cond_1
    move-wide v4, p1

    :goto_0
    iget-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz p1, :cond_4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_2

    goto :goto_1

    .line 272
    :cond_2
    iget-wide v6, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    cmp-long p1, v6, v2

    if-nez p1, :cond_3

    return-wide v4

    :cond_3
    iget-wide v8, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncDurationNs:J

    .line 277
    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->closestVsync(JJJ)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncOffsetNs:J

    sub-long/2addr p1, v0

    return-wide p1

    :cond_4
    :goto_1
    return-wide v4
.end method

.method public onFormatChanged(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 206
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->reset()V

    .line 207
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onNextFrame(J)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    .line 221
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->onNextFrame(J)V

    .line 222
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 195
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    const/4 p1, 0x0

    .line 196
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onPositionReset()V
    .locals 0

    .line 185
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    return-void
.end method

.method public onStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 157
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 159
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->addObserver()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    .line 160
    new-instance v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;)V

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->register(Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper$Listener;)V

    :cond_0
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->displayHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$DisplayHelper;->unregister()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 230
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserver()V

    .line 232
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 1

    .line 171
    instance-of v0, p1, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 180
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/4 p1, 0x1

    .line 151
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    return-void
.end method
