.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs addAdGroupToAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;JJ[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 7

    const/4 v0, -0x1

    .line 57
    invoke-static {p1, p2, v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p1

    .line 59
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    move v2, v0

    .line 60
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v2, v0, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withNewAdGroup(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withIsServerSideInserted(IZ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    array-length p1, p5

    .line 69
    invoke-virtual {p0, v2, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdCount(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    .line 70
    invoke-virtual {p0, v2, p5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs(I[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withContentResumeOffsetUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    const/4 p1, 0x0

    move-object v1, p0

    .line 74
    :goto_1
    array-length p0, p5

    if-ge p1, p0, :cond_1

    aget-wide v3, p5, p1

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_1

    add-int/lit8 p0, p1, 0x1

    .line 76
    invoke-virtual {v1, v2, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withSkippedAd(II)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    move p1, p0

    goto :goto_1

    .line 79
    :cond_1
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/Util;->sum([J)J

    move-result-wide v3

    move-wide v5, p3

    .line 78
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->correctFollowingAdGroupTimes(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;IJJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method private static correctFollowingAdGroupTimes(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;IJJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;
    .locals 2

    neg-long p2, p2

    add-long/2addr p2, p4

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 301
    iget p4, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge p1, p4, :cond_1

    .line 302
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p4

    iget-wide p4, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p4, v0

    if-eqz v0, :cond_0

    add-long/2addr p4, p2

    .line 305
    invoke-virtual {p0, p1, p4, p5}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdGroupTimeUs(IJ)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I
    .locals 1

    .line 291
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    .line 292
    iget p1, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    :goto_0
    return p0
.end method

.method public static getMediaPeriodPositionUs(JLcom/google/android/exoplayer2/source/MediaPeriodId;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 1

    .line 144
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    goto :goto_0

    .line 147
    :cond_0
    iget p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getMediaPeriodPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 6

    .line 193
    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 194
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    sub-long/2addr p0, v1

    .line 195
    iget v1, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 196
    invoke-virtual {p4, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 197
    :goto_1
    invoke-static {p4, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 198
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v4, v4, v2

    sub-long/2addr p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_0
    iget-wide v2, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result p2

    if-ge p3, p2, :cond_2

    :goto_2
    if-ge v2, p3, :cond_2

    .line 204
    iget-object p2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, p2, v2

    sub-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-wide p0
.end method

.method public static getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 262
    iget p2, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 264
    :cond_0
    iget v0, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 265
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 266
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    sub-long v6, p0, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 270
    :goto_1
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 271
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v5, v5, v4

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 273
    :cond_2
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v1, v4

    .line 274
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v4, v6

    sub-long v6, p0, v1

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 277
    iget-wide p0, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

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

.method public static getStreamPositionUs(JLcom/google/android/exoplayer2/source/MediaPeriodId;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 1

    .line 125
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adGroupIndex:I

    iget p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    goto :goto_0

    .line 128
    :cond_0
    iget p2, p2, Lcom/google/android/exoplayer2/source/MediaPeriodId;->nextAdGroupIndex:I

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static getStreamPositionUs(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 5

    .line 92
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    return-wide v2

    .line 97
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPeriodIndex()I

    move-result v1

    new-instance v4, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdsId()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-wide v2

    .line 101
    :cond_1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v0

    .line 103
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v1

    .line 104
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    .line 105
    invoke-static {v2, v3, v0, v1, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    return-wide p0

    .line 109
    :cond_2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/4 p0, -0x1

    .line 110
    invoke-static {v1, v2, p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStreamPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 6

    .line 163
    invoke-virtual {p4, p2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v0

    .line 164
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr p0, v1

    .line 165
    iget v1, p4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    :goto_0
    const/4 v2, 0x0

    if-ge v1, p2, :cond_1

    .line 166
    invoke-virtual {p4, v1}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 167
    :goto_1
    invoke-static {p4, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 168
    iget-object v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v4, v4, v2

    add-long/2addr p0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    :cond_0
    iget-wide v2, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {p4, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result p2

    if-ge p3, p2, :cond_2

    :goto_2
    if-ge v2, p3, :cond_2

    .line 174
    iget-object p2, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v3, p2, v2

    add-long/2addr p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-wide p0
.end method

.method public static getStreamPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 10

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 225
    iget p2, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    .line 227
    :cond_0
    iget v0, p3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 228
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v3

    .line 229
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v4, v4, p0

    if-lez v4, :cond_1

    goto :goto_2

    .line 232
    :cond_1
    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    add-long/2addr v4, v1

    const/4 v6, 0x0

    .line 233
    :goto_1
    invoke-static {p3, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 234
    iget-object v7, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    aget-wide v7, v7, v6

    add-long/2addr v1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 236
    :cond_2
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    sub-long/2addr v1, v6

    .line 237
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v6, v8

    cmp-long v3, v6, p0

    if-lez v3, :cond_3

    add-long/2addr p0, v1

    .line 240
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
