.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.source "AI01320xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 0

    const/16 p0, 0x2710

    if-ge p2, p0, :cond_0

    const-string p0, "(3202)"

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p0, "(3203)"

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected checkWeight(I)I
    .locals 0

    const/16 p0, 0x2710

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, p0

    return p1
.end method
