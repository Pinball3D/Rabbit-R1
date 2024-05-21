.class final Landroidx/media3/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "TsDurationReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TsDurationReader"


# instance fields
.field private durationUs:J

.field private firstPcrValue:J

.field private isDurationRead:Z

.field private isFirstPcrValueRead:Z

.field private isLastPcrValueRead:Z

.field private lastPcrValue:J

.field private final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final timestampSearchBytes:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    .line 58
    new-instance p1, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    .line 62
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 127
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationRead:Z

    .line 129
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    return p0
.end method

.method private readFirstPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v0, v0

    .line 135
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 137
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 138
    iput-wide v4, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v2

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 142
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 143
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object p2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 144
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 146
    invoke-direct {p0, p1, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readFirstPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    return v3
.end method

.method private readFirstPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J
    .locals 5

    .line 152
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    .line 153
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    :goto_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p0, v0, :cond_2

    .line 157
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    aget-byte v3, v3, p0

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    invoke-static {p1, p0, p2}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    return-wide v3

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method private readLastPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->timestampSearchBytes:I

    int-to-long v2, v2

    .line 171
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 173
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 174
    iput-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v4

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 178
    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 179
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object p2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 180
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 182
    invoke-direct {p0, p1, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readLastPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    iput-boolean v4, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    return v0
.end method

.method private readLastPcrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;I)J
    .locals 6

    .line 188
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p0

    .line 189
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit16 v1, v0, -0xbc

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, p0, :cond_2

    .line 196
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 195
    invoke-static {v4, p0, v0, v1}, Landroidx/media3/extractor/ts/TsUtil;->isStartOfTsPacket([BIII)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-static {p1, v1, p2}, Landroidx/media3/extractor/ts/TsUtil;->readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    return-wide v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-wide v2
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getPcrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    return-object p0
.end method

.method public isDurationReadFinished()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isDurationRead:Z

    return p0
.end method

.method public readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_0

    .line 86
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isLastPcrValueRead:Z

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readLastPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I

    move-result p0

    return p0

    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 92
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->isFirstPcrValueRead:Z

    if-nez v0, :cond_3

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/TsDurationReader;->readFirstPcrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;I)I

    move-result p0

    return p0

    :cond_3
    iget-wide p2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->firstPcrValue:J

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    .line 98
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0

    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 101
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide p2

    iget-object v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->pcrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v4, p0, Landroidx/media3/extractor/ts/TsDurationReader;->lastPcrValue:J

    .line 102
    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    sub-long/2addr v0, p2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    const-wide/16 p2, 0x0

    cmp-long p2, v0, p2

    if-gez p2, :cond_5

    .line 105
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid duration: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ". Using TIME_UNSET instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TsDurationReader"

    invoke-static {p3, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Landroidx/media3/extractor/ts/TsDurationReader;->durationUs:J

    .line 108
    :cond_5
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/TsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method
