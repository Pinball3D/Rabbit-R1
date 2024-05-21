.class public final Landroidx/media3/extractor/ts/AdtsReader;
.super Ljava/lang/Object;
.source "AdtsReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final CRC_SIZE:I = 0x2

.field private static final HEADER_SIZE:I = 0x5

.field private static final ID3_HEADER_SIZE:I = 0xa

.field private static final ID3_IDENTIFIER:[B

.field private static final ID3_SIZE_OFFSET:I = 0x6

.field private static final MATCH_STATE_FF:I = 0x200

.field private static final MATCH_STATE_I:I = 0x300

.field private static final MATCH_STATE_ID:I = 0x400

.field private static final MATCH_STATE_START:I = 0x100

.field private static final MATCH_STATE_VALUE_SHIFT:I = 0x8

.field private static final STATE_CHECKING_ADTS_HEADER:I = 0x1

.field private static final STATE_FINDING_SAMPLE:I = 0x0

.field private static final STATE_READING_ADTS_HEADER:I = 0x3

.field private static final STATE_READING_ID3_HEADER:I = 0x2

.field private static final STATE_READING_SAMPLE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AdtsReader"

.field private static final VERSION_UNSET:I = -0x1


# instance fields
.field private final adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

.field private bytesRead:I

.field private currentFrameVersion:I

.field private currentOutput:Landroidx/media3/extractor/TrackOutput;

.field private currentSampleDuration:J

.field private final exposeId3:Z

.field private firstFrameSampleRateIndex:I

.field private firstFrameVersion:I

.field private formatId:Ljava/lang/String;

.field private foundFirstFrame:Z

.field private hasCrc:Z

.field private hasOutputFormat:Z

.field private final id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private id3Output:Landroidx/media3/extractor/TrackOutput;

.field private final language:Ljava/lang/String;

.field private matchState:I

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 116
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v1, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 117
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->exposeId3:Z

    iput-object p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    return-void
.end method

.method private assertTracksCreated()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "currentOutput",
            "id3Output"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 550
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    .line 551
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    .line 552
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkAdtsHeader(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    .line 335
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 340
    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    aget-byte p1, v1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    .line 342
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x4

    .line 343
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 347
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->resetSync()V

    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    iget v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 356
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    return-void
.end method

.method private checkSyncPositionValid(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 382
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 383
    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/AdtsReader;->tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v3, 0x4

    .line 388
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 389
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameVersion:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    :cond_1
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 396
    iget-object v4, v4, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v1}, Landroidx/media3/extractor/ts/AdtsReader;->tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 400
    invoke-virtual {v4, v6}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 401
    invoke-virtual {v4, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget v7, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    if-eq v4, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    .line 405
    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :cond_4
    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 409
    iget-object v4, v4, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v4, v3}, Landroidx/media3/extractor/ts/AdtsReader;->tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v4, 0xe

    .line 413
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-object v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v4, 0xd

    .line 414
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_6

    return v2

    .line 421
    :cond_6
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 422
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    add-int/2addr p2, v3

    if-lt p2, p1, :cond_7

    return v1

    .line 428
    :cond_7
    aget-byte v3, v4, p2

    if-ne v3, v5, :cond_a

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_8

    return v1

    .line 433
    :cond_8
    aget-byte p1, v4, p2

    invoke-direct {p0, v5, p1}, Landroidx/media3/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result p0

    if-eqz p0, :cond_9

    aget-byte p0, v4, p2

    and-int/lit8 p0, p0, 0x8

    shr-int/lit8 p0, p0, 0x3

    if-ne p0, v0, :cond_9

    goto :goto_0

    :cond_9
    move v1, v2

    :goto_0
    return v1

    :cond_a
    const/16 p0, 0x49

    if-eq v3, p0, :cond_b

    return v2

    :cond_b
    add-int/lit8 p0, p2, 0x1

    if-ne p0, p1, :cond_c

    return v1

    .line 443
    :cond_c
    aget-byte p0, v4, p0

    const/16 v0, 0x44

    if-eq p0, v0, :cond_d

    return v2

    :cond_d
    add-int/2addr p2, v6

    if-ne p2, p1, :cond_e

    return v1

    .line 450
    :cond_e
    aget-byte p0, v4, p2

    const/16 p1, 0x33

    if-ne p0, p1, :cond_f

    goto :goto_1

    :cond_f
    move v1, v2

    :goto_1
    return v1
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 222
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    .line 223
    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    iget p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private findNextSample(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 9

    .line 282
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 283
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 284
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    .line 286
    aget-byte v4, v0, v1

    and-int/lit16 v5, v4, 0xff

    iget v6, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    const/16 v7, 0x200

    if-ne v6, v7, :cond_3

    int-to-byte v6, v5

    const/4 v8, -0x1

    .line 287
    invoke-direct {p0, v8, v6}, Landroidx/media3/extractor/ts/AdtsReader;->isAdtsSyncBytes(BB)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v6, :cond_0

    add-int/lit8 v6, v1, -0x1

    .line 289
    invoke-direct {p0, p1, v6}, Landroidx/media3/extractor/ts/AdtsReader;->checkSyncPositionValid(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    and-int/lit8 v0, v4, 0x8

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentFrameVersion:I

    const/4 v0, 0x1

    and-int/lit8 v1, v4, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    if-nez v0, :cond_2

    .line 293
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setCheckingAdtsHeaderState()V

    goto :goto_2

    .line 295
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingAdtsHeaderState()V

    .line 297
    :goto_2
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_3
    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    or-int/2addr v5, v4

    const/16 v6, 0x149

    if-eq v5, v6, :cond_7

    const/16 v6, 0x1ff

    if-eq v5, v6, :cond_6

    const/16 v6, 0x344

    if-eq v5, v6, :cond_5

    const/16 v6, 0x433

    if-eq v5, v6, :cond_4

    const/16 v5, 0x100

    if-eq v4, v5, :cond_8

    iput v5, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_0

    .line 313
    :cond_4
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingId3HeaderState()V

    .line 314
    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    iput v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    :cond_6
    iput v7, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    goto :goto_3

    :cond_7
    const/16 v1, 0x300

    iput v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    :cond_8
    :goto_3
    move v1, v3

    goto :goto_0

    .line 326
    :cond_9
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private isAdtsSyncBytes(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p2, 0xff

    or-int/2addr p0, p1

    .line 456
    invoke-static {p0}, Landroidx/media3/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result p0

    return p0
.end method

.method public static isAdtsSyncWord(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseAdtsHeader()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    .line 480
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    .line 483
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    if-eq v0, v1, :cond_0

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Detected audio object type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but assuming AAC LC."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdtsReader"

    invoke-static {v3, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v3, 0x5

    .line 498
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v3, 0x3

    .line 499
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->firstFrameSampleRateIndex:I

    .line 502
    invoke-static {v1, v3, v0}, Landroidx/media3/extractor/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v1

    .line 505
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 507
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    const-string v4, "audio/mp4a-latm"

    .line 508
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 509
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v4, v1, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    .line 510
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v1, v1, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    .line 511
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 512
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->language:Ljava/lang/String;

    .line 513
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 517
    iget v1, v0, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v3, v1

    const-wide/32 v5, 0x3d090000

    div-long/2addr v5, v3

    iput-wide v5, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 518
    invoke-interface {v1, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasOutputFormat:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0xa

    .line 521
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    .line 524
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0xd

    .line 525
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x7

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v2, :cond_2

    add-int/lit8 v1, v0, -0x9

    :cond_2
    move v7, v1

    iget-object v3, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-wide v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    const/4 v6, 0x0

    move-object v2, p0

    .line 530
    invoke-direct/range {v2 .. v7}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media3/extractor/TrackOutput;JII)V

    return-void
.end method

.method private parseId3Header()V
    .locals 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "id3Output"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0xa

    .line 471
    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x6

    .line 472
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 474
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    move-object v3, p0

    .line 473
    invoke-direct/range {v3 .. v8}, Landroidx/media3/extractor/ts/AdtsReader;->setReadingSampleState(Landroidx/media3/extractor/TrackOutput;JII)V

    return-void
.end method

.method private readSample(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentOutput"
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    .line 537
    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iget v4, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    if-ne p1, v4, :cond_1

    iget-wide v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 541
    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 544
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    :cond_1
    return-void
.end method

.method private resetSync()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->foundFirstFrame:Z

    .line 209
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->setFindingSampleState()V

    return-void
.end method

.method private setCheckingAdtsHeaderState()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private setFindingSampleState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    const/16 v0, 0x100

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->matchState:I

    return-void
.end method

.method private setReadingAdtsHeaderState()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    return-void
.end method

.method private setReadingId3HeaderState()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    sget-object v0, Landroidx/media3/extractor/ts/AdtsReader;->ID3_IDENTIFIER:[B

    .line 241
    array-length v0, v0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    iget-object p0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 243
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private setReadingSampleState(Landroidx/media3/extractor/TrackOutput;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    iput p4, p0, Landroidx/media3/extractor/ts/AdtsReader;->bytesRead:I

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    iput-wide p2, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentSampleDuration:J

    iput p5, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleSize:I

    return-void
.end method

.method private tryRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 1

    .line 461
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p0

    const/4 v0, 0x0

    if-ge p0, p3, :cond_0

    return v0

    .line 464
    :cond_0
    invoke-virtual {p1, p2, v0, p3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->assertTracksCreated()V

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->state:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 186
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/AdtsReader;->readSample(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->hasCrc:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    :goto_1
    iget-object v1, p0, Landroidx/media3/extractor/ts/AdtsReader;->adtsScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 181
    iget-object v1, v1, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {p0, p1, v1, v0}, Landroidx/media3/extractor/ts/AdtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->parseAdtsHeader()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3HeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 172
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/ts/AdtsReader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->parseId3Header()V

    goto :goto_0

    .line 177
    :cond_5
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/AdtsReader;->checkAdtsHeader(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    .line 169
    :cond_6
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/AdtsReader;->findNextSample(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 139
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 140
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->formatId:Ljava/lang/String;

    .line 141
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->output:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->currentOutput:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->exposeId3:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 145
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    .line 146
    new-instance p0, Landroidx/media3/common/Format$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 148
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    const-string p2, "application/id3"

    .line 149
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    .line 146
    invoke-interface {p1, p0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    goto :goto_0

    .line 152
    :cond_0
    new-instance p1, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->id3Output:Landroidx/media3/extractor/TrackOutput;

    :goto_0
    return-void
.end method

.method public getSampleDurationUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->sampleDurationUs:J

    return-wide v0
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/AdtsReader;->timeUs:J

    .line 134
    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsReader;->resetSync()V

    return-void
.end method
