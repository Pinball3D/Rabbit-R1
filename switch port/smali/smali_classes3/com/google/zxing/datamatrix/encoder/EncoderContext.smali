.class final Lcom/google/zxing/datamatrix/encoder/EncoderContext;
.super Ljava/lang/Object;
.source "EncoderContext.java"


# instance fields
.field private final codewords:Ljava/lang/StringBuilder;

.field private maxSize:Lcom/google/zxing/Dimension;

.field private minSize:Lcom/google/zxing/Dimension;

.field private final msg:Ljava/lang/String;

.field private newEncoding:I

.field pos:I

.field private shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field private skipAtEnd:I

.field private symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 39
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 40
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_1

    .line 41
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method private getTotalMessageCharCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    return p0
.end method

.method public getCodewords()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public getCurrent()C
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public getCurrentChar()C
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getNewEncoding()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return p0
.end method

.method public getRemainingCharacters()I
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    move-result v0

    iget p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-object p0
.end method

.method public hasMoreCharacters()Z
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 106
    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getTotalMessageCharCount()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resetEncoderSignal()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method public resetSymbolInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    iput-object p2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    return-void
.end method

.method public setSkipAtEnd(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->skipAtEnd:I

    return-void
.end method

.method public setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method public signalEncoderChange(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->newEncoding:I

    return-void
.end method

.method public updateSymbolInfo()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo(I)V

    return-void
.end method

.method public updateSymbolInfo(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->shape:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->minSize:Lcom/google/zxing/Dimension;

    iget-object v2, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->maxSize:Lcom/google/zxing/Dimension;

    const/4 v3, 0x1

    .line 127
    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->symbolInfo:Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    :cond_1
    return-void
.end method

.method public writeCodeword(C)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public writeCodewords(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->codewords:Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
