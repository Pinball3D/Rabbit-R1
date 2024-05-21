.class final Lcom/google/zxing/aztec/encoder/SimpleToken;
.super Lcom/google/zxing/aztec/encoder/Token;
.source "SimpleToken.java"


# instance fields
.field private final bitCount:S

.field private final value:S


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/Token;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/encoder/Token;-><init>(Lcom/google/zxing/aztec/encoder/Token;)V

    int-to-short p1, p2

    iput-short p1, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->value:S

    int-to-short p1, p3

    iput-short p1, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    return-void
.end method


# virtual methods
.method appendTo(Lcom/google/zxing/common/BitArray;[B)V
    .locals 0

    iget-short p2, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->value:S

    iget-short p0, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    .line 35
    invoke-virtual {p1, p2, p0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-short v0, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->value:S

    iget-short v1, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    and-int/2addr v0, v3

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p0, p0, Lcom/google/zxing/aztec/encoder/SimpleToken;->bitCount:S

    shl-int p0, v2, p0

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
