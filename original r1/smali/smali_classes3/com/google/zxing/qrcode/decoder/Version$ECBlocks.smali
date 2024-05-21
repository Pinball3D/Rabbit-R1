.class public final Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    return-object p0
.end method

.method public getECCodewordsPerBlock()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    return p0
.end method

.method public getNumBlocks()I
    .locals 4

    iget-object p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 198
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 199
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getTotalECCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 205
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method
