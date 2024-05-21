.class public final Landroidx/compose/animation/core/SpringSimulation;
.super Ljava/lang/Object;
.source "SpringSimulation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0003J\u0008\u0010\u0019\u001a\u00020\u001aH\u0002J0\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001eH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\n\"\u0004\u0008\r\u0010\u0004R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\n\"\u0004\u0008\u0015\u0010\u0004\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/compose/animation/core/SpringSimulation;",
        "",
        "finalPosition",
        "",
        "(F)V",
        "dampedFreq",
        "",
        "value",
        "dampingRatio",
        "getDampingRatio",
        "()F",
        "setDampingRatio",
        "getFinalPosition",
        "setFinalPosition",
        "gammaMinus",
        "gammaPlus",
        "initialized",
        "",
        "naturalFreq",
        "stiffness",
        "getStiffness",
        "setStiffness",
        "getAcceleration",
        "lastDisplacement",
        "lastVelocity",
        "init",
        "",
        "updateValues",
        "Landroidx/compose/animation/core/Motion;",
        "timeElapsed",
        "",
        "updateValues-IJZedt4$animation_core_release",
        "(FFJ)J",
        "animation-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private dampedFreq:D

.field private dampingRatio:F

.field private finalPosition:F

.field private gammaMinus:D

.field private gammaPlus:D

.field private initialized:Z

.field private naturalFreq:D


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    return-void
.end method

.method private final init()V
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/animation/core/SpringSimulation;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    .line 135
    invoke-static {}, Landroidx/compose/animation/core/SpringSimulationKt;->getUNSET()F

    move-result v1

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    float-to-double v1, v0

    float-to-double v3, v0

    mul-double/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v3

    const/4 v5, 0x1

    if-lez v4, :cond_1

    neg-float v0, v0

    float-to-double v3, v0

    iget-wide v6, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v3, v6

    int-to-double v8, v5

    sub-double/2addr v1, v8

    .line 145
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v3, v6

    iput-wide v3, p0, Landroidx/compose/animation/core/SpringSimulation;->gammaPlus:D

    iget v0, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    neg-float v0, v0

    float-to-double v3, v0

    iget-wide v6, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v3, v6

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v6, v0

    sub-double/2addr v3, v6

    iput-wide v3, p0, Landroidx/compose/animation/core/SpringSimulation;->gammaMinus:D

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-wide v3, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    int-to-double v6, v5

    sub-double/2addr v6, v1

    .line 150
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    iput-wide v3, p0, Landroidx/compose/animation/core/SpringSimulation;->dampedFreq:D

    :cond_2
    :goto_0
    iput-boolean v5, p0, Landroidx/compose/animation/core/SpringSimulation;->initialized:Z

    return-void

    .line 136
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Error: Final position of the spring must be set before the animation starts"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getAcceleration(FF)F
    .locals 6

    iget v0, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    sub-float/2addr p1, v0

    iget-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double v2, v0, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v4

    iget p0, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    float-to-double v4, p0

    mul-double/2addr v0, v4

    neg-double v2, v2

    float-to-double p0, p1

    mul-double/2addr v2, p0

    float-to-double p0, p2

    mul-double/2addr v0, p0

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public final getDampingRatio()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    return p0
.end method

.method public final getFinalPosition()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    return p0
.end method

.method public final getStiffness()F
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v0, v0

    double-to-float p0, v0

    return p0
.end method

.method public final setDampingRatio(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/animation/core/SpringSimulation;->initialized:Z

    return-void

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Damping ratio must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setFinalPosition(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    return-void
.end method

.method public final setStiffness(F)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroidx/compose/animation/core/SpringSimulation;->getStiffness()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    float-to-double v0, p1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/animation/core/SpringSimulation;->initialized:Z

    return-void

    .line 87
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Spring stiffness constant must be positive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateValues-IJZedt4$animation_core_release(FFJ)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 162
    invoke-direct/range {p0 .. p0}, Landroidx/compose/animation/core/SpringSimulation;->init()V

    iget v2, v0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    sub-float v2, p1, v2

    move-wide/from16 v3, p3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    iget v5, v0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v7, v5, v6

    if-lez v7, :cond_0

    float-to-double v5, v2

    iget-wide v7, v0, Landroidx/compose/animation/core/SpringSimulation;->gammaMinus:D

    mul-double v9, v7, v5

    float-to-double v1, v1

    sub-double/2addr v9, v1

    iget-wide v11, v0, Landroidx/compose/animation/core/SpringSimulation;->gammaPlus:D

    sub-double v13, v7, v11

    div-double/2addr v9, v13

    sub-double v9, v5, v9

    mul-double/2addr v5, v7

    sub-double/2addr v5, v1

    sub-double v1, v7, v11

    div-double/2addr v5, v1

    mul-double/2addr v7, v3

    .line 182
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    mul-double/2addr v1, v9

    iget-wide v7, v0, Landroidx/compose/animation/core/SpringSimulation;->gammaPlus:D

    mul-double/2addr v7, v3

    .line 183
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    add-double/2addr v1, v7

    iget-wide v7, v0, Landroidx/compose/animation/core/SpringSimulation;->gammaMinus:D

    mul-double/2addr v9, v7

    mul-double/2addr v7, v3

    .line 186
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v9, v7

    iget-wide v7, v0, Landroidx/compose/animation/core/SpringSimulation;->gammaPlus:D

    mul-double/2addr v5, v7

    mul-double/2addr v7, v3

    .line 187
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double/2addr v9, v5

    goto/16 :goto_0

    :cond_0
    cmpg-float v6, v5, v6

    if-nez v6, :cond_1

    float-to-double v5, v1

    iget-wide v7, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    float-to-double v1, v2

    mul-double v9, v7, v1

    add-double/2addr v5, v9

    mul-double v9, v5, v3

    add-double/2addr v1, v9

    neg-double v7, v7

    mul-double/2addr v7, v3

    .line 193
    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v7, v1

    iget-wide v9, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    neg-double v9, v9

    mul-double/2addr v9, v3

    .line 197
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v9

    mul-double/2addr v1, v9

    iget-wide v9, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    neg-double v11, v9

    mul-double/2addr v1, v11

    neg-double v9, v9

    mul-double/2addr v9, v3

    .line 199
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    add-double v9, v1, v5

    move-wide v1, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    int-to-double v6, v6

    iget-wide v8, v0, Landroidx/compose/animation/core/SpringSimulation;->dampedFreq:D

    div-double/2addr v6, v8

    float-to-double v8, v5

    iget-wide v10, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    mul-double/2addr v8, v10

    float-to-double v12, v2

    mul-double/2addr v8, v12

    float-to-double v1, v1

    add-double/2addr v8, v1

    mul-double/2addr v6, v8

    neg-float v1, v5

    float-to-double v1, v1

    mul-double/2addr v1, v10

    mul-double/2addr v1, v3

    .line 214
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    iget-wide v8, v0, Landroidx/compose/animation/core/SpringSimulation;->dampedFreq:D

    mul-double/2addr v8, v3

    .line 217
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, v0, Landroidx/compose/animation/core/SpringSimulation;->dampedFreq:D

    mul-double/2addr v10, v3

    .line 218
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    mul-double/2addr v1, v8

    iget-wide v8, v0, Landroidx/compose/animation/core/SpringSimulation;->naturalFreq:D

    neg-double v10, v8

    mul-double/2addr v10, v1

    iget v5, v0, Landroidx/compose/animation/core/SpringSimulation;->dampingRatio:F

    float-to-double v14, v5

    mul-double/2addr v10, v14

    neg-float v5, v5

    float-to-double v14, v5

    mul-double/2addr v14, v8

    mul-double/2addr v14, v3

    .line 225
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    iget-wide v14, v0, Landroidx/compose/animation/core/SpringSimulation;->dampedFreq:D

    move-wide/from16 p1, v1

    neg-double v1, v14

    mul-double/2addr v1, v12

    mul-double/2addr v14, v3

    .line 229
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v1, v12

    iget-wide v12, v0, Landroidx/compose/animation/core/SpringSimulation;->dampedFreq:D

    mul-double/2addr v6, v12

    mul-double/2addr v12, v3

    .line 230
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v6, v3

    add-double/2addr v1, v6

    mul-double/2addr v8, v1

    add-double v9, v10, v8

    move-wide/from16 v1, p1

    :goto_0
    iget v0, v0, Landroidx/compose/animation/core/SpringSimulation;->finalPosition:F

    float-to-double v3, v0

    add-double/2addr v1, v3

    double-to-float v0, v1

    double-to-float v1, v9

    .line 240
    invoke-static {v0, v1}, Landroidx/compose/animation/core/SpringSimulationKt;->Motion(FF)J

    move-result-wide v0

    return-wide v0
.end method
