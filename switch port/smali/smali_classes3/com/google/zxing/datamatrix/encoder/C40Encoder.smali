.class Lcom/google/zxing/datamatrix/encoder/C40Encoder;
.super Ljava/lang/Object;
.source "C40Encoder.java"

# interfaces
.implements Lcom/google/zxing/datamatrix/encoder/Encoder;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 1

    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    .line 70
    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 71
    iget p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result p2

    .line 73
    invoke-virtual {p0, p2, p3}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p0

    .line 74
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetSymbolInfo()V

    return p0
.end method

.method private static encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 172
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    mul-int/lit16 v1, v1, 0x640

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v1, v2

    .line 173
    div-int/lit16 p0, v1, 0x100

    int-to-char p0, p0

    .line 174
    rem-int/lit16 v1, v1, 0x100

    int-to-char v1, v1

    .line 175
    new-instance v4, Ljava/lang/String;

    new-array v3, v3, [C

    aput-char p0, v3, v0

    aput-char v1, v3, v2

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method static writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 79
    invoke-static {p1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeToCodewords(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodewords(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x3

    .line 80
    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V
    .locals 8

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCurrentChar()C

    move-result v1

    .line 32
    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 34
    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result v1

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    shl-int/2addr v2, v3

    .line 38
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v5

    add-int/2addr v5, v2

    .line 39
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 40
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v2

    sub-int/2addr v2, v5

    .line 42
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result v5

    if-nez v5, :cond_3

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    if-eq v2, v7, :cond_1

    .line 46
    invoke-direct {p0, p1, v0, v5, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    if-ne v6, v3, :cond_4

    if-gt v1, v4, :cond_2

    if-eq v2, v3, :cond_4

    .line 49
    :cond_2
    invoke-direct {p0, p1, v0, v5, v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->backtrackOneCharacter(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 55
    rem-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->lookAheadTest(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->getEncodingMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    .line 64
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method encodeChar(CLjava/lang/StringBuilder;)I
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    const/4 p0, 0x3

    .line 129
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    const/16 v2, 0x30

    if-lt p1, v2, :cond_1

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1

    add-int/lit8 p1, p1, -0x2c

    int-to-char p0, p1

    .line 133
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2

    add-int/lit8 p1, p1, -0x33

    int-to-char p0, p1

    .line 137
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2
    const/4 v2, 0x2

    if-ge p1, v1, :cond_3

    const/4 p0, 0x0

    .line 141
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_3
    const/16 v1, 0x2f

    if-gt p1, v1, :cond_4

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x21

    int-to-char p0, p1

    .line 147
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_4
    const/16 v1, 0x40

    if-gt p1, v1, :cond_5

    .line 151
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x2b

    int-to-char p0, p1

    .line 152
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_5
    const/16 v1, 0x5f

    if-gt p1, v1, :cond_6

    .line 156
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x45

    int-to-char p0, p1

    .line 157
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_6
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_7

    .line 161
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x60

    int-to-char p0, p1

    .line 162
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_7
    const-string v0, "\u0001\u001e"

    .line 165
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->encodeChar(CLjava/lang/StringBuilder;)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public getEncodingMode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method handleEOD(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V
    .locals 6

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v0, 0x3

    div-int/2addr p0, v0

    const/4 v1, 0x1

    shl-int/2addr p0, v1

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    rem-int/2addr v2, v0

    .line 93
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v3

    add-int/2addr v3, p0

    .line 94
    invoke-virtual {p1, v3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    .line 95
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p0

    sub-int/2addr p0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v5, 0xfe

    if-ne v2, v3, :cond_1

    .line 98
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lt p0, v0, :cond_0

    .line 100
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 103
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    goto :goto_3

    :cond_1
    if-ne p0, v1, :cond_4

    if-ne v2, v1, :cond_4

    .line 106
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lt p0, v0, :cond_2

    .line 107
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 110
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 113
    :cond_3
    iget p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr p0, v1

    iput p0, p1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_3

    :cond_4
    if-nez v2, :cond_8

    .line 115
    :goto_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v0, :cond_5

    .line 116
    invoke-static {p1, p2}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;->writeNextTriplet(Lcom/google/zxing/datamatrix/encoder/EncoderContext;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_5
    if-gtz p0, :cond_6

    .line 118
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 119
    :cond_6
    invoke-virtual {p1, v5}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 124
    :cond_7
    :goto_3
    invoke-virtual {p1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->signalEncoderChange(I)V

    return-void

    .line 122
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected case. Please report!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
