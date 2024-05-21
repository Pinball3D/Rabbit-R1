.class public Landroidx/core/content/res/CamColor;
.super Ljava/lang/Object;
.source "CamColor.java"


# static fields
.field private static final CHROMA_SEARCH_ENDPOINT:F = 0.4f

.field private static final DE_MAX:F = 1.0f

.field private static final DL_MAX:F = 0.2f

.field private static final LIGHTNESS_SEARCH_ENDPOINT:F = 0.01f


# instance fields
.field private final mAstar:F

.field private final mBstar:F

.field private final mChroma:F

.field private final mHue:F

.field private final mJ:F

.field private final mJstar:F

.field private final mM:F

.field private final mQ:F

.field private final mS:F


# direct methods
.method constructor <init>(FFFFFFFFF)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/core/content/res/CamColor;->mHue:F

    iput p2, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    iput p3, p0, Landroidx/core/content/res/CamColor;->mJ:F

    iput p4, p0, Landroidx/core/content/res/CamColor;->mQ:F

    iput p5, p0, Landroidx/core/content/res/CamColor;->mM:F

    iput p6, p0, Landroidx/core/content/res/CamColor;->mS:F

    iput p7, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    iput p8, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    iput p9, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    return-void
.end method

.method private static findCamByJ(FFF)Landroidx/core/content/res/CamColor;
    .locals 12

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x447a0000    # 1000.0f

    const/4 v3, 0x0

    move v5, v0

    move-object v4, v3

    move v3, v2

    :goto_0
    sub-float v6, v5, v1

    .line 535
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    sub-float v6, v1, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    .line 538
    invoke-static {v6, p1, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v7

    .line 542
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->viewedInSrgb()I

    move-result v7

    .line 543
    invoke-static {v7}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    move-result v8

    sub-float v9, p2, v8

    .line 544
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_0

    .line 552
    invoke-static {v7}, Landroidx/core/content/res/CamColor;->fromColor(I)Landroidx/core/content/res/CamColor;

    move-result-object v7

    .line 554
    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v10

    invoke-virtual {v7}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v11

    invoke-static {v10, v11, p0}, Landroidx/core/content/res/CamColor;->fromJch(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v10

    .line 553
    invoke-virtual {v7, v10}, Landroidx/core/content/res/CamColor;->distance(Landroidx/core/content/res/CamColor;)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gtz v11, :cond_0

    move-object v4, v7

    move v2, v9

    move v3, v10

    :cond_0
    cmpl-float v7, v2, v0

    if-nez v7, :cond_1

    cmpl-float v7, v3, v0

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    cmpg-float v7, v8, p2

    if-gez v7, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    :goto_1
    return-object v4
.end method

.method static fromColor(I)Landroidx/core/content/res/CamColor;
    .locals 14

    const/4 v0, 0x7

    new-array v0, v0, [F

    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 165
    sget-object v3, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, v3, v0, v2}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;[F[F)V

    .line 166
    new-instance p0, Landroidx/core/content/res/CamColor;

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v4, 0x1

    aget v6, v2, v4

    aget v7, v0, v3

    aget v8, v0, v4

    const/4 v2, 0x2

    aget v9, v0, v2

    aget v10, v0, v1

    const/4 v1, 0x4

    aget v11, v0, v1

    const/4 v1, 0x5

    aget v12, v0, v1

    const/4 v1, 0x6

    aget v13, v0, v1

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object p0
.end method

.method static fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;[F[F)V
    .locals 19

    move/from16 v0, p0

    move-object/from16 v1, p3

    .line 203
    invoke-static {v0, v1}, Landroidx/core/content/res/CamUtils;->xyzFromInt(I[F)V

    .line 207
    sget-object v0, Landroidx/core/content/res/CamUtils;->XYZ_TO_CAM16RGB:[[F

    const/4 v2, 0x0

    .line 208
    aget v3, v1, v2

    aget-object v4, v0, v2

    aget v5, v4, v2

    mul-float/2addr v5, v3

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v8, v4, v6

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    const/4 v8, 0x2

    aget v9, v1, v8

    aget v4, v4, v8

    mul-float/2addr v4, v9

    add-float/2addr v5, v4

    .line 209
    aget-object v4, v0, v6

    aget v10, v4, v2

    mul-float/2addr v10, v3

    aget v11, v4, v6

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    aget v4, v4, v8

    mul-float/2addr v4, v9

    add-float/2addr v10, v4

    .line 210
    aget-object v0, v0, v8

    aget v4, v0, v2

    mul-float/2addr v3, v4

    aget v4, v0, v6

    mul-float/2addr v7, v4

    add-float/2addr v3, v7

    aget v0, v0, v8

    mul-float/2addr v9, v0

    add-float/2addr v3, v9

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v0

    aget v0, v0, v2

    mul-float/2addr v0, v5

    .line 214
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v4

    aget v4, v4, v6

    mul-float/2addr v4, v10

    .line 215
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v5

    aget v5, v5, v8

    mul-float/2addr v5, v3

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v3, v7

    float-to-double v9, v3

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    const-wide v13, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v3, v9

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v7, v9

    float-to-double v9, v7

    div-double/2addr v9, v11

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v7, v9

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-double v9, v9

    div-double/2addr v9, v11

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 221
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    const/high16 v10, 0x43c80000    # 400.0f

    mul-float/2addr v0, v10

    mul-float/2addr v0, v3

    const v13, 0x41d90a3d    # 27.13f

    add-float/2addr v3, v13

    div-float/2addr v0, v3

    .line 222
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v10

    mul-float/2addr v3, v7

    add-float/2addr v7, v13

    div-float/2addr v3, v7

    .line 223
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v4

    mul-float/2addr v4, v10

    mul-float/2addr v4, v9

    add-float/2addr v9, v13

    div-float/2addr v4, v9

    const-wide/high16 v9, 0x4026000000000000L    # 11.0

    float-to-double v13, v0

    mul-double/2addr v13, v9

    const-wide/high16 v9, -0x3fd8000000000000L    # -12.0

    float-to-double v6, v3

    mul-double/2addr v6, v9

    add-double/2addr v13, v6

    float-to-double v5, v4

    add-double/2addr v13, v5

    double-to-float v7, v13

    const/high16 v9, 0x41300000    # 11.0f

    div-float/2addr v7, v9

    add-float v9, v0, v3

    float-to-double v9, v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v13

    sub-double/2addr v9, v5

    double-to-float v5, v9

    const/high16 v6, 0x41100000    # 9.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x41a00000    # 20.0f

    mul-float v9, v0, v6

    mul-float/2addr v3, v6

    add-float/2addr v9, v3

    const/high16 v10, 0x41a80000    # 21.0f

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    div-float/2addr v9, v6

    const/high16 v10, 0x42200000    # 40.0f

    mul-float/2addr v0, v10

    add-float/2addr v0, v3

    add-float/2addr v0, v4

    div-float/2addr v0, v6

    float-to-double v3, v5

    float-to-double v11, v7

    .line 235
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x43340000    # 180.0f

    mul-float/2addr v3, v4

    const v6, 0x40490fdb    # (float)Math.PI

    div-float/2addr v3, v6

    const/4 v10, 0x0

    cmpg-float v10, v3, v10

    const/high16 v11, 0x43b40000    # 360.0f

    if-gez v10, :cond_0

    add-float/2addr v3, v11

    goto :goto_0

    :cond_0
    cmpl-float v10, v3, v11

    if-ltz v10, :cond_1

    sub-float/2addr v3, v11

    :cond_1
    :goto_0
    mul-float/2addr v6, v3

    div-float/2addr v6, v4

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v4

    mul-float/2addr v0, v4

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v4

    div-float/2addr v0, v4

    move v10, v9

    float-to-double v8, v0

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v12

    mul-float/2addr v0, v12

    move v12, v5

    float-to-double v4, v0

    .line 247
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v0, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v5

    const/high16 v8, 0x40800000    # 4.0f

    div-float v5, v8, v5

    div-float v4, v0, v4

    float-to-double v13, v4

    .line 252
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v4, v13

    mul-float/2addr v5, v4

    .line 253
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v4

    add-float/2addr v4, v8

    mul-float/2addr v5, v4

    .line 254
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v4

    mul-float/2addr v5, v4

    float-to-double v13, v3

    const-wide v17, 0x403423d70a3d70a4L    # 20.14

    cmpg-double v4, v13, v17

    if-gez v4, :cond_2

    add-float/2addr v11, v3

    goto :goto_1

    :cond_2
    move v11, v3

    :goto_1
    float-to-double v13, v11

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v13, v13, v17

    const-wide v17, 0x4066800000000000L    # 180.0

    div-double v13, v13, v17

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    add-double/2addr v13, v15

    .line 258
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    const-wide v15, 0x400e666666666666L    # 3.8

    add-double/2addr v13, v15

    double-to-float v4, v13

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v4, v9

    const v9, 0x45706276

    mul-float/2addr v4, v9

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v9

    mul-float/2addr v4, v9

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v9

    mul-float/2addr v4, v9

    mul-float/2addr v7, v7

    mul-float v9, v12, v12

    add-float/2addr v7, v9

    float-to-double v11, v7

    .line 260
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v7, v11

    mul-float/2addr v4, v7

    const v7, 0x3e9c28f6    # 0.305f

    add-float v9, v10, v7

    div-float/2addr v4, v9

    .line 261
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v7

    float-to-double v9, v7

    const-wide v11, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v11, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v11, v9

    const-wide v9, 0x3fe75c28f5c28f5cL    # 0.73

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v7, v9

    float-to-double v9, v4

    const-wide v11, 0x3feccccccccccccdL    # 0.9

    .line 262
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v4, v9

    mul-float/2addr v7, v4

    float-to-double v9, v0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    .line 264
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v4, v9

    mul-float/2addr v4, v7

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v9

    mul-float/2addr v9, v4

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v10

    mul-float/2addr v7, v10

    .line 267
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v10

    add-float/2addr v10, v8

    div-float/2addr v7, v10

    float-to-double v7, v7

    .line 266
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x42480000    # 50.0f

    mul-float/2addr v7, v8

    const v8, 0x3fd9999a    # 1.7f

    mul-float/2addr v8, v0

    const v10, 0x3be56042    # 0.007f

    mul-float/2addr v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    div-float/2addr v8, v10

    const v10, 0x3cbac711    # 0.0228f

    mul-float/2addr v10, v9

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 271
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    double-to-float v10, v10

    const v11, 0x422f7048

    mul-float/2addr v10, v11

    float-to-double v11, v6

    .line 272
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v6, v13

    mul-float/2addr v6, v10

    .line 273
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    .line 276
    aput v3, v1, v2

    const/4 v3, 0x1

    .line 277
    aput v4, v1, v3

    if-eqz p2, :cond_3

    .line 280
    aput v0, p2, v2

    .line 281
    aput v5, p2, v3

    const/4 v0, 0x2

    .line 282
    aput v9, p2, v0

    const/4 v0, 0x3

    .line 283
    aput v7, p2, v0

    const/4 v0, 0x4

    .line 284
    aput v8, p2, v0

    const/4 v0, 0x5

    .line 285
    aput v6, p2, v0

    const/4 v0, 0x6

    .line 286
    aput v10, p2, v0

    :cond_3
    return-void
.end method

.method private static fromJch(FFF)Landroidx/core/content/res/CamColor;
    .locals 1

    .line 298
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;

    move-result-object p0

    return-object p0
.end method

.method private static fromJchInFrame(FFFLandroidx/core/content/res/ViewingConditions;)Landroidx/core/content/res/CamColor;
    .locals 13

    move v3, p0

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float v0, v1, v0

    float-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    .line 312
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v0, v2

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v2

    mul-float v6, v0, v2

    .line 315
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getFlRoot()F

    move-result v0

    mul-float v7, p1, v0

    .line 316
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    div-float v0, p1, v0

    .line 317
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v2

    mul-float/2addr v0, v2

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v2

    add-float/2addr v2, v1

    div-float/2addr v0, v2

    float-to-double v0, v0

    .line 317
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v8, v0, v1

    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p2

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    const v1, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v3

    const v2, 0x3be56042    # 0.007f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    div-float v9, v1, v2

    const-wide v1, 0x3f9758e219652bd4L    # 0.0228

    float-to-double v4, v7

    mul-double/2addr v4, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v1

    .line 322
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x422f7048

    mul-float/2addr v1, v2

    float-to-double v4, v0

    .line 323
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v0, v10

    mul-float v10, v1, v0

    .line 324
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v0, v4

    mul-float v11, v1, v0

    .line 325
    new-instance v12, Landroidx/core/content/res/CamColor;

    move-object v0, v12

    move v1, p2

    move v2, p1

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    invoke-direct/range {v0 .. v9}, Landroidx/core/content/res/CamColor;-><init>(FFFFFFFFF)V

    return-object v12
.end method

.method public static getM3HCTfromColor(I[F)V
    .locals 2

    .line 191
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroidx/core/content/res/CamColor;->fromColorInViewingConditions(ILandroidx/core/content/res/ViewingConditions;[F[F)V

    const/4 v0, 0x2

    .line 192
    invoke-static {p0}, Landroidx/core/content/res/CamUtils;->lStarFromInt(I)F

    move-result p0

    aput p0, p1, v0

    return-void
.end method

.method public static toColor(FFF)I
    .locals 1

    .line 152
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/CamColor;->toColor(FFFLandroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0
.end method

.method static toColor(FFFLandroidx/core/content/res/ViewingConditions;)I
    .locals 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_7

    .line 459
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43b40000    # 360.0f

    .line 463
    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v1

    move v1, v0

    move v0, p1

    :goto_1
    sub-float v4, v1, p1

    .line 476
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_5

    .line 479
    invoke-static {p0, v0, p2}, Landroidx/core/content/res/CamColor;->findCamByJ(FFF)Landroidx/core/content/res/CamColor;

    move-result-object v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    if-eqz v4, :cond_2

    .line 483
    invoke-virtual {v4, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0

    :cond_2
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-nez v4, :cond_4

    move p1, v0

    goto :goto_2

    :cond_4
    move v1, v0

    move-object v3, v4

    :goto_2
    sub-float v0, p1, v1

    div-float/2addr v0, v5

    add-float/2addr v0, v1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    .line 513
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    return p0

    .line 516
    :cond_6
    invoke-virtual {v3, p3}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0

    .line 460
    :cond_7
    :goto_3
    invoke-static {p2}, Landroidx/core/content/res/CamUtils;->intFromLStar(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method distance(Landroidx/core/content/res/CamColor;)F
    .locals 3

    .line 335
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJStar()F

    move-result v0

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getJStar()F

    move-result v1

    sub-float/2addr v0, v1

    .line 336
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getAStar()F

    move-result v1

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getAStar()F

    move-result v2

    sub-float/2addr v1, v2

    .line 337
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getBStar()F

    move-result p0

    invoke-virtual {p1}, Landroidx/core/content/res/CamColor;->getBStar()F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    .line 338
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide v0, 0x3fe428f5c28f5c29L    # 0.63

    .line 339
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide v0, 0x3ff68f5c28f5c28fL    # 1.41

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method getAStar()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mAstar:F

    return p0
.end method

.method getBStar()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mBstar:F

    return p0
.end method

.method getChroma()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mChroma:F

    return p0
.end method

.method getHue()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mHue:F

    return p0
.end method

.method getJ()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mJ:F

    return p0
.end method

.method getJStar()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mJstar:F

    return p0
.end method

.method getM()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mM:F

    return p0
.end method

.method getQ()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mQ:F

    return p0
.end method

.method getS()F
    .locals 0

    iget p0, p0, Landroidx/core/content/res/CamColor;->mS:F

    return p0
.end method

.method viewed(Landroidx/core/content/res/ViewingConditions;)I
    .locals 15

    .line 353
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getChroma()F

    move-result v0

    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v1

    float-to-double v6, v1

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    div-float/2addr v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    float-to-double v0, v0

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getN()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3fd28f5c28f5c28fL    # 0.29

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v8, 0x3ffa3d70a3d70a3dL    # 1.64

    sub-double/2addr v8, v6

    const-wide v6, 0x3fe75c28f5c28f5cL    # 0.73

    .line 357
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v0, v6

    const-wide v6, 0x3ff1c71c71c71c72L    # 1.1111111111111112

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 359
    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getHue()F

    move-result v1

    const v6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, v6

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v1, v6

    float-to-double v6, v1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double/2addr v8, v6

    .line 361
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide v10, 0x400e666666666666L    # 3.8

    add-double/2addr v8, v10

    double-to-float v1, v8

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v1, v8

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getAw()F

    move-result v8

    invoke-virtual {p0}, Landroidx/core/content/res/CamColor;->getJ()F

    move-result v9

    float-to-double v9, v9

    div-double/2addr v9, v4

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getC()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getZ()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v11, v4

    .line 362
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v8, v4

    const v4, 0x45706276

    mul-float/2addr v1, v4

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNc()F

    move-result v4

    mul-float/2addr v1, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNcb()F

    move-result v4

    mul-float/2addr v1, v4

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getNbb()F

    move-result v4

    div-float/2addr v8, v4

    .line 368
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 369
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    const v6, 0x3e9c28f6    # 0.305f

    add-float/2addr v6, v8

    const/high16 v7, 0x41b80000    # 23.0f

    mul-float/2addr v6, v7

    mul-float/2addr v6, v0

    mul-float/2addr v1, v7

    const/high16 v7, 0x41300000    # 11.0f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v5

    add-float/2addr v1, v7

    const/high16 v7, 0x42d80000    # 108.0f

    mul-float/2addr v0, v7

    mul-float/2addr v0, v4

    add-float/2addr v1, v0

    div-float/2addr v6, v1

    mul-float/2addr v5, v6

    mul-float/2addr v6, v4

    const/high16 v0, 0x43e60000    # 460.0f

    mul-float/2addr v8, v0

    const v0, 0x43e18000    # 451.0f

    mul-float/2addr v0, v5

    add-float/2addr v0, v8

    const/high16 v1, 0x43900000    # 288.0f

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    const v1, 0x44af6000    # 1403.0f

    div-float/2addr v0, v1

    const v4, 0x445ec000    # 891.0f

    mul-float/2addr v4, v5

    sub-float v4, v8, v4

    const v7, 0x43828000    # 261.0f

    mul-float/2addr v7, v6

    sub-float/2addr v4, v7

    div-float/2addr v4, v1

    const/high16 v7, 0x435c0000    # 220.0f

    mul-float/2addr v5, v7

    sub-float/2addr v8, v5

    const v5, 0x45c4e000    # 6300.0f

    mul-float/2addr v6, v5

    sub-float/2addr v8, v6

    div-float/2addr v8, v1

    .line 379
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    const-wide v9, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v5, v9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    const-wide/high16 v13, 0x4079000000000000L    # 400.0

    sub-double v11, v13, v11

    div-double/2addr v5, v11

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    double-to-float v1, v5

    .line 380
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v5, v6, v5

    mul-float/2addr v0, v5

    float-to-double v11, v1

    const-wide v6, 0x40030c30c30c30c3L    # 2.380952380952381

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v1, v11

    mul-float/2addr v0, v1

    .line 382
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    mul-double/2addr v11, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v9, v1

    sub-double v9, v13, v9

    div-double/2addr v11, v9

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    double-to-float v1, v9

    .line 383
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v5

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v5, v9, v5

    mul-float/2addr v4, v5

    float-to-double v9, v1

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v1, v9

    mul-float/2addr v4, v1

    .line 385
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v9, v1

    const-wide v11, 0x403b2147ae147ae1L    # 27.13

    mul-double/2addr v9, v11

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v11, v1

    sub-double/2addr v13, v11

    div-double/2addr v9, v13

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 386
    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getFl()F

    move-result v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v3, v5, v3

    mul-float/2addr v2, v3

    float-to-double v8, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v2, v1

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v3, 0x0

    aget v1, v1, v3

    div-float/2addr v0, v1

    .line 389
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v5, 0x1

    aget v1, v1, v5

    div-float/2addr v4, v1

    .line 390
    invoke-virtual/range {p1 .. p1}, Landroidx/core/content/res/ViewingConditions;->getRgbD()[F

    move-result-object v1

    const/4 v6, 0x2

    aget v1, v1, v6

    div-float/2addr v2, v1

    .line 393
    sget-object v1, Landroidx/core/content/res/CamUtils;->CAM16RGB_TO_XYZ:[[F

    .line 394
    aget-object v7, v1, v3

    aget v8, v7, v3

    mul-float/2addr v8, v0

    aget v9, v7, v5

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    aget v7, v7, v6

    mul-float/2addr v7, v2

    add-float/2addr v8, v7

    .line 395
    aget-object v7, v1, v5

    aget v9, v7, v3

    mul-float/2addr v9, v0

    aget v10, v7, v5

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    aget v7, v7, v6

    mul-float/2addr v7, v2

    add-float/2addr v9, v7

    .line 396
    aget-object v1, v1, v6

    aget v3, v1, v3

    mul-float/2addr v0, v3

    aget v3, v1, v5

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    aget v1, v1, v6

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-double v1, v8

    float-to-double v3, v9

    float-to-double v5, v0

    .line 398
    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method viewedInSrgb()I
    .locals 1

    .line 346
    sget-object v0, Landroidx/core/content/res/ViewingConditions;->DEFAULT:Landroidx/core/content/res/ViewingConditions;

    invoke-virtual {p0, v0}, Landroidx/core/content/res/CamColor;->viewed(Landroidx/core/content/res/ViewingConditions;)I

    move-result p0

    return p0
.end method
