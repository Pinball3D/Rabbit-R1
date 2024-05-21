.class public final Lcom/google/android/exoplayer2/extractor/ts/SectionReader;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;


# static fields
.field private static final DEFAULT_SECTION_BUFFER_LENGTH:I = 0x20

.field private static final MAX_SECTION_LENGTH:I = 0x1002

.field private static final SECTION_HEADER_LENGTH:I = 0x3


# instance fields
.field private bytesRead:I

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

.field private final sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private sectionSyntaxIndicator:Z

.field private totalSectionLength:I

.field private waitingForPayloadStart:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    .line 47
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 6

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 70
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    .line 78
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    .line 82
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lez p2, :cond_9

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    const/4 v3, 0x3

    if-ge p2, v3, :cond_6

    if-nez p2, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    .line 88
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v4, 0xff

    if-ne p2, v4, :cond_4

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void

    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 98
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v4, v5, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    if-ne v4, v3, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 101
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 102
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 103
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 104
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 105
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_5

    move v5, v0

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v4

    add-int/2addr p2, v3

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 109
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    if-ge p2, v3, :cond_3

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 112
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/16 v3, 0x1002

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 113
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    goto/16 :goto_2

    .line 118
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 120
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    if-ne v3, p2, :cond_3

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionSyntaxIndicator:Z

    if-eqz v3, :cond_8

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 125
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    invoke-static {p2, v1, v3, v2}, Lcom/google/android/exoplayer2/util/Util;->crc32([BIII)I

    move-result p2

    if-eqz p2, :cond_7

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void

    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->totalSectionLength:I

    add-int/lit8 v3, v3, -0x4

    .line 130
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 133
    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 135
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->sectionData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 136
    invoke-interface {p2, v3}, Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->bytesRead:I

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->reader:Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;

    .line 55
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;->init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;->waitingForPayloadStart:Z

    return-void
.end method
