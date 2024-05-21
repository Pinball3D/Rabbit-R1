.class final Landroidx/media3/extractor/ts/PsDurationReader;
.super Ljava/lang/Object;
.source "PsDurationReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsDurationReader"

.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x4e20


# instance fields
.field private durationUs:J

.field private firstScrValue:J

.field private isDurationRead:Z

.field private isFirstScrValueRead:Z

.field private isLastScrValueRead:Z

.field private lastScrValue:J

.field private final packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private final scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    .line 65
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method private static checkMarkerBits([B)Z
    .locals 3

    const/4 v0, 0x0

    .line 228
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xc4

    const/16 v2, 0x44

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 233
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    return v0

    .line 238
    :cond_1
    aget-byte v1, p0, v2

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x5

    .line 242
    aget-byte v1, p0, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v1, 0x8

    .line 247
    aget-byte p0, p0, v1

    const/4 v1, 0x3

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    move v0, v2

    :cond_4
    return v0
.end method

.method private finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 140
    sget-object v1, Landroidx/media3/common/util/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    .line 142
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p0, 0x0

    return p0
.end method

.method private peekIntAtPosition([BI)I
    .locals 1

    .line 220
    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private readFirstScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4e20

    .line 148
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 150
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const/4 v3, 0x0

    int-to-long v4, v3

    cmp-long v1, v1, v4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 151
    iput-wide v4, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v2

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 155
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 156
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object p2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 157
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-interface {p1, p2, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 159
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->readFirstScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    return v3
.end method

.method private readFirstScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 7

    .line 165
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    :goto_0
    add-int/lit8 v2, v1, -0x3

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v2, :cond_1

    .line 170
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-direct {p0, v2, v0}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v2

    const/16 v5, 0x1ba

    if-ne v2, v5, :cond_0

    add-int/lit8 v2, v0, 0x4

    .line 172
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 173
    invoke-static {p1}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-eqz v2, :cond_0

    return-wide v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method private readLastScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    .line 185
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v3, v2

    sub-long/2addr v0, v3

    .line 187
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v0

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 188
    iput-wide v0, p2, Landroidx/media3/extractor/PositionHolder;->position:J

    return v4

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 192
    invoke-virtual {p2, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 193
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object p2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 194
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/PsDurationReader;->packetBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 196
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->readLastScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    iput-boolean v4, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    return v0
.end method

.method private readLastScrValueFromBuffer(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 6

    .line 202
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 203
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    :goto_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-lt v1, v0, :cond_1

    .line 207
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-direct {p0, v4, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->peekIntAtPosition([BI)I

    move-result v4

    const/16 v5, 0x1ba

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v1, 0x4

    .line 209
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 210
    invoke-static {p1}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    return-wide v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public static readScrValueFromPack(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 6

    .line 125
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v4, 0x9

    if-ge v1, v4, :cond_0

    return-wide v2

    :cond_0
    new-array v1, v4, [B

    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0, v1, v5, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 132
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 133
    invoke-static {v1}, Landroidx/media3/extractor/ts/PsDurationReader;->checkMarkerBits([B)Z

    move-result p0

    if-nez p0, :cond_1

    return-wide v2

    .line 136
    :cond_1
    invoke-static {v1}, Landroidx/media3/extractor/ts/PsDurationReader;->readScrValueFromPackHeader([B)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readScrValueFromPackHeader([B)J
    .locals 13

    const/4 v0, 0x0

    .line 258
    aget-byte v0, p0, v0

    int-to-long v1, v0

    const-wide/16 v3, 0x38

    and-long/2addr v1, v3

    const/4 v3, 0x3

    shr-long/2addr v1, v3

    const/16 v4, 0x1e

    shl-long/2addr v1, v4

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const/16 v0, 0x1c

    shl-long/2addr v4, v0

    or-long v0, v1, v4

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v2, 0x14

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v4, v2

    const-wide/16 v10, 0xf8

    and-long/2addr v4, v10

    shr-long/2addr v4, v3

    const/16 v12, 0xf

    shl-long/2addr v4, v12

    or-long/2addr v0, v4

    int-to-long v4, v2

    and-long/2addr v4, v6

    const/16 v2, 0xd

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    aget-byte v2, p0, v3

    int-to-long v4, v2

    and-long/2addr v4, v8

    const/4 v2, 0x5

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    const/4 v2, 0x4

    aget-byte p0, p0, v2

    int-to-long v4, p0

    and-long/2addr v4, v10

    shr-long v2, v4, v3

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    return-wide v0
.end method

.method public getScrTimestampAdjuster()Landroidx/media3/common/util/TimestampAdjuster;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    return-object p0
.end method

.method public isDurationReadFinished()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isDurationRead:Z

    return p0
.end method

.method public readDuration(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isLastScrValueRead:Z

    if-nez v0, :cond_0

    .line 93
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/ts/PsDurationReader;->readLastScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->isFirstScrValueRead:Z

    if-nez v0, :cond_2

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/ts/PsDurationReader;->readFirstScrValue(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :cond_2
    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->firstScrValue:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_3

    .line 102
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0

    :cond_3
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 105
    invoke-virtual {p2, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iget-object p2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->scrTimestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-wide v4, p0, Landroidx/media3/extractor/ts/PsDurationReader;->lastScrValue:J

    .line 106
    invoke-virtual {p2, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v4

    sub-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    const-wide/16 v0, 0x0

    cmp-long p2, v4, v0

    if-gez p2, :cond_4

    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid duration: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". Using TIME_UNSET instead."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PsDurationReader"

    invoke-static {v0, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v2, p0, Landroidx/media3/extractor/ts/PsDurationReader;->durationUs:J

    .line 112
    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/PsDurationReader;->finishReadDuration(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method
