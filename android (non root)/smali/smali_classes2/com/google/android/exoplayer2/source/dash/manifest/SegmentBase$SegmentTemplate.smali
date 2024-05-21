.class public final Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
.super Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;
.source "SegmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentTemplate"
.end annotation


# instance fields
.field final endNumber:J

.field final initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

.field final mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJJLjava/util/List;JLcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;JJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;",
            "JJJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;J",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;",
            "JJ)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    move-wide/from16 v11, p13

    move-wide/from16 v13, p17

    move-wide/from16 v15, p19

    .line 410
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJLjava/util/List;JJJ)V

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    move-wide/from16 v1, p8

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    return-void
.end method


# virtual methods
.method public getInitialization(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 13

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    if-eqz v0, :cond_0

    .line 429
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iget-object p0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const-wide/16 v5, 0x0

    .line 430
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v8

    .line 432
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    .line 434
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;->getInitialization(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p0

    return-object p0
.end method

.method public getSegmentCount(J)J
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 455
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->endNumber:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 457
    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 460
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 461
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    .line 462
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 463
    sget-object p2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p0, p2}, Lcom/google/common/math/BigIntegerMath;->divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_2
    return-wide v2
.end method

.method public getSegmentUrl(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;J)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 441
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    sub-long v3, p2, v3

    long-to-int v3, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;->startTime:J

    goto :goto_0

    .line 444
    :cond_0
    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:J

    sub-long v2, p2, v2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    mul-long/2addr v2, v4

    :goto_0
    move-wide v5, v2

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;

    .line 446
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v2, v2, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    iget v4, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    move-object v1, v2

    move-wide v2, p2

    .line 447
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/dash/manifest/UrlTemplate;->buildUri(Ljava/lang/String;JIJ)Ljava/lang/String;

    move-result-object v8

    .line 449
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const-wide/16 v9, 0x0

    const-wide/16 v11, -0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method
