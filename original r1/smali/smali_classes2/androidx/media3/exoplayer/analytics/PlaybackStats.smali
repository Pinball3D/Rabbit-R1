.class public final Landroidx/media3/exoplayer/analytics/PlaybackStats;
.super Ljava/lang/Object;
.source "PlaybackStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;,
        Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;,
        Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;
    }
.end annotation


# static fields
.field public static final EMPTY:Landroidx/media3/exoplayer/analytics/PlaybackStats;

.field public static final PLAYBACK_STATE_ABANDONED:I = 0xf

.field public static final PLAYBACK_STATE_BUFFERING:I = 0x6

.field static final PLAYBACK_STATE_COUNT:I = 0x10

.field public static final PLAYBACK_STATE_ENDED:I = 0xb

.field public static final PLAYBACK_STATE_FAILED:I = 0xd

.field public static final PLAYBACK_STATE_INTERRUPTED_BY_AD:I = 0xe

.field public static final PLAYBACK_STATE_JOINING_BACKGROUND:I = 0x1

.field public static final PLAYBACK_STATE_JOINING_FOREGROUND:I = 0x2

.field public static final PLAYBACK_STATE_NOT_STARTED:I = 0x0

.field public static final PLAYBACK_STATE_PAUSED:I = 0x4

.field public static final PLAYBACK_STATE_PAUSED_BUFFERING:I = 0x7

.field public static final PLAYBACK_STATE_PLAYING:I = 0x3

.field public static final PLAYBACK_STATE_SEEKING:I = 0x5

.field public static final PLAYBACK_STATE_STOPPED:I = 0xc

.field public static final PLAYBACK_STATE_SUPPRESSED:I = 0x9

.field public static final PLAYBACK_STATE_SUPPRESSED_BUFFERING:I = 0xa


# instance fields
.field public final abandonedBeforeReadyCount:I

.field public final adPlaybackCount:I

.field public final audioFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field

.field public final backgroundJoiningCount:I

.field public final endedCount:I

.field public final fatalErrorCount:I

.field public final fatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final fatalErrorPlaybackCount:I

.field public final firstReportedTimeMs:J

.field public final foregroundPlaybackCount:I

.field public final initialAudioFormatBitrateCount:I

.field public final initialVideoFormatBitrateCount:I

.field public final initialVideoFormatHeightCount:I

.field public final maxRebufferTimeMs:J

.field public final mediaTimeHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[J>;"
        }
    .end annotation
.end field

.field public final nonFatalErrorCount:I

.field public final nonFatalErrorHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;",
            ">;"
        }
    .end annotation
.end field

.field public final playbackCount:I

.field private final playbackStateDurationsMs:[J

.field public final playbackStateHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public final totalAudioFormatBitrateTimeProduct:J

.field public final totalAudioFormatTimeMs:J

.field public final totalAudioUnderruns:J

.field public final totalBandwidthBytes:J

.field public final totalBandwidthTimeMs:J

.field public final totalDroppedFrames:J

.field public final totalInitialAudioFormatBitrate:J

.field public final totalInitialVideoFormatBitrate:J

.field public final totalInitialVideoFormatHeight:I

.field public final totalPauseBufferCount:I

.field public final totalPauseCount:I

.field public final totalRebufferCount:I

.field public final totalSeekCount:I

.field public final totalValidJoinTimeMs:J

.field public final totalVideoFormatBitrateTimeMs:J

.field public final totalVideoFormatBitrateTimeProduct:J

.field public final totalVideoFormatHeightTimeMs:J

.field public final totalVideoFormatHeightTimeProduct:J

.field public final validJoinTimeCount:I

.field public final videoFormatHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/exoplayer/analytics/PlaybackStats;

    .line 230
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->merge([Landroidx/media3/exoplayer/analytics/PlaybackStats;)Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->EMPTY:Landroidx/media3/exoplayer/analytics/PlaybackStats;

    return-void
.end method

.method constructor <init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;",
            ">;",
            "Ljava/util/List<",
            "[J>;JIIIIJIIIIIJI",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndFormat;",
            ">;JJJJJJIIIJIJJJJJIII",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndException;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackCount:I

    move-object v1, p2

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    .line 585
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    .line 586
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->firstReportedTimeMs:J

    move v1, p7

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    move v1, p8

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    move v1, p9

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->endedCount:I

    move v1, p10

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->backgroundJoiningCount:I

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    move/from16 v1, p13

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->validJoinTimeCount:I

    move/from16 v1, p14

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalPauseCount:I

    move/from16 v1, p15

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalPauseBufferCount:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalSeekCount:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalRebufferCount:I

    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->maxRebufferTimeMs:J

    move/from16 v1, p20

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->adPlaybackCount:I

    .line 600
    invoke-static/range {p21 .. p21}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->videoFormatHistory:Ljava/util/List;

    .line 601
    invoke-static/range {p22 .. p22}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->audioFormatHistory:Ljava/util/List;

    move-wide/from16 v1, p23

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    move-wide/from16 v1, p25

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    move-wide/from16 v1, p31

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    move-wide/from16 v1, p33

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    move/from16 v1, p35

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    move/from16 v1, p36

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    move/from16 v1, p37

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    move-wide/from16 v1, p38

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move/from16 v1, p40

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    move-wide/from16 v1, p41

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 v1, p43

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    move-wide/from16 v1, p45

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalBandwidthBytes:J

    move-wide/from16 v1, p47

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalDroppedFrames:J

    move-wide/from16 v1, p49

    iput-wide v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioUnderruns:J

    move/from16 v1, p51

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    move/from16 v1, p52

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorCount:I

    move/from16 v1, p53

    iput v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->nonFatalErrorCount:I

    .line 621
    invoke-static/range {p54 .. p54}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorHistory:Ljava/util/List;

    .line 622
    invoke-static/range {p55 .. p55}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->nonFatalErrorHistory:Ljava/util/List;

    return-void
.end method

.method public static varargs merge([Landroidx/media3/exoplayer/analytics/PlaybackStats;)Landroidx/media3/exoplayer/analytics/PlaybackStats;
    .locals 66

    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v4, v1, [J

    .line 276
    array-length v2, v0

    const-wide/16 v7, 0x0

    move-wide/from16 v28, v7

    move-wide/from16 v30, v28

    move-wide/from16 v32, v30

    move-wide/from16 v34, v32

    move-wide/from16 v36, v34

    move-wide/from16 v38, v36

    move-wide/from16 v47, v38

    move-wide/from16 v49, v47

    move-wide/from16 v51, v49

    move-wide/from16 v53, v51

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, -0x1

    const/16 v44, 0x0

    const-wide/16 v45, -0x1

    const/16 v55, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    :goto_0
    if-ge v3, v2, :cond_d

    aget-object v9, v0, v3

    .line 277
    iget v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackCount:I

    add-int/2addr v7, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    .line 279
    aget-wide v62, v4, v5

    iget-object v6, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    aget-wide v64, v6, v5

    add-long v62, v62, v64

    aput-wide v62, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v60, v12, v5

    if-nez v60, :cond_1

    .line 282
    iget-wide v12, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->firstReportedTimeMs:J

    move/from16 v63, v2

    goto :goto_2

    :cond_1
    move/from16 v63, v2

    .line 283
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->firstReportedTimeMs:J

    cmp-long v64, v1, v5

    if-eqz v64, :cond_2

    .line 284
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 286
    :cond_2
    :goto_2
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    add-int/2addr v14, v1

    .line 287
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    add-int/2addr v15, v1

    .line 288
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->endedCount:I

    add-int v16, v16, v1

    .line 289
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->backgroundJoiningCount:I

    add-int v17, v17, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v18, v1

    if-nez v5, :cond_3

    .line 291
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    move-wide/from16 v18, v5

    goto :goto_3

    .line 292
    :cond_3
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    cmp-long v64, v5, v1

    if-eqz v64, :cond_4

    add-long v18, v18, v5

    .line 295
    :cond_4
    :goto_3
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->validJoinTimeCount:I

    add-int v20, v20, v1

    .line 296
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalPauseCount:I

    add-int v21, v21, v1

    .line 297
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalPauseBufferCount:I

    add-int v22, v22, v1

    .line 298
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalSeekCount:I

    add-int v25, v25, v1

    .line 299
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalRebufferCount:I

    add-int v26, v26, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v10, v1

    if-nez v5, :cond_5

    .line 301
    iget-wide v10, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->maxRebufferTimeMs:J

    goto :goto_4

    .line 302
    :cond_5
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->maxRebufferTimeMs:J

    cmp-long v60, v5, v1

    if-eqz v60, :cond_6

    .line 303
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 305
    :cond_6
    :goto_4
    iget v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->adPlaybackCount:I

    add-int v27, v27, v5

    .line 306
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    add-long v28, v28, v5

    .line 307
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    add-long v30, v30, v5

    .line 308
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    add-long v32, v32, v5

    .line 309
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    add-long v34, v34, v5

    .line 310
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    add-long v36, v36, v5

    .line 311
    iget-wide v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    add-long v38, v38, v5

    .line 312
    iget v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    add-int v40, v40, v5

    .line 313
    iget v5, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    add-int v41, v41, v5

    const/4 v5, -0x1

    if-ne v8, v5, :cond_7

    .line 315
    iget v8, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    goto :goto_5

    .line 316
    :cond_7
    iget v6, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    if-eq v6, v5, :cond_8

    add-int/2addr v8, v6

    :cond_8
    :goto_5
    const-wide/16 v23, -0x1

    cmp-long v6, v42, v23

    if-nez v6, :cond_9

    .line 320
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    move-wide/from16 v42, v1

    goto :goto_6

    .line 321
    :cond_9
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    cmp-long v6, v1, v23

    if-eqz v6, :cond_a

    add-long v42, v42, v1

    .line 324
    :cond_a
    :goto_6
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    add-int v44, v44, v1

    cmp-long v1, v45, v23

    if-nez v1, :cond_b

    .line 326
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    move-wide/from16 v45, v1

    goto :goto_7

    .line 327
    :cond_b
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    cmp-long v6, v1, v23

    if-eqz v6, :cond_c

    add-long v45, v45, v1

    .line 330
    :cond_c
    :goto_7
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    add-long v47, v47, v1

    .line 331
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalBandwidthBytes:J

    add-long v49, v49, v1

    .line 332
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalDroppedFrames:J

    add-long v51, v51, v1

    .line 333
    iget-wide v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioUnderruns:J

    add-long v53, v53, v1

    .line 334
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    add-int v55, v55, v1

    .line 335
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorCount:I

    add-int v58, v58, v1

    .line 336
    iget v1, v9, Landroidx/media3/exoplayer/analytics/PlaybackStats;->nonFatalErrorCount:I

    add-int v59, v59, v1

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v63

    const/16 v1, 0x10

    goto/16 :goto_0

    .line 338
    :cond_d
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-object v2, v0

    .line 341
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v23

    .line 357
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v56

    .line 378
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v57

    move v3, v7

    move v1, v8

    move-wide v7, v12

    move v9, v14

    move-wide/from16 v60, v10

    move v10, v15

    move/from16 v11, v16

    move/from16 v12, v17

    move-wide/from16 v13, v18

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v18, v25

    move/from16 v19, v26

    move-wide/from16 v20, v60

    move/from16 v22, v27

    move-wide/from16 v25, v28

    move-wide/from16 v27, v30

    move-wide/from16 v29, v32

    move-wide/from16 v31, v34

    move-wide/from16 v33, v36

    move-wide/from16 v35, v38

    move/from16 v37, v40

    move/from16 v38, v41

    move/from16 v39, v1

    move-wide/from16 v40, v42

    move/from16 v42, v44

    move-wide/from16 v43, v45

    move-wide/from16 v45, v47

    move-wide/from16 v47, v49

    move-wide/from16 v49, v51

    move-wide/from16 v51, v53

    move/from16 v53, v55

    move/from16 v54, v58

    move/from16 v55, v59

    invoke-direct/range {v2 .. v57}, Landroidx/media3/exoplayer/analytics/PlaybackStats;-><init>(I[JLjava/util/List;Ljava/util/List;JIIIIJIIIIIJILjava/util/List;Ljava/util/List;JJJJJJIIIJIJJJJJIIILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getAbandonedBeforeReadyRatio()F
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->abandonedBeforeReadyCount:I

    iget v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackCount:I

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float p0, v0, p0

    :goto_0
    return p0
.end method

.method public getAudioUnderrunRate()F
    .locals 4

    .line 1049
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioUnderruns:J

    long-to-float p0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getDroppedFramesRate()F
    .locals 4

    .line 1040
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalDroppedFrames:J

    long-to-float p0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getEndedRatio()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->endedCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getFatalErrorRate()F
    .locals 4

    .line 1068
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorCount:I

    int-to-float p0, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getFatalErrorRatio()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->fatalErrorPlaybackCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getJoinTimeRatio()F
    .locals 4

    .line 921
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 922
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalJoinTimeMs()J

    move-result-wide v2

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanAudioFormatBitrate()I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioFormatTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalAudioFormatBitrateTimeProduct:J

    .line 1022
    div-long/2addr v2, v0

    long-to-int p0, v2

    :goto_0
    return p0
.end method

.method public getMeanBandwidth()I
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalBandwidthTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalBandwidthBytes:J

    const-wide/16 v4, 0x1f40

    mul-long/2addr v2, v4

    .line 1032
    div-long/2addr v2, v0

    long-to-int p0, v2

    :goto_0
    return p0
.end method

.method public getMeanElapsedTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalElapsedTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanInitialAudioFormatBitrate()I
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialAudioFormatBitrateCount:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialAudioFormatBitrate:J

    int-to-long v3, v0

    .line 989
    div-long/2addr v1, v3

    long-to-int p0, v1

    :goto_0
    return p0
.end method

.method public getMeanInitialVideoFormatBitrate()I
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialVideoFormatBitrateCount:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatBitrate:J

    int-to-long v3, v0

    .line 979
    div-long/2addr v1, v3

    long-to-int p0, v1

    :goto_0
    return p0
.end method

.method public getMeanInitialVideoFormatHeight()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->initialVideoFormatHeightCount:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalInitialVideoFormatHeight:I

    .line 969
    div-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanJoinTimeMs()J
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->validJoinTimeCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalValidJoinTimeMs:J

    int-to-long v3, v0

    .line 694
    div-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public getMeanNonFatalErrorCount()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanPauseBufferCount()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalPauseBufferCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanPauseCount()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalPauseCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanPausedTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPausedTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanPlayAndWaitTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanPlayTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanRebufferCount()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanRebufferTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 753
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanSeekCount()F
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalSeekCount:I

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getMeanSeekTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 783
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanSingleRebufferTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalRebufferCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 763
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 764
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanSingleSeekTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalSeekCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 791
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalSeekCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMeanTimeBetweenFatalErrors()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1077
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getFatalErrorRate()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getMeanTimeBetweenNonFatalErrors()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1102
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getNonFatalErrorRate()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getMeanTimeBetweenRebuffers()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 959
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getRebufferRate()F

    move-result p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getMeanVideoFormatBitrate()I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatBitrateTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatBitrateTimeProduct:J

    .line 1011
    div-long/2addr v2, v0

    long-to-int p0, v2

    :goto_0
    return p0
.end method

.method public getMeanVideoFormatHeight()I
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatHeightTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalVideoFormatHeightTimeProduct:J

    .line 1000
    div-long/2addr v2, v0

    long-to-int p0, v2

    :goto_0
    return p0
.end method

.method public getMeanWaitTimeMs()J
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 814
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->foregroundPlaybackCount:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getMediaTimeMsAtRealtimeMs(J)J
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 662
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 666
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 667
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-gtz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 671
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    aget-wide p0, p0, v2

    return-wide p0

    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 673
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 674
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    aget-wide p0, p0, v2

    return-wide p0

    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    .line 676
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v5, v3, v0

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 677
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v3, v3, v2

    iget-object v7, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 678
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    aget-wide v7, v7, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->mediaTimeHistory:Ljava/util/List;

    .line 679
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    aget-wide v0, p0, v2

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-nez p0, :cond_4

    return-wide v3

    :cond_4
    sub-long/2addr p1, v5

    long-to-float p0, p1

    long-to-float p1, v7

    div-float/2addr p0, p1

    sub-long/2addr v0, v3

    long-to-float p1, v0

    mul-float/2addr p1, p0

    float-to-long p0, p1

    add-long/2addr v3, p0

    return-wide v3
.end method

.method public getNonFatalErrorRate()F
    .locals 4

    .line 1093
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->nonFatalErrorCount:I

    int-to-float p0, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getPlaybackStateAtTime(J)I
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackStateHistory:Ljava/util/List;

    .line 644
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;

    .line 645
    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;->eventTime:Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v2, v2, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    goto :goto_1

    .line 648
    :cond_0
    iget v0, v1, Landroidx/media3/exoplayer/analytics/PlaybackStats$EventTimeAndPlaybackState;->playbackState:I

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public getPlaybackStateDurationMs(I)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    .line 632
    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getRebufferRate()F
    .locals 4

    .line 950
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->totalRebufferCount:I

    int-to-float p0, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getRebufferTimeRatio()F
    .locals 4

    .line 931
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 932
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalRebufferTimeMs()J

    move-result-wide v2

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getSeekTimeRatio()F
    .locals 4

    .line 941
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalSeekTimeMs()J

    move-result-wide v2

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getTotalElapsedTimeMs()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/PlaybackStats;->playbackStateDurationsMs:[J

    .line 836
    aget-wide v3, v3, v2

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getTotalJoinTimeMs()J
    .locals 2

    const/4 v0, 0x2

    .line 703
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPausedTimeMs()J
    .locals 4

    const/4 v0, 0x4

    .line 723
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x7

    .line 724
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayAndWaitTimeMs()J
    .locals 4

    .line 819
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPlayTimeMs()J
    .locals 2

    const/4 v0, 0x3

    .line 708
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRebufferTimeMs()J
    .locals 2

    const/4 v0, 0x6

    .line 742
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSeekTimeMs()J
    .locals 2

    const/4 v0, 0x5

    .line 773
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalWaitTimeMs()J
    .locals 4

    const/4 v0, 0x2

    .line 800
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v0

    const/4 v2, 0x6

    .line 801
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 v2, 0x5

    .line 802
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getPlaybackStateDurationMs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWaitTimeRatio()F
    .locals 4

    .line 911
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalPlayAndWaitTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 912
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->getTotalWaitTimeMs()J

    move-result-wide v2

    long-to-float p0, v2

    long-to-float v0, v0

    div-float/2addr p0, v0

    :goto_0
    return p0
.end method
