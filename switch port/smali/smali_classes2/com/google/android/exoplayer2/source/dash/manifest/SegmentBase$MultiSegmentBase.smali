.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiSegmentBase"
.end annotation


# instance fields
.field final availabilityTimeOffsetUs:J

.field final duration:J

.field private final periodStartUnixTimeUs:J

.field final segmentTimeline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation
.end field

.field final startNumber:J

.field private final timeShiftBufferDepthUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;JJJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 160
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJ)V

    move-wide v1, p6

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    move-wide v1, p8

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    return-void
.end method


# virtual methods
.method public getAvailableSegmentCount(JJ)J
    .locals 4

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    sub-long v0, p3, v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    add-long/2addr v0, v2

    .line 271
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide v0

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getFirstAvailableSegmentNum(JJ)J
    .locals 4

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timeShiftBufferDepthUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->periodStartUnixTimeUs:J

    sub-long/2addr p3, v2

    sub-long/2addr p3, v0

    .line 256
    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentNum(JJ)J

    move-result-wide p1

    .line 257
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide p3

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    .line 249
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide p0

    return-wide p0
.end method

.method public getFirstSegmentNum()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    return-wide v0
.end method

.method public getNextSegmentAvailableTimeUs(JJ)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    .line 282
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v0

    .line 283
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getAvailableSegmentCount(JJ)J

    move-result-wide p3

    add-long/2addr v0, p3

    .line 284
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide p3

    .line 285
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentDurationUs(JJ)J

    move-result-wide p1

    add-long/2addr p3, p1

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->availabilityTimeOffsetUs:J

    sub-long/2addr p3, p0

    return-wide p3
.end method

.method public abstract getSegmentCount(J)J
.end method

.method public final getSegmentDurationUs(JJ)J
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/32 v1, 0xf4240

    if-eqz v0, :cond_0

    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p1, p3

    long-to-int p1, p1

    .line 208
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->duration:J

    mul-long/2addr p1, v1

    .line 209
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr p1, p3

    return-wide p1

    .line 211
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v5

    add-long/2addr v5, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    cmp-long v0, p1, v5

    if-nez v0, :cond_1

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide p0

    sub-long/2addr p3, p0

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr p1, v1

    .line 215
    iget-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long p3, p1, p3

    :goto_0
    return-wide p3
.end method

.method public getSegmentNum(JJ)J
    .locals 11

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getFirstSegmentNum()J

    move-result-wide v0

    .line 172
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentCount(J)J

    move-result-wide p3

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    const-wide/16 v3, 0x1

    if-nez v2, :cond_3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    const-wide/32 v7, 0xf4240

    mul-long/2addr v5, v7

    .line 178
    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    div-long/2addr v5, v7

    iget-wide v7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    .line 179
    div-long/2addr p1, v5

    add-long/2addr v7, p1

    cmp-long p0, v7, v0

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p0, -0x1

    cmp-long p0, p3, p0

    if-nez p0, :cond_2

    move-wide v0, v7

    goto :goto_0

    :cond_2
    add-long/2addr v0, p3

    sub-long/2addr v0, v3

    .line 185
    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_3
    add-long/2addr p3, v0

    sub-long/2addr p3, v3

    move-wide v5, v0

    :goto_1
    cmp-long v2, v5, p3

    if-gtz v2, :cond_6

    sub-long v7, p3, v5

    const-wide/16 v9, 0x2

    .line 191
    div-long/2addr v7, v9

    add-long/2addr v7, v5

    .line 192
    invoke-virtual {p0, v7, v8}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getSegmentTimeUs(J)J

    move-result-wide v9

    cmp-long v2, v9, p1

    if-gez v2, :cond_4

    add-long v5, v7, v3

    goto :goto_1

    :cond_4
    if-lez v2, :cond_5

    sub-long/2addr v7, v3

    move-wide p3, v7

    goto :goto_1

    :cond_5
    return-wide v7

    :cond_6
    cmp-long p0, v5, v0

    if-nez p0, :cond_7

    move-wide p3, v5

    :cond_7
    return-wide p3
.end method

.method public final getSegmentTimeUs(J)J
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 224
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->presentationTimeOffset:J

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->startNumber:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->duration:J

    mul-long/2addr p1, v0

    :goto_0
    move-wide v0, p1

    const-wide/32 v2, 0xf4240

    .line 229
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->timescale:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public isExplicit()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->segmentTimeline:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
