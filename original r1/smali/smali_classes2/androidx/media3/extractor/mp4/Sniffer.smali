.class final Landroidx/media3/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source "Sniffer.java"


# static fields
.field public static final BRAND_HEIC:I = 0x68656963

.field public static final BRAND_QUICKTIME:I = 0x71742020

.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void

    :array_0
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCompatibleBrand(IZ)Z
    .locals 5

    ushr-int/lit8 v0, p0, 0x8

    const v1, 0x336770

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const v0, 0x68656963

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    sget-object p1, Landroidx/media3/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    .line 218
    array-length v0, p1

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    aget v4, p1, v3

    if-ne v4, p0, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static sniffFragmented(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {p0, v0, v1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method

.method private static sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 110
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x1000

    if-eqz v5, :cond_1

    cmp-long v8, v1, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v1

    :cond_1
    :goto_0
    long-to-int v6, v6

    .line 117
    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    move v10, v9

    :goto_1
    const/4 v11, 0x1

    if-ge v9, v6, :cond_12

    const/16 v12, 0x8

    .line 124
    invoke-virtual {v7, v12}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 126
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    invoke-interface {v0, v13, v8, v12, v11}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v13

    if-nez v13, :cond_2

    goto/16 :goto_9

    .line 131
    :cond_2
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v13

    .line 132
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v15

    const-wide/16 v16, 0x1

    cmp-long v16, v13, v16

    if-nez v16, :cond_3

    .line 137
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v13

    .line 136
    invoke-interface {v0, v13, v12, v12}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v13, 0x10

    .line 138
    invoke-virtual {v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    .line 139
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readLong()J

    move-result-wide v16

    move v3, v13

    move-wide/from16 v13, v16

    goto :goto_2

    :cond_3
    const-wide/16 v16, 0x0

    cmp-long v16, v13, v16

    if-nez v16, :cond_4

    .line 142
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v16

    cmp-long v18, v16, v3

    if-eqz v18, :cond_4

    .line 144
    invoke-interface/range {p0 .. p0}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v13

    sub-long v16, v16, v13

    int-to-long v13, v12

    add-long v13, v16, v13

    :cond_4
    move v3, v12

    :goto_2
    int-to-long v11, v3

    cmp-long v19, v13, v11

    if-gez v19, :cond_5

    return v8

    :cond_5
    add-int/2addr v9, v3

    const v3, 0x6d6f6f76

    if-ne v15, v3, :cond_7

    long-to-int v3, v13

    add-int/2addr v6, v3

    if-eqz v5, :cond_6

    int-to-long v3, v6

    cmp-long v3, v3, v1

    if-lez v3, :cond_6

    long-to-int v6, v1

    :cond_6
    :goto_3
    const-wide/16 v3, -0x1

    goto :goto_1

    :cond_7
    const v3, 0x6d6f6f66

    if-eq v15, v3, :cond_11

    const v3, 0x6d766578

    if-ne v15, v3, :cond_8

    goto :goto_8

    :cond_8
    move v3, v5

    int-to-long v4, v9

    add-long/2addr v4, v13

    sub-long/2addr v4, v11

    move/from16 v20, v9

    int-to-long v8, v6

    cmp-long v4, v4, v8

    if-ltz v4, :cond_9

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_a

    :cond_9
    sub-long/2addr v13, v11

    long-to-int v4, v13

    add-int v9, v20, v4

    const v5, 0x66747970

    if-ne v15, v5, :cond_f

    const/16 v5, 0x8

    if-ge v4, v5, :cond_a

    const/4 v5, 0x0

    return v5

    :cond_a
    const/4 v5, 0x0

    .line 184
    invoke-virtual {v7, v4}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    .line 185
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v8

    invoke-interface {v0, v8, v5, v4}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 186
    div-int/lit8 v4, v4, 0x4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_d

    const/4 v8, 0x1

    if-ne v5, v8, :cond_b

    const/4 v11, 0x4

    .line 190
    invoke-virtual {v7, v11}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    move/from16 v12, p2

    goto :goto_5

    .line 191
    :cond_b
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v11

    move/from16 v12, p2

    invoke-static {v11, v12}, Landroidx/media3/extractor/mp4/Sniffer;->isCompatibleBrand(IZ)Z

    move-result v11

    if-eqz v11, :cond_c

    move v10, v8

    goto :goto_6

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    move/from16 v12, p2

    :goto_6
    if-nez v10, :cond_e

    const/4 v5, 0x0

    return v5

    :cond_e
    const/4 v5, 0x0

    goto :goto_7

    :cond_f
    move/from16 v12, p2

    const/4 v5, 0x0

    if-eqz v4, :cond_10

    .line 202
    invoke-interface {v0, v4}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    :cond_10
    :goto_7
    move v8, v5

    move v5, v3

    goto :goto_3

    :cond_11
    :goto_8
    move v5, v8

    const/4 v8, 0x1

    move v0, v8

    goto :goto_b

    :cond_12
    :goto_9
    move v5, v8

    move v8, v11

    :goto_a
    move v0, v5

    :goto_b
    if-eqz v10, :cond_13

    move/from16 v1, p1

    if-ne v1, v0, :cond_13

    goto :goto_c

    :cond_13
    move v8, v5

    :goto_c
    return v8
.end method

.method public static sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, v0}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method

.method public static sniffUnfragmented(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0, p1}, Landroidx/media3/extractor/mp4/Sniffer;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;ZZ)Z

    move-result p0

    return p0
.end method
