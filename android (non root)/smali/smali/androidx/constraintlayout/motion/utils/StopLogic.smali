.class public Landroidx/constraintlayout/motion/utils/StopLogic;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "StopLogic.java"


# instance fields
.field private mBackwards:Z

.field private mLastPosition:F

.field private mNumberOfStages:I

.field private mStage1Duration:F

.field private mStage1EndPosition:F

.field private mStage1Velocity:F

.field private mStage2Duration:F

.field private mStage2EndPosition:F

.field private mStage2Velocity:F

.field private mStage3Duration:F

.field private mStage3EndPosition:F

.field private mStage3Velocity:F

.field private mStartPosition:F

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    return-void
.end method

.method private calcY(F)F
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    mul-float v3, v1, p1

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    div-float/2addr p0, v0

    add-float/2addr v3, p0

    return v3

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    return p0

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v3, p1, v0

    if-gez v3, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    mul-float v4, v3, p1

    add-float/2addr v1, v4

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float/2addr p0, v3

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    div-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return p0

    :cond_3
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float v3, p0, p1

    add-float/2addr v1, v3

    mul-float/2addr p0, p1

    mul-float/2addr p0, p1

    mul-float/2addr v0, v2

    div-float/2addr p0, v0

    sub-float/2addr v1, p0

    return v1

    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return p0
.end method

.method private setup(FFFFF)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_0
    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    div-float v1, p1, p3

    mul-float v2, v1, p1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v4, p1, v0

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-gez v4, :cond_2

    neg-float p5, p1

    div-float/2addr p5, p3

    mul-float/2addr p5, p1

    div-float/2addr p5, v3

    sub-float p5, p2, p5

    mul-float/2addr p5, p3

    float-to-double v1, p5

    .line 171
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    cmpg-float v1, p5, p4

    if-gez v1, :cond_1

    const-string p4, "backward accelerate, decelerate"

    iput-object p4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v6, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float p4, p5, p1

    div-float/2addr p4, p3

    iput p4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float p3, p5, p3

    iput p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    add-float/2addr p1, p5

    mul-float/2addr p1, p4

    div-float/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void

    :cond_1
    const-string p5, "backward accelerate cruse decelerate"

    iput-object p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput p4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput p4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    iput p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float p3, p4, p3

    iput p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    add-float/2addr p1, p4

    mul-float/2addr p1, p5

    div-float/2addr p1, v3

    mul-float/2addr p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    iput p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    sub-float p1, p2, p3

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void

    :cond_2
    cmpl-float v4, v2, p2

    if-ltz v4, :cond_3

    const-string p3, "hard stop"

    iput-object p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    mul-float/2addr v3, p2

    div-float/2addr v3, p1

    const/4 p3, 0x1

    iput p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    return-void

    :cond_3
    sub-float v2, p2, v2

    div-float v4, v2, p1

    add-float v7, v4, v1

    cmpg-float p5, v7, p5

    if-gez p5, :cond_4

    const-string p3, "cruse decelerate"

    iput-object p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v6, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    iput v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    iput v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    return-void

    :cond_4
    mul-float p5, p3, p2

    mul-float v1, p1, p1

    div-float/2addr v1, v3

    add-float/2addr p5, v1

    float-to-double v1, p5

    .line 229
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p5, v1

    sub-float v1, p5, p1

    div-float/2addr v1, p3

    iput v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float v2, p5, p3

    iput v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v4, p5, p4

    if-gez v4, :cond_5

    const-string p3, "accelerate decelerate"

    iput-object p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v6, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    iput v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    iput v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    add-float/2addr p1, p5

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return-void

    :cond_5
    const-string p5, "accelerate cruse decelerate"

    iput-object p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    iput v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iput p4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iput p4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    sub-float p5, p4, p1

    div-float/2addr p5, p3

    iput p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    div-float p3, p4, p3

    iput p3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    add-float/2addr p1, p4

    mul-float/2addr p1, p5

    div-float/2addr p1, v3

    mul-float/2addr p3, p4

    div-float/2addr p3, v3

    sub-float p5, p2, p1

    sub-float/2addr p5, p3

    div-float/2addr p5, p4

    iput p5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    sub-float p1, p2, p3

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    iput p2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return-void
.end method


# virtual methods
.method public config(FFFFFF)V
    .locals 6

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    cmpl-float v2, p1, p2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v2, :cond_1

    neg-float v2, p3

    sub-float v3, p1, p2

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, p5

    move v4, p6

    move v5, p4

    .line 140
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->setup(FFFFF)V

    goto :goto_1

    :cond_1
    sub-float v3, p2, p1

    move-object v0, p0

    move v1, p3

    move v2, v3

    move v3, p5

    move v4, p6

    move v5, p4

    .line 142
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/motion/utils/StopLogic;->setup(FFFFF)V

    :goto_1
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 6

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v1, :cond_0

    const-string v1, "backwards"

    goto :goto_0

    :cond_0
    const-string v1, "forward "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  stages "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dur "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " vel "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pos "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1EndPosition:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v5, 0x2

    if-le v0, v5, :cond_2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_3

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo p2, "stage 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    if-ne v1, v4, :cond_4

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "end stage 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    sub-float/2addr p3, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p3, v0

    if-gez v2, :cond_5

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " stage 1"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    if-ne v1, v5, :cond_6

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "end stage 1"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    sub-float/2addr p3, v0

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float p0, p3, p0

    if-gez p0, :cond_7

    .line 82
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " stage 2"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " end stage 2"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getInterpolation(F)F
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/utils/StopLogic;->calcY(F)F

    move-result v0

    iput p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    iget-boolean p1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStartPosition:F

    if-eqz p1, :cond_0

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    add-float/2addr p0, v0

    :goto_0
    return p0
.end method

.method public getVelocity()F
    .locals 1

    iget-boolean v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mBackwards:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    .line 155
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/utils/StopLogic;->getVelocity(F)F

    move-result p0

    neg-float p0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mLastPosition:F

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/utils/StopLogic;->getVelocity(F)F

    move-result p0

    :goto_0
    return p0
.end method

.method public getVelocity(F)F
    .locals 3

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Duration:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage1Velocity:F

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    :goto_0
    sub-float/2addr p0, v1

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    add-float/2addr v1, p0

    return v1

    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mNumberOfStages:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Duration:F

    cmpg-float v2, p1, v0

    if-gez v2, :cond_2

    iget v1, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2Velocity:F

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage2EndPosition:F

    return p0

    :cond_3
    sub-float/2addr p1, v0

    iget v0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Duration:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3Velocity:F

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    sub-float/2addr p0, p1

    return p0

    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/utils/StopLogic;->mStage3EndPosition:F

    return p0
.end method
