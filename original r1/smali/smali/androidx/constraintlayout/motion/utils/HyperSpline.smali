.class public Landroidx/constraintlayout/motion/utils/HyperSpline;
.super Ljava/lang/Object;
.source "HyperSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    }
.end annotation


# instance fields
.field mCtl:[[D

.field mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

.field mCurveLength:[D

.field mDimensionality:I

.field mPoints:I

.field mTotalLength:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/HyperSpline;->setup([[D)V

    return-void
.end method

.method static calcNaturalCubic(I[D)[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;
    .locals 23

    move/from16 v0, p0

    .line 148
    new-array v1, v0, [D

    .line 149
    new-array v2, v0, [D

    .line 150
    new-array v3, v0, [D

    add-int/lit8 v4, v0, -0x1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const/4 v7, 0x0

    .line 153
    aput-wide v5, v1, v7

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    if-ge v6, v4, :cond_0

    add-int/lit8 v10, v6, -0x1

    .line 155
    aget-wide v10, v1, v10

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    sub-double/2addr v12, v10

    div-double/2addr v8, v12

    aput-wide v8, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    .line 157
    aget-wide v10, v1, v0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    sub-double v10, v12, v10

    div-double/2addr v8, v10

    aput-wide v8, v1, v4

    .line 159
    aget-wide v8, p1, v5

    aget-wide v10, p1, v7

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    aget-wide v14, v1, v7

    mul-double/2addr v8, v14

    aput-wide v8, v2, v7

    :goto_1
    if-ge v5, v4, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 161
    aget-wide v8, p1, v6

    add-int/lit8 v14, v5, -0x1

    aget-wide v15, p1, v14

    sub-double/2addr v8, v15

    mul-double/2addr v8, v10

    aget-wide v14, v2, v14

    sub-double/2addr v8, v14

    aget-wide v14, v1, v5

    mul-double/2addr v8, v14

    aput-wide v8, v2, v5

    move v5, v6

    goto :goto_1

    .line 163
    :cond_1
    aget-wide v5, p1, v4

    aget-wide v8, p1, v0

    sub-double/2addr v5, v8

    mul-double/2addr v5, v10

    aget-wide v8, v2, v0

    sub-double/2addr v5, v8

    aget-wide v8, v1, v4

    mul-double/2addr v5, v8

    aput-wide v5, v2, v4

    .line 165
    aput-wide v5, v3, v4

    :goto_2
    if-ltz v0, :cond_2

    .line 167
    aget-wide v5, v2, v0

    aget-wide v8, v1, v0

    add-int/lit8 v14, v0, 0x1

    aget-wide v14, v3, v14

    mul-double/2addr v8, v14

    sub-double/2addr v5, v8

    aput-wide v5, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 170
    :cond_2
    new-array v0, v4, [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    :goto_3
    if-ge v7, v4, :cond_3

    .line 172
    new-instance v1, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    aget-wide v5, p1, v7

    double-to-float v2, v5

    float-to-double v8, v2

    aget-wide v17, v3, v7

    add-int/lit8 v2, v7, 0x1

    aget-wide v14, p1, v2

    sub-double v19, v14, v5

    mul-double v19, v19, v10

    mul-double v21, v17, v12

    sub-double v19, v19, v21

    aget-wide v21, v3, v2

    sub-double v19, v19, v21

    sub-double/2addr v5, v14

    mul-double/2addr v5, v12

    add-double v5, v5, v17

    add-double v21, v5, v21

    move-object v14, v1

    move-wide v15, v8

    invoke-direct/range {v14 .. v22}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;-><init>(DDDD)V

    aput-object v1, v0, v7

    move v7, v2

    goto :goto_3

    :cond_3
    return-object v0
.end method


# virtual methods
.method public approxLength([Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;)D
    .locals 14

    .line 123
    array-length p0, p1

    .line 124
    array-length p0, p1

    new-array p0, p0, [D

    const-wide/16 v0, 0x0

    move-wide v2, v0

    move-wide v4, v2

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v2, v6

    const/4 v9, 0x0

    if-gez v8, :cond_2

    move-wide v6, v0

    .line 127
    :goto_1
    array-length v8, p1

    if-ge v9, v8, :cond_0

    .line 128
    aget-wide v10, p0, v9

    .line 129
    aget-object v8, p1, v9

    invoke-virtual {v8, v2, v3}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v12

    aput-wide v12, p0, v9

    sub-double/2addr v10, v12

    mul-double/2addr v10, v10

    add-double/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v8, v2, v0

    if-lez v8, :cond_1

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    :cond_1
    const-wide v6, 0x3fb999999999999aL    # 0.1

    add-double/2addr v2, v6

    goto :goto_0

    .line 138
    :cond_2
    :goto_2
    array-length v2, p1

    if-ge v9, v2, :cond_3

    .line 139
    aget-wide v2, p0, v9

    .line 140
    aget-object v8, p1, v9

    invoke-virtual {v8, v6, v7}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v10

    aput-wide v10, p0, v9

    sub-double/2addr v2, v10

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 143
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    add-double/2addr v4, p0

    return-wide v4
.end method

.method public getPos(DI)D
    .locals 5

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 114
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    aget-wide v2, v1, v0

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    sub-double/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 117
    aget-object p0, p0, p3

    aget-object p0, p0, v0

    aget-wide v0, v1, v0

    div-double/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getPos(D[D)V
    .locals 5

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 90
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v2, v2, v1

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    sub-double/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 94
    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v3, v3, v1

    div-double v3, p1, v3

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getPos(D[F)V
    .locals 5

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 102
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v2, v2, v1

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    sub-double/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 106
    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v3, v3, v1

    div-double v3, p1, v3

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->eval(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getVelocity(D[D)V
    .locals 5

    iget-wide v0, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    mul-double/2addr p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 78
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    aget-wide v2, v2, v1

    cmpg-double v4, v2, p1

    if-gez v4, :cond_0

    sub-double/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    array-length v2, p3

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 82
    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    aget-wide v3, v3, v1

    div-double v3, p1, v3

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;->vel(D)D

    move-result-wide v2

    aput-wide v2, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setup([[D)V
    .locals 7

    const/4 v0, 0x0

    .line 47
    aget-object v1, p1, v0

    array-length v1, v1

    iput v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    .line 48
    array-length v2, p1

    iput v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mPoints:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 49
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCtl:[[D

    iget v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    .line 50
    new-array v1, v1, [[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    iput-object v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mPoints:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCtl:[[D

    .line 53
    aget-object v3, v3, v1

    aget-object v4, p1, v2

    aget-wide v4, v4, v1

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_2
    iget v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCtl:[[D

    .line 58
    aget-object v2, v2, p1

    array-length v3, v2

    invoke-static {v3, v2}, Landroidx/constraintlayout/motion/utils/HyperSpline;->calcNaturalCubic(I[D)[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mPoints:I

    add-int/lit8 p1, p1, -0x1

    .line 61
    new-array p1, p1, [D

    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    .line 63
    new-array p1, v1, [Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 64
    array-length v2, v2

    if-ge v1, v2, :cond_4

    move v2, v0

    :goto_4
    iget v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mDimensionality:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurve:[[Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;

    .line 67
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    iget-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mCurveLength:[D

    .line 70
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/utils/HyperSpline;->approxLength([Landroidx/constraintlayout/motion/utils/HyperSpline$Cubic;)D

    move-result-wide v5

    aput-wide v5, v4, v1

    add-double/2addr v2, v5

    iput-wide v2, p0, Landroidx/constraintlayout/motion/utils/HyperSpline;->mTotalLength:D

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
