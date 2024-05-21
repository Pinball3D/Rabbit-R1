.class public Lcom/journeyapps/barcodescanner/BarcodeEncoder;
.super Ljava/lang/Object;
.source "BarcodeEncoder.java"


# static fields
.field private static final BLACK:I = -0x1000000

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    .locals 8

    .line 30
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 31
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int p0, v6, v7

    .line 32
    new-array v1, p0, [I

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, v7, :cond_2

    mul-int v2, v0, v6

    move v3, p0

    :goto_1
    if-ge v3, v6, :cond_1

    add-int v4, v2, v3

    .line 36
    invoke-virtual {p1, v3, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v5, -0x1

    :goto_2
    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v6

    .line 41
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 47
    :try_start_0
    new-instance p0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {p0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Lcom/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 49
    throw p0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 58
    :try_start_0
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Lcom/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 60
    throw p0
.end method

.method public encodeBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public encodeBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 71
    invoke-virtual/range {p0 .. p5}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeEncoder;->createBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
