.class final Landroidx/media3/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x80


# instance fields
.field private final allowNonIdrKeyframes:Z

.field private final bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

.field private buffer:[B

.field private bufferLength:I

.field private final detectAccessUnits:Z

.field private isFilling:Z

.field private nalUnitStartPosition:J

.field private nalUnitTimeUs:J

.field private nalUnitType:I

.field private final output:Landroidx/media3/extractor/TrackOutput;

.field private final pps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/container/NalUnitUtil$PpsData;",
            ">;"
        }
    .end annotation
.end field

.field private previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private readingSample:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field private final sps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/container/NalUnitUtil$SpsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;ZZ)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    .line 294
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 295
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 296
    new-instance p1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroidx/media3/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 297
    new-instance p1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;-><init>(Landroidx/media3/extractor/ts/H264Reader$1;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 299
    new-instance p1, Landroidx/media3/container/ParsableNalUnitBitArray;

    iget-object p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, p3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 300
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->reset()V

    return-void
.end method

.method private outputSample(I)V
    .locals 8

    iget-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-wide v6, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v6, 0x0

    move v5, p1

    .line 500
    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method


# virtual methods
.method public appendToNalUnit([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    .line 352
    array-length v4, v3

    iget v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/2addr v5, v7

    .line 353
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    :cond_1
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    iget v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    move-object/from16 v5, p1

    .line 355
    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->buffer:[B

    const/4 v4, 0x0

    .line 358
    invoke-virtual {v2, v3, v4, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->reset([BII)V

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    const/16 v2, 0x8

    .line 359
    invoke-virtual {v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 362
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 363
    invoke-virtual {v1, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    const/4 v2, 0x5

    .line 364
    invoke-virtual {v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 368
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 371
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 372
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 375
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-nez v1, :cond_5

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 379
    invoke-virtual {v0, v11}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setSliceType(I)V

    return-void

    :cond_5
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 382
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 385
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 386
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void

    :cond_7
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 391
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/NalUnitUtil$PpsData;

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 392
    iget v5, v1, Landroidx/media3/container/NalUnitUtil$PpsData;->seqParameterSetId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 393
    iget-boolean v3, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 394
    invoke-virtual {v3, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    :cond_8
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 397
    invoke-virtual {v3, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_9
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 399
    iget v5, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    :cond_a
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 405
    iget v5, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->frameNumLength:I

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 406
    iget-boolean v3, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 407
    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    :cond_b
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 410
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 412
    invoke-virtual {v6, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    :cond_c
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 415
    invoke-virtual {v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    move v14, v3

    move v15, v5

    move/from16 v16, v6

    goto :goto_1

    :cond_d
    move v14, v3

    move v15, v4

    goto :goto_0

    :cond_e
    move v14, v4

    move v15, v14

    :goto_0
    move/from16 v16, v15

    :goto_1
    iget v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    if-ne v3, v2, :cond_f

    move/from16 v17, v5

    goto :goto_2

    :cond_f
    move/from16 v17, v4

    :goto_2
    if-eqz v17, :cond_11

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 422
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 425
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    move/from16 v18, v4

    .line 431
    :goto_3
    iget v2, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-nez v2, :cond_15

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 432
    iget v3, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadBits(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 435
    iget v3, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 436
    iget-boolean v1, v1, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 437
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 440
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v4

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    move/from16 v20, v4

    goto :goto_4

    .line 442
    :cond_15
    iget v2, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->picOrderCountType:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Landroidx/media3/container/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 443
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 446
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v2

    .line 447
    iget-boolean v1, v1, Landroidx/media3/container/NalUnitUtil$PpsData;->bottomFieldPicOrderInFramePresentFlag:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 448
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->canReadExpGolombCodedNum()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bitArray:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 451
    invoke-virtual {v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_6

    :cond_18
    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    move/from16 v22, v20

    goto :goto_6

    :cond_19
    move/from16 v19, v4

    move/from16 v20, v19

    :goto_4
    move/from16 v21, v20

    :goto_5
    move/from16 v22, v21

    :goto_6
    iget-object v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 454
    invoke-virtual/range {v8 .. v22}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->setAll(Landroidx/media3/container/NalUnitUtil$SpsData;IIIIZZZZIIIII)V

    iput-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    return-void
.end method

.method public endNalUnit(JIZZ)Z
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 475
    invoke-static {v0, v1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->access$100(Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean p4, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    if-eqz p4, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    .line 479
    invoke-direct {p0, p3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->outputSample(I)V

    :cond_1
    iget-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->samplePosition:J

    iget-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleTimeUs:J

    iput-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    :cond_2
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 487
    invoke-virtual {p1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->isISlice()Z

    move-result p5

    :cond_3
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    iget p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    if-eqz p5, :cond_5

    if-ne p2, v3, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    or-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sampleIsKeyframe:Z

    return p1
.end method

.method public needsSpsPps()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    return p0
.end method

.method public putPps(Landroidx/media3/container/NalUnitUtil$PpsData;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->pps:Landroid/util/SparseArray;

    .line 312
    iget v0, p1, Landroidx/media3/container/NalUnitUtil$PpsData;->picParameterSetId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public putSps(Landroidx/media3/container/NalUnitUtil$SpsData;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sps:Landroid/util/SparseArray;

    .line 308
    iget v0, p1, Landroidx/media3/container/NalUnitUtil$SpsData;->seqParameterSetId:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->readingSample:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 318
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    return-void
.end method

.method public startNalUnit(JIJ)V
    .locals 0

    iput p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitType:I

    iput-wide p4, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitTimeUs:J

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->nalUnitStartPosition:J

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->allowNonIdrKeyframes:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->detectAccessUnits:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->previousSliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->sliceHeader:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 334
    invoke-virtual {p1}, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->clear()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->bufferLength:I

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->isFilling:Z

    :cond_2
    return-void
.end method
