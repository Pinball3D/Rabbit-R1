.class final Lcom/google/android/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field private static final PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final discontinuityStartPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

.field public final playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public volatile positionUs:J

.field public final requestedContentPositionUs:J

.field public final sleepingForOffload:Z

.field public final staticMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public final timeline:Lcom/google/android/exoplayer2/Timeline;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "JJI",
            "Lcom/google/android/exoplayer2/ExoPlaybackException;",
            "Z",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "ZI",
            "Lcom/google/android/exoplayer2/PlaybackParameters;",
            "JJJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    move v1, p7

    iput v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v1, p19

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v1, p21

    iput-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    return-void
.end method

.method public static createDummy(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 25

    move-object/from16 v11, p0

    .line 101
    new-instance v24, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v0, v24

    sget-object v1, Lcom/google/android/exoplayer2/Timeline;->EMPTY:Lcom/google/android/exoplayer2/Timeline;

    sget-object v13, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v2, v13

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 111
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v23}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v24
.end method

.method public static getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object v0
.end method


# virtual methods
.method public copyWithIsLoading(Z)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 328
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithLoadingMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 357
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithNewPosition(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "JJJJ",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lcom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 212
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithPlayWhenReady(ZI)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 390
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithPlaybackError(Lcom/google/android/exoplayer2/ExoPlaybackException;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 299
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    .line 419
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithPlaybackState(I)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 270
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithSleepingForOffload(Z)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v24, p1

    .line 448
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->timeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method

.method public copyWithTimeline(Lcom/google/android/exoplayer2/Timeline;)Lcom/google/android/exoplayer2/PlaybackInfo;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 241
    new-instance v25, Lcom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v25

    iget-object v3, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->periodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lcom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 p1, v1

    iget v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v24, v0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Lcom/google/android/exoplayer2/PlaybackInfo;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplayer2/ExoPlaybackException;ZLcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplayer2/PlaybackParameters;JJJZ)V

    return-object v25
.end method
