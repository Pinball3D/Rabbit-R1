.class public final Landroidx/media3/extractor/ts/H262Reader;
.super Ljava/lang/Object;
.source "H262Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;
    }
.end annotation


# static fields
.field private static final FRAME_RATE_VALUES:[D

.field private static final START_EXTENSION:I = 0xb5

.field private static final START_GROUP:I = 0xb8

.field private static final START_PICTURE:I = 0x0

.field private static final START_SEQUENCE_HEADER:I = 0xb3

.field private static final START_USER_DATA:I = 0xb2


# instance fields
.field private final csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private frameDurationUs:J

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleHasPicture:Z

.field private sampleIsKeyframe:Z

.field private samplePosition:J

.field private sampleTimeUs:J

.field private startedFirstSample:Z

.field private totalBytesWritten:J

.field private final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field private final userDataReader:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    return-void
.end method

.method constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 84
    new-instance v0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    if-eqz p1, :cond_0

    .line 86
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 87
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iput-object p1, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method

.method private static parseCsdBuffer(Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/common/Format;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->data:[B

    iget v1, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->length:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/4 v1, 0x4

    .line 235
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    .line 236
    aget-byte v4, v0, v3

    and-int/lit16 v5, v4, 0xff

    const/4 v6, 0x6

    .line 237
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v2, v1

    shr-int/2addr v5, v1

    or-int/2addr v2, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v6

    const/4 v5, 0x7

    .line 242
    aget-byte v6, v0, v5

    and-int/lit16 v6, v6, 0xf0

    shr-int/2addr v6, v1

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    if-eq v6, v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v4, 0x79

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x64

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v4, 0x10

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x9

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v4, 0x4

    int-to-float v1, v1

    mul-int/lit8 v6, v2, 0x3

    :goto_0
    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 258
    :goto_1
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 260
    invoke-virtual {v6, p1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v6, "video/mpeg2"

    .line 261
    invoke-virtual {p1, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 262
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 265
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 269
    aget-byte v1, v0, v5

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    sget-object v2, Landroidx/media3/extractor/ts/H262Reader;->FRAME_RATE_VALUES:[D

    .line 270
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 271
    aget-wide v1, v2, v1

    .line 272
    iget p0, p0, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->sequenceExtensionPosition:I

    add-int/lit8 p0, p0, 0x9

    .line 273
    aget-byte p0, v0, p0

    and-int/lit8 v0, p0, 0x60

    shr-int/2addr v0, v3

    and-int/lit8 p0, p0, 0x1f

    if-eq v0, p0, :cond_3

    int-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    add-int/lit8 p0, p0, 0x1

    int-to-double v5, p0

    div-double/2addr v3, v5

    mul-double/2addr v1, v3

    :cond_3
    const-wide v3, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v1

    double-to-long v0, v3

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x0

    .line 281
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 127
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    :goto_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 137
    invoke-static {v3, v1, v2, v4}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v4

    if-ne v4, v2, :cond_2

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-nez v4, :cond_0

    iget-object v4, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    .line 142
    invoke-virtual {v4, v3, v1, v2}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_0
    iget-object v0, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0, v3, v1, v2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    return-void

    .line 151
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    add-int/lit8 v7, v4, 0x3

    aget-byte v5, v5, v7

    and-int/lit16 v5, v5, 0xff

    sub-int v8, v4, v1

    iget-boolean v9, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_5

    if-lez v8, :cond_3

    iget-object v9, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    .line 158
    invoke-virtual {v9, v3, v1, v4}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onData([BII)V

    :cond_3
    if-gez v8, :cond_4

    neg-int v9, v8

    goto :goto_1

    :cond_4
    move v9, v10

    :goto_1
    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    .line 163
    invoke-virtual {v12, v5, v9}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->onStartCode(II)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 165
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v9, v12}, Landroidx/media3/extractor/ts/H262Reader;->parseCsdBuffer(Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 166
    iget-object v13, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroidx/media3/common/Format;

    invoke-interface {v12, v13}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 167
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    iput-boolean v11, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    :cond_5
    iget-object v9, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v9, :cond_8

    if-lez v8, :cond_6

    .line 174
    invoke-virtual {v9, v3, v1, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    move v1, v10

    goto :goto_2

    :cond_6
    neg-int v1, v8

    :goto_2
    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 179
    invoke-virtual {v8, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 180
    iget-object v1, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v8, v8, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v1, v8}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v1

    iget-object v8, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    .line 181
    invoke-static {v8}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v9, v9, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v8, v9, v1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    .line 182
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ts/UserDataReader;

    iget-wide v8, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v8, v9, v12}, Landroidx/media3/extractor/ts/UserDataReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_7
    const/16 v1, 0xb2

    if-ne v5, v1, :cond_8

    .line 185
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    add-int/lit8 v8, v4, 0x2

    aget-byte v1, v1, v8

    if-ne v1, v11, :cond_8

    iget-object v1, v0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 186
    invoke-virtual {v1, v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_8
    if-eqz v5, :cond_a

    const/16 v1, 0xb3

    if-ne v5, v1, :cond_9

    goto :goto_3

    :cond_9
    const/16 v1, 0xb8

    if-ne v5, v1, :cond_11

    iput-boolean v11, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    goto :goto_8

    :cond_a
    :goto_3
    sub-int v1, v2, v4

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_b

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H262Reader;->hasOutputFormat:Z

    if-eqz v4, :cond_b

    iget-wide v13, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v4, v13, v8

    if-eqz v4, :cond_b

    iget-boolean v15, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    iget-wide v11, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    move/from16 v19, v5

    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    sub-long/2addr v11, v4

    long-to-int v4, v11

    sub-int v16, v4, v1

    iget-object v12, v0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    const/16 v18, 0x0

    move/from16 v17, v1

    .line 195
    invoke-interface/range {v12 .. v18}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto :goto_4

    :cond_b
    move/from16 v19, v5

    :goto_4
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x1

    goto :goto_7

    :cond_d
    :goto_5
    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    int-to-long v11, v1

    sub-long/2addr v4, v11

    iput-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->samplePosition:J

    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_e

    goto :goto_6

    :cond_e
    iget-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_f

    iget-wide v11, v0, Landroidx/media3/extractor/ts/H262Reader;->frameDurationUs:J

    add-long/2addr v4, v11

    goto :goto_6

    :cond_f
    move-wide v4, v8

    :goto_6
    iput-wide v4, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleIsKeyframe:Z

    iput-wide v8, v0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    :goto_7
    if-nez v19, :cond_10

    move v10, v1

    :cond_10
    iput-boolean v10, v0, Landroidx/media3/extractor/ts/H262Reader;->sampleHasPicture:Z

    :cond_11
    :goto_8
    move v1, v7

    goto/16 :goto_0
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 111
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 112
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->formatId:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H262Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/UserDataReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->prefixFlags:[Z

    .line 98
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->csdBuffer:Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;

    .line 99
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H262Reader$CsdBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H262Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->totalBytesWritten:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H262Reader;->startedFirstSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->pesTimeUs:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H262Reader;->sampleTimeUs:J

    return-void
.end method
