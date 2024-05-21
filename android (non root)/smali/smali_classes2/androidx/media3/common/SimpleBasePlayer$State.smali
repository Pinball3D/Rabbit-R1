.class public final Landroidx/media3/common/SimpleBasePlayer$State;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    }
.end annotation


# instance fields
.field public final adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final audioAttributes:Landroidx/media3/common/AudioAttributes;

.field public final availableCommands:Landroidx/media3/common/Player$Commands;

.field public final contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final currentAdGroupIndex:I

.field public final currentAdIndexInAdGroup:I

.field public final currentCues:Landroidx/media3/common/text/CueGroup;

.field public final currentMediaItemIndex:I

.field public final deviceInfo:Landroidx/media3/common/DeviceInfo;

.field public final deviceVolume:I

.field public final discontinuityPositionMs:J

.field public final hasPositionDiscontinuity:Z

.field public final isDeviceMuted:Z

.field public final isLoading:Z

.field public final maxSeekToPreviousPositionMs:J

.field public final newlyRenderedFirstFrame:Z

.field public final playWhenReady:Z

.field public final playWhenReadyChangeReason:I

.field public final playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public final playerError:Landroidx/media3/common/PlaybackException;

.field public final playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field public final playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field public final positionDiscontinuityReason:I

.field public final repeatMode:I

.field public final seekBackIncrementMs:J

.field public final seekForwardIncrementMs:J

.field public final shuffleModeEnabled:Z

.field public final surfaceSize:Landroidx/media3/common/util/Size;

.field public final timedMetadata:Landroidx/media3/common/Metadata;

.field public final timeline:Landroidx/media3/common/Timeline;

.field public final totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field public final trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field public final videoSize:Landroidx/media3/common/VideoSize;

.field public final volume:F


# direct methods
.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)V
    .locals 13

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 884
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 885
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    const-string v5, "Empty playlist only allowed in STATE_IDLE or STATE_ENDED"

    .line 883
    invoke-static {v0, v5}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 888
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 889
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const-string v5, "Ads not allowed if playlist is empty"

    .line 887
    invoke-static {v0, v5}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    goto/16 :goto_8

    .line 892
    :cond_3
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_4

    move v8, v2

    goto :goto_4

    .line 897
    :cond_4
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    const-string v6, "currentMediaItemIndex must be less than playlist.size()"

    .line 896
    invoke-static {v5, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    move v8, v0

    .line 900
    :goto_4
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 901
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 902
    new-instance v11, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v11}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 904
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 905
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_5

    .line 906
    :cond_6
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->get()J

    move-result-wide v5

    :goto_5
    move-wide v9, v5

    .line 909
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v7

    move-object v12, v0

    .line 908
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/SimpleBasePlayer;->access$800(Landroidx/media3/common/Timeline;IJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)I

    move-result v5

    .line 910
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 912
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getAdGroupCount()I

    move-result v6

    if-ge v5, v6, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    move v5, v2

    :goto_6
    const-string v6, "PeriodData has less ad groups than adGroupIndex"

    .line 911
    invoke-static {v5, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 914
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/media3/common/Timeline$Period;->getAdCountInAdGroup(I)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 917
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v5

    if-ge v5, v0, :cond_8

    move v0, v4

    goto :goto_7

    :cond_8
    move v0, v2

    :goto_7
    const-string v5, "Ad group has less ads than adIndexInGroupIndex"

    .line 916
    invoke-static {v0, v5}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 922
    :cond_9
    :goto_8
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 924
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v4, :cond_a

    move v2, v4

    :cond_a
    const-string v0, "Player error only allowed in STATE_IDLE"

    .line 923
    invoke-static {v2, v0}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 926
    :cond_b
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 927
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v1, :cond_d

    .line 929
    :cond_c
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    xor-int/2addr v0, v4

    const-string v1, "isLoading only allowed when not in STATE_IDLE or STATE_ENDED"

    .line 928
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 931
    :cond_d
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    .line 932
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_f

    .line 933
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v3, :cond_e

    .line 934
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 935
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 936
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    if-nez v0, :cond_e

    .line 937
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v4

    if-eqz v0, :cond_e

    .line 940
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 939
    invoke-static {v0, v1, v4}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getExtrapolating(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    goto :goto_9

    .line 942
    :cond_e
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    .line 945
    :cond_f
    :goto_9
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 946
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 947
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-eq v1, v3, :cond_10

    .line 948
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 949
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_10

    .line 950
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v1

    if-nez v1, :cond_10

    .line 952
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getExtrapolating(JF)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    goto :goto_a

    .line 954
    :cond_10
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    .line 957
    :cond_11
    :goto_a
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Player$Commands;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 958
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    .line 959
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    .line 960
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    .line 961
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    .line 962
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    .line 963
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    .line 964
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    .line 965
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    .line 966
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    .line 967
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    .line 968
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    .line 969
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$1300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 970
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 971
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/AudioAttributes;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 972
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)F

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    .line 973
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/VideoSize;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    .line 974
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/text/CueGroup;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 975
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/DeviceInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 976
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$2900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    .line 977
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    .line 978
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/util/Size;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 979
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    .line 980
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Metadata;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 981
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 982
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    .line 983
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 984
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    .line 985
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    .line 986
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v2

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 989
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 990
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 991
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 992
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$3900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    .line 993
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    .line 994
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->access$4100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State;-><init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)V

    return-void
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 2

    .line 999
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1007
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1010
    :cond_1
    check-cast p1, Landroidx/media3/common/SimpleBasePlayer$State;

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    .line 1011
    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 1013
    invoke-virtual {v1, v3}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    .line 1016
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iget-wide v5, p1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1023
    invoke-virtual {v1, v3}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 1024
    invoke-virtual {v1, v3}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1025
    invoke-virtual {v1, v3}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    .line 1027
    invoke-virtual {v1, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 1028
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 1029
    invoke-virtual {v1, v3}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 1032
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 1034
    invoke-virtual {v1, v3}, Landroidx/media3/common/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1035
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1036
    invoke-virtual {v1, v3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1040
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1041
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1042
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1043
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iget-object v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1044
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iget-boolean v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iget v3, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iget-wide p0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 1053
    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands;->hashCode()I

    move-result v0

    const/16 v1, 0xd9

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1058
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1066
    invoke-virtual {v2}, Landroidx/media3/common/PlaybackParameters;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 1067
    invoke-virtual {v2}, Landroidx/media3/common/TrackSelectionParameters;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1068
    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    .line 1069
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    .line 1070
    invoke-virtual {v2}, Landroidx/media3/common/VideoSize;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 1071
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 1072
    invoke-virtual {v2}, Landroidx/media3/common/DeviceInfo;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 1075
    invoke-virtual {v2}, Landroidx/media3/common/util/Size;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 1077
    invoke-virtual {v2}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 1078
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1079
    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1083
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1084
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1085
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1086
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 1087
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method
