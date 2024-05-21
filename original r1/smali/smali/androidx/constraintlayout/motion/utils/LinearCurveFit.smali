.class public Landroidx/constraintlayout/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinearCurveFit"


# instance fields
.field private mT:[D

.field private mTotalLength:D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 10

    .line 30
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 31
    array-length v0, p1

    const/4 v0, 0x0

    .line 32
    aget-object v1, p2, v0

    array-length v1, v1

    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const-wide/16 v1, 0x0

    move v3, v0

    move-wide v4, v1

    :goto_0
    move-wide v6, v4

    .line 38
    array-length v8, p1

    if-ge v3, v8, :cond_1

    .line 39
    aget-object v8, p2, v3

    aget-wide v8, v8, v0

    if-lez v3, :cond_0

    sub-double v4, v8, v4

    sub-double v6, v8, v6

    .line 42
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-wide v4, v8

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    :cond_2
    return-void
.end method

.method private getLength2D(D)D
    .locals 20

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 61
    array-length v4, v1

    const/4 v5, 0x0

    .line 62
    aget-wide v6, v1, v5

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_1

    return-wide v2

    :cond_1
    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 65
    aget-wide v7, v1, v4

    cmpl-double v1, p1, v7

    if-ltz v1, :cond_2

    iget-wide v0, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mTotalLength:D

    return-wide v0

    :cond_2
    move-wide v7, v2

    move-wide v9, v7

    move-wide v11, v9

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_6

    iget-object v13, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 72
    aget-object v13, v13, v1

    aget-wide v14, v13, v5

    .line 73
    aget-wide v16, v13, v6

    if-lez v1, :cond_3

    sub-double v9, v14, v9

    sub-double v11, v16, v11

    .line 75
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    :cond_3
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 79
    aget-wide v10, v9, v1

    cmpl-double v12, p1, v10

    if-nez v12, :cond_4

    return-wide v7

    :cond_4
    add-int/lit8 v12, v1, 0x1

    .line 82
    aget-wide v18, v9, v12

    cmpg-double v9, p1, v18

    if-gez v9, :cond_5

    sub-double v18, v18, v10

    sub-double v2, p1, v10

    div-double v2, v2, v18

    iget-object v0, v0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 85
    aget-object v1, v0, v1

    aget-wide v9, v1, v5

    .line 86
    aget-object v0, v0, v12

    aget-wide v4, v0, v5

    .line 87
    aget-wide v11, v1, v6

    .line 88
    aget-wide v0, v0, v6

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v2

    mul-double v11, v11, v18

    mul-double/2addr v0, v2

    add-double/2addr v11, v0

    sub-double v0, v16, v11

    mul-double v9, v9, v18

    mul-double/2addr v4, v2

    add-double/2addr v9, v4

    sub-double/2addr v14, v9

    .line 92
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    add-double/2addr v7, v0

    return-wide v7

    :cond_5
    move v1, v12

    move-wide v9, v14

    move-wide/from16 v11, v16

    goto :goto_0

    :cond_6
    return-wide v2
.end method


# virtual methods
.method public getPos(DI)D
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 173
    array-length v1, v0

    const/4 v2, 0x0

    .line 174
    aget-wide v3, v0, v2

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 175
    aget-object p0, p0, v2

    aget-wide p0, p0, p3

    return-wide p0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 177
    aget-wide v3, v0, v1

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 178
    aget-object p0, p0, v1

    aget-wide p0, p0, p3

    return-wide p0

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 182
    aget-wide v3, v0, v2

    cmpl-double v5, p1, v3

    if-nez v5, :cond_2

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 183
    aget-object p0, p0, v2

    aget-wide p0, p0, p3

    return-wide p0

    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 185
    aget-wide v6, v0, v5

    cmpg-double v0, p1, v6

    if-gez v0, :cond_3

    sub-double/2addr v6, v3

    sub-double/2addr p1, v3

    div-double/2addr p1, v6

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 188
    aget-object v0, p0, v2

    aget-wide v0, v0, p3

    .line 189
    aget-object p0, p0, v5

    aget-wide v2, p0, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p1

    mul-double/2addr v0, v4

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0

    :cond_3
    move v2, v5

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPos(D[D)V
    .locals 12

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 101
    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    .line 102
    aget-object v2, v2, v3

    array-length v2, v2

    .line 103
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    move p1, v3

    :goto_0
    if-ge p1, v2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 105
    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 109
    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_3

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 111
    aget-object p1, p1, v1

    aget-wide p1, p1, v3

    aput-wide p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v3

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 117
    aget-wide v4, v4, v0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 119
    aget-object v5, v5, v0

    aget-wide v5, v5, v4

    aput-wide v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    .line 122
    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_6

    .line 123
    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_4
    if-ge v3, v2, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 126
    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 127
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v6, v10

    mul-double/2addr v8, p1

    add-double/2addr v6, v8

    .line 129
    aput-wide v6, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    return-void
.end method

.method public getPos(D[F)V
    .locals 12

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 137
    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    .line 138
    aget-object v2, v2, v3

    array-length v2, v2

    .line 139
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    move p1, v3

    :goto_0
    if-ge p1, v2, :cond_0

    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 141
    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 145
    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_3

    :goto_1
    if-ge v3, v2, :cond_2

    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 147
    aget-object p1, p1, v1

    aget-wide p1, p1, v3

    double-to-float p1, p1

    aput p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v3

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 153
    aget-wide v4, v4, v0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_4

    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 155
    aget-object v5, v5, v0

    aget-wide v5, v5, v4

    double-to-float v5, v5

    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    .line 158
    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gez v8, :cond_6

    .line 159
    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_4
    if-ge v3, v2, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 162
    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 163
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v6, v10

    mul-double/2addr v8, p1

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 165
    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    return-void
.end method

.method public getSlope(DI)D
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 223
    array-length v1, v0

    const/4 v2, 0x0

    .line 225
    aget-wide v3, v0, v2

    cmpg-double v5, p1, v3

    if-gez v5, :cond_0

    :goto_0
    move-wide p1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 227
    aget-wide v3, v0, v3

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v2, 0x1

    .line 231
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_2

    .line 232
    aget-wide p1, v0, v2

    sub-double/2addr v4, p1

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 234
    aget-object p1, p0, v2

    aget-wide p1, p1, p3

    .line 235
    aget-object p0, p0, v3

    aget-wide v0, p0, p3

    sub-double/2addr v0, p1

    div-double/2addr v0, v4

    return-wide v0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSlope(D[D)V
    .locals 10

    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 198
    array-length v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    .line 199
    aget-object v2, v2, v3

    array-length v2, v2

    .line 200
    aget-wide v4, v0, v3

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_0

    :goto_0
    move-wide p1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 202
    aget-wide v4, v0, v4

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    move v0, v3

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    .line 207
    aget-wide v6, v4, v5

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_2

    .line 208
    aget-wide p1, v4, v0

    sub-double/2addr v6, p1

    :goto_3
    if-ge v3, v2, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    .line 211
    aget-object p2, p1, v0

    aget-wide v8, p2, v3

    .line 212
    aget-object p1, p1, v5

    aget-wide p1, p1, v3

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    .line 214
    aput-wide p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    move v0, v5

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    return-object p0
.end method
