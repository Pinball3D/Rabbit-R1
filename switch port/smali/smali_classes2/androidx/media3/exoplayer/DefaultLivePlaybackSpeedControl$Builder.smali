.class public final Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
.super Ljava/lang/Object;
.source "DefaultLivePlaybackSpeedControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fallbackMaxPlaybackSpeed:F

.field private fallbackMinPlaybackSpeed:F

.field private maxLiveOffsetErrorUsForUnitSpeed:J

.field private minPossibleLiveOffsetSmoothingFactor:F

.field private minUpdateIntervalMs:J

.field private proportionalControlFactorUs:F

.field private targetLiveOffsetIncrementOnRebufferUs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    const v0, 0x3f83d70a    # 1.03f

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    const v0, 0x33d6bf95    # 1.0E-7f

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    const-wide/16 v0, 0x14

    .line 114
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    const-wide/16 v0, 0x1f4

    .line 116
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    const v0, 0x3f7fbe77    # 0.999f

    iput v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;
    .locals 13

    .line 246
    new-instance v12, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    iget v1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    iget v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    iget-wide v3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    iget v5, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    iget-wide v6, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    iget v10, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJFLandroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$1;)V

    return-object v12
.end method

.method public setFallbackMaxPlaybackSpeed(F)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMaxPlaybackSpeed:F

    return-object p0
.end method

.method public setFallbackMinPlaybackSpeed(F)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->fallbackMinPlaybackSpeed:F

    return-object p0
.end method

.method public setMaxLiveOffsetErrorMsForUnitSpeed(J)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 199
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 200
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->maxLiveOffsetErrorUsForUnitSpeed:J

    return-object p0
.end method

.method public setMinPossibleLiveOffsetSmoothingFactor(F)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minPossibleLiveOffsetSmoothingFactor:F

    return-object p0
.end method

.method public setMinUpdateIntervalMs(J)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->minUpdateIntervalMs:J

    return-object p0
.end method

.method public setProportionalControlFactor(F)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->proportionalControlFactorUs:F

    return-object p0
.end method

.method public setTargetLiveOffsetIncrementOnRebufferMs(J)Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 217
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->targetLiveOffsetIncrementOnRebufferUs:J

    return-object p0
.end method
