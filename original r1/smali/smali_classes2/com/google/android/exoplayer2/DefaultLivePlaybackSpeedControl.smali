.class public final Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/LivePlaybackSpeedControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED:F = 1.03f

.field public static final DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED:F = 0.97f

.field public static final DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED:J = 0x14L

.field public static final DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR:F = 0.999f

.field public static final DEFAULT_MIN_UPDATE_INTERVAL_MS:J = 0x3e8L

.field public static final DEFAULT_PROPORTIONAL_CONTROL_FACTOR:F = 0.1f

.field public static final DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS:J = 0x1f4L


# instance fields
.field private adjustedPlaybackSpeed:F

.field private currentTargetLiveOffsetUs:J

.field private final fallbackMaxPlaybackSpeed:F

.field private final fallbackMinPlaybackSpeed:F

.field private idealTargetLiveOffsetUs:J

.field private lastPlaybackSpeedUpdateMs:J

.field private final maxLiveOffsetErrorUsForUnitSpeed:J

.field private maxPlaybackSpeed:F

.field private maxTargetLiveOffsetUs:J

.field private mediaConfigurationTargetLiveOffsetUs:J

.field private minPlaybackSpeed:F

.field private final minPossibleLiveOffsetSmoothingFactor:F

.field private minTargetLiveOffsetUs:J

.field private final minUpdateIntervalMs:J

.field private final proportionalControlFactor:F

.field private smoothedMinPossibleLiveOffsetDeviationUs:J

.field private smoothedMinPossibleLiveOffsetUs:J

.field private targetLiveOffsetOverrideUs:J

.field private final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    iput p5, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    iput-wide p6, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    iput p10, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iput p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

.method synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl$1;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJF)V

    return-void
.end method

.method private adjustTargetLiveOffsetUs(J)V
    .locals 12

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    mul-long/2addr v4, v2

    add-long v10, v0, v4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    cmp-long v0, v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    .line 433
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-long v2, v0

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    float-to-long p1, p2

    add-long/2addr v2, p1

    const/4 p1, 0x3

    new-array p1, p1, [J

    const/4 p2, 0x0

    aput-wide v10, p1, p2

    const/4 p2, 0x1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    aput-wide v0, p1, p2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v0, v2

    const/4 p2, 0x2

    aput-wide v0, p1, p2

    .line 439
    invoke-static {p1}, Lcom/google/common/primitives/Longs;->max([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 445
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v6, p1, v0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    .line 447
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeResetTargetLiveOffsetUs()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method private static smooth(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float/2addr p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private updateSmoothedMinPossibleLiveOffsetUs(JJ)V
    .locals 2

    sub-long/2addr p1, p3

    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 411
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p3

    .line 409
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 416
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    .line 418
    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdjustedPlaybackSpeed(JJ)F
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 351
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->updateSmoothedMinPossibleLiveOffsetUs(JJ)V

    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long p3, p3, v2

    if-eqz p3, :cond_1

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr p3, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p0

    .line 357
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    .line 359
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustTargetLiveOffsetUs(J)V

    iget-wide p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr p1, p3

    .line 361
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_2

    iput v1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_0

    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    long-to-float p1, p1

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget p2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    .line 366
    invoke-static {p3, p1, p2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    :goto_0
    iget p0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p0
.end method

.method public getTargetLiveOffsetUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public notifyRebuffer()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .locals 2

    .line 308
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 309
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    .line 310
    iget-wide v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    .line 312
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 313
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    .line 316
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 317
    iget p1, p1, Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    iget v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    .line 323
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    .line 329
    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method
