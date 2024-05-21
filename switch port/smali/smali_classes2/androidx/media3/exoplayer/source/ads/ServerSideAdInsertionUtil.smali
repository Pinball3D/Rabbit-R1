.class public final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addAdGroupToAdPlaybackState(Landroidx/media3/common/AdPlaybackState;JJ[J)Landroidx/media3/common/AdPlaybackState;
    .locals 7

    const/4 v0, -0x1

    .line 60
    invoke-static {p1, p2, v0, p0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p1

    .line 62
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    move v2, v0

    .line 63
    :goto_0
    iget v0, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge v2, v0, :cond_0

    .line 64
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Landroidx/media3/common/AdPlaybackState;->withNewAdGroup(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    const/4 p1, 0x1

    .line 71
    invoke-virtual {p0, v2, p1}, Landroidx/media3/common/AdPlaybackState;->withIsServerSideInserted(IZ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    array-length p1, p5

    .line 72
    invoke-virtual {p0, v2, p1}, Landroidx/media3/common/AdPlaybackState;->withAdCount(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    .line 73
    invoke-virtual {p0, v2, p5}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs(I[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v2, p3, p4}, Landroidx/media3/common/AdPlaybackState;->withContentResumeOffsetUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    const/4 p1, 0x0

    move-object v1, p0

    .line 77
    :goto_1
    array-length p0, p5

    if-ge p1, p0, :cond_1

    aget-wide v3, p5, p1

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    add-int/lit8 p0, p1, 0x1

    .line 79
    invoke-virtual {v1, v2, p1}, Landroidx/media3/common/AdPlaybackState;->withSkippedAd(II)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    move p1, p0

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {p5}, Landroidx/media3/common/util/Util;->sum([J)J

    move-result-wide v3

    move-wide v5, p3

    .line 81
    invoke-static/range {v1 .. v6}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->correctFollowingAdGroupTimes(Landroidx/media3/common/AdPlaybackState;IJJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method private static correctFollowingAdGroupTimes(Landroidx/media3/common/AdPlaybackState;IJJ)Landroidx/media3/common/AdPlaybackState;
    .locals 2

    neg-long p2, p2

    add-long/2addr p2, p4

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 304
    iget p4, p0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ge p1, p4, :cond_1

    .line 305
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide p4, p4, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    add-long/2addr p4, p2

    .line 308
    invoke-virtual {p0, p1, p4, p5}, Landroidx/media3/common/AdPlaybackState;->withAdGroupTimeUs(IJ)Landroidx/media3/common/AdPlaybackState;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I
    .locals 1

    .line 294
    invoke-virtual {p0, p1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object p0

    .line 295
    iget p1, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/media3/common/AdPlaybackState$AdGroup;->count:I

    :goto_0
    return p0
.end method

.method public static getMediaPeriodPositionUs(JLandroidx/media3/common/MediaPeriodId;Landroidx/media3/common/AdPlaybackState;)J
    .locals 1

    .line 147
    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget v0, p2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget p2, p2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p0

    goto :goto_0

    .line 150
    :cond_0
    iget p2, p2, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getMediaPeriodPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J
    .locals 6

    .line 196
    invoke-virtual {p4, p2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 197
    iget-wide v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    sub-long/2addr p0, v1

    .line 198
    iget v1, p4, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 199
    invoke-virtual {p4, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 200
    :goto_1
    invoke-static {p4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 201
    iget-object v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v4, v4, v2

    sub-long/2addr p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :cond_0
    iget-wide v2, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {p4, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result p2

    if-ge p3, p2, :cond_2

    :goto_2
    if-ge v2, p3, :cond_2

    .line 207
    iget-object p2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, p2, v2

    sub-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-wide p0
.end method

.method public static getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 265
    iget p2, p3, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 267
    :cond_0
    iget v0, p3, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 268
    invoke-virtual {p3, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 269
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    sub-long v6, p0, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 273
    :goto_1
    invoke-static {p3, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 274
    iget-object v5, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v5, v4

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    :cond_2
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v1, v4

    .line 277
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v4, v6

    sub-long v6, p0, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 280
    iget-wide p0, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    sub-long/2addr p0, v1

    return-wide p0
.end method

.method public static getStreamPositionUs(JLandroidx/media3/common/MediaPeriodId;Landroidx/media3/common/AdPlaybackState;)J
    .locals 1

    .line 128
    invoke-virtual {p2}, Landroidx/media3/common/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget v0, p2, Landroidx/media3/common/MediaPeriodId;->adGroupIndex:I

    iget p2, p2, Landroidx/media3/common/MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p0

    goto :goto_0

    .line 131
    :cond_0
    iget p2, p2, Landroidx/media3/common/MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getStreamPositionUs(Landroidx/media3/common/Player;Landroidx/media3/common/AdPlaybackState;)J
    .locals 5

    .line 95
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    return-wide v2

    .line 100
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v0, v1, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Landroidx/media3/common/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v1, v4}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-wide v2

    .line 104
    :cond_1
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v0

    .line 106
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    .line 107
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    .line 108
    invoke-static {v2, v3, v0, v1, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p0

    return-wide p0

    .line 112
    :cond_2
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/4 p0, -0x1

    .line 113
    invoke-static {v1, v2, p0, p1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStreamPositionUsForAd(JIILandroidx/media3/common/AdPlaybackState;)J
    .locals 6

    .line 166
    invoke-virtual {p4, p2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 167
    iget-wide v1, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr p0, v1

    .line 168
    iget v1, p4, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 169
    invoke-virtual {p4, v1}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 170
    :goto_1
    invoke-static {p4, v1}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 171
    iget-object v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v4, v4, v2

    add-long/2addr p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    :cond_0
    iget-wide v2, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {p4, p2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result p2

    if-ge p3, p2, :cond_2

    :goto_2
    if-ge v2, p3, :cond_2

    .line 177
    iget-object p2, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, p2, v2

    add-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-wide p0
.end method

.method public static getStreamPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 228
    iget p2, p3, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    .line 230
    :cond_0
    iget v0, p3, Landroidx/media3/common/AdPlaybackState;->removedAdGroupCount:I

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 231
    invoke-virtual {p3, v0}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 232
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    goto :goto_2

    .line 235
    :cond_1
    iget-wide v4, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr v4, v1

    const/4 v6, 0x0

    .line 236
    :goto_1
    invoke-static {p3, v0}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Landroidx/media3/common/AdPlaybackState;I)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 237
    iget-object v7, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v7, v7, v6

    add-long/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 239
    :cond_2
    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v1, v6

    .line 240
    iget-wide v6, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v8, v3, Landroidx/media3/common/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v6, v8

    cmp-long v3, v6, p0

    if-lez v3, :cond_3

    add-long/2addr p0, v1

    .line 243
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-long/2addr p0, v1

    return-wide p0
.end method
