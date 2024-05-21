.class final Lcom/google/android/material/carousel/Arrangement;
.super Ljava/lang/Object;
.source "Arrangement.java"


# static fields
.field private static final MEDIUM_ITEM_FLEX_PERCENTAGE:F = 0.1f


# instance fields
.field final cost:F

.field final largeCount:I

.field largeSize:F

.field mediumCount:I

.field mediumSize:F

.field final priority:I

.field smallCount:I

.field smallSize:F


# direct methods
.method constructor <init>(IFFFIFIFIF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->priority:I

    .line 79
    invoke-static {p2, p3, p4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iput p5, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    iput p6, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iput p7, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    iput p8, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iput p9, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    .line 86
    invoke-direct {p0, p10, p3, p4, p8}, Lcom/google/android/material/carousel/Arrangement;->fit(FFFF)V

    .line 87
    invoke-direct {p0, p8}, Lcom/google/android/material/carousel/Arrangement;->cost(F)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->cost:F

    return-void
.end method

.method private calculateLargeSize(FIFII)F
    .locals 0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    int-to-float p0, p2

    int-to-float p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    add-float/2addr p0, p2

    mul-float/2addr p0, p3

    sub-float/2addr p1, p0

    int-to-float p0, p5

    add-float/2addr p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method private cost(F)F
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/google/android/material/carousel/Arrangement;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0

    :cond_0
    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    sub-float/2addr p1, v0

    .line 215
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/google/android/material/carousel/Arrangement;->priority:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method static findLowestCostArrangement(FFFF[IF[IF[I)Lcom/google/android/material/carousel/Arrangement;
    .locals 25

    move-object/from16 v0, p4

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    .line 252
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    aget v19, v2, v7

    .line 253
    array-length v15, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_4

    aget v20, v1, v14

    .line 254
    array-length v13, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_3

    aget v16, v0, v12

    .line 255
    new-instance v11, Lcom/google/android/material/carousel/Arrangement;

    move-object v8, v11

    move v9, v5

    move/from16 v10, p1

    move-object v6, v11

    move/from16 v11, p2

    move/from16 v21, v12

    move/from16 v12, p3

    move/from16 v22, v13

    move/from16 v13, v16

    move/from16 v23, v14

    move/from16 v14, p5

    move/from16 v24, v15

    move/from16 v15, v20

    move/from16 v16, p7

    move/from16 v17, v19

    move/from16 v18, p0

    invoke-direct/range {v8 .. v18}, Lcom/google/android/material/carousel/Arrangement;-><init>(IFFFIFIFIF)V

    if-eqz v4, :cond_0

    iget v8, v6, Lcom/google/android/material/carousel/Arrangement;->cost:F

    .line 267
    iget v9, v4, Lcom/google/android/material/carousel/Arrangement;->cost:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    :cond_0
    iget v4, v6, Lcom/google/android/material/carousel/Arrangement;->cost:F

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_1

    return-object v6

    :cond_1
    move-object v4, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v12, v21, 0x1

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, v24

    goto :goto_2

    :cond_3
    move/from16 v23, v14

    move/from16 v24, v15

    add-int/lit8 v14, v23, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    return-object v4
.end method

.method private fit(FFFF)V
    .locals 9

    .line 132
    invoke-direct {p0}, Lcom/google/android/material/carousel/Arrangement;->getSpace()F

    move-result v0

    sub-float v0, p1, v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr p3, p2

    .line 137
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    cmpg-float p3, v0, v2

    if-gez p3, :cond_1

    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr p2, p3

    .line 140
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr p3, p2

    iput p3, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    :cond_1
    :goto_0
    iget v5, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v5, :cond_2

    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    move v6, p2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iput v6, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iget v7, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    iget v8, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    move-object v3, p0

    move v4, p1

    .line 146
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/carousel/Arrangement;->calculateLargeSize(FIFII)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    add-float/2addr p2, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez p3, :cond_4

    cmpl-float v0, p1, p4

    if-eqz v0, :cond_4

    sub-float/2addr p4, p1

    iget p1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    int-to-float p1, p1

    mul-float/2addr p4, p1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, p1

    int-to-float p1, p3

    mul-float/2addr p2, p1

    .line 155
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpl-float p2, p4, v2

    if-lez p2, :cond_3

    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    int-to-float p3, p3

    div-float p3, p1, p3

    sub-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    add-float/2addr p2, p1

    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    goto :goto_2

    :cond_3
    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    int-to-float p3, p3

    div-float p3, p1, p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget p3, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    int-to-float p3, p3

    div-float/2addr p1, p3

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    :cond_4
    :goto_2
    return-void
.end method

.method private getSpace()F
    .locals 3

    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    iget v2, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    iget p0, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    int-to-float p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    return v0
.end method

.method private isValid()Z
    .locals 4

    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v3, :cond_1

    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    if-lez v3, :cond_1

    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget v3, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget p0, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    cmpl-float p0, v3, p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    iget p0, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method


# virtual methods
.method getItemCount()I
    .locals 2

    iget v0, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Arrangement [priority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->smallSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediumCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediumSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->mediumSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", largeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", largeSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/carousel/Arrangement;->largeSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/carousel/Arrangement;->cost:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
