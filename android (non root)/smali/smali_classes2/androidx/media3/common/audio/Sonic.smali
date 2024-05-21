.class final Landroidx/media3/common/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final BYTES_PER_SAMPLE:I = 0x2

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    iput p2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iput p3, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iput p4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    int-to-float p3, p1

    int-to-float p4, p5

    div-float/2addr p3, p4

    iput p3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 77
    div-int/lit16 p3, p1, 0x190

    iput p3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 78
    div-int/lit8 p1, p1, 0x41

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 80
    new-array p3, p1, [S

    iput-object p3, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    mul-int p3, p1, p2

    .line 81
    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    mul-int p3, p1, p2

    .line 82
    new-array p3, p3, [S

    iput-object p3, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    mul-int/2addr p1, p2

    .line 83
    new-array p1, p1, [S

    iput-object p1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    return-void
.end method

.method private adjustRate(FI)V
    .locals 8

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    int-to-float v1, v0

    div-float/2addr v1, p1

    float-to-int p1, v1

    :goto_0
    const/16 v1, 0x4000

    if-gt p1, v1, :cond_7

    if-le v0, v1, :cond_1

    goto :goto_5

    .line 380
    :cond_1
    invoke-direct {p0, p2}, Landroidx/media3/common/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    const/4 p2, 0x0

    move v1, p2

    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6

    :goto_2
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, p1

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    mul-int v6, v5, v0

    if-le v3, v6, :cond_3

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 385
    invoke-direct {p0, v2, v3, v4}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    move v2, p2

    :goto_3
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ge v2, v3, :cond_2

    iget-object v5, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v6, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    iget-object v7, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 389
    invoke-direct {p0, v7, v3, v0, p1}, Landroidx/media3/common/audio/Sonic;->interpolate([SIII)S

    move-result v3

    aput-short v3, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    if-ne v2, v0, :cond_5

    iput p2, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    if-ne v5, p1, :cond_4

    goto :goto_4

    :cond_4
    move v4, p2

    .line 397
    :goto_4
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sub-int/2addr v2, v4

    .line 401
    invoke-direct {p0, v2}, Landroidx/media3/common/audio/Sonic;->removePitchFrames(I)V

    return-void

    .line 377
    :cond_7
    :goto_5
    div-int/lit8 p1, p1, 0x2

    .line 378
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private changeSpeed(F)V
    .locals 7

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-lez v2, :cond_2

    .line 465
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 467
    invoke-direct {p0, v2, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriod([SI)I

    move-result v2

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 469
    invoke-direct {p0, v3, v1, p1, v2}, Landroidx/media3/common/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 471
    invoke-direct {p0, v3, v1, p1, v2}, Landroidx/media3/common/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v2

    goto :goto_0

    :goto_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 475
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->removeProcessedInputFrames(I)V

    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    .line 219
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/Sonic;->copyToOutput([SII)V

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    return v0
.end method

.method private copyToOutput([SII)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 207
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr p2, v1

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    mul-int/2addr v2, v1

    mul-int/2addr v1, p3

    .line 208
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    return-void
.end method

.method private downSampleInput([SII)V
    .locals 6

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 227
    div-int/2addr v0, p3

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr p3, v1

    mul-int/2addr p2, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, p3, :cond_0

    mul-int v5, v2, p3

    add-int/2addr v5, p2

    add-int/2addr v5, v3

    .line 233
    aget-short v5, p1, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 235
    :cond_0
    div-int/2addr v4, p3

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    int-to-short v4, v4

    .line 236
    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 1

    .line 190
    array-length v0, p1

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr v0, p0

    add-int/2addr p2, p3

    if-gt p2, v0, :cond_0

    return-object p1

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 194
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    mul-int/2addr v0, p0

    .line 195
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p0

    return-object p0
.end method

.method private findPitchPeriod([SI)I
    .locals 6

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    const/4 v1, 0x1

    const/16 v2, 0xfa0

    if-le v0, v2, :cond_0

    .line 298
    div-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ne v2, v1, :cond_1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 300
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 302
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/common/audio/Sonic;->downSampleInput([SII)V

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 303
    div-int/2addr v3, v0

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v3, v4}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    if-eq v0, v1, :cond_5

    mul-int/2addr v2, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int v3, v2, v0

    add-int/2addr v2, v0

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    if-ge v3, v0, :cond_2

    move v3, v0

    :cond_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    if-le v2, v0, :cond_3

    move v2, v0

    :cond_3
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ne v0, v1, :cond_4

    .line 315
    invoke-direct {p0, p1, p2, v3, v2}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    .line 317
    :cond_4
    invoke-direct {p0, p1, p2, v1}, Landroidx/media3/common/audio/Sonic;->downSampleInput([SII)V

    iget-object p1, p0, Landroidx/media3/common/audio/Sonic;->downSampleBuffer:[S

    .line 318
    invoke-direct {p0, p1, v5, v3, v2}, Landroidx/media3/common/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result p1

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    iget p2, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    .line 322
    invoke-direct {p0, p2, v0}, Landroidx/media3/common/audio/Sonic;->previousPeriodBetter(II)Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    goto :goto_2

    :cond_6
    move p2, p1

    :goto_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    return p2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 9

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr p2, v0

    const/4 v0, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    move v3, v0

    move v4, v3

    :goto_0
    if-gt p3, p4, :cond_3

    move v5, v0

    move v6, v5

    :goto_1
    if-ge v5, p3, :cond_0

    add-int v7, p2, v5

    .line 251
    aget-short v7, p1, v7

    add-int v8, p2, p3

    add-int/2addr v8, v5

    .line 252
    aget-short v8, p1, v8

    sub-int/2addr v7, v8

    .line 253
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    mul-int v5, v6, v3

    mul-int v7, v2, p3

    if-ge v5, v7, :cond_1

    move v3, p3

    move v2, v6

    :cond_1
    mul-int v5, v6, v1

    mul-int v7, v4, p3

    if-le v5, v7, :cond_2

    move v1, p3

    move v4, v6

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 267
    :cond_3
    div-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    .line 268
    div-int/2addr v4, v1

    iput v4, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    return v3
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 9

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    int-to-float v0, p4

    mul-float/2addr v0, p3

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    goto :goto_0

    :cond_0
    int-to-float v0, p4

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p3

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    sub-float/2addr v1, p3

    div-float/2addr v0, v1

    float-to-int p3, v0

    iput p3, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    move p3, p4

    :goto_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v8, p4, p3

    .line 437
    invoke-direct {p0, v0, v1, v8}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int v2, p2, v1

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    mul-int/2addr v3, v1

    mul-int/2addr v1, p4

    .line 438
    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v3, v0, p4

    add-int v5, p2, p4

    move v0, p3

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    .line 444
    invoke-static/range {v0 .. v7}, Landroidx/media3/common/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr p1, v8

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    return p3
.end method

.method private interpolate([SIII)S
    .locals 2

    .line 359
    aget-short v0, p1, p2

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    add-int/2addr p2, v1

    .line 360
    aget-short p1, p1, p2

    iget p2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    mul-int/2addr p2, p3

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    mul-int p3, p0, p4

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, p4

    sub-int p2, p0, p2

    sub-int/2addr p0, p3

    mul-int/2addr v0, p2

    sub-int p2, p0, p2

    mul-int/2addr p2, p1

    add-int/2addr v0, p2

    .line 366
    div-int/2addr v0, p0

    int-to-short p0, v0

    return p0
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 334
    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int v4, p1, v3

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    mul-int/2addr v5, v3

    mul-int/2addr v3, v0

    .line 335
    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    mul-int v2, p3, p1

    add-int/2addr v2, v1

    mul-int v3, p7, p1

    add-int/2addr v3, v1

    mul-int v4, p5, p1

    add-int/2addr v4, v1

    move v5, v0

    :goto_1
    if-ge v5, p0, :cond_0

    .line 508
    aget-short v6, p4, v4

    sub-int v7, p0, v5

    mul-int/2addr v6, v7

    aget-short v7, p6, v3

    mul-int/2addr v7, v5

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    aput-short v6, p2, v2

    add-int/2addr v2, p1

    add-int/2addr v4, p1

    add-int/2addr v3, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private previousPeriodBetter(II)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p1, 0x3

    if-le p2, v1, :cond_1

    return v0

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 p0, p0, 0x3

    if-gt p1, p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private processStreamInput()V
    .locals 8

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    mul-float/2addr v3, v2

    float-to-double v4, v1

    const-wide v6, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v2, v4, v6

    if-gtz v2, :cond_1

    const-wide v6, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v2, v4, v6

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    const/4 v4, 0x0

    .line 486
    invoke-direct {p0, v1, v4, v2}, Landroidx/media3/common/audio/Sonic;->copyToOutput([SII)V

    iput v4, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    goto :goto_1

    .line 484
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->changeSpeed(F)V

    :goto_1
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_2

    .line 490
    invoke-direct {p0, v3, v0}, Landroidx/media3/common/audio/Sonic;->adjustRate(FI)V

    :cond_2
    return-void
.end method

.method private removePitchFrames(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int v2, p1, v1

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v3, p1

    mul-int/2addr v3, v1

    const/4 v1, 0x0

    .line 349
    invoke-static {v0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 4

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr p1, v2

    const/4 v3, 0x0

    mul-int/2addr v2, v0

    .line 201
    invoke-static {v1, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 8

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v1, p3, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    int-to-float v0, p4

    sub-float/2addr p3, v2

    div-float/2addr v0, p3

    float-to-int p3, v0

    goto :goto_0

    :cond_0
    int-to-float v1, p4

    sub-float/2addr v0, p3

    mul-float/2addr v1, v0

    sub-float/2addr p3, v2

    div-float/2addr v1, p3

    float-to-int p3, v1

    iput p3, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    move p3, p4

    :goto_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 413
    invoke-direct {p0, v0, v1, p3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v7, p2, p4

    move v0, p3

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    .line 414
    invoke-static/range {v0 .. v7}, Landroidx/media3/common/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    return p3
.end method


# virtual methods
.method public flush()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevMinDiff:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->minDiff:I

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxDiff:I

    return-void
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 4

    .line 116
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->outputBuffer:[S

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, p0

    mul-int/2addr p1, p0

    .line 119
    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getOutputSize()I
    .locals 1

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPendingInputBytes()I
    .locals 1

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget p0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public queueEndOfStream()V
    .locals 7

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    mul-float/2addr v3, v2

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    int-to-float v4, v0

    div-float/2addr v4, v1

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    int-to-float v1, v1

    add-float/2addr v4, v1

    div-float/2addr v4, v3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-int/2addr v2, v1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 140
    invoke-direct {p0, v1, v0, v3}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v6

    if-ge v3, v5, :cond_0

    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    mul-int/2addr v6, v0

    add-int/2addr v6, v3

    .line 143
    aput-short v1, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 146
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-le v0, v2, :cond_1

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    :cond_1
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5

    .line 101
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 103
    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/common/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    .line 104
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget p1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 106
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    return-void
.end method
