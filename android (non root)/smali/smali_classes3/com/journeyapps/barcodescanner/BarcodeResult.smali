.class public Lcom/journeyapps/barcodescanner/BarcodeResult;
.super Ljava/lang/Object;
.source "BarcodeResult.java"


# static fields
.field private static final PREVIEW_DOT_WIDTH:F = 10.0f

.field private static final PREVIEW_LINE_WIDTH:F = 4.0f


# instance fields
.field protected mResult:Lcom/google/zxing/Result;

.field private final mScaleFactor:I

.field protected sourceData:Lcom/journeyapps/barcodescanner/SourceData;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mScaleFactor:I

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V
    .locals 7

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    int-to-float p4, p4

    div-float v2, v0, p4

    .line 42
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    div-float v3, p2, p4

    .line 43
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result p2

    div-float v4, p2, p4

    .line 44
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    div-float v5, p2, p4

    move-object v1, p0

    move-object v6, p1

    .line 41
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static transformResultPoints(Ljava/util/List;Lcom/journeyapps/barcodescanner/SourceData;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;",
            "Lcom/journeyapps/barcodescanner/SourceData;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 172
    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/SourceData;->translateResultPoint(Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/ResultPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p0

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/journeyapps/barcodescanner/SourceData;->getBitmap(Landroid/graphics/Rect;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getBitmapScaleFactor()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getBitmapWithResultPoints(I)Landroid/graphics/Bitmap;
    .locals 8

    .line 76
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getTransformedResultPoints()Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 82
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 83
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 85
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne p1, v6, :cond_0

    const/high16 p0, 0x40800000    # 4.0f

    .line 87
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultPoint;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/ResultPoint;

    invoke-static {v3, v0, p0, p1, v6}, Lcom/journeyapps/barcodescanner/BarcodeResult;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    goto :goto_1

    .line 89
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v7, 0x4

    if-ne p1, v7, :cond_2

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p1

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq p1, v7, :cond_1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 91
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object p0

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne p0, p1, :cond_2

    .line 93
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultPoint;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/ResultPoint;

    invoke-static {v3, v0, p0, p1, v6}, Lcom/journeyapps/barcodescanner/BarcodeResult;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    .line 94
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultPoint;

    const/4 p1, 0x3

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/ResultPoint;

    invoke-static {v3, v0, p0, p1, v6}, Lcom/journeyapps/barcodescanner/BarcodeResult;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    goto :goto_1

    :cond_2
    const/high16 p0, 0x41200000    # 10.0f

    .line 96
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/zxing/ResultPoint;

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    div-float/2addr p1, v4

    invoke-virtual {v3, v1, p1, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    :goto_1
    move-object v0, v2

    :cond_5
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 128
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getResult()Lcom/google/zxing/Result;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    return-object p0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 156
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 138
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 120
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 160
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformedResultPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 65
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 68
    invoke-virtual {v0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->sourceData:Lcom/journeyapps/barcodescanner/SourceData;

    invoke-static {v0, p0}, Lcom/journeyapps/barcodescanner/BarcodeResult;->transformResultPoints(Ljava/util/List;Lcom/journeyapps/barcodescanner/SourceData;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->mResult:Lcom/google/zxing/Result;

    .line 165
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
