.class final Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
.super Ljava/lang/Object;
.source "TsBinarySearchSeeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TsPcrSeeker"
.end annotation


# instance fields
.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pcrPid:I

.field private final pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

.field private final timestampSearchBytes:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/util/TimestampAdjuster;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->timestampSearchBytes:I

    .line 80
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method

.method private searchForPcrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    .line 103
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_5

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v14

    invoke-static {v13, v14, v4}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->findSyncBytePosition([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-le v14, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrPid:I

    .line 110
    invoke-static {v1, v13, v5}, Lcom/google/android/exoplayer2/extractor/ts/TsUtil;->readPcrFromPacket(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_4

    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->pcrTimestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 112
    invoke-virtual {v15, v5, v6}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_2

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    .line 116
    invoke-static {v5, v6, v2, v3}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->overestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    :cond_1
    add-long v0, v2, v9

    .line 119
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v9, v9, p2

    if-lez v9, :cond_3

    int-to-long v0, v13

    add-long/2addr v0, v2

    .line 124
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->targetFoundResult(J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    :cond_3
    int-to-long v9, v13

    move-wide v11, v5

    .line 130
    :cond_4
    invoke-virtual {v1, v14}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_5
    :goto_1
    cmp-long v0, v11, v7

    if-eqz v0, :cond_6

    add-long v0, v2, v5

    .line 136
    invoke-static {v11, v12, v0, v1}, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->underestimatedResult(JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object v0

    return-object v0

    .line 139
    :cond_6
    sget-object v0, Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;->NO_TIMESTAMP_IN_RANGE_RESULT:Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    return-object v0
.end method


# virtual methods
.method public onSeekFinished()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 145
    sget-object v0, Lcom/google/android/exoplayer2/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([B)V

    return-void
.end method

.method public searchForTimestamp(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->timestampSearchBytes:I

    int-to-long v0, v0

    .line 87
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 89
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 90
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object v0, p0

    move-wide v2, p2

    .line 92
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;->searchForPcrValueInBuffer(Lcom/google/android/exoplayer2/util/ParsableByteArray;JJ)Lcom/google/android/exoplayer2/extractor/BinarySearchSeeker$TimestampSearchResult;

    move-result-object p0

    return-object p0
.end method
