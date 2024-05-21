.class public final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$ObjectType;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$StreamType;,
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$StreamingFormat;
    }
.end annotation


# static fields
.field public static final OBJECT_TYPE_AUDIO_ONLY:Ljava/lang/String; = "a"

.field public static final OBJECT_TYPE_INIT_SEGMENT:Ljava/lang/String; = "i"

.field public static final OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO:Ljava/lang/String; = "av"

.field public static final OBJECT_TYPE_VIDEO_ONLY:Ljava/lang/String; = "v"

.field public static final STREAMING_FORMAT_DASH:Ljava/lang/String; = "d"

.field public static final STREAMING_FORMAT_HLS:Ljava/lang/String; = "h"

.field public static final STREAMING_FORMAT_SS:Ljava/lang/String; = "s"

.field public static final STREAM_TYPE_LIVE:Ljava/lang/String; = "l"

.field public static final STREAM_TYPE_VOD:Ljava/lang/String; = "v"


# instance fields
.field private final bufferedDurationUs:J

.field private chunkDurationUs:J

.field private final cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

.field private final isLive:Z

.field private objectType:Ljava/lang/String;

.field private final streamingFormat:Ljava/lang/String;

.field private final trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;JLjava/lang/String;Z)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-wide p3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    iput-object p5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    iput-boolean p6, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->isLive:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    return-void
.end method

.method private getIsInitSegment()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "i"

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getObjectType(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 62
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 64
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-ne v1, v0, :cond_2

    const-string p0, "a"

    return-object p0

    :cond_2
    const/4 p0, 0x2

    if-ne v1, p0, :cond_3

    const-string p0, "v"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public createHttpRequestHeaders()Lcom/google/common/collect/ImmutableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 193
    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 194
    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->getCustomData()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 195
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v1

    iget v1, v1, Landroidx/media3/common/Format;->bitrate:I

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    .line 197
    new-instance v3, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    invoke-direct {v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;-><init>()V

    const-string v4, "CMCD-Object"

    .line 198
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    move-result-object v3

    .line 199
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 200
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setBitrateKbps(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    :cond_0
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 203
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isTopBitrateLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 204
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v4

    iget-object v7, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 205
    invoke-interface {v7}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v7

    iget v7, v7, Landroidx/media3/common/Format;->bitrate:I

    const/4 v8, 0x0

    .line 206
    :goto_0
    iget v9, v4, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v8, v9, :cond_1

    .line 207
    invoke-virtual {v4, v8}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v9

    iget v9, v9, Landroidx/media3/common/Format;->bitrate:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v7, v2}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setTopBitrateKbps(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 211
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isObjectDurationLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v7, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v7, v9

    if-eqz v2, :cond_3

    .line 212
    div-long/2addr v7, v5

    invoke-virtual {v3, v7, v8}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectDurationMs(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 216
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isObjectTypeLoggingAllowed()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;

    .line 220
    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    invoke-direct {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;-><init>()V

    const-string v4, "CMCD-Request"

    .line 221
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    move-result-object v2

    .line 222
    invoke-direct {p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->getIsInitSegment()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isBufferLengthLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v7, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->bufferedDurationUs:J

    .line 223
    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setBufferLengthMs(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    :cond_5
    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 225
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isMeasuredThroughputLoggingAllowed()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 226
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v4, v7, v9

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 228
    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Landroidx/media3/common/util/Util;->ceilDivide(JJ)J

    move-result-wide v4

    .line 227
    invoke-virtual {v2, v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->setMeasuredThroughputInKbps(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;

    .line 231
    :cond_6
    new-instance v4, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;-><init>()V

    const-string v5, "CMCD-Session"

    .line 232
    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 233
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isContentIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 234
    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->contentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setContentId(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    :cond_7
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 236
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isSessionIdLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 237
    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->sessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setSessionId(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    :cond_8
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 239
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isStreamingFormatLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->streamingFormat:Ljava/lang/String;

    .line 240
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamingFormat(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    :cond_9
    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 242
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isStreamTypeLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->isLive:Z

    if-eqz v5, :cond_a

    const-string v5, "l"

    goto :goto_1

    :cond_a
    const-string v5, "v"

    .line 243
    :goto_1
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->setStreamType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;

    .line 246
    :cond_b
    new-instance v5, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    invoke-direct {v5}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;-><init>()V

    const-string v6, "CMCD-Status"

    .line 247
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setCustomData(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    move-result-object v0

    iget-object v5, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 248
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->isMaximumRequestThroughputLoggingAllowed()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->cmcdConfiguration:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    .line 249
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdConfiguration;->requestConfig:Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;

    .line 250
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$RequestConfig;->getRequestedMaximumThroughputKbps(I)I

    move-result p0

    .line 249
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->setMaximumRequestedThroughputKbps(I)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;

    .line 253
    :cond_c
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p0

    .line 254
    invoke-virtual {v3}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 255
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 256
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 257
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->build()Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V

    .line 258
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public setChunkDurationUs(J)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->chunkDurationUs:J

    return-object p0
.end method

.method public setObjectType(Ljava/lang/String;)Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;->objectType:Ljava/lang/String;

    return-object p0
.end method
