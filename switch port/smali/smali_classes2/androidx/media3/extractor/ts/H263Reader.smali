.class public final Landroidx/media3/extractor/ts/H263Reader;
.super Ljava/lang/Object;
.source "H263Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;,
        Landroidx/media3/extractor/ts/H263Reader$SampleReader;
    }
.end annotation


# static fields
.field private static final PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

.field private static final START_CODE_VALUE_GROUP_OF_VOP:I = 0xb3

.field private static final START_CODE_VALUE_MAX_VIDEO_OBJECT:I = 0x1f

.field private static final START_CODE_VALUE_UNSET:I = -0x1

.field private static final START_CODE_VALUE_USER_DATA:I = 0xb2

.field private static final START_CODE_VALUE_VISUAL_OBJECT:I = 0xb5

.field private static final START_CODE_VALUE_VISUAL_OBJECT_SEQUENCE:I = 0xb0

.field private static final START_CODE_VALUE_VOP:I = 0xb6

.field private static final TAG:Ljava/lang/String; = "H263Reader"

.field private static final VIDEO_OBJECT_LAYER_SHAPE_RECTANGULAR:I


# instance fields
.field private final csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

.field private formatId:Ljava/lang/String;

.field private hasOutputFormat:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private pesTimeUs:J

.field private final prefixFlags:[Z

.field private sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

.field private totalBytesWritten:J

.field private final userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field private final userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

.field private final userDataReader:Landroidx/media3/extractor/ts/UserDataReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/H263Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    return-void
.end method

.method constructor <init>(Landroidx/media3/extractor/ts/UserDataReader;)V
    .locals 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 94
    new-instance v0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    if-eqz p1, :cond_0

    .line 97
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 98
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iput-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    :goto_0
    return-void
.end method

.method private static parseCsdBuffer(Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;)Landroidx/media3/common/Format;
    .locals 8

    .line 233
    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->data:[B

    iget p0, p0, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->length:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 234
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    .line 235
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/4 p1, 0x4

    .line 238
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    .line 239
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 v1, 0x8

    .line 240
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 241
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 243
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 246
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v4, "Invalid aspect ratio"

    const-string v5, "H263Reader"

    const/16 v6, 0xf

    if-ne p1, v6, :cond_2

    .line 248
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 249
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 251
    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    move v2, p1

    goto :goto_0

    :cond_2
    sget-object v1, Landroidx/media3/extractor/ts/H263Reader;->PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO:[F

    .line 256
    array-length v7, v1

    if-ge p1, v7, :cond_3

    .line 257
    aget v2, v1, p1

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_4

    .line 263
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 p1, 0x1

    .line 264
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 265
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 266
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 267
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 268
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 269
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 270
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 271
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 272
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 p1, 0xb

    .line 273
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 274
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 275
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 276
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 279
    :cond_4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Unhandled video object layer shape"

    .line 281
    invoke-static {v5, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 p1, 0x10

    .line 284
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 285
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 286
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez p1, :cond_6

    const-string p1, "Invalid vop_increment_time_resolution"

    .line 288
    invoke-static {v5, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_1
    if-lez p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 296
    :cond_7
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 299
    :cond_8
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    const/16 p1, 0xd

    .line 300
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 301
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 302
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    .line 303
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 304
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBit()V

    .line 305
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 306
    invoke-virtual {v0, p2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    const-string v0, "video/mp4v-es"

    .line 307
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    .line 308
    invoke-virtual {p2, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    .line 309
    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 310
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 311
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 312
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    .line 141
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 142
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    .line 145
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    .line 148
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    iget-object v3, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 149
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    invoke-interface {v3, p1, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    :goto_0
    iget-object v3, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 152
    invoke-static {v2, v0, v1, v3}, Landroidx/media3/container/NalUnitUtil;->findNalUnit([BII[Z)I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    .line 157
    invoke-virtual {p1, v2, v0, v1}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    .line 159
    invoke-virtual {p1, v2, v0, v1}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz p0, :cond_1

    .line 161
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    :cond_1
    return-void

    .line 167
    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sub-int v6, v3, v0

    iget-boolean v7, p0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_5

    if-lez v6, :cond_3

    iget-object v7, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    .line 174
    invoke-virtual {v7, v2, v0, v3}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onData([BII)V

    :cond_3
    if-gez v6, :cond_4

    neg-int v7, v6

    goto :goto_1

    :cond_4
    move v7, v9

    :goto_1
    iget-object v10, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    .line 179
    invoke-virtual {v10, v4, v7}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->onStartCode(II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    .line 181
    iget v11, v10, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->volStartPosition:I

    iget-object v12, p0, Landroidx/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 182
    invoke-static {v12}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v10, v11, v12}, Landroidx/media3/extractor/ts/H263Reader;->parseCsdBuffer(Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;ILjava/lang/String;)Landroidx/media3/common/Format;

    move-result-object v10

    .line 181
    invoke-interface {v7, v10}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v8, p0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    :cond_5
    iget-object v7, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    .line 187
    invoke-virtual {v7, v2, v0, v3}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onData([BII)V

    iget-object v7, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v7, :cond_8

    if-lez v6, :cond_6

    .line 192
    invoke-virtual {v7, v2, v0, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->appendToNalUnit([BII)V

    goto :goto_2

    :cond_6
    neg-int v9, v6

    :goto_2
    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 197
    invoke-virtual {v0, v9}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->endNalUnit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 198
    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    iget-object v6, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget v6, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalLength:I

    invoke-static {v0, v6}, Landroidx/media3/container/NalUnitUtil;->unescapeStream([BI)I

    move-result v0

    iget-object v6, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    .line 199
    invoke-static {v6}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    iget-object v7, v7, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->nalData:[B

    invoke-virtual {v6, v7, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    .line 200
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ts/UserDataReader;

    iget-wide v6, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    iget-object v9, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataParsable:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v0, v6, v7, v9}, Landroidx/media3/extractor/ts/UserDataReader;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_7
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_8

    .line 204
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    if-ne v0, v8, :cond_8

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 205
    invoke-virtual {v0, v4}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->startNalUnit(I)V

    :cond_8
    sub-int v0, v1, v3

    iget-wide v6, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget-object v3, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-boolean v8, p0, Landroidx/media3/extractor/ts/H263Reader;->hasOutputFormat:Z

    .line 211
    invoke-virtual {v3, v6, v7, v0, v8}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onDataEnd(JIZ)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-wide v6, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    .line 213
    invoke-virtual {v0, v4, v6, v7}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->onStartCode(IJ)V

    move v0, v5

    goto/16 :goto_0
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    .line 121
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 122
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->formatId:Ljava/lang/String;

    .line 123
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 124
    new-instance v0, Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-object v1, p0, Landroidx/media3/extractor/ts/H263Reader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H263Reader;->userDataReader:Landroidx/media3/extractor/ts/UserDataReader;

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/UserDataReader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_0
    return-void
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

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->prefixFlags:[Z

    .line 107
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->csdBuffer:Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;

    .line 108
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H263Reader$CsdBuffer;->reset()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->sampleReader:Landroidx/media3/extractor/ts/H263Reader$SampleReader;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/H263Reader$SampleReader;->reset()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H263Reader;->userData:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->reset()V

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->totalBytesWritten:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H263Reader;->pesTimeUs:J

    return-void
.end method
