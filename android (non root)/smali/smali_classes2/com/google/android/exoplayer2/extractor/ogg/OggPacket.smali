.class final Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;
.super Ljava/lang/Object;
.source "OggPacket.java"


# instance fields
.field private currentSegmentIndex:I

.field private final packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

.field private populated:Z

.field private segmentCount:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    return-void
.end method

.method private calculatePacketSize(I)I
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 143
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 144
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v2, p1

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getPageHeader()Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    return-object p0
.end method

.method public getPayload()Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-object p0
.end method

.method public populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 60
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 64
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    if-nez v2, :cond_b

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 70
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 74
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 75
    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    and-int/2addr v3, v0

    if-ne v3, v0, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    if-nez v3, :cond_3

    .line 78
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    goto :goto_2

    :cond_3
    move v3, v1

    .line 81
    :goto_2
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->skipFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto :goto_4

    :cond_5
    :goto_3
    return v1

    :cond_6
    :goto_4
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    .line 87
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->calculatePacketSize(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->segmentCount:I

    add-int/2addr v3, v4

    if-lez v2, :cond_9

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 90
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 91
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    invoke-static {p1, v4, v5, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->readFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BII)Z

    move-result v4

    if-nez v4, :cond_7

    return v1

    :cond_7
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 94
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 95
    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_8

    move v2, v0

    goto :goto_5

    :cond_8
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    :cond_9
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 99
    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ne v3, v2, :cond_a

    const/4 v3, -0x1

    :cond_a
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    goto/16 :goto_1

    :cond_b
    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->pageHeader:Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->currentSegmentIndex:I

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->populated:Z

    return-void
.end method

.method public trimPayload()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 125
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    array-length v0, v0

    const v1, 0xfe01

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 129
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPacket;->packetArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p0

    .line 128
    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    return-void
.end method
