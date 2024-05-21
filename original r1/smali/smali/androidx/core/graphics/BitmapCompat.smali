.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api17Impl;,
        Landroidx/core/graphics/BitmapCompat$Api19Impl;,
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api31Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-lez v1, :cond_1e

    if-lez v2, :cond_1e

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "srcRect must be contained by srcBm!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v3, :cond_2

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    :goto_1
    if-eqz v3, :cond_3

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_2
    int-to-float v7, v1

    int-to-float v8, v5

    div-float/2addr v7, v8

    int-to-float v8, v2

    int-to-float v9, v6

    div-float/2addr v8, v9

    if-eqz v3, :cond_4

    .line 157
    iget v10, v3, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-eqz v3, :cond_5

    .line 158
    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    const/4 v11, 0x1

    if-nez v10, :cond_7

    if-nez v3, :cond_7

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-ne v1, v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-ne v2, v12, :cond_7

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_6

    if-ne v0, v4, :cond_6

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_6
    return-object v4

    .line 171
    :cond_7
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 172
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 174
    invoke-static {v12}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    if-ne v5, v1, :cond_8

    if-ne v6, v2, :cond_8

    .line 181
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, v10

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 183
    invoke-virtual {v1, v4, v2, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_8
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 188
    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v16, v7, v15

    if-lez v16, :cond_9

    move/from16 v17, v10

    float-to-double v9, v7

    .line 189
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    goto :goto_5

    :cond_9
    move/from16 v17, v10

    float-to-double v9, v7

    .line 190
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :goto_5
    double-to-int v7, v9

    cmpl-float v9, v8, v15

    if-lez v9, :cond_a

    float-to-double v8, v8

    .line 191
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    goto :goto_6

    :cond_a
    float-to-double v8, v8

    .line 192
    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    :goto_6
    double-to-int v8, v8

    if-eqz p4, :cond_d

    .line 205
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v9

    if-nez v9, :cond_d

    if-lez v7, :cond_b

    .line 206
    invoke-static {v5, v1, v11, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v9

    goto :goto_7

    :cond_b
    move v9, v5

    :goto_7
    if-lez v8, :cond_c

    .line 207
    invoke-static {v6, v2, v11, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v10

    goto :goto_8

    :cond_c
    move v10, v6

    .line 208
    :goto_8
    invoke-static {v9, v10, v0, v11}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 210
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v13, v17

    neg-int v13, v13

    int-to-float v13, v13

    neg-int v3, v3

    int-to-float v3, v3

    .line 211
    invoke-virtual {v10, v4, v13, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v13, v11

    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v19, v9

    move-object v9, v4

    move-object/from16 v4, v19

    goto :goto_9

    :cond_d
    move/from16 v13, v17

    const/4 v9, 0x0

    move v10, v13

    const/4 v13, 0x0

    .line 221
    :goto_9
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v10, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v10, v7

    move v15, v8

    :goto_a
    if-nez v10, :cond_10

    if-eqz v15, :cond_e

    goto :goto_b

    :cond_e
    if-eq v9, v0, :cond_f

    if-eqz v9, :cond_f

    .line 311
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    return-object v4

    :cond_10
    :goto_b
    if-gez v10, :cond_11

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_11
    if-lez v10, :cond_12

    add-int/lit8 v10, v10, -0x1

    :cond_12
    :goto_c
    if-gez v15, :cond_13

    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    :cond_13
    if-lez v15, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 235
    :cond_14
    :goto_d
    invoke-static {v5, v1, v10, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    move-object/from16 v17, v4

    .line 236
    invoke-static {v6, v2, v15, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v4

    move-object/from16 v18, v12

    const/4 v12, 0x0

    .line 237
    invoke-virtual {v3, v12, v12, v11, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v10, :cond_15

    if-nez v15, :cond_15

    const/4 v4, 0x1

    goto :goto_e

    :cond_15
    move v4, v12

    :goto_e
    if-eqz v9, :cond_16

    .line 257
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-ne v11, v1, :cond_16

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-ne v11, v2, :cond_16

    const/4 v11, 0x1

    goto :goto_f

    :cond_16
    move v11, v12

    :goto_f
    if-eqz v9, :cond_19

    if-eq v9, v0, :cond_19

    if-eqz p4, :cond_17

    .line 267
    invoke-static {v9}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v16

    if-eqz v16, :cond_19

    :cond_17
    if-eqz v4, :cond_18

    if-eqz v11, :cond_19

    if-eqz v13, :cond_18

    goto :goto_10

    :cond_18
    move-object v4, v9

    goto :goto_14

    :cond_19
    :goto_10
    if-eq v9, v0, :cond_1a

    if-eqz v9, :cond_1a

    .line 275
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1a
    if-lez v10, :cond_1b

    move v9, v13

    goto :goto_11

    :cond_1b
    move v9, v10

    .line 284
    :goto_11
    invoke-static {v5, v1, v9, v7}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v9

    if-lez v15, :cond_1c

    move v11, v13

    goto :goto_12

    :cond_1c
    move v11, v15

    .line 286
    :goto_12
    invoke-static {v6, v2, v11, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    if-eqz p4, :cond_1d

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_13

    :cond_1d
    move v4, v12

    .line 292
    :goto_13
    invoke-static {v9, v11, v0, v4}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 301
    :goto_14
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v12, v17

    move-object/from16 v11, v18

    .line 302
    invoke-virtual {v9, v12, v14, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v9, v12

    move-object v12, v11

    const/4 v11, 0x1

    goto/16 :goto_a

    .line 134
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstW and dstH must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 97
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api19Impl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 0

    .line 58
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 84
    invoke-static {p0, p1}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static sizeAtStep(IIII)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p3, p2

    shl-int p1, v0, p3

    mul-int/2addr p0, p1

    return p0

    :cond_1
    neg-int p0, p2

    sub-int/2addr p0, v0

    shl-int p0, p1, p0

    return p0
.end method
