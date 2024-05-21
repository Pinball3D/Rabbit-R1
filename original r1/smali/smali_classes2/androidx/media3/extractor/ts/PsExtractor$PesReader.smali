.class final Landroidx/media3/extractor/ts/PsExtractor$PesReader;
.super Ljava/lang/Object;
.source "PsExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/PsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PesReader"
.end annotation


# static fields
.field private static final PES_SCRATCH_SIZE:I = 0x40


# instance fields
.field private dtsFlag:Z

.field private extendedHeaderLength:I

.field private final pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

.field private final pesScratch:Landroidx/media3/common/util/ParsableBitArray;

.field private ptsFlag:Z

.field private seenFirstDts:Z

.field private timeUs:J

.field private final timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iput-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 329
    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    return-void
.end method

.method private parseHeader()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    .line 368
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 369
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 370
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x6

    .line 373
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 374
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    return-void
.end method

.method private parseHeaderExtension()V
    .locals 10

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->ptsFlag:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    .line 380
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x3

    .line 381
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x1

    .line 382
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v7, 0xf

    .line 383
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 384
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 385
    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 386
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->dtsFlag:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 388
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 389
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 390
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 391
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 392
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 393
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 394
    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v2, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 400
    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 403
    invoke-virtual {v0, v3, v4}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    :cond_1
    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 351
    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 352
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 353
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->parseHeader()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 354
    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    iget v1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->extendedHeaderLength:I

    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesScratch:Landroidx/media3/common/util/ParsableBitArray;

    .line 355
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    .line 356
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->parseHeaderExtension()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iget-wide v1, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->timeUs:J

    const/4 v3, 0x4

    .line 357
    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetStarted(JI)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 358
    invoke-interface {v0, p1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 360
    invoke-interface {p0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->packetFinished()V

    return-void
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->seenFirstDts:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->pesPayloadReader:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 341
    invoke-interface {p0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->seek()V

    return-void
.end method
