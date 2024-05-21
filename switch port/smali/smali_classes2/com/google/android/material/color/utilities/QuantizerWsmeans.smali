.class public final Lcom/google/android/material/color/utilities/QuantizerWsmeans;
.super Ljava/lang/Object;
.source "QuantizerWsmeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0xa

.field private static final MIN_MOVEMENT_DISTANCE:D = 3.0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quantize([I[II)Ljava/util/Map;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    new-instance v2, Ljava/util/Random;

    const-wide/32 v3, 0x42688

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 82
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 83
    array-length v4, v0

    new-array v4, v4, [[D

    .line 84
    array-length v5, v0

    new-array v5, v5, [I

    .line 85
    new-instance v6, Lcom/google/android/material/color/utilities/PointProviderLab;

    invoke-direct {v6}, Lcom/google/android/material/color/utilities/PointProviderLab;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 88
    :goto_0
    array-length v10, v0

    const/4 v11, 0x1

    if-ge v8, v10, :cond_1

    .line 89
    aget v10, v0, v8

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-nez v12, :cond_0

    .line 92
    invoke-interface {v6, v10}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    move-result-object v12

    aput-object v12, v4, v9

    .line 93
    aput v10, v5, v9

    add-int/lit8 v9, v9, 0x1

    .line 96
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 98
    :cond_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 102
    :cond_1
    new-array v0, v9, [I

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v9, :cond_2

    .line 104
    aget v10, v5, v8

    .line 105
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 106
    aput v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move/from16 v8, p2

    .line 109
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 110
    array-length v5, v1

    if-eqz v5, :cond_3

    .line 111
    array-length v5, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 114
    :cond_3
    new-array v5, v3, [[D

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 116
    :goto_3
    array-length v12, v1

    if-ge v8, v12, :cond_4

    .line 117
    aget v12, v1, v8

    invoke-interface {v6, v12}, Lcom/google/android/material/color/utilities/PointProvider;->fromInt(I)[D

    move-result-object v12

    aput-object v12, v5, v8

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    sub-int v1, v3, v10

    if-lez v1, :cond_5

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v1, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 126
    :cond_5
    new-array v1, v9, [I

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_6

    .line 128
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    aput v10, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 131
    :cond_6
    new-array v2, v3, [[I

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_7

    .line 133
    new-array v10, v3, [I

    aput-object v10, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 136
    :cond_7
    new-array v8, v3, [[Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_9

    .line 138
    new-array v12, v3, [Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    aput-object v12, v8, v10

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v3, :cond_8

    .line 140
    aget-object v13, v8, v10

    new-instance v14, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;

    invoke-direct {v14}, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;-><init>()V

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 144
    :cond_9
    new-array v10, v3, [I

    const/4 v12, 0x0

    :goto_9
    const/16 v13, 0xa

    if-ge v12, v13, :cond_16

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v3, :cond_c

    add-int/lit8 v14, v13, 0x1

    move v15, v14

    :goto_b
    if-ge v15, v3, :cond_a

    .line 148
    aget-object v11, v5, v13

    aget-object v7, v5, v15

    move-object/from16 p0, v10

    invoke-interface {v6, v11, v7}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v10

    .line 149
    aget-object v7, v8, v15

    aget-object v7, v7, v13

    iput-wide v10, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 150
    aget-object v7, v8, v15

    aget-object v7, v7, v13

    iput v13, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    .line 151
    aget-object v7, v8, v13

    aget-object v7, v7, v15

    iput-wide v10, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    .line 152
    aget-object v7, v8, v13

    aget-object v7, v7, v15

    iput v15, v7, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, p0

    const/4 v11, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 p0, v10

    .line 154
    aget-object v7, v8, v13

    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v3, :cond_b

    .line 156
    aget-object v10, v2, v13

    aget-object v11, v8, v13

    aget-object v11, v11, v7

    iget v11, v11, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->index:I

    aput v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_b
    const/4 v11, 0x1

    move-object/from16 v10, p0

    move v13, v14

    goto :goto_a

    :cond_c
    move-object/from16 p0, v10

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_d
    if-ge v7, v9, :cond_11

    .line 162
    aget-object v11, v4, v7

    .line 163
    aget v13, v1, v7

    .line 164
    aget-object v14, v5, v13

    .line 165
    invoke-interface {v6, v11, v14}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v14

    move-object/from16 p1, v2

    move-object/from16 v18, v0

    move-wide/from16 v19, v14

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v3, :cond_f

    .line 170
    aget-object v21, v8, v13

    move-object/from16 v22, v8

    aget-object v8, v21, v2

    move/from16 v21, v9

    iget-wide v8, v8, Lcom/google/android/material/color/utilities/QuantizerWsmeans$Distance;->distance:D

    const-wide/high16 v23, 0x4010000000000000L    # 4.0

    mul-double v23, v23, v14

    cmpl-double v8, v8, v23

    if-ltz v8, :cond_d

    goto :goto_f

    .line 173
    :cond_d
    aget-object v8, v5, v2

    invoke-interface {v6, v11, v8}, Lcom/google/android/material/color/utilities/PointProvider;->distance([D[D)D

    move-result-wide v8

    cmpg-double v23, v8, v19

    if-gez v23, :cond_e

    move v0, v2

    move-wide/from16 v19, v8

    :cond_e
    :goto_f
    add-int/lit8 v2, v2, 0x1

    move/from16 v9, v21

    move-object/from16 v8, v22

    goto :goto_e

    :cond_f
    move-object/from16 v22, v8

    move/from16 v21, v9

    const/4 v2, -0x1

    if-eq v0, v2, :cond_10

    .line 181
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    sub-double/2addr v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    cmpl-double v2, v8, v13

    if-lez v2, :cond_10

    add-int/lit8 v10, v10, 0x1

    .line 184
    aput v0, v1, v7

    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v18

    move/from16 v9, v21

    move-object/from16 v8, v22

    goto :goto_d

    :cond_11
    move-object/from16 v18, v0

    move-object/from16 p1, v2

    move-object/from16 v22, v8

    move/from16 v21, v9

    if-nez v10, :cond_12

    if-eqz v12, :cond_12

    const/4 v12, 0x0

    move-object/from16 v9, p0

    goto/16 :goto_13

    .line 193
    :cond_12
    new-array v0, v3, [D

    .line 194
    new-array v2, v3, [D

    .line 195
    new-array v7, v3, [D

    move-object/from16 v9, p0

    const/4 v8, 0x0

    .line 196
    invoke-static {v9, v8}, Ljava/util/Arrays;->fill([II)V

    move v10, v8

    :goto_10
    move/from16 v13, v21

    if-ge v10, v13, :cond_13

    .line 198
    aget v14, v1, v10

    .line 199
    aget-object v15, v4, v10

    .line 200
    aget v11, v18, v10

    .line 201
    aget v17, v9, v14

    add-int v17, v17, v11

    aput v17, v9, v14

    .line 202
    aget-wide v19, v0, v14

    aget-wide v23, v15, v8

    move v8, v12

    int-to-double v11, v11

    mul-double v23, v23, v11

    add-double v19, v19, v23

    aput-wide v19, v0, v14

    .line 203
    aget-wide v19, v2, v14

    const/16 v16, 0x1

    aget-wide v23, v15, v16

    mul-double v23, v23, v11

    add-double v19, v19, v23

    aput-wide v19, v2, v14

    .line 204
    aget-wide v19, v7, v14

    const/16 v21, 0x2

    aget-wide v23, v15, v21

    mul-double v23, v23, v11

    add-double v19, v19, v23

    aput-wide v19, v7, v14

    add-int/lit8 v10, v10, 0x1

    move v12, v8

    move/from16 v21, v13

    const/4 v8, 0x0

    goto :goto_10

    :cond_13
    move v8, v12

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v3, :cond_15

    .line 208
    aget v11, v9, v10

    if-nez v11, :cond_14

    const/4 v11, 0x3

    new-array v11, v11, [D

    fill-array-data v11, :array_0

    .line 210
    aput-object v11, v5, v10

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto :goto_12

    .line 213
    :cond_14
    aget-wide v14, v0, v10

    int-to-double v11, v11

    div-double/2addr v14, v11

    .line 214
    aget-wide v19, v2, v10

    div-double v19, v19, v11

    .line 215
    aget-wide v23, v7, v10

    div-double v23, v23, v11

    .line 216
    aget-object v11, v5, v10

    const/4 v12, 0x0

    aput-wide v14, v11, v12

    const/4 v14, 0x1

    .line 217
    aput-wide v19, v11, v14

    const/4 v15, 0x2

    .line 218
    aput-wide v23, v11, v15

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_15
    const/4 v12, 0x0

    const/4 v14, 0x1

    add-int/lit8 v0, v8, 0x1

    move-object/from16 v2, p1

    move v12, v0

    move-object v10, v9

    move v9, v13

    move v11, v14

    move-object/from16 v0, v18

    move-object/from16 v8, v22

    goto/16 :goto_9

    :cond_16
    move-object v9, v10

    const/4 v12, 0x0

    .line 222
    :goto_13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move v7, v12

    :goto_14
    if-ge v7, v3, :cond_19

    .line 224
    aget v1, v9, v7

    if-nez v1, :cond_17

    goto :goto_15

    .line 229
    :cond_17
    aget-object v2, v5, v7

    invoke-interface {v6, v2}, Lcom/google/android/material/color/utilities/PointProvider;->toInt([D)I

    move-result v2

    .line 230
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_15

    .line 234
    :cond_18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_19
    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method
