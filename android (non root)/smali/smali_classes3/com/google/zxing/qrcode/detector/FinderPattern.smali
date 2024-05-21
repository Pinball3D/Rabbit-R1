.class public final Lcom/google/zxing/qrcode/detector/FinderPattern;
.super Lcom/google/zxing/ResultPoint;
.source "FinderPattern.java"


# instance fields
.field private final count:I

.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    iput p3, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    iput p4, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    const/4 v0, 0x0

    if-gtz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result p2

    sub-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_2

    iget p2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    sub-float/2addr p1, p2

    .line 63
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-lez p2, :cond_1

    iget p0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 4

    iget v0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    add-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    .line 76
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, p2

    int-to-float p2, v1

    div-float/2addr v0, p2

    iget v2, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v2, v2

    .line 77
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    div-float/2addr v2, p2

    iget p1, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float p1, p1

    iget p0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    mul-float/2addr p1, p0

    add-float/2addr p1, p3

    div-float/2addr p1, p2

    .line 79
    new-instance p0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    return-object p0
.end method

.method getCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    return p0
.end method

.method public getEstimatedModuleSize()F
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    return p0
.end method
