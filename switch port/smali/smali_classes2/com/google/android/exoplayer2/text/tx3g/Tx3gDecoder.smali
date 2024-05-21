.class public final Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "Tx3gDecoder.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1

.field private static final DEFAULT_FONT_FACE:I = 0x0

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DEFAULT_VERTICAL_PLACEMENT:F = 0.85f

.field private static final FONT_FACE_BOLD:I = 0x1

.field private static final FONT_FACE_ITALIC:I = 0x2

.field private static final FONT_FACE_UNDERLINE:I = 0x4

.field private static final SIZE_ATOM_HEADER:I = 0x8

.field private static final SIZE_SHORT:I = 0x2

.field private static final SIZE_STYLE_RECORD:I = 0xc

.field private static final SPAN_PRIORITY_HIGH:I = 0x0

.field private static final SPAN_PRIORITY_LOW:I = 0xff0000

.field private static final TAG:Ljava/lang/String; = "Tx3gDecoder"

.field private static final TX3G_SERIF:Ljava/lang/String; = "Serif"

.field private static final TYPE_STYL:I = 0x7374796c

.field private static final TYPE_TBOX:I = 0x74626f78


# instance fields
.field private final calculatedVideoTrackHeight:I

.field private final customVerticalPlacement:Z

.field private final defaultColorRgba:I

.field private final defaultFontFace:I

.field private final defaultFontFamily:Ljava/lang/String;

.field private final defaultVerticalPlacement:F

.field private final parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "Tx3gDecoder"

    .line 86
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    const-string v2, "sans-serif"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 90
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x30

    if-eq v0, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/16 v5, 0x35

    if-ne v0, v5, :cond_4

    .line 91
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/16 v0, 0x18

    .line 92
    aget-byte v5, p1, v0

    iput v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/16 v5, 0x1a

    .line 93
    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v0, v5, 0x18

    const/16 v5, 0x1b

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    const/16 v5, 0x1c

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    const/16 v5, 0x1d

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    .line 98
    array-length v0, p1

    const/16 v5, 0x2b

    sub-int/2addr v0, v5

    .line 99
    invoke-static {p1, v5, v0}, Lcom/google/android/exoplayer2/util/Util;->fromUtf8Bytes([BII)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Serif"

    .line 100
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "serif"

    :cond_1
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    const/16 v0, 0x19

    .line 102
    aget-byte v0, p1, v0

    mul-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    .line 103
    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v3, :cond_3

    const/16 v1, 0xa

    .line 105
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0xb

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    .line 108
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    goto :goto_0

    :cond_3
    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    iput v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    iput p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    :goto_0
    return-void
.end method

.method private applyStyleRecord(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 181
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 183
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    const/4 v3, 0x2

    .line 184
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 185
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 186
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 187
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 189
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ")."

    const-string v5, "Tx3gDecoder"

    if-le v1, v2, :cond_1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Truncating styl end ("

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to cueText.length() ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    :cond_1
    if-lt v0, v1, :cond_2

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ignoring styl with start ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") >= end ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v8, 0x0

    move-object v3, p2

    move v6, v0

    move v7, v1

    .line 198
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v5, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    move v4, p1

    .line 199
    invoke-static/range {v3 .. v8}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "Unexpected subtitle format."

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static attachColor(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 0

    if-eq p1, p2, :cond_0

    and-int/lit16 p2, p1, 0xff

    shl-int/lit8 p2, p2, 0x18

    ushr-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p2

    .line 241
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 p1, p5, 0x21

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V
    .locals 5

    if-eq p1, p2, :cond_7

    or-int/lit8 p2, p5, 0x21

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    move p5, v1

    goto :goto_0

    :cond_0
    move p5, v0

    :goto_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz p5, :cond_3

    if-eqz v2, :cond_2

    .line 215
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 217
    :cond_2
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 220
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v3, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_2
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 224
    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    if-nez v1, :cond_7

    if-nez p5, :cond_7

    if-nez v2, :cond_7

    .line 227
    new-instance p1, Landroid/text/style/StyleSpan;

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-void
.end method

.method private static attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "sans-serif"

    if-eq p1, v0, :cond_0

    .line 253
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const p1, 0xff0021

    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private static readSubtitleText(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v2

    .line 174
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v0, v3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 176
    :cond_2
    sget-object v2, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 175
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 126
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 127
    invoke-static {p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->readSubtitleText(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 129
    sget-object p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;->EMPTY:Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    return-object p0

    .line 132
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFace:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/high16 v5, 0xff0000

    move-object v0, p2

    .line 133
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFace(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultColorRgba:I

    const/4 v2, -0x1

    .line 135
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachColor(Landroid/text/SpannableStringBuilder;IIIII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultFontFamily:Ljava/lang/String;

    .line 136
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->attachFontFamily(Landroid/text/SpannableStringBuilder;Ljava/lang/String;II)V

    iget p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->defaultVerticalPlacement:F

    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 139
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p3

    const/16 v1, 0x8

    if-lt p3, v1, :cond_5

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 140
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p3

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 141
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 142
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x7374796c

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 144
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lt v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 145
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 147
    invoke-direct {p0, v4, p2}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->applyStyleRecord(Lcom/google/android/exoplayer2/util/ParsableByteArray;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const v3, 0x74626f78

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->customVerticalPlacement:Z

    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 150
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lt p1, v4, :cond_3

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    invoke-static {v5}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->assertTrue(Z)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 151
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->calculatedVideoTrackHeight:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/4 v2, 0x0

    const v3, 0x3f733333    # 0.95f

    .line 153
    invoke-static {p1, v2, v3}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(FFF)F

    move-result p1

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gDecoder;->parsableByteArray:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr p3, v1

    .line 155
    invoke-virtual {v2, p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    .line 157
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;

    new-instance p3, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 159
    invoke-virtual {p3, p2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p2

    .line 160
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/tx3g/Tx3gSubtitle;-><init>(Lcom/google/android/exoplayer2/text/Cue;)V

    return-object p0
.end method
