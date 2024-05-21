.class Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;
.super Ljava/lang/Object;
.source "KeyCycleOscillator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CycleOscillator"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CycleOscillator"

.field static final UNSET:I = -0x1


# instance fields
.field mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field public mCustomConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mOffset:[F

.field mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

.field mPathLength:F

.field mPeriod:[F

.field mPosition:[D

.field mScale:[F

.field mSplineSlopeCache:[D

.field mSplineValueCache:[D

.field mValues:[F

.field private final mVariesBy:I

.field mWaveShape:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    new-instance v0, Landroidx/constraintlayout/motion/utils/Oscillator;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/Oscillator;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mWaveShape:I

    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mVariesBy:I

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    .line 428
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/motion/utils/Oscillator;->setType(I)V

    .line 429
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 430
    new-array p1, p3, [D

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 431
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 432
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 433
    new-array p1, p3, [F

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mScale:[F

    return-void
.end method

.method private get(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)Landroidx/constraintlayout/widget/ConstraintAttribute;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    .line 465
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    .line 466
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 467
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 468
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ConstraintAttribute is already a "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getType()Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 472
    :cond_1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;)V

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCustomConstraints:Ljava/util/HashMap;

    .line 473
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getSlope(F)D
    .locals 9

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 450
    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 451
    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    const-wide/16 v3, 0x0

    .line 453
    aput-wide v3, v0, v1

    .line 454
    aput-wide v3, v0, v2

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v3, p1

    .line 456
    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v5

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    .line 457
    invoke-virtual {p1, v3, v4}, Landroidx/constraintlayout/motion/utils/Oscillator;->getSlope(D)D

    move-result-wide v3

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    .line 458
    aget-wide v0, p1, v1

    aget-wide v7, p1, v2

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    aget-wide p0, p0, v2

    mul-double/2addr v3, p0

    add-double/2addr v0, v3

    return-wide v0
.end method

.method public getValues(F)D
    .locals 6

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-double v3, p1

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 438
    invoke-virtual {v0, v3, v4, v5}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 440
    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 441
    aget v3, v3, v2

    float-to-double v3, v3

    aput-wide v3, v0, v1

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 443
    aget-wide v2, v0, v2

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    float-to-double v4, p1

    .line 444
    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/motion/utils/Oscillator;->getValue(D)D

    move-result-wide v4

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 445
    aget-wide p0, p0, v1

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    return-wide v2
.end method

.method public setPoint(IIFFF)V
    .locals 5

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    int-to-double v1, p2

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    .line 486
    aput-wide v1, v0, p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 487
    aput p3, p2, p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    .line 488
    aput p4, p2, p1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 489
    aput p5, p0, p1

    return-void
.end method

.method public setup(F)V
    .locals 8

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPathLength:F

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 494
    array-length p1, p1

    const/4 v0, 0x2

    filled-new-array {p1, v0}, [I

    move-result-object p1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 495
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [D

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineValueCache:[D

    .line 496
    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mSplineSlopeCache:[D

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    const/4 v1, 0x0

    .line 497
    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 498
    aget v3, v3, v1

    invoke-virtual {v0, v5, v6, v3}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 500
    array-length v3, v0

    sub-int/2addr v3, v2

    .line 501
    aget-wide v4, v0, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    .line 502
    aget v3, v4, v3

    invoke-virtual {v0, v6, v7, v3}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    :cond_1
    move v0, v1

    .line 504
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 505
    aget-object v3, p1, v0

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOffset:[F

    aget v4, v4, v0

    float-to-double v4, v4

    aput-wide v4, v3, v1

    move v3, v1

    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mValues:[F

    .line 506
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 507
    aget-object v5, p1, v3

    aget v4, v4, v3

    float-to-double v6, v4

    aput-wide v6, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 509
    aget-wide v4, v4, v0

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPeriod:[F

    aget v6, v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/utils/Oscillator;->addPoint(DF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mOscillator:Landroidx/constraintlayout/motion/utils/Oscillator;

    .line 512
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/utils/Oscillator;->normalize()V

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mPosition:[D

    .line 513
    array-length v3, v0

    if-le v3, v2, :cond_4

    .line 514
    invoke-static {v1, v0, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    :goto_2
    return-void
.end method
