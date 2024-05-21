.class public final Lcom/google/zxing/common/PerspectiveTransform;
.super Ljava/lang/Object;
.source "PerspectiveTransform.java"


# instance fields
.field private final a11:F

.field private final a12:F

.field private final a13:F

.field private final a21:F

.field private final a22:F

.field private final a23:F

.field private final a31:F

.field private final a32:F

.field private final a33:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iput p4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iput p7, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iput p2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iput p5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iput p8, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iput p3, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iput p6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    iput p9, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    return-void
.end method

.method public static quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 0

    .line 61
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    .line 62
    invoke-static/range {p8 .. p15}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p0}, Lcom/google/zxing/common/PerspectiveTransform;->times(Lcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    return-object p0
.end method

.method public static quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 0

    .line 127
    invoke-static/range {p0 .. p7}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/common/PerspectiveTransform;->buildAdjoint()Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object p0

    return-object p0
.end method

.method public static squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 11

    sub-float v0, p0, p2

    add-float/2addr v0, p4

    sub-float v0, v0, p6

    sub-float v1, p1, p3

    add-float v1, v1, p5

    sub-float v1, v1, p7

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 105
    new-instance v10, Lcom/google/zxing/common/PerspectiveTransform;

    sub-float v1, p2, p0

    sub-float v2, p4, p2

    sub-float v4, p3, p1

    sub-float v5, p5, p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v10

    :cond_0
    sub-float v2, p2, p4

    sub-float v3, p6, p4

    sub-float v4, p3, p5

    sub-float v5, p7, p5

    mul-float v6, v2, v5

    mul-float v7, v3, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v0

    mul-float/2addr v3, v1

    sub-float/2addr v5, v3

    div-float v7, v5, v6

    mul-float/2addr v2, v1

    mul-float/2addr v0, v4

    sub-float/2addr v2, v0

    div-float v8, v2, v6

    .line 116
    new-instance v10, Lcom/google/zxing/common/PerspectiveTransform;

    sub-float v0, p2, p0

    mul-float v1, v7, p2

    add-float/2addr v1, v0

    sub-float v0, p6, p0

    mul-float v2, v8, p6

    add-float/2addr v2, v0

    sub-float v0, p3, p1

    mul-float v3, v7, p3

    add-float v4, v0, v3

    sub-float v0, p7, p1

    mul-float v3, v8, p7

    add-float v5, v0, v3

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v0, v10

    move v3, p0

    move v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v10
.end method


# virtual methods
.method buildAdjoint()Lcom/google/zxing/common/PerspectiveTransform;
    .locals 16

    move-object/from16 v0, p0

    .line 132
    new-instance v10, Lcom/google/zxing/common/PerspectiveTransform;

    iget v1, v0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v2, v0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float v3, v1, v2

    iget v4, v0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v5, v0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    iget v6, v0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float v7, v4, v6

    iget v8, v0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float v9, v8, v2

    sub-float/2addr v7, v9

    mul-float v9, v8, v5

    mul-float v11, v1, v6

    sub-float/2addr v9, v11

    iget v11, v0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float v12, v11, v5

    iget v13, v0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float v14, v13, v2

    sub-float/2addr v12, v14

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v2, v0

    mul-float v14, v11, v6

    sub-float v14, v2, v14

    mul-float/2addr v6, v13

    mul-float/2addr v5, v0

    sub-float/2addr v6, v5

    mul-float v2, v13, v4

    mul-float v5, v11, v1

    sub-float v15, v2, v5

    mul-float/2addr v11, v8

    mul-float/2addr v4, v0

    sub-float/2addr v11, v4

    mul-float/2addr v0, v1

    mul-float/2addr v13, v8

    sub-float v13, v0, v13

    move-object v0, v10

    move v1, v3

    move v2, v7

    move v3, v9

    move v4, v12

    move v5, v14

    move v7, v15

    move v8, v11

    move v9, v13

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method times(Lcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 144
    new-instance v10, Lcom/google/zxing/common/PerspectiveTransform;

    iget v2, v0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v3, v1, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float v4, v2, v3

    iget v5, v0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v6, v1, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float v7, v5, v6

    add-float/2addr v4, v7

    iget v7, v0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iget v8, v1, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float v9, v7, v8

    add-float/2addr v4, v9

    iget v9, v1, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float v11, v2, v9

    iget v12, v1, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float v13, v5, v12

    add-float/2addr v11, v13

    iget v13, v1, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float v14, v7, v13

    add-float/2addr v11, v14

    iget v14, v1, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v2, v14

    iget v15, v1, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v5, v15

    add-float/2addr v2, v5

    iget v1, v1, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v7, v1

    add-float v5, v2, v7

    iget v2, v0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float v7, v2, v3

    move/from16 p1, v5

    iget v5, v0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float v16, v5, v6

    add-float v7, v7, v16

    move/from16 v16, v11

    iget v11, v0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float v17, v11, v8

    add-float v7, v7, v17

    mul-float v17, v2, v9

    mul-float v18, v5, v12

    add-float v17, v17, v18

    mul-float v18, v11, v13

    add-float v17, v17, v18

    mul-float/2addr v2, v14

    mul-float/2addr v5, v15

    add-float/2addr v2, v5

    mul-float/2addr v11, v1

    add-float/2addr v11, v2

    iget v2, v0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v3, v2

    iget v5, v0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v8, v0

    add-float/2addr v8, v3

    mul-float/2addr v9, v2

    mul-float/2addr v12, v5

    add-float/2addr v9, v12

    mul-float/2addr v13, v0

    add-float/2addr v9, v13

    mul-float/2addr v2, v14

    mul-float/2addr v5, v15

    add-float/2addr v2, v5

    mul-float/2addr v0, v1

    add-float v12, v2, v0

    move-object v0, v10

    move v1, v4

    move/from16 v2, v16

    move/from16 v3, p1

    move v4, v7

    move/from16 v5, v17

    move v6, v11

    move v7, v8

    move v8, v9

    move v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    return-object v10
.end method

.method public transformPoints([F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    iget v3, v0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    iget v4, v0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    iget v5, v0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    iget v6, v0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    iget v7, v0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    iget v8, v0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    iget v9, v0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    .line 76
    array-length v10, v1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    .line 78
    aget v12, v1, v11

    add-int/lit8 v13, v11, 0x1

    .line 79
    aget v14, v1, v13

    mul-float v15, v4, v12

    mul-float v16, v7, v14

    add-float v15, v15, v16

    add-float/2addr v15, v0

    mul-float v16, v2, v12

    mul-float v17, v5, v14

    add-float v16, v16, v17

    add-float v16, v16, v8

    div-float v16, v16, v15

    .line 81
    aput v16, v1, v11

    mul-float/2addr v12, v3

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    add-float/2addr v12, v9

    div-float/2addr v12, v15

    .line 82
    aput v12, v1, v13

    add-int/lit8 v11, v11, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public transformPoints([F[F)V
    .locals 7

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    aget v2, p1, v1

    .line 90
    aget v3, p2, v1

    iget v4, p0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iget v6, p0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    .line 92
    aput v5, p1, v1

    iget v5, p0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v5, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    iget v2, p0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    .line 93
    aput v5, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
