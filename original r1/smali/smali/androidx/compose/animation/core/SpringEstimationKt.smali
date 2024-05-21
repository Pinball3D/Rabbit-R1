.class public final Landroidx/compose/animation/core/SpringEstimationKt;
.super Ljava/lang/Object;
.source "SpringEstimation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpringEstimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpringEstimation.kt\nandroidx/compose/animation/core/SpringEstimationKt\n+ 2 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDoubleKt\n+ 3 ComplexDouble.kt\nandroidx/compose/animation/core/ComplexDouble\n*L\n1#1,329:1\n328#1:362\n328#1:363\n324#1:364\n328#1:365\n328#1:366\n324#1:367\n103#2:330\n107#2:336\n103#2:340\n103#2:346\n107#2:352\n103#2:356\n35#3,2:331\n54#3,3:333\n66#3,3:337\n35#3,2:341\n54#3,3:343\n35#3,2:347\n54#3,3:349\n66#3,3:353\n35#3,2:357\n54#3,3:359\n*S KotlinDebug\n*F\n+ 1 SpringEstimation.kt\nandroidx/compose/animation/core/SpringEstimationKt\n*L\n149#1:362\n150#1:363\n188#1:364\n221#1:365\n222#1:366\n266#1:367\n59#1:330\n60#1:336\n60#1:340\n90#1:346\n91#1:352\n91#1:356\n59#1:331,2\n59#1:333,3\n60#1:337,3\n60#1:341,2\n60#1:343,3\n90#1:347,2\n90#1:349,3\n91#1:353,3\n91#1:357,2\n91#1:359,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a6\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u000b\u001a(\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a8\u0010\u0011\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a0\u0010\u0014\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a(\u0010\u0015\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0002\u001a9\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019H\u0082\u0008\u001a\r\u0010\u001b\u001a\u00020\u001c*\u00020\u0003H\u0082\u0008\u00a8\u0006\u001d"
    }
    d2 = {
        "estimateAnimationDurationMillis",
        "",
        "stiffness",
        "",
        "dampingRatio",
        "initialVelocity",
        "initialDisplacement",
        "delta",
        "springConstant",
        "dampingCoefficient",
        "mass",
        "",
        "estimateCriticallyDamped",
        "firstRoot",
        "Landroidx/compose/animation/core/ComplexDouble;",
        "p0",
        "v0",
        "estimateDurationInternal",
        "secondRoot",
        "initialPosition",
        "estimateOverDamped",
        "estimateUnderDamped",
        "iterateNewtonsMethod",
        "x",
        "fn",
        "Lkotlin/Function1;",
        "fnPrime",
        "isNotFinite",
        "",
        "animation-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final estimateAnimationDurationMillis(DDDDD)J
    .locals 12

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p2

    .line 54
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, p0

    sub-double/2addr v2, v4

    neg-double v0, v0

    .line 59
    invoke-static {v2, v3}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v4

    .line 331
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    add-double/2addr v5, v0

    invoke-static {v4, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 333
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    invoke-static {v4, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 334
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    mul-double/2addr v5, v7

    invoke-static {v4, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 60
    invoke-static {v2, v3}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v3

    .line 337
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    const/4 v2, -0x1

    int-to-double v9, v2

    mul-double/2addr v5, v9

    invoke-static {v3, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 338
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    mul-double/2addr v5, v9

    invoke-static {v3, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 341
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v5

    add-double/2addr v5, v0

    invoke-static {v3, v5, v6}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 343
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v7

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 344
    invoke-static {v3}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v7

    invoke-static {v3, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    move-object v2, v4

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 62
    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(DDDDDD)J
    .locals 16

    move-wide/from16 v0, p2

    mul-double v2, p0, p4

    .line 84
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    div-double v8, v0, v2

    mul-double v2, v0, v0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v6, v6, p4

    mul-double v6, v6, p0

    sub-double/2addr v2, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, p4

    div-double/2addr v6, v4

    neg-double v0, v0

    .line 90
    invoke-static {v2, v3}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v4

    .line 347
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v10

    add-double/2addr v10, v0

    invoke-static {v4, v10, v11}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 349
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v4, v10, v11}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 350
    invoke-static {v4}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v10

    mul-double/2addr v10, v6

    invoke-static {v4, v10, v11}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 91
    invoke-static {v2, v3}, Landroidx/compose/animation/core/ComplexDoubleKt;->complexSqrt(D)Landroidx/compose/animation/core/ComplexDouble;

    move-result-object v2

    .line 353
    invoke-static {v2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v10

    const/4 v3, -0x1

    int-to-double v12, v3

    mul-double/2addr v10, v12

    invoke-static {v2, v10, v11}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 354
    invoke-static {v2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v10

    mul-double/2addr v10, v12

    invoke-static {v2, v10, v11}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 357
    invoke-static {v2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v10

    add-double/2addr v10, v0

    invoke-static {v2, v10, v11}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 359
    invoke-static {v2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_real$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_real$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    .line 360
    invoke-static {v2}, Landroidx/compose/animation/core/ComplexDouble;->access$get_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/ComplexDouble;->access$set_imaginary$p(Landroidx/compose/animation/core/ComplexDouble;D)V

    move-object v6, v4

    move-object v7, v2

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    .line 93
    invoke-static/range {v6 .. v15}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateDurationInternal(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final estimateAnimationDurationMillis(FFFFF)J
    .locals 10

    float-to-double v0, p0

    float-to-double v2, p1

    float-to-double v4, p2

    float-to-double v6, p3

    float-to-double v8, p4

    .line 35
    invoke-static/range {v0 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateAnimationDurationMillis(DDDDD)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final estimateCriticallyDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D
    .locals 20

    move-wide/from16 v0, p5

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v2

    mul-double v4, v2, p1

    sub-double v6, p3, v4

    div-double v8, v0, p1

    .line 138
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    div-double/2addr v8, v2

    div-double v10, v0, v6

    .line 141
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    move-wide v14, v10

    const/4 v13, 0x0

    :goto_0
    const/4 v12, 0x6

    if-ge v13, v12, :cond_0

    div-double/2addr v14, v2

    .line 144
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    sub-double v14, v10, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v14, v2

    .line 362
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_1

    move v10, v11

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    xor-int/2addr v10, v11

    if-eqz v10, :cond_2

    move-wide v8, v14

    goto :goto_3

    .line 363
    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_3

    move v10, v11

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    xor-int/2addr v10, v11

    if-eqz v10, :cond_4

    goto :goto_3

    .line 151
    :cond_4
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    :goto_3
    add-double v12, v4, v6

    neg-double v12, v12

    mul-double v14, v2, v6

    div-double/2addr v12, v14

    mul-double v14, v2, v12

    .line 156
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v16, v16, p1

    mul-double v18, v6, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    mul-double v18, v18, v14

    add-double v14, v16, v18

    .line 160
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_7

    const-wide/16 v16, 0x0

    cmpg-double v10, v12, v16

    if-gtz v10, :cond_5

    goto :goto_4

    :cond_5
    cmpl-double v10, v12, v16

    if-lez v10, :cond_6

    neg-double v12, v14

    cmpg-double v10, v12, v0

    if-gez v10, :cond_6

    cmpg-double v10, v6, v16

    if-gez v10, :cond_7

    cmpl-double v10, p1, v16

    if-lez v10, :cond_7

    move-wide/from16 v8, v16

    goto :goto_4

    :cond_6
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v2

    neg-double v8, v8

    div-double v12, p1, v6

    sub-double/2addr v8, v12

    goto :goto_5

    :cond_7
    :goto_4
    neg-double v0, v0

    :goto_5
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v10, 0x0

    :goto_6
    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v12, v12, v14

    if-lez v12, :cond_8

    const/16 v12, 0x64

    if-ge v10, v12, :cond_8

    add-int/lit8 v10, v10, 0x1

    mul-double v12, v6, v8

    add-double v12, p1, v12

    mul-double v14, v2, v8

    .line 190
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v12, v12, v16

    add-double/2addr v12, v0

    move-wide/from16 p3, v0

    int-to-double v0, v11

    add-double/2addr v0, v14

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 191
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    mul-double/2addr v0, v14

    div-double/2addr v12, v0

    sub-double v0, v8, v12

    sub-double/2addr v8, v0

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    move-wide v8, v0

    move-wide/from16 v0, p3

    goto :goto_6

    :cond_8
    return-wide v8
.end method

.method private static final estimateDurationInternal(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDDD)J
    .locals 10

    move-wide v0, p4

    const-wide/16 v2, 0x0

    cmpg-double v4, p6, v2

    if-nez v4, :cond_0

    cmpg-double v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    if-gez v4, :cond_1

    neg-double v0, v0

    .line 292
    :cond_1
    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, p2, v2

    if-lez v6, :cond_2

    move-object v2, p0

    move-object v3, p1

    move-wide v6, v0

    move-wide/from16 v8, p8

    .line 296
    invoke-static/range {v2 .. v9}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    cmpg-double v2, p2, v2

    if-gez v2, :cond_3

    move-wide p1, v4

    move-wide p3, v0

    move-wide/from16 p5, p8

    .line 303
    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateUnderDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide p1, v4

    move-wide p3, v0

    move-wide/from16 p5, p8

    .line 309
    invoke-static/range {p0 .. p6}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateCriticallyDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D

    move-result-wide v0

    :goto_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method private static final estimateOverDamped(Landroidx/compose/animation/core/ComplexDouble;Landroidx/compose/animation/core/ComplexDouble;DDD)D
    .locals 29

    move-wide/from16 v0, p6

    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v12

    .line 211
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v14

    mul-double v2, v12, p2

    sub-double v2, v2, p4

    sub-double v16, v12, v14

    div-double v10, v2, v16

    sub-double v18, p2, v10

    div-double v2, v0, v18

    .line 217
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v2, v12

    div-double v4, v0, v10

    .line 218
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v4, v14

    .line 365
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    const/16 v20, 0x0

    const/4 v7, 0x1

    if-nez v6, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move/from16 v6, v20

    :goto_0
    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    move-wide/from16 v21, v4

    goto :goto_3

    .line 366
    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move/from16 v6, v20

    :goto_1
    xor-int/2addr v6, v7

    if-eqz v6, :cond_3

    goto :goto_2

    .line 223
    :cond_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    :goto_2
    move-wide/from16 v21, v2

    :goto_3
    mul-double v23, v18, v12

    neg-double v2, v10

    mul-double/2addr v2, v14

    div-double v2, v23, v2

    .line 227
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double v4, v14, v12

    div-double v6, v2, v4

    .line 232
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_7

    const-wide/16 v25, 0x0

    cmpg-double v2, v6, v25

    if-gtz v2, :cond_4

    goto :goto_4

    :cond_4
    cmpl-double v2, v6, v25

    if-lez v2, :cond_5

    move-wide/from16 v2, v18

    move-wide v4, v12

    move-wide v8, v10

    move-wide/from16 v27, v10

    move-wide v10, v14

    .line 234
    invoke-static/range {v2 .. v11}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateOverDamped$xInflection(DDDDD)D

    move-result-wide v2

    neg-double v2, v2

    cmpg-double v2, v2, v0

    if-gez v2, :cond_6

    cmpl-double v2, v27, v25

    if-lez v2, :cond_8

    cmpg-double v2, v18, v25

    if-gez v2, :cond_8

    move-wide/from16 v21, v25

    goto :goto_5

    :cond_5
    move-wide/from16 v27, v10

    :cond_6
    mul-double v10, v27, v14

    mul-double/2addr v10, v14

    neg-double v2, v10

    mul-double v4, v23, v12

    div-double/2addr v2, v4

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v21, v2, v16

    goto :goto_6

    :cond_7
    :goto_4
    move-wide/from16 v27, v10

    :cond_8
    :goto_5
    neg-double v0, v0

    :goto_6
    mul-double v2, v12, v21

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v23

    mul-double v10, v27, v14

    mul-double v4, v14, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_9

    return-wide v21

    :cond_9
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move/from16 v4, v20

    :goto_7
    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v2, v2, v5

    if-lez v2, :cond_a

    const/16 v2, 0x64

    if-ge v4, v2, :cond_a

    add-int/lit8 v4, v4, 0x1

    mul-double v2, v12, v21

    .line 268
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    mul-double v5, v5, v18

    mul-double v7, v14, v21

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v16

    mul-double v16, v16, v27

    add-double v5, v5, v16

    add-double/2addr v5, v0

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double v2, v2, v23

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v10

    add-double/2addr v2, v7

    div-double/2addr v5, v2

    sub-double v2, v21, v5

    sub-double v21, v21, v2

    .line 271
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    move-wide/from16 v21, v2

    move-wide v2, v5

    goto :goto_7

    :cond_a
    return-wide v21
.end method

.method private static final estimateOverDamped$xInflection(DDDDD)D
    .locals 0

    mul-double/2addr p2, p4

    .line 228
    invoke-static {p2, p3}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    mul-double/2addr p8, p4

    invoke-static {p8, p9}, Ljava/lang/Math;->exp(D)D

    move-result-wide p2

    mul-double/2addr p6, p2

    add-double/2addr p0, p6

    return-wide p0
.end method

.method private static final estimateUnderDamped(Landroidx/compose/animation/core/ComplexDouble;DDD)D
    .locals 4

    .line 114
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getReal()D

    move-result-wide v0

    mul-double v2, v0, p1

    sub-double/2addr p3, v2

    .line 116
    invoke-virtual {p0}, Landroidx/compose/animation/core/ComplexDouble;->getImaginary()D

    move-result-wide v2

    div-double/2addr p3, v2

    mul-double/2addr p1, p1

    mul-double/2addr p3, p3

    add-double/2addr p1, p3

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    div-double/2addr p5, p0

    .line 119
    invoke-static {p5, p6}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private static final isNotFinite(D)Z
    .locals 2

    .line 328
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method private static final iterateNewtonsMethod(DLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    .line 324
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    div-double/2addr v0, p2

    sub-double/2addr p0, v0

    return-wide p0
.end method
