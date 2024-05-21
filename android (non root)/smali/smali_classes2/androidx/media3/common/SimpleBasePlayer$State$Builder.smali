.class public final Landroidx/media3/common/SimpleBasePlayer$State$Builder;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private adPositionMs:Ljava/lang/Long;

.field private adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private availableCommands:Landroidx/media3/common/Player$Commands;

.field private contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private contentPositionMs:Ljava/lang/Long;

.field private contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private currentAdGroupIndex:I

.field private currentAdIndexInAdGroup:I

.field private currentCues:Landroidx/media3/common/text/CueGroup;

.field private currentMediaItemIndex:I

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field private deviceVolume:I

.field private discontinuityPositionMs:J

.field private hasPositionDiscontinuity:Z

.field private isDeviceMuted:Z

.field private isLoading:Z

.field private maxSeekToPreviousPositionMs:J

.field private newlyRenderedFirstFrame:Z

.field private playWhenReady:Z

.field private playWhenReadyChangeReason:I

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private playbackState:I

.field private playbackSuppressionReason:I

.field private playerError:Landroidx/media3/common/PlaybackException;

.field private playlist:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;"
        }
    .end annotation
.end field

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private positionDiscontinuityReason:I

.field private repeatMode:I

.field private seekBackIncrementMs:J

.field private seekForwardIncrementMs:J

.field private shuffleModeEnabled:Z

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private timedMetadata:Landroidx/media3/common/Metadata;

.field private timeline:Landroidx/media3/common/Timeline;

.field private totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

.field private trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    sget-object v0, Landroidx/media3/common/Player$Commands;->EMPTY:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    const/4 v1, 0x1

    iput v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    iput v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    const-wide/16 v2, 0x1388

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 160
    sget-object v2, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 161
    sget-object v2, Landroidx/media3/common/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 162
    sget-object v2, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 164
    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 165
    sget-object v2, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 166
    sget-object v2, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 169
    sget-object v2, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 171
    new-instance v2, Landroidx/media3/common/Metadata;

    new-array v3, v0, [Landroidx/media3/common/Metadata$Entry;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v4, v5, v3}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 172
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 173
    sget-object v2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 174
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    iput v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 179
    invoke-static {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 181
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 182
    invoke-static {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->getConstant(J)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 183
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 184
    sget-object v1, Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;->ZERO:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    const/4 v0, 0x5

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;)V
    .locals 2

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->availableCommands:Landroidx/media3/common/Player$Commands;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    .line 192
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReady:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    .line 193
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playWhenReadyChangeReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    .line 194
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackState:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    .line 195
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackSuppressionReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    .line 196
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playerError:Landroidx/media3/common/PlaybackException;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    .line 197
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->repeatMode:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    .line 198
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->shuffleModeEnabled:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    .line 199
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isLoading:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    .line 200
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekBackIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    .line 201
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->seekForwardIncrementMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    .line 202
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->maxSeekToPreviousPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    .line 203
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 204
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    .line 205
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 206
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->volume:F

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    .line 207
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->videoSize:Landroidx/media3/common/VideoSize;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    .line 208
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentCues:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    .line 209
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    .line 210
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->deviceVolume:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    .line 211
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->isDeviceMuted:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    .line 212
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->surfaceSize:Landroidx/media3/common/util/Size;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    .line 213
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->newlyRenderedFirstFrame:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    .line 214
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timedMetadata:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    .line 215
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlist:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 216
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    .line 217
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    .line 218
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentMediaItemIndex:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    .line 219
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdGroupIndex:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    .line 220
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->currentAdIndexInAdGroup:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    .line 222
    iget-object v1, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    .line 224
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 225
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 226
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 227
    iget-object v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    .line 228
    iget-boolean v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->hasPositionDiscontinuity:Z

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    .line 229
    iget v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->positionDiscontinuityReason:I

    iput v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    .line 230
    iget-wide v0, p1, Landroidx/media3/common/SimpleBasePlayer$State;->discontinuityPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$State;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$State$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$State;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Timeline;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    return p0
.end method

.method static synthetic access$1100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    return p0
.end method

.method static synthetic access$1200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    return p0
.end method

.method static synthetic access$1300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method static synthetic access$1400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method static synthetic access$1500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Player$Commands;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method static synthetic access$1700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    return p0
.end method

.method static synthetic access$1800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    return p0
.end method

.method static synthetic access$1900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    return p0
.end method

.method static synthetic access$2000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$2100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method static synthetic access$2200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    return-wide v0
.end method

.method static synthetic access$2300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method static synthetic access$2400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method static synthetic access$2500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)F
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    return p0
.end method

.method static synthetic access$2600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/VideoSize;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method static synthetic access$2700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/text/CueGroup;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method static synthetic access$2800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$2900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    return p0
.end method

.method static synthetic access$3000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    return p0
.end method

.method static synthetic access$3100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/util/Size;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object p0
.end method

.method static synthetic access$3200(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    return p0
.end method

.method static synthetic access$3300(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/Metadata;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    return-object p0
.end method

.method static synthetic access$3400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$3500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$3600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method static synthetic access$3700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method static synthetic access$3800(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method static synthetic access$3900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Z
    .locals 0

    .line 103
    iget-boolean p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    return p0
.end method

.method static synthetic access$4000(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    return p0
.end method

.method static synthetic access$4100(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)J
    .locals 2

    .line 103
    iget-wide v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-wide v0
.end method

.method static synthetic access$500(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)I
    .locals 0

    .line 103
    iget p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    return p0
.end method

.method static synthetic access$600(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Ljava/lang/Long;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/media3/common/SimpleBasePlayer$State$Builder;)Landroidx/media3/common/PlaybackException;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/common/SimpleBasePlayer$State;
    .locals 2

    .line 769
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$State;-><init>(Landroidx/media3/common/SimpleBasePlayer$State$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public clearPositionDiscontinuity()Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    return-object p0
.end method

.method public setAdBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public setAdPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 665
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setAdPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMs:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->adPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method public setAvailableCommands(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->availableCommands:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public setContentBufferedPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentBufferedPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public setContentPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    .line 625
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    return-object p0
.end method

.method public setContentPositionMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMs:Ljava/lang/Long;

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->contentPositionMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public setCurrentAd(II)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne p2, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-ne v3, v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 604
    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdGroupIndex:I

    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentAdIndexInAdGroup:I

    return-object p0
.end method

.method public setCurrentCues(Landroidx/media3/common/text/CueGroup;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentCues:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public setCurrentMediaItemIndex(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->currentMediaItemIndex:I

    return-object p0
.end method

.method public setDeviceInfo(Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public setDeviceVolume(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->deviceVolume:I

    return-object p0
.end method

.method public setIsDeviceMuted(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isDeviceMuted:Z

    return-object p0
.end method

.method public setIsLoading(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->isLoading:Z

    return-object p0
.end method

.method public setMaxSeekToPreviousPositionMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->maxSeekToPreviousPositionMs:J

    return-object p0
.end method

.method public setNewlyRenderedFirstFrame(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->newlyRenderedFirstFrame:Z

    return-object p0
.end method

.method public setPlayWhenReady(ZI)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReady:Z

    iput p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playWhenReadyChangeReason:I

    return-object p0
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public setPlaybackState(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackState:I

    return-object p0
.end method

.method public setPlaybackSuppressionReason(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playbackSuppressionReason:I

    return-object p0
.end method

.method public setPlayerError(Landroidx/media3/common/PlaybackException;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playerError:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method public setPlaylist(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/SimpleBasePlayer$MediaItemData;",
            ">;)",
            "Landroidx/media3/common/SimpleBasePlayer$State$Builder;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 551
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 552
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    iget-object v2, v2, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Duplicate MediaItemData UID in playlist"

    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    .line 555
    new-instance p1, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;

    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlist:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p1, v0}, Landroidx/media3/common/SimpleBasePlayer$PlaylistTimeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timeline:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public setPlaylistMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public setPositionDiscontinuity(IJ)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->hasPositionDiscontinuity:Z

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->positionDiscontinuityReason:I

    iput-wide p2, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->discontinuityPositionMs:J

    return-object p0
.end method

.method public setRepeatMode(I)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->repeatMode:I

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekBackIncrementMs:J

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->seekForwardIncrementMs:J

    return-object p0
.end method

.method public setShuffleModeEnabled(Z)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->shuffleModeEnabled:Z

    return-object p0
.end method

.method public setSurfaceSize(Landroidx/media3/common/util/Size;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->surfaceSize:Landroidx/media3/common/util/Size;

    return-object p0
.end method

.method public setTimedMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->timedMetadata:Landroidx/media3/common/Metadata;

    return-object p0
.end method

.method public setTotalBufferedDurationMs(Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->totalBufferedDurationMsSupplier:Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;

    return-object p0
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->trackSelectionParameters:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public setVideoSize(Landroidx/media3/common/VideoSize;)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->videoSize:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public setVolume(F)Landroidx/media3/common/SimpleBasePlayer$State$Builder;
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput p1, p0, Landroidx/media3/common/SimpleBasePlayer$State$Builder;->volume:F

    return-object p0
.end method
