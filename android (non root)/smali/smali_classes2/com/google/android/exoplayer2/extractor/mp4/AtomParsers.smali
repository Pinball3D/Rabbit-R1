.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source "AtomParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;,
        Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;
    }
.end annotation


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I = 0x636c6370

.field private static final TYPE_mdta:I = 0x6d647461

.field private static final TYPE_meta:I = 0x6d657461

.field private static final TYPE_nclc:I = 0x6e636c63

.field private static final TYPE_nclx:I = 0x6e636c78

.field private static final TYPE_sbtl:I = 0x7362746c

.field private static final TYPE_soun:I = 0x736f756e

.field private static final TYPE_subt:I = 0x73756274

.field private static final TYPE_text:I = 0x74657874

.field private static final TYPE_vide:I = 0x76696465

.field private static final opusMagic:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OpusHead"

    .line 100
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateHdrStaticInfo()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 1345
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 7

    .line 1879
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1880
    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    .line 1881
    array-length v5, p0

    sub-int/2addr v5, v2

    .line 1882
    invoke-static {v5, v3, v0}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v0

    .line 1883
    aget-wide v5, p0, v3

    cmp-long v2, v5, p3

    if-gtz v2, :cond_0

    aget-wide v4, p0, v4

    cmp-long p3, p3, v4

    if-gez p3, :cond_0

    aget-wide p3, p0, v0

    cmp-long p0, p3, p5

    if-gez p0, :cond_0

    cmp-long p0, p5, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private static findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1665
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lt v0, p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v4, 0x0

    .line 1666
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    :goto_1
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_3

    .line 1668
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1669
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-lez v3, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    const-string v5, "childAtomSize must be positive"

    .line 1670
    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1671
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-ne v4, p1, :cond_2

    return v0

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static getTrackTypeForHdlr(I)I
    .locals 1

    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const v0, 0x74657874

    if-eq p0, v0, :cond_4

    const v0, 0x7362746c

    if-eq p0, v0, :cond_4

    const v0, 0x73756274

    if-eq p0, v0, :cond_4

    const v0, 0x636c6370

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x6d657461

    if-ne p0, v0, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public static maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    .line 252
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    const/4 v1, 0x4

    .line 257
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 261
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    .line 1413
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v7, 0x6

    if-eqz p6, :cond_0

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    .line 1418
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_0
    const/16 v9, 0x8

    .line 1420
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/16 v13, 0x10

    if-eqz v9, :cond_3

    if-ne v9, v12, :cond_1

    goto :goto_1

    :cond_1
    if-ne v9, v11, :cond_2

    .line 1443
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v7, v13

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    const/16 v13, 0x14

    .line 1450
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v15, 0x0

    goto :goto_2

    :cond_2
    return-void

    .line 1431
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v14

    .line 1432
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v7

    .line 1436
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    sub-int/2addr v15, v10

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v15

    if-ne v9, v12, :cond_4

    .line 1440
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_4
    move v9, v14

    .line 1456
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v13

    const v14, 0x656e6361

    move/from16 v11, p1

    if-ne v11, v14, :cond_7

    .line 1460
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 1462
    iget-object v11, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    .line 1466
    :cond_5
    iget-object v12, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v5

    .line 1467
    :goto_3
    iget-object v12, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v14, v12, p9

    .line 1469
    :cond_6
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_7
    const v12, 0x61632d33

    const v14, 0x616c6163

    if-ne v11, v12, :cond_8

    const-string v11, "audio/ac3"

    :goto_4
    move-object/from16 v19, v11

    const/4 v11, -0x1

    goto/16 :goto_8

    :cond_8
    const v12, 0x65632d33

    if-ne v11, v12, :cond_9

    const-string v11, "audio/eac3"

    goto :goto_4

    :cond_9
    const v12, 0x61632d34

    if-ne v11, v12, :cond_a

    const-string v11, "audio/ac4"

    goto :goto_4

    :cond_a
    const v12, 0x64747363

    if-ne v11, v12, :cond_b

    const-string v11, "audio/vnd.dts"

    goto :goto_4

    :cond_b
    const v12, 0x64747368

    if-eq v11, v12, :cond_1e

    const v12, 0x6474736c

    if-ne v11, v12, :cond_c

    goto/16 :goto_7

    :cond_c
    const v12, 0x64747365

    if-ne v11, v12, :cond_d

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_4

    :cond_d
    const v12, 0x64747378

    if-ne v11, v12, :cond_e

    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    goto :goto_4

    :cond_e
    const v12, 0x73616d72

    if-ne v11, v12, :cond_f

    const-string v11, "audio/3gpp"

    goto :goto_4

    :cond_f
    const v12, 0x73617762

    if-ne v11, v12, :cond_10

    const-string v11, "audio/amr-wb"

    goto :goto_4

    :cond_10
    const v12, 0x6c70636d

    const-string v19, "audio/raw"

    if-eq v11, v12, :cond_1d

    const v12, 0x736f7774

    if-ne v11, v12, :cond_11

    goto :goto_6

    :cond_11
    const v12, 0x74776f73

    if-ne v11, v12, :cond_12

    const/high16 v11, 0x10000000

    goto :goto_8

    :cond_12
    const v12, 0x2e6d7032

    if-eq v11, v12, :cond_1c

    const v12, 0x2e6d7033

    if-ne v11, v12, :cond_13

    goto :goto_5

    :cond_13
    const v12, 0x6d686131

    if-ne v11, v12, :cond_14

    const-string v11, "audio/mha1"

    goto :goto_4

    :cond_14
    const v12, 0x6d686d31

    if-ne v11, v12, :cond_15

    const-string v11, "audio/mhm1"

    goto :goto_4

    :cond_15
    if-ne v11, v14, :cond_16

    const-string v11, "audio/alac"

    goto :goto_4

    :cond_16
    const v12, 0x616c6177

    if-ne v11, v12, :cond_17

    const-string v11, "audio/g711-alaw"

    goto/16 :goto_4

    :cond_17
    const v12, 0x756c6177

    if-ne v11, v12, :cond_18

    const-string v11, "audio/g711-mlaw"

    goto/16 :goto_4

    :cond_18
    const v12, 0x4f707573

    if-ne v11, v12, :cond_19

    const-string v11, "audio/opus"

    goto/16 :goto_4

    :cond_19
    const v12, 0x664c6143

    if-ne v11, v12, :cond_1a

    const-string v11, "audio/flac"

    goto/16 :goto_4

    :cond_1a
    const v12, 0x6d6c7061

    if-ne v11, v12, :cond_1b

    const-string v11, "audio/true-hd"

    goto/16 :goto_4

    :cond_1b
    const/4 v11, -0x1

    const/16 v19, 0x0

    goto :goto_8

    :cond_1c
    :goto_5
    const-string v11, "audio/mpeg"

    goto/16 :goto_4

    :cond_1d
    :goto_6
    const/4 v11, 0x2

    goto :goto_8

    :cond_1e
    :goto_7
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_4

    :goto_8
    move-object/from16 v12, v19

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_9
    sub-int v10, v13, v1

    if-ge v10, v2, :cond_30

    .line 1524
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    if-lez v10, :cond_1f

    const/4 v14, 0x1

    goto :goto_a

    :cond_1f
    const/4 v14, 0x0

    :goto_a
    const-string v8, "childAtomSize must be positive"

    .line 1526
    invoke-static {v14, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1527
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    const v14, 0x6d686143

    if-ne v8, v14, :cond_20

    add-int/lit8 v8, v10, -0xd

    .line 1534
    new-array v14, v8, [B

    add-int/lit8 v1, v13, 0xd

    .line 1535
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    .line 1536
    invoke-virtual {v0, v14, v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1537
    invoke-static {v14}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    :goto_b
    const/4 v8, -0x1

    :goto_c
    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    :goto_d
    const/16 v18, 0x0

    goto/16 :goto_13

    :cond_20
    const v1, 0x65736473

    if-eq v8, v1, :cond_2c

    if-eqz p6, :cond_21

    const v14, 0x77617665

    if-ne v8, v14, :cond_21

    goto/16 :goto_11

    :cond_21
    const v1, 0x64616333

    if-ne v8, v1, :cond_22

    add-int/lit8 v1, v13, 0x8

    .line 1561
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1563
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_e
    const v2, 0x616c6163

    const/4 v8, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    goto/16 :goto_10

    :cond_22
    const v1, 0x64656333

    if-ne v8, v1, :cond_23

    add-int/lit8 v1, v13, 0x8

    .line 1565
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1567
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_e

    :cond_23
    const v1, 0x64616334

    if-ne v8, v1, :cond_24

    add-int/lit8 v1, v13, 0x8

    .line 1569
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1571
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v5}, Lcom/google/android/exoplayer2/audio/Ac4Util;->parseAc4AnnexEFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_e

    :cond_24
    const v1, 0x646d6c70

    if-ne v8, v1, :cond_26

    if-lez v15, :cond_25

    move v7, v15

    const/4 v8, -0x1

    const/4 v9, 0x2

    goto :goto_c

    .line 1574
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    invoke-static {v0, v14}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_26
    const/4 v14, 0x0

    const v1, 0x64647473

    if-eq v8, v1, :cond_2b

    const v1, 0x75647473

    if-ne v8, v1, :cond_27

    goto/16 :goto_f

    :cond_27
    const v1, 0x644f7073

    if-ne v8, v1, :cond_28

    add-int/lit8 v1, v10, -0x8

    sget-object v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->opusMagic:[B

    .line 1597
    array-length v14, v8

    add-int/2addr v14, v1

    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v14

    add-int/lit8 v2, v13, 0x8

    .line 1598
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1599
    array-length v2, v8

    invoke-virtual {v0, v14, v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1600
    invoke-static {v14}, Lcom/google/android/exoplayer2/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v21

    goto/16 :goto_b

    :cond_28
    const v1, 0x64664c61

    if-ne v8, v1, :cond_29

    add-int/lit8 v1, v10, -0xc

    add-int/lit8 v2, v10, -0x8

    .line 1603
    new-array v2, v2, [B

    const/16 v8, 0x66

    const/4 v14, 0x0

    .line 1604
    aput-byte v8, v2, v14

    const/16 v8, 0x4c

    const/4 v14, 0x1

    .line 1605
    aput-byte v8, v2, v14

    const/16 v8, 0x61

    const/16 v17, 0x2

    .line 1606
    aput-byte v8, v2, v17

    const/4 v8, 0x3

    const/16 v18, 0x43

    .line 1607
    aput-byte v18, v2, v8

    add-int/lit8 v8, v13, 0xc

    .line 1608
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x4

    .line 1609
    invoke-virtual {v0, v2, v8, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1610
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move/from16 v16, v8

    const/4 v8, -0x1

    goto/16 :goto_d

    :cond_29
    const v2, 0x616c6163

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    if-ne v8, v2, :cond_2a

    add-int/lit8 v1, v10, -0xc

    .line 1613
    new-array v7, v1, [B

    add-int/lit8 v8, v13, 0xc

    .line 1614
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v8, 0x0

    .line 1615
    invoke-virtual {v0, v7, v8, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1619
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAlacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v1

    .line 1620
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1621
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1622
    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    move/from16 v18, v8

    move v7, v9

    const/4 v8, -0x1

    move v9, v1

    goto :goto_13

    :cond_2a
    const/4 v8, 0x0

    goto :goto_10

    :cond_2b
    :goto_f
    const v2, 0x616c6163

    const/4 v8, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    .line 1584
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1586
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1587
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1588
    invoke-virtual {v1, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1589
    invoke-virtual {v1, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1590
    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1591
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1592
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :goto_10
    move/from16 v18, v8

    const/4 v8, -0x1

    goto :goto_13

    :cond_2c
    :goto_11
    const v2, 0x616c6163

    const/4 v14, 0x1

    const/16 v16, 0x4

    const/16 v17, 0x2

    const/16 v18, 0x0

    if-ne v8, v1, :cond_2d

    move v1, v13

    goto :goto_12

    .line 1543
    :cond_2d
    invoke-static {v0, v1, v13, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findBoxPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;III)I

    move-result v1

    :goto_12
    const/4 v8, -0x1

    if-eq v1, v8, :cond_2f

    .line 1545
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v19

    .line 1546
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v12

    .line 1547
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v2, "audio/mp4a-latm"

    .line 1549
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1552
    invoke-static {v1}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v2

    .line 1553
    iget v7, v2, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 1554
    iget v9, v2, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 1555
    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    move-object/from16 v20, v2

    .line 1557
    :cond_2e
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v21

    :cond_2f
    :goto_13
    add-int/2addr v13, v10

    move/from16 v1, p2

    move/from16 v2, p3

    const v14, 0x616c6163

    goto/16 :goto_9

    .line 1627
    :cond_30
    iget-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_32

    if-eqz v12, :cond_32

    .line 1628
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1630
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1631
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v20

    .line 1632
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1633
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1634
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1635
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v21

    .line 1636
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1637
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1638
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    if-eqz v19, :cond_31

    .line 1642
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1643
    invoke-static/range {v19 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1646
    :cond_31
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_32
    return-void
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v1

    move v7, v2

    move-object v4, v3

    move-object v6, v4

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1770
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v8

    .line 1772
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    const v10, 0x66726d61

    if-ne v9, v10, :cond_0

    .line 1774
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const v10, 0x7363686d

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 1776
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1778
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const v10, 0x73636869

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 1786
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    .line 1787
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 1788
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    .line 1789
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    move p2, p1

    goto :goto_3

    :cond_6
    move p2, v2

    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 1790
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    if-eq v5, v1, :cond_7

    move p2, p1

    goto :goto_4

    :cond_7
    move p2, v2

    :goto_4
    const-string v0, "schi atom is mandatory"

    .line 1791
    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1795
    invoke-static {p0, v5, v7, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_8

    move v2, p1

    :cond_8
    const-string p1, "tenc atom is mandatory"

    .line 1797
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1798
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    const v0, 0x656c7374

    .line 1369
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1373
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 1374
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1375
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 1376
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v0

    .line 1377
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    .line 1378
    new-array v2, v1, [J

    .line 1379
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 1382
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 1383
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 1384
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 1389
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1387
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1391
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;
    .locals 12

    add-int/lit8 p1, p1, 0xc

    .line 1682
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 p1, 0x1

    .line 1684
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1685
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    const/4 v0, 0x2

    .line 1686
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1688
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1690
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1693
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1696
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1700
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1701
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    .line 1704
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 1705
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    .line 1706
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    .line 1707
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    .line 1708
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 1716
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1717
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v3

    .line 1721
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1722
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p1

    .line 1723
    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 1724
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1727
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    const-wide/16 v8, -0x1

    if-lez p1, :cond_4

    move-wide v10, v3

    goto :goto_0

    :cond_4
    move-wide v10, v8

    :goto_0
    cmp-long p1, v0, v6

    if-lez p1, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    move-object v1, p0

    move-object v3, v5

    move-wide v4, v10

    .line 1731
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 1709
    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    .line 1867
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1870
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 1

    const/16 v0, 0x10

    .line 874
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 875
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    return p0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    const/16 v0, 0x8

    .line 752
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 755
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 757
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_1
    return-object p0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 901
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 902
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 903
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 904
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 905
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 906
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 907
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 913
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseMdtaFromMeta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 10

    const v0, 0x68646c72    # 4.3148E24f

    .line 193
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    const v1, 0x6b657973

    .line 194
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    const v2, 0x696c7374

    .line 195
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    .line 196
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 199
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_3

    .line 205
    :cond_0
    iget-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0xc

    .line 206
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 207
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 208
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v1, :cond_1

    .line 210
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    const/4 v7, 0x4

    .line 211
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v6, v5

    .line 213
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 217
    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 218
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 220
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    if-le v4, v5, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v4

    .line 222
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v6

    .line 223
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2

    if-ge v7, v1, :cond_2

    .line 225
    aget-object v7, v3, v7

    add-int v8, v4, v6

    .line 228
    invoke-static {p0, v8, v7}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseMdtaMetadataEntryFromIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 230
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 233
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v4, v6

    .line 235
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    .line 237
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_6
    :goto_3
    return-object v2
.end method

.method private static parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 0

    add-int/lit8 p2, p2, 0x10

    .line 1350
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x6d657474

    if-ne p1, p2, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    .line 1353
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1355
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    :cond_0
    return-void
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    .line 801
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 802
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 803
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 804
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 805
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 1395
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1396
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p1

    .line 1397
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1854
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1855
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1856
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x70726f6a

    if-ne v2, v3, :cond_0

    .line 1858
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1742
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1744
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1745
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize must be positive"

    .line 1746
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x73696e66

    if-ne v2, v3, :cond_1

    .line 1751
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1809
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1810
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 1811
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const v4, 0x74656e63

    if-ne v3, v4, :cond_3

    .line 1813
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 1814
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1815
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1819
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v8, v0

    move v9, v8

    goto :goto_1

    .line 1821
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1825
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-ne p1, p2, :cond_1

    move v4, p2

    goto :goto_2

    :cond_1
    move v4, v0

    .line 1826
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1828
    invoke-virtual {p0, v7, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1831
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    .line 1832
    new-array v2, p1, [B

    .line 1833
    invoke-virtual {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    :cond_2
    move-object v10, v2

    .line 1835
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    const/16 v0, 0xc

    .line 770
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 771
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, p1, :cond_4

    .line 772
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 773
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    .line 774
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    const v5, 0x73617574

    if-ne v4, v5, :cond_3

    const/16 p1, 0xe

    if-ge v3, p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x5

    .line 779
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 780
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, v0, :cond_1

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    return-object v2

    :cond_1
    if-ne p1, v0, :cond_2

    const/high16 p1, 0x43700000    # 240.0f

    goto :goto_1

    :cond_2
    const/high16 p1, 0x42f00000    # 120.0f

    :goto_1
    const/4 v0, 0x1

    .line 785
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 786
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    .line 787
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v2, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v2, p1, p0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 p0, 0x0

    aput-object v2, v0, p0

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v1

    :cond_3
    add-int/2addr v1, v3

    .line 789
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 366
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 368
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    iget-object v6, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    invoke-direct {v5, v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 370
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 375
    new-instance v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v5, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    .line 378
    :goto_0
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 380
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    new-array v2, v6, [J

    new-array v3, v6, [I

    const/4 v4, 0x0

    new-array v5, v6, [J

    new-array v6, v6, [I

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_1
    const v7, 0x7374636f

    .line 392
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const v7, 0x636f3634

    .line 395
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v6

    .line 397
    :goto_1
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v10, 0x73747363

    .line 399
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v10, v10, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v11, 0x73747473

    .line 401
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v12, 0x73747373

    .line 403
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 404
    iget-object v12, v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    const v13, 0x63747473

    .line 406
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 407
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 410
    :goto_3
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    invoke-direct {v13, v10, v7, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v7, 0xc

    .line 413
    invoke-virtual {v11, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 414
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    sub-int/2addr v9, v8

    .line 415
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v10

    .line 416
    invoke-virtual {v11}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    if-eqz v0, :cond_5

    .line 423
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 424
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v15

    goto :goto_4

    :cond_5
    move v15, v6

    :goto_4
    const/4 v4, -0x1

    if-eqz v12, :cond_7

    .line 430
    invoke-virtual {v12, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 431
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v7

    if-lez v7, :cond_6

    .line 433
    invoke-virtual {v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    :cond_6
    move/from16 v16, v4

    const/4 v12, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v4

    move v7, v6

    .line 441
    :goto_5
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getFixedSampleSize()I

    move-result v6

    .line 442
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v8, v8, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eq v6, v4, :cond_9

    const-string v4, "audio/raw"

    .line 445
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-mlaw"

    .line 446
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "audio/g711-alaw"

    .line 447
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    if-nez v9, :cond_9

    if-nez v15, :cond_9

    if-nez v7, :cond_9

    move/from16 p1, v7

    const/4 v4, 0x1

    goto :goto_6

    :cond_9
    move/from16 p1, v7

    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_b

    .line 461
    iget v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v0, v0, [J

    .line 462
    iget v4, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [I

    .line 463
    :goto_7
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 464
    iget v5, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget-wide v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v9, v0, v5

    .line 465
    iget v5, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    iget v9, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v9, v4, v5

    goto :goto_7

    :cond_a
    int-to-long v9, v14

    .line 468
    invoke-static {v6, v0, v4, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v0

    .line 470
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    .line 471
    iget-object v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    .line 472
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    .line 473
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    .line 474
    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    .line 475
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object v14, v1

    move v0, v3

    move-object v2, v4

    move-object v3, v5

    move v4, v6

    move-object v13, v10

    move-wide v15, v11

    move-object v12, v9

    goto/16 :goto_13

    .line 477
    :cond_b
    new-array v4, v3, [J

    .line 478
    new-array v6, v3, [I

    .line 479
    new-array v7, v3, [J

    .line 480
    new-array v8, v3, [I

    move-object/from16 v24, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    move/from16 v16, v15

    move v15, v14

    move v14, v10

    move/from16 v37, v9

    move/from16 v9, p1

    :goto_8
    move/from16 p1, v37

    const-string v10, "AtomParsers"

    if-ge v1, v3, :cond_14

    move-wide/from16 v28, v27

    move/from16 v27, v22

    const/16 v22, 0x1

    :goto_9
    if-nez v27, :cond_c

    .line 487
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v22

    if-eqz v22, :cond_c

    move/from16 v30, v14

    move/from16 v31, v15

    .line 488
    iget-wide v14, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move/from16 v32, v3

    .line 489
    iget v3, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move/from16 v27, v3

    move-wide/from16 v28, v14

    move/from16 v14, v30

    move/from16 v15, v31

    move/from16 v3, v32

    goto :goto_9

    :cond_c
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v31, v15

    if-nez v22, :cond_d

    const-string v2, "Unexpected end of chunk data"

    .line 492
    invoke-static {v10, v2}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 495
    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    .line 496
    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    .line 497
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v1

    move/from16 v2, v21

    move/from16 v1, v27

    goto/16 :goto_d

    :cond_d
    if-eqz v0, :cond_f

    :goto_a
    if-nez v23, :cond_e

    if-lez v16, :cond_e

    .line 504
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    .line 510
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v21

    add-int/lit8 v16, v16, -0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v23, v23, -0x1

    :cond_f
    move/from16 v3, v21

    .line 516
    aput-wide v28, v4, v1

    .line 517
    invoke-interface {v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v10

    aput v10, v6, v1

    if-le v10, v11, :cond_10

    move v11, v10

    :cond_10
    int-to-long v14, v3

    add-long v14, v25, v14

    .line 521
    aput-wide v14, v7, v1

    if-nez v12, :cond_11

    const/4 v10, 0x1

    goto :goto_b

    :cond_11
    const/4 v10, 0x0

    .line 524
    :goto_b
    aput v10, v8, v1

    if-ne v1, v2, :cond_12

    const/4 v10, 0x1

    .line 526
    aput v10, v8, v1

    add-int/lit8 v9, v9, -0x1

    if-lez v9, :cond_12

    .line 529
    invoke-static {v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    sub-int/2addr v2, v10

    :cond_12
    move v15, v2

    move v10, v3

    move/from16 v14, v31

    int-to-long v2, v14

    add-long v25, v25, v2

    add-int/lit8 v2, v30, -0x1

    if-nez v2, :cond_13

    if-lez p1, :cond_13

    .line 537
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 544
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    add-int/lit8 v14, p1, -0x1

    goto :goto_c

    :cond_13
    move v3, v14

    move/from16 v14, p1

    :goto_c
    move/from16 p1, v2

    .line 548
    aget v2, v6, v1

    move/from16 v21, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v22, v27, -0x1

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v27, v2

    move v2, v15

    move/from16 v15, v21

    move/from16 v3, v32

    move/from16 v21, v10

    move/from16 v37, v14

    move/from16 v14, p1

    goto/16 :goto_8

    :cond_14
    move/from16 v32, v3

    move/from16 v30, v14

    move/from16 v2, v21

    move/from16 v1, v22

    :goto_d
    int-to-long v12, v2

    add-long v12, v25, v12

    if-eqz v0, :cond_16

    :goto_e
    if-lez v16, :cond_16

    .line 558
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    if-eqz v2, :cond_15

    const/4 v0, 0x0

    goto :goto_f

    .line 562
    :cond_15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_e

    :cond_16
    const/4 v0, 0x1

    :goto_f
    if-nez v9, :cond_18

    if-nez v30, :cond_18

    if-nez v1, :cond_18

    if-nez p1, :cond_18

    move/from16 v2, v23

    if-nez v2, :cond_19

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    move-object/from16 v14, p0

    goto :goto_12

    :cond_18
    move/from16 v2, v23

    .line 572
    :cond_19
    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v14, "Inconsistent stbl box for track "

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, p0

    iget v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ": remainingSynchronizationSamples "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v9, v30

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", remainingSamplesInChunk "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", remainingTimestampDeltaChanges "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_1a

    const-string v0, ", ctts invalid"

    goto :goto_11

    :cond_1a
    const-string v0, ""

    .line 586
    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {v10, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    move v0, v3

    move-object v2, v4

    move-object v3, v6

    move v4, v11

    move-wide v15, v12

    move-object v12, v7

    move-object v13, v8

    :goto_13
    const-wide/32 v7, 0xf4240

    .line 589
    iget-wide v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide v5, v15

    invoke-static/range {v5 .. v10}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 591
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const-wide/32 v10, 0xf4240

    if-nez v1, :cond_1b

    .line 592
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    invoke-static {v12, v10, v11, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 593
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 604
    :cond_1b
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1d

    iget v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    if-ne v1, v5, :cond_1d

    array-length v1, v12

    const/4 v5, 0x2

    if-lt v1, v5, :cond_1d

    .line 607
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    const/4 v5, 0x0

    aget-wide v21, v1, v5

    .line 608
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v23, v1, v5

    iget-wide v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    iget-wide v7, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v5

    move-wide/from16 v27, v7

    .line 610
    invoke-static/range {v23 .. v28}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v5

    add-long v23, v21, v5

    move-object v5, v12

    move-wide v6, v15

    move-wide/from16 v8, v21

    move/from16 v25, v0

    move-wide v0, v10

    move-wide/from16 v10, v23

    .line 612
    invoke-static/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v5

    if-eqz v5, :cond_1e

    sub-long v6, v15, v23

    const/4 v5, 0x0

    .line 614
    aget-wide v8, v12, v5

    sub-long v26, v21, v8

    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v10, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v10

    .line 615
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    .line 617
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v5, v5, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v8, v5

    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 p1, v4

    move-wide v4, v10

    move-wide v10, v0

    .line 618
    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c

    cmp-long v8, v0, v6

    if-eqz v8, :cond_1f

    :cond_1c
    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1f

    cmp-long v6, v0, v6

    if-gtz v6, :cond_1f

    long-to-int v4, v4

    move-object/from16 v5, p2

    .line 622
    iput v4, v5, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v0, v0

    .line 623
    iput v0, v5, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 624
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v4, 0xf4240

    invoke-static {v12, v4, v5, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    .line 625
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/32 v6, 0xf4240

    iget-wide v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    .line 626
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 628
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    :cond_1d
    move/from16 v25, v0

    :cond_1e
    move/from16 p1, v4

    .line 634
    :cond_1f
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_21

    .line 638
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v4, v0, v1

    const/4 v6, 0x0

    .line 639
    :goto_14
    array-length v0, v12

    if-ge v6, v0, :cond_20

    .line 640
    aget-wide v0, v12, v6

    sub-long v17, v0, v4

    const-wide/32 v19, 0xf4240

    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 641
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    aput-wide v0, v12, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_20
    sub-long v17, v15, v4

    const-wide/32 v19, 0xf4240

    .line 644
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v21, v0

    .line 645
    invoke-static/range {v17 .. v22}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    .line 646
    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, p1

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v9

    .line 651
    :cond_21
    iget v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    const/4 v10, 0x1

    goto :goto_15

    :cond_22
    const/4 v10, 0x0

    .line 657
    :goto_15
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v0, v0

    new-array v0, v0, [I

    .line 658
    iget-object v1, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v1, v1

    new-array v1, v1, [I

    .line 659
    iget-object v4, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 660
    :goto_16
    iget-object v9, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v9, v9

    if-ge v5, v9, :cond_26

    move-object v9, v2

    move-object v11, v3

    .line 661
    aget-wide v2, v4, v5

    const-wide/16 v15, -0x1

    cmp-long v15, v2, v15

    if-eqz v15, :cond_25

    .line 663
    iget-object v15, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v26, v15, v5

    move v15, v8

    move-object/from16 v16, v9

    iget-wide v8, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move/from16 p2, v6

    move/from16 v21, v7

    iget-wide v6, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v28, v8

    move-wide/from16 v30, v6

    .line 664
    invoke-static/range {v26 .. v31}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 667
    invoke-static {v12, v2, v3, v8, v8}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor([JJZZ)I

    move-result v9

    aput v9, v0, v5

    add-long/2addr v2, v6

    const/4 v6, 0x0

    .line 670
    invoke-static {v12, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v2

    aput v2, v1, v5

    .line 675
    :goto_17
    aget v2, v0, v5

    aget v3, v1, v5

    if-ge v2, v3, :cond_23

    aget v7, v13, v2

    and-int/2addr v7, v8

    if-nez v7, :cond_23

    add-int/lit8 v2, v2, 0x1

    .line 681
    aput v2, v0, v5

    goto :goto_17

    :cond_23
    sub-int v7, v3, v2

    add-int v7, v21, v7

    move v9, v15

    if-eq v9, v2, :cond_24

    move v2, v8

    goto :goto_18

    :cond_24
    move v2, v6

    :goto_18
    or-int v2, p2, v2

    goto :goto_19

    :cond_25
    move/from16 p2, v6

    move/from16 v21, v7

    move-object/from16 v16, v9

    const/4 v6, 0x0

    move v9, v8

    const/4 v8, 0x1

    move/from16 v2, p2

    move v3, v9

    :goto_19
    add-int/lit8 v5, v5, 0x1

    move v6, v2

    move v8, v3

    move-object v3, v11

    move-object/from16 v2, v16

    goto :goto_16

    :cond_26
    move-object/from16 v16, v2

    move-object v11, v3

    move/from16 p2, v6

    move/from16 v3, v25

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eq v7, v3, :cond_27

    goto :goto_1a

    :cond_27
    move v8, v6

    :goto_1a
    or-int v2, p2, v8

    if-eqz v2, :cond_28

    .line 691
    new-array v3, v7, [J

    goto :goto_1b

    :cond_28
    move-object/from16 v3, v16

    :goto_1b
    if-eqz v2, :cond_29

    .line 692
    new-array v4, v7, [I

    goto :goto_1c

    :cond_29
    move-object v4, v11

    :goto_1c
    if-eqz v2, :cond_2a

    move v5, v6

    goto :goto_1d

    :cond_2a
    move/from16 v5, p1

    :goto_1d
    if-eqz v2, :cond_2b

    .line 694
    new-array v8, v7, [I

    goto :goto_1e

    :cond_2b
    move-object v8, v13

    .line 695
    :goto_1e
    new-array v7, v7, [J

    move/from16 p1, v5

    move v15, v6

    const-wide/16 v9, 0x0

    .line 698
    :goto_1f
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v5, v5

    if-ge v6, v5, :cond_30

    .line 699
    iget-object v5, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v17, v5, v6

    .line 700
    aget v5, v0, v6

    move-object/from16 v27, v0

    .line 701
    aget v0, v1, v6

    move-object/from16 v28, v1

    if-eqz v2, :cond_2c

    sub-int v1, v0, v5

    move/from16 v29, v6

    move-object/from16 v6, v16

    .line 704
    invoke-static {v6, v5, v3, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 705
    invoke-static {v11, v5, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    invoke-static {v13, v5, v8, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_20

    :cond_2c
    move/from16 v29, v6

    move-object/from16 v6, v16

    :goto_20
    move/from16 v1, p1

    :goto_21
    if-ge v5, v0, :cond_2f

    const-wide/32 v23, 0xf4240

    move/from16 p2, v0

    move/from16 v16, v1

    .line 709
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v21, v9

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v0

    .line 710
    aget-wide v21, v12, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    sub-long v12, v21, v17

    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/16 v8, 0x0

    .line 712
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v31

    const-wide/32 v33, 0xf4240

    iget-wide v12, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v35, v12

    .line 711
    invoke-static/range {v31 .. v36}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    add-long/2addr v0, v12

    .line 713
    aput-wide v0, v7, v15

    if-eqz v2, :cond_2d

    .line 714
    aget v0, v4, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_2e

    .line 715
    aget v0, v11, v5

    move v1, v0

    goto :goto_22

    :cond_2d
    move/from16 v1, v16

    :cond_2e
    :goto_22
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p2

    move-wide/from16 v9, v21

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v8, v30

    goto :goto_21

    :cond_2f
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    const-wide/16 v8, 0x0

    .line 719
    iget-object v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v12, v0, v29

    add-long v12, v21, v12

    add-int/lit8 v0, v29, 0x1

    move/from16 p1, v1

    move-object/from16 v16, v6

    move-wide v9, v12

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v1, v28

    move-object/from16 v8, v30

    move v6, v0

    move-object/from16 v0, v27

    goto/16 :goto_1f

    :cond_30
    move-object/from16 v30, v8

    move-wide/from16 v21, v9

    const-wide/32 v23, 0xf4240

    .line 721
    iget-wide v0, v14, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v25, v0

    .line 722
    invoke-static/range {v21 .. v26}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    .line 723
    new-instance v10, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move/from16 v4, p1

    move-object v5, v7

    move-object/from16 v6, v30

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Track;[J[II[J[IJ)V

    return-object v10

    :cond_31
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 372
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    const/16 v0, 0xc

    .line 935
    invoke-virtual {v10, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v12

    .line 937
    new-instance v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    invoke-direct {v13, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v14, 0x0

    move v15, v14

    :goto_0
    if-ge v15, v12, :cond_9

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v14

    :goto_1
    const-string v1, "childAtomSize must be positive"

    .line 941
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v0, 0x61766331

    if-eq v1, v0, :cond_8

    const v0, 0x61766333

    if-eq v1, v0, :cond_8

    const v0, 0x656e6376

    if-eq v1, v0, :cond_8

    const v0, 0x6d317620

    if-eq v1, v0, :cond_8

    const v0, 0x6d703476

    if-eq v1, v0, :cond_8

    const v0, 0x68766331

    if-eq v1, v0, :cond_8

    const v0, 0x68657631

    if-eq v1, v0, :cond_8

    const v0, 0x73323633

    if-eq v1, v0, :cond_8

    const v0, 0x48323633

    if-eq v1, v0, :cond_8

    const v0, 0x76703038

    if-eq v1, v0, :cond_8

    const v0, 0x76703039

    if-eq v1, v0, :cond_8

    const v0, 0x61763031

    if-eq v1, v0, :cond_8

    const v0, 0x64766176

    if-eq v1, v0, :cond_8

    const v0, 0x64766131

    if-eq v1, v0, :cond_8

    const v0, 0x64766865

    if-eq v1, v0, :cond_8

    const v0, 0x64766831

    if-ne v1, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    const v0, 0x6d703461

    if-eq v1, v0, :cond_7

    const v0, 0x656e6361

    if-eq v1, v0, :cond_7

    const v0, 0x61632d33

    if-eq v1, v0, :cond_7

    const v0, 0x65632d33

    if-eq v1, v0, :cond_7

    const v0, 0x61632d34

    if-eq v1, v0, :cond_7

    const v0, 0x6d6c7061

    if-eq v1, v0, :cond_7

    const v0, 0x64747363

    if-eq v1, v0, :cond_7

    const v0, 0x64747365

    if-eq v1, v0, :cond_7

    const v0, 0x64747368

    if-eq v1, v0, :cond_7

    const v0, 0x6474736c

    if-eq v1, v0, :cond_7

    const v0, 0x64747378

    if-eq v1, v0, :cond_7

    const v0, 0x73616d72

    if-eq v1, v0, :cond_7

    const v0, 0x73617762

    if-eq v1, v0, :cond_7

    const v0, 0x6c70636d

    if-eq v1, v0, :cond_7

    const v0, 0x736f7774

    if-eq v1, v0, :cond_7

    const v0, 0x74776f73

    if-eq v1, v0, :cond_7

    const v0, 0x2e6d7032

    if-eq v1, v0, :cond_7

    const v0, 0x2e6d7033

    if-eq v1, v0, :cond_7

    const v0, 0x6d686131

    if-eq v1, v0, :cond_7

    const v0, 0x6d686d31

    if-eq v1, v0, :cond_7

    const v0, 0x616c6163

    if-eq v1, v0, :cond_7

    const v0, 0x616c6177

    if-eq v1, v0, :cond_7

    const v0, 0x756c6177

    if-eq v1, v0, :cond_7

    const v0, 0x4f707573

    if-eq v1, v0, :cond_7

    const v0, 0x664c6143

    if-ne v1, v0, :cond_2

    goto :goto_4

    :cond_2
    const v0, 0x54544d4c

    if-eq v1, v0, :cond_5

    const v0, 0x74783367

    if-eq v1, v0, :cond_5

    const v0, 0x77767474

    if-eq v1, v0, :cond_5

    const v0, 0x73747070

    if-eq v1, v0, :cond_5

    const v0, 0x63363038

    if-ne v1, v0, :cond_3

    goto :goto_2

    :cond_3
    const v0, 0x6d657474

    if-ne v1, v0, :cond_4

    .line 1013
    invoke-static {v10, v1, v9, v11, v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaDataSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIILcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto :goto_3

    :cond_4
    const v0, 0x63616d6d

    if-ne v1, v0, :cond_6

    .line 1015
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1017
    invoke-virtual {v0, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    .line 1018
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1019
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, v13, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_3

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v13

    .line 1010
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    :cond_6
    :goto_3
    move/from16 v17, v9

    goto :goto_6

    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move v2, v9

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v13

    move/from16 v17, v9

    move v9, v15

    .line 994
    invoke-static/range {v0 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v17, v9

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v13

    move v8, v15

    .line 959
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :goto_6
    add-int v9, v17, v16

    .line 1021
    invoke-virtual {v10, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_9
    return-object v13
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 4

    add-int/lit8 p2, p2, 0x10

    .line 1034
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const p2, 0x54544d4c

    const-string v0, "application/ttml+xml"

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x74783367

    if-ne p1, p2, :cond_1

    add-int/lit8 p3, p3, -0x10

    .line 1046
    new-array p1, p3, [B

    const/4 p2, 0x0

    .line 1047
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 1048
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-string v0, "application/x-quicktime-tx3g"

    goto :goto_0

    :cond_1
    const p0, 0x77767474

    if-ne p1, p0, :cond_2

    const-string v0, "application/x-mp4-vtt"

    goto :goto_0

    :cond_2
    const p0, 0x73747070

    if-ne p1, p0, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_3
    const p0, 0x63363038

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    .line 1057
    iput p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    const-string v0, "application/x-mp4-cea-608"

    .line 1063
    :goto_0
    new-instance p0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 1065
    invoke-virtual {p0, p4}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1066
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1067
    invoke-virtual {p0, p5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1068
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1069
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 1070
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iput-object p0, p6, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 1060
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 12

    const/16 v0, 0x8

    .line 814
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 815
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 816
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 818
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 819
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    const/4 v4, 0x4

    .line 821
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 823
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    if-nez v1, :cond_1

    move v0, v4

    :cond_1
    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v0, :cond_5

    .line 826
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v10

    add-int v11, v5, v7

    aget-byte v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    if-nez v1, :cond_2

    .line 836
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v5, v0, v10

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    move-wide v8, v0

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 833
    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 844
    :goto_3
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 845
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 846
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 847
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 848
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 849
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const/high16 v4, -0x10000

    const/high16 v5, 0x10000

    if-nez v0, :cond_6

    if-ne v1, v5, :cond_6

    if-ne v2, v4, :cond_6

    if-nez p0, :cond_6

    const/16 v6, 0x5a

    goto :goto_4

    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x10e

    goto :goto_4

    :cond_7
    if-ne v0, v4, :cond_8

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-ne p0, v4, :cond_8

    const/16 v6, 0xb4

    .line 864
    :cond_8
    :goto_4
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {p0, v3, v8, v9, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object p0
.end method

.method private static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const v1, 0x6d646961

    .line 286
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v2, 0x68646c72    # 4.3148E24f

    .line 289
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->getTrackTypeForHdlr(I)I

    move-result v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v5, v2, :cond_0

    return-object v3

    :cond_0
    const v2, 0x746b6864

    .line 294
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 296
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 298
    :goto_0
    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 303
    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    const v4, 0x6d696e66

    .line 307
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 308
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v4

    .line 306
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d646864

    .line 311
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    const v6, 0x73747364

    .line 312
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 317
    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 320
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v13

    .line 321
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 318
    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v4

    if-nez p5, :cond_3

    const v6, 0x65647473

    .line 328
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 330
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 332
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 333
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v17, v16

    .line 337
    :goto_2
    iget-object v0, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_4

    goto :goto_3

    .line 339
    :cond_4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    .line 340
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 342
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    iget v13, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    iget-object v14, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget v15, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move-object v3, v0

    move v4, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_3
    return-object v3

    :cond_5
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    .line 314
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static parseTraks(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZLcom/google/common/base/Function;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;",
            "Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            "ZZ",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            "Lcom/google/android/exoplayer2/extractor/mp4/Track;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object v0, p0

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 126
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 127
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->containerChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    .line 128
    iget v4, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->type:I

    const v5, 0x7472616b

    if-eq v4, v5, :cond_0

    move-object v6, p1

    move-object/from16 v5, p7

    goto :goto_1

    :cond_0
    const v4, 0x6d766864

    .line 136
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-object v4, v3

    move-wide v6, p2

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    .line 134
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;

    move-result-object v4

    move-object/from16 v5, p7

    .line 133
    invoke-interface {v5, v4}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    if-nez v4, :cond_1

    move-object v6, p1

    goto :goto_1

    :cond_1
    const v6, 0x6d646961

    .line 147
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x6d696e66

    .line 148
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 146
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    const v6, 0x7374626c

    .line 149
    invoke-virtual {v3, v6}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v3

    .line 145
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-object v6, p1

    .line 150
    invoke-static {v4, v3, p1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-result-object v3

    .line 151
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            "Lcom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    .line 166
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    if-lt v3, v0, :cond_2

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 171
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 172
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    const v6, 0x6d657461

    if-ne v5, v6, :cond_0

    .line 174
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v1, v3, v4

    .line 175
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    goto :goto_1

    :cond_0
    const v6, 0x736d7461

    if-ne v5, v6, :cond_1

    .line 177
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int v2, v3, v4

    .line 178
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSmta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/2addr v3, v4

    .line 180
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseUdtaMeta(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0x8

    .line 735
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 736
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->maybeSkipRemainingMetaAtomHeaderBytes(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    .line 737
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 738
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 740
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x696c7374

    if-ne v2, v3, :cond_0

    .line 742
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    .line 743
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    .line 745
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x10

    .line 1086
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v5, 0x10

    .line 1088
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    const/16 v7, 0x32

    .line 1093
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    const v8, 0x656e6376

    move/from16 v10, p1

    if-ne v10, v8, :cond_2

    .line 1099
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1101
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1105
    :cond_0
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v11, v11, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    .line 1106
    :goto_0
    iget-object v11, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v8, v11, p8

    .line 1108
    :cond_1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_2
    const v8, 0x6d317620

    const-string v11, "video/3gpp"

    if-ne v10, v8, :cond_3

    const-string v8, "video/mpeg"

    goto :goto_1

    :cond_3
    const v8, 0x48323633

    if-ne v10, v8, :cond_4

    move-object v8, v11

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_2
    sub-int v12, v7, v1

    if-ge v12, v2, :cond_2f

    .line 1136
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    .line 1138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v9

    if-nez v9, :cond_5

    .line 1139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v24

    move-object/from16 p8, v11

    sub-int v11, v24, v1

    if-ne v11, v2, :cond_6

    goto/16 :goto_19

    :cond_5
    move-object/from16 p8, v11

    :cond_6
    if-lez v9, :cond_7

    const/4 v11, 0x1

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    const-string v1, "childAtomSize must be positive"

    .line 1143
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v11, 0x61766343

    if-ne v1, v11, :cond_a

    const/4 v1, 0x0

    if-nez v8, :cond_8

    const/4 v11, 0x1

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 1146
    :goto_4
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1148
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1149
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 1150
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 1151
    iget v8, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v23, :cond_9

    .line 1153
    iget v14, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 1155
    :cond_9
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string v1, "video/avc"

    :goto_5
    move-object v8, v1

    :goto_6
    move-object/from16 v26, v3

    move/from16 v33, v6

    move/from16 v25, v10

    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_18

    :cond_a
    const v11, 0x68766343

    if-ne v1, v11, :cond_d

    const/4 v1, 0x0

    if-nez v8, :cond_b

    const/4 v11, 0x1

    goto :goto_8

    :cond_b
    const/4 v11, 0x0

    .line 1157
    :goto_8
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    add-int/lit8 v12, v12, 0x8

    .line 1159
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1160
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 1161
    iget-object v15, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 1162
    iget v8, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-nez v23, :cond_c

    .line 1164
    iget v14, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 1166
    :cond_c
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    .line 1167
    iget v8, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->colorSpace:I

    .line 1168
    iget v11, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->colorRange:I

    .line 1169
    iget v1, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->colorTransfer:I

    const-string v12, "video/hevc"

    move/from16 v20, v1

    move-object/from16 v26, v3

    move/from16 v33, v6

    move/from16 v18, v8

    move/from16 v25, v10

    move/from16 v19, v11

    move-object v8, v12

    goto :goto_7

    :cond_d
    const v11, 0x64766343

    if-eq v1, v11, :cond_2c

    const v11, 0x64767643

    if-ne v1, v11, :cond_e

    goto/16 :goto_14

    :cond_e
    const v11, 0x76706343

    const/4 v2, 0x2

    if-ne v1, v11, :cond_13

    if-nez v8, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :goto_9
    const/4 v8, 0x0

    .line 1177
    invoke-static {v1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const v1, 0x76703038

    if-ne v10, v1, :cond_10

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_a

    :cond_10
    const-string v1, "video/x-vnd.on2.vp9"

    :goto_a
    add-int/lit8 v12, v12, 0xc

    .line 1179
    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 1181
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    const/4 v11, 0x1

    and-int/2addr v8, v11

    if-eqz v8, :cond_11

    const/4 v8, 0x1

    goto :goto_b

    :cond_11
    const/4 v8, 0x0

    .line 1183
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    .line 1184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v12

    .line 1185
    invoke-static {v11}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v18

    if-eqz v8, :cond_12

    const/16 v19, 0x1

    goto :goto_c

    :cond_12
    move/from16 v19, v2

    .line 1188
    :goto_c
    invoke-static {v12}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v20

    goto/16 :goto_5

    :cond_13
    const v11, 0x61763143

    if-ne v1, v11, :cond_15

    const/4 v1, 0x0

    if-nez v8, :cond_14

    const/4 v11, 0x1

    goto :goto_d

    :cond_14
    const/4 v11, 0x0

    .line 1190
    :goto_d
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    const-string v1, "video/av01"

    goto/16 :goto_5

    :cond_15
    const v11, 0x636c6c69

    if-ne v1, v11, :cond_17

    if-nez v21, :cond_16

    .line 1194
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v21

    :cond_16
    move-object/from16 v1, v21

    const/16 v2, 0x15

    .line 1198
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1200
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v1

    goto/16 :goto_6

    :cond_17
    const v11, 0x6d646376

    if-ne v1, v11, :cond_19

    if-nez v21, :cond_18

    .line 1203
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->allocateHdrStaticInfo()Ljava/nio/ByteBuffer;

    move-result-object v21

    :cond_18
    move-object/from16 v1, v21

    .line 1207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v2

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v11

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v12

    move/from16 v25, v10

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v10

    .line 1211
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v4

    move-object/from16 v26, v3

    .line 1212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v3

    move-object/from16 v27, v15

    .line 1213
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v15

    move/from16 v28, v14

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v14

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v29

    .line 1216
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v31

    move/from16 v33, v6

    const/4 v6, 0x1

    .line 1218
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1219
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1220
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1221
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1222
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1223
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1224
    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1225
    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1226
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v2, 0x2710

    .line 1227
    div-long v10, v29, v2

    long-to-int v4, v10

    int-to-short v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1228
    div-long v2, v31, v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v21, v1

    move-object/from16 v15, v27

    move/from16 v14, v28

    goto/16 :goto_7

    :cond_19
    move-object/from16 v26, v3

    move/from16 v33, v6

    move/from16 v25, v10

    move/from16 v28, v14

    move-object/from16 v27, v15

    const v3, 0x64323633

    if-ne v1, v3, :cond_1b

    const/4 v3, 0x0

    if-nez v8, :cond_1a

    const/4 v11, 0x1

    goto :goto_e

    :cond_1a
    const/4 v11, 0x0

    .line 1230
    :goto_e
    invoke-static {v11, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    move-object/from16 v8, p8

    goto/16 :goto_16

    :cond_1b
    const/4 v3, 0x0

    const v4, 0x65736473

    if-ne v1, v4, :cond_1e

    if-nez v8, :cond_1c

    const/4 v11, 0x1

    goto :goto_f

    :cond_1c
    const/4 v11, 0x0

    .line 1233
    :goto_f
    invoke-static {v11, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->checkContainerInput(ZLjava/lang/String;)V

    .line 1234
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;

    move-result-object v22

    .line 1235
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$300(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$400(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)[B

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 1238
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_10

    :cond_1d
    move-object/from16 v15, v27

    :goto_10
    move-object v8, v1

    goto/16 :goto_17

    :cond_1e
    const v4, 0x70617370

    if-ne v1, v4, :cond_1f

    .line 1241
    invoke-static {v0, v12}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v1

    move v14, v1

    move-object/from16 v15, v27

    const/16 v23, 0x1

    goto/16 :goto_18

    :cond_1f
    const v4, 0x73763364

    if-ne v1, v4, :cond_20

    .line 1244
    invoke-static {v0, v12, v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v16

    goto/16 :goto_16

    :cond_20
    const v4, 0x73743364

    if-ne v1, v4, :cond_25

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    const/4 v4, 0x3

    .line 1247
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-nez v1, :cond_2e

    .line 1249
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v11, 0x1

    if-eq v1, v11, :cond_23

    if-eq v1, v2, :cond_22

    if-eq v1, v4, :cond_21

    goto/16 :goto_16

    :cond_21
    move/from16 v17, v4

    goto/16 :goto_16

    :cond_22
    move/from16 v17, v2

    goto/16 :goto_16

    :cond_23
    move/from16 v17, v11

    goto/16 :goto_16

    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_16

    :cond_25
    const/4 v11, 0x1

    const v4, 0x636f6c72

    move/from16 v12, v18

    if-ne v1, v4, :cond_2a

    const/4 v1, -0x1

    move/from16 v4, v19

    if-ne v12, v1, :cond_2b

    move/from16 v6, v20

    if-ne v4, v1, :cond_2d

    if-ne v6, v1, :cond_2d

    .line 1274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    const v10, 0x6e636c78

    if-eq v1, v10, :cond_27

    const v10, 0x6e636c63

    if-ne v1, v10, :cond_26

    goto :goto_11

    .line 1293
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported color type: "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtomParsers"

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 1278
    :cond_27
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    .line 1280
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/16 v6, 0x13

    if-ne v9, v6, :cond_28

    .line 1287
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_28

    move v6, v11

    goto :goto_12

    :cond_28
    const/4 v6, 0x0

    .line 1288
    :goto_12
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v18

    if-eqz v6, :cond_29

    move/from16 v19, v11

    goto :goto_13

    :cond_29
    move/from16 v19, v2

    .line 1291
    :goto_13
    invoke-static {v4}, Lcom/google/android/exoplayer2/video/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v20

    goto :goto_16

    :cond_2a
    move/from16 v4, v19

    :cond_2b
    move/from16 v6, v20

    goto :goto_15

    :cond_2c
    :goto_14
    move-object/from16 v26, v3

    move/from16 v33, v6

    move/from16 v25, v10

    move/from16 v28, v14

    move-object/from16 v27, v15

    move/from16 v12, v18

    move/from16 v4, v19

    move/from16 v6, v20

    const/4 v3, 0x0

    .line 1171
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 1173
    iget-object v13, v1, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string v8, "video/dolby-vision"

    :cond_2d
    :goto_15
    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v18, v12

    :cond_2e
    :goto_16
    move-object/from16 v15, v27

    :goto_17
    move/from16 v14, v28

    :goto_18
    add-int/2addr v7, v9

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p7

    move-object/from16 v11, p8

    move/from16 v10, v25

    move-object/from16 v3, v26

    move/from16 v6, v33

    goto/16 :goto_2

    :cond_2f
    :goto_19
    move-object/from16 v26, v3

    move/from16 v33, v6

    move/from16 v28, v14

    move-object/from16 v27, v15

    move/from16 v12, v18

    move/from16 v4, v19

    move/from16 v6, v20

    const/4 v3, 0x0

    if-nez v8, :cond_30

    return-void

    .line 1305
    :cond_30
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    move/from16 v1, p4

    .line 1307
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1308
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1309
    invoke-virtual {v0, v13}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 1310
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v1, v33

    .line 1311
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v14, v28

    .line 1312
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v1, p5

    .line 1313
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v16

    .line 1314
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move/from16 v1, v17

    .line 1315
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v9, v27

    .line 1316
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    move-object/from16 v1, v26

    .line 1317
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    const/4 v1, -0x1

    if-ne v12, v1, :cond_31

    if-ne v4, v1, :cond_31

    if-ne v6, v1, :cond_31

    if-eqz v21, :cond_33

    .line 1324
    :cond_31
    new-instance v1, Lcom/google/android/exoplayer2/video/ColorInfo;

    if-eqz v21, :cond_32

    .line 1329
    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    goto :goto_1a

    :cond_32
    move-object v9, v3

    :goto_1a
    invoke-direct {v1, v12, v4, v6, v9}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    .line 1324
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_33
    if-eqz v22, :cond_34

    .line 1334
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$600(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 1335
    invoke-static/range {v22 .. v22}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;->access$500(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$EsdsData;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1338
    :cond_34
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    move-object/from16 v1, p7

    iput-object v0, v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method
