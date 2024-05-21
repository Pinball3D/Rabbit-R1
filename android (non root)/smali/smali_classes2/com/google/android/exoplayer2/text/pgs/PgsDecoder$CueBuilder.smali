.class final Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;
.super Ljava/lang/Object;
.source "PgsDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/pgs/PgsDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CueBuilder"
.end annotation


# instance fields
.field private final bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private bitmapHeight:I

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private final colors:[I

.field private colorsSet:Z

.field private planeHeight:I

.field private planeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parsePaletteSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseBitmapSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->parseIdentifierSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method private parseBitmapSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 167
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 168
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, -0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return-void

    .line 175
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    if-ge v1, v0, :cond_3

    return-void

    .line 179
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    .line 180
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sub-int/2addr v1, v0

    .line 181
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    add-int/lit8 v2, p2, -0xb

    :cond_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 185
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 186
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-ge p2, v0, :cond_5

    if-lez v2, :cond_5

    sub-int/2addr v0, p2

    .line 188
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 189
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr p2, v0

    .line 190
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :cond_5
    return-void
.end method

.method private parseIdentifierSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 1

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    const/16 p2, 0xb

    .line 200
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 201
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    .line 202
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    return-void
.end method

.method private parsePaletteSection(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 137
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    const/4 v3, 0x0

    .line 143
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 144
    div-int/lit8 v2, p2, 0x5

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v7

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    int-to-double v10, v6

    add-int/lit8 v7, v7, -0x80

    int-to-double v6, v7

    const-wide v12, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v12, v6

    add-double/2addr v12, v10

    double-to-int v12, v12

    add-int/lit8 v8, v8, -0x80

    int-to-double v13, v8

    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v15, v13

    sub-double v15, v10, v15

    const-wide v17, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v6, v6, v17

    sub-double v6, v15, v6

    double-to-int v6, v6

    const-wide v7, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v13, v7

    add-double/2addr v10, v13

    double-to-int v7, v10

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    shl-int/lit8 v9, v9, 0x18

    const/16 v10, 0xff

    .line 156
    invoke-static {v12, v3, v10}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v9, v11

    .line 157
    invoke-static {v6, v3, v10}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v9

    .line 158
    invoke-static {v7, v3, v10}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v7

    or-int/2addr v6, v7

    aput v6, v8, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/Cue;
    .locals 7

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    mul-int/2addr v0, v2

    .line 218
    new-array v2, v0, [I

    move v3, v1

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 221
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    .line 223
    aget v4, v6, v4

    aput v4, v2, v3

    :goto_1
    move v3, v5

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 225
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    if-eqz v4, :cond_1

    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_3

    and-int/lit8 v5, v4, 0x3f

    goto :goto_2

    :cond_3
    and-int/lit8 v5, v4, 0x3f

    shl-int/lit8 v5, v5, 0x8

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 230
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    or-int/2addr v5, v6

    :goto_2
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colors:[I

    iget-object v6, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 231
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    aget v4, v4, v6

    :goto_3
    add-int/2addr v5, v3

    .line 232
    invoke-static {v2, v3, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iget v3, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    .line 238
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 239
    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 242
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 243
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 245
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    int-to-float v1, v1

    iget p0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    int-to-float p0, p0

    div-float/2addr v1, p0

    .line 248
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setBitmapHeight(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->planeHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapX:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapY:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapHeight:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->bitmapData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 259
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/pgs/PgsDecoder$CueBuilder;->colorsSet:Z

    return-void
.end method
