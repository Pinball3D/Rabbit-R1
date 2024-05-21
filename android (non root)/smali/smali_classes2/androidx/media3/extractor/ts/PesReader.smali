.class public final Landroidx/media3/extractor/ts/PesReader;
.super Ljava/lang/Object;
.source "PesReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/TsPayloadReader;


# static fields
.field private static final HEADER_SIZE:I = 0x9

.field private static final MAX_HEADER_EXTENSION_SIZE:I = 0xa

.field private static final PES_SCRATCH_SIZE:I = 0xa

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_BODY:I = 0x3

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_HEADER_EXTENSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PesReader"


# instance fields
.field private bytesRead:I

.field private dataAlignmentIndicator:Z

.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private payloadSize:I

.field private final pesScratch:Landroidx/media3/common/util/ParsableBitArray;

.field private ptsFlag:Z

.field private final reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field private seenFirstDts:Z

.field private state:I

.field private timeUs:J

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 65
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 3

    .line 177
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 181
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    .line 183
    invoke-virtual {p1, p2, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    :goto_0
    iget p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    if-ne p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseHeader()Z
    .locals 7

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v2, 0x18

    .line 193
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const-string v2, "PesReader"

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected start code prefix: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    .line 200
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v5, 0x10

    .line 201
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x5

    .line 202
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 203
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x2

    .line 204
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 205
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 206
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x6

    .line 209
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 210
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iput v1, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    if-nez v0, :cond_1

    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x3

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-gez v0, :cond_2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Found negative packet payload size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    :cond_2
    :goto_0
    return v4
.end method

.method private parseHeaderExtension()V
    .locals 10
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "timestampAdjuster"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    .line 230
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    .line 233
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x3

    .line 234
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x1

    .line 235
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v7, 0xf

    .line 236
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 237
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 238
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 239
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 241
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 242
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 243
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 244
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 245
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 246
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 247
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 253
    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 256
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    return-void
.end method


# virtual methods
.method public final consume(Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 90
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected start indicator: expected "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " more bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 110
    invoke-interface {v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    goto :goto_0

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 99
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_3
    :goto_0
    invoke-direct {p0, v4}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    .line 118
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    if-eqz v0, :cond_c

    const/4 v5, 0x0

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    .line 140
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-ne v6, v1, :cond_5

    goto :goto_2

    :cond_5
    sub-int v5, v0, v6

    :goto_2
    if-lez v5, :cond_6

    sub-int/2addr v0, v5

    .line 144
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_6
    iget-object v5, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 146
    invoke-interface {v5, p1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-eq v5, v1, :cond_4

    sub-int/2addr v5, v0

    iput v5, p0, Landroidx/media3/extractor/ts/PesReader;->payloadSize:I

    if-nez v5, :cond_4

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 150
    invoke-interface {v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    .line 151
    invoke-direct {p0, v4}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    .line 156
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_8
    const/16 v0, 0xa

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 129
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v6, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 131
    iget-object v6, v6, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v6, v0}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget v6, p0, Landroidx/media3/extractor/ts/PesReader;->extendedHeaderLength:I

    .line 132
    invoke-direct {p0, p1, v0, v6}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeaderExtension()V

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->dataAlignmentIndicator:Z

    if-eqz v0, :cond_9

    const/4 v5, 0x4

    :cond_9
    or-int/2addr p2, v5

    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iget-wide v5, p0, Landroidx/media3/extractor/ts/PesReader;->timeUs:J

    .line 135
    invoke-interface {v0, v5, v6, p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    .line 136
    invoke-direct {p0, v2}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Landroidx/media3/extractor/ts/PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 124
    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/16 v6, 0x9

    invoke-direct {p0, p1, v0, v6}, Landroidx/media3/extractor/ts/PesReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PesReader;->parseHeader()Z

    move-result v0

    if-eqz v0, :cond_b

    move v5, v3

    :cond_b
    invoke-direct {p0, v5}, Landroidx/media3/extractor/ts/PesReader;->setState(I)V

    goto/16 :goto_1

    .line 121
    :cond_c
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 75
    invoke-interface {p0, p2, p3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final seek()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/PesReader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PesReader;->seenFirstDts:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/PesReader;->reader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 85
    invoke-interface {p0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
