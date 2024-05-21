.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 39
    invoke-static/range {p4 .. p19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 43
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    if-lez p2, :cond_4

    if-lez p3, :cond_4

    .line 54
    new-instance p0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {p0, p2, p3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    mul-int/lit8 p2, p2, 0x2

    .line 55
    new-array v0, p2, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_3

    int-to-float v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    move v5, v1

    :goto_1
    if-ge v5, p2, :cond_0

    .line 60
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v4

    aput v6, v0, v5

    add-int/lit8 v6, v5, 0x1

    .line 61
    aput v3, v0, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p4, v0}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    invoke-static {p1, v0}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    move v3, v1

    :goto_2
    if-ge v3, p2, :cond_2

    .line 69
    :try_start_0
    aget v4, v0, v3

    float-to-int v4, v4

    add-int/lit8 v5, v3, 0x1

    aget v5, v0, v5

    float-to-int v5, v5

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    div-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v4, v2}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 82
    :catch_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    .line 52
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
