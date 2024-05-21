.class public Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "FitXYStrategy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FitXYStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    return-void
.end method

.method private static absRatio(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    div-float/2addr v0, p0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method protected getScore(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)F
    .locals 3

    .line 36
    iget p0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    if-lez p0, :cond_1

    iget p0, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    if-gtz p0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget p0, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    iget v1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v1, v1

    div-float/2addr p0, v1

    invoke-static {p0}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result p0

    .line 40
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result v1

    div-float p0, v0, p0

    div-float/2addr p0, v1

    .line 44
    iget v1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget p1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    int-to-float p1, p1

    mul-float/2addr p1, v0

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    div-float/2addr v1, p1

    invoke-static {v1}, Lcom/journeyapps/barcodescanner/camera/FitXYStrategy;->absRatio(F)F

    move-result p1

    div-float/2addr v0, p1

    div-float/2addr v0, p1

    div-float/2addr v0, p1

    mul-float/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public scalePreview(Lcom/journeyapps/barcodescanner/Size;Lcom/journeyapps/barcodescanner/Size;)Landroid/graphics/Rect;
    .locals 1

    .line 60
    new-instance p0, Landroid/graphics/Rect;

    iget p1, p2, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget p2, p2, Lcom/journeyapps/barcodescanner/Size;->height:I

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method
