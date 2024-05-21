.class public Lcom/journeyapps/barcodescanner/camera/CenterCropStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "CenterCropStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CenterCropStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method protected getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .locals 6

    .line 30
    iget p0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-lez p0, :cond_2

    iget p0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gtz p0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    .line 35
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpl-float p1, v0, v1

    if-lez p1, :cond_1

    div-float p1, v1, v0

    float-to-double v2, p1

    const-wide v4, 0x3ff199999999999aL    # 1.1

    .line 41
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 49
    :cond_1
    iget p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float p2, p2

    div-float/2addr p0, p2

    add-float/2addr p1, p0

    div-float/2addr v1, p1

    div-float/2addr v1, p1

    mul-float/2addr v0, v1

    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 4

    .line 70
    invoke-virtual {p1, p2}, Lcom/journeyapps/barcodescanner/Size;->scaleCrop(Lcom/journeyapps/barcodescanner/Size;)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CenterCropStrategy;->TAG:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Preview: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; Scaled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; Want: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget p1, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v0, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 74
    iget v0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    .line 76
    new-instance p2, Landroid/graphics/Rect;

    neg-int v1, p1

    neg-int v2, v0

    iget v3, p0, Lcom/journeyapps/barcodescanner/Size;->width:I

    sub-int/2addr v3, p1

    iget p0, p0, Lcom/journeyapps/barcodescanner/Size;->height:I

    sub-int/2addr p0, v0

    invoke-direct {p2, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method
