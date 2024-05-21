.class public final Lcom/google/android/exoplayer2/extractor/VorbisUtil;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;,
        Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VorbisUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iLog(I)I
    .locals 1

    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static mapType1QuantValues(JJ)J
    .locals 2

    long-to-double p0, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    long-to-double p2, p2

    div-double/2addr v0, p2

    .line 602
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    return-wide p0
.end method

.method public static parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/metadata/Metadata;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 276
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 277
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "="

    .line 278
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 279
    array-length v5, v4

    const/4 v6, 0x2

    const-string v7, "VorbisUtil"

    if-eq v5, v6, :cond_0

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to parse Vorbis comment: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 284
    :cond_0
    aget-object v3, v4, v1

    const-string v5, "METADATA_BLOCK_PICTURE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 289
    :try_start_0
    aget-object v3, v4, v5

    invoke-static {v3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 290
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Failed to parse vorbis picture"

    .line 292
    invoke-static {v7, v4, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 295
    :cond_1
    new-instance v3, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;

    aget-object v6, v4, v1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Lcom/google/android/exoplayer2/metadata/vorbis/VorbisComment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_2
    return-object p0
.end method

.method private static readBook(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x18

    .line 538
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const v2, 0x564342

    const/4 v3, 0x0

    if-ne v1, v2, :cond_a

    const/16 v1, 0x10

    .line 543
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 544
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 545
    new-array v7, v6, [J

    .line 547
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x5

    const/4 v8, 0x1

    if-nez v9, :cond_2

    .line 549
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    :goto_0
    if-ge v2, v6, :cond_4

    if-eqz v10, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 553
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v8

    int-to-long v11, v11

    aput-wide v11, v7, v2

    goto :goto_1

    .line 555
    :cond_0
    aput-wide v0, v7, v2

    goto :goto_1

    .line 558
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    add-int/2addr v11, v8

    int-to-long v11, v11

    aput-wide v11, v7, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v8

    move v10, v2

    :goto_2
    if-ge v10, v6, :cond_4

    sub-int v11, v6, v10

    .line 564
    invoke-static {v11}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    move v12, v2

    :goto_3
    if-ge v12, v11, :cond_3

    if-ge v10, v6, :cond_3

    int-to-long v13, v4

    .line 566
    aput-wide v13, v7, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    .line 572
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    const/4 v4, 0x2

    if-gt v10, v4, :cond_9

    if-eq v10, v8, :cond_5

    if-ne v10, v4, :cond_8

    :cond_5
    const/16 v3, 0x20

    .line 577
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 578
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 579
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v2

    add-int/2addr v2, v8

    .line 580
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    if-ne v10, v8, :cond_6

    if-eqz v5, :cond_7

    int-to-long v0, v6

    int-to-long v3, v5

    .line 584
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->mapType1QuantValues(JJ)J

    move-result-wide v0

    goto :goto_4

    :cond_6
    int-to-long v0, v6

    int-to-long v3, v5

    mul-long/2addr v0, v3

    :cond_7
    :goto_4
    int-to-long v2, v2

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 592
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 594
    :cond_8
    new-instance p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;

    move-object v4, p0

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;-><init>(II[JIZ)V

    return-object p0

    .line 574
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "lookup type greater than 2 not decodable: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 539
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->getPosition()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 539
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static readFloors(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 483
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_9

    const/16 v5, 0x10

    .line 485
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x4

    const/16 v8, 0x8

    if-eqz v6, :cond_7

    if-ne v6, v2, :cond_6

    const/4 v5, 0x5

    .line 499
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 501
    new-array v6, v5, [I

    const/4 v9, -0x1

    move v10, v3

    :goto_1
    if-ge v10, v5, :cond_1

    .line 503
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v11

    aput v11, v6, v10

    if-le v11, v9, :cond_0

    move v9, v11

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 508
    new-array v10, v9, [I

    move v11, v3

    :goto_2
    const/4 v12, 0x2

    if-ge v11, v9, :cond_4

    const/4 v13, 0x3

    .line 510
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v13

    add-int/2addr v13, v2

    aput v13, v10, v11

    .line 511
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v12

    if-lez v12, :cond_2

    .line 513
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    :cond_2
    move v13, v3

    :goto_3
    shl-int v14, v2, v12

    if-ge v13, v14, :cond_3

    .line 516
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 519
    :cond_4
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 520
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v7

    move v8, v3

    move v9, v8

    move v11, v9

    :goto_4
    if-ge v8, v5, :cond_8

    .line 523
    aget v12, v6, v8

    .line 524
    aget v12, v10, v12

    add-int/2addr v9, v12

    :goto_5
    if-ge v11, v9, :cond_5

    .line 526
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 531
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "floor type greater than 1 not decodable: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 488
    :cond_7
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 489
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 490
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 491
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 492
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 493
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    move v6, v3

    :goto_6
    if-ge v6, v5, :cond_8

    .line 495
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static readMappings(ILcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 409
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_6

    const/16 v4, 0x10

    .line 411
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mapping type other than 0 not supported: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 417
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    .line 418
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    add-int/2addr v4, v1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 423
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_2

    .line 424
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    add-int/2addr v6, v1

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_2

    add-int/lit8 v9, p0, -0x1

    .line 426
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 427
    invoke-static {v9}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->iLog(I)I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x2

    .line 432
    invoke-virtual {p1, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    if-nez v6, :cond_5

    if-le v4, v1, :cond_3

    move v6, v2

    :goto_3
    if-ge v6, p0, :cond_3

    .line 438
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_4
    if-ge v5, v4, :cond_4

    .line 442
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 443
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 444
    invoke-virtual {p1, v7}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "to reserved bits must be zero after mapping coupling steps"

    const/4 p1, 0x0

    .line 433
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    return-void
.end method

.method private static readModes(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    .locals 8

    const/4 v0, 0x6

    .line 396
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 397
    new-array v1, v0, [Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v3

    const/16 v4, 0x10

    .line 400
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    .line 401
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v4

    const/16 v6, 0x8

    .line 402
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v6

    .line 403
    new-instance v7, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    invoke-direct {v7, v3, v5, v4, v6}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;-><init>(ZIII)V

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static readResidues(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 450
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_6

    const/16 v5, 0x10

    .line 452
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5

    const/16 v5, 0x18

    .line 457
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 458
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 459
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 460
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v5

    add-int/2addr v5, v2

    const/16 v6, 0x8

    .line 461
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    .line 462
    new-array v7, v5, [I

    move v8, v3

    :goto_1
    if-ge v8, v5, :cond_1

    const/4 v9, 0x3

    .line 465
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v9

    .line 466
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    .line 467
    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v10

    goto :goto_2

    :cond_0
    move v10, v3

    :goto_2
    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 469
    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v3

    :goto_3
    if-ge v8, v5, :cond_4

    move v9, v3

    :goto_4
    if-ge v9, v6, :cond_3

    .line 473
    aget v10, v7, v8

    shl-int v11, v2, v9

    and-int/2addr v10, v11

    if-eqz v10, :cond_2

    .line 474
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    const-string p0, "residueType greater than 2 is not decodable"

    const/4 v0, 0x0

    .line 454
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_6
    return-void
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 214
    invoke-static {p0, v0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    return-object p0
.end method

.method public static readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 238
    invoke-static {p1, p0, v0}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 247
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    long-to-int v4, v2

    .line 248
    new-array v4, v4, [Ljava/lang/String;

    add-int/lit8 v1, v1, 0xf

    :goto_0
    int-to-long v5, v0

    cmp-long v5, v5, v2

    if-gez v5, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v5

    long-to-int v5, v5

    add-int/lit8 v1, v1, 0x4

    .line 253
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 254
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "framing bit expected to be set"

    const/4 p1, 0x0

    .line 257
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 261
    new-instance p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    return-object p0
.end method

.method public static readVorbisIdentificationHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object/from16 v2, p0

    .line 164
    invoke-static {v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v3

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedIntToInt()I

    move-result v5

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v6

    const/4 v7, -0x1

    if-gtz v6, :cond_0

    move v6, v7

    .line 173
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v8

    if-gtz v8, :cond_1

    move v8, v7

    .line 177
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v9

    if-gtz v9, :cond_2

    move v9, v7

    .line 181
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/lit8 v10, v7, 0xf

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 182
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-int v10, v10

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    int-to-double v14, v7

    .line 183
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v11, v11

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    and-int/2addr v7, v0

    if-lez v7, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 187
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 189
    new-instance v1, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;

    move-object v2, v1

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v0

    invoke-direct/range {v2 .. v12}, Lcom/google/android/exoplayer2/extractor/VorbisUtil$VorbisIdHeader;-><init>(IIIIIIIIZ[B)V

    return-object v1
.end method

.method public static readVorbisModes(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 365
    invoke-static {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z

    .line 367
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 369
    new-instance v2, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;-><init>([B)V

    .line 370
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->skipBits(I)V

    move p0, v1

    :goto_0
    if-ge p0, v0, :cond_0

    .line 373
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readBook(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CodeBook;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

    .line 376
    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_1
    const/4 v0, 0x0

    if-ge v1, p0, :cond_2

    const/16 v3, 0x10

    .line 378
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBits(I)I

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string p0, "placeholder of time domain transforms not zeroed out"

    .line 379
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 383
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readFloors(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 384
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readResidues(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 385
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readMappings(ILcom/google/android/exoplayer2/extractor/VorbisBitArray;)V

    .line 387
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readModes(Lcom/google/android/exoplayer2/extractor/VorbisBitArray;)[Lcom/google/android/exoplayer2/extractor/VorbisUtil$Mode;

    move-result-object p0

    .line 388
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/VorbisBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object p0

    :cond_3
    const-string p0, "framing bit after modes not set as expected"

    .line 389
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static verifyVorbisHeaderCapturePattern(ILcom/google/android/exoplayer2/util/ParsableByteArray;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    if-eqz p2, :cond_0

    return v2

    .line 319
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "too short header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-eq v0, p0, :cond_3

    if-eqz p2, :cond_2

    return v2

    .line 328
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "expected header type "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 328
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 333
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x76

    if-ne p0, v0, :cond_5

    .line 334
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x6f

    if-ne p0, v0, :cond_5

    .line 335
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x72

    if-ne p0, v0, :cond_5

    .line 336
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x62

    if-ne p0, v0, :cond_5

    .line 337
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v0, 0x69

    if-ne p0, v0, :cond_5

    .line 338
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 p1, 0x73

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    if-eqz p2, :cond_6

    return v2

    :cond_6
    const-string p0, "expected characters \'vorbis\'"

    .line 342
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method
