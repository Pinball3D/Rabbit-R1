.class public final Landroidx/compose/animation/FlingCalculator;
.super Ljava/lang/Object;
.source "FlingCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/FlingCalculator$FlingInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u000e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u0003J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u0003J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\u0003H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/animation/FlingCalculator;",
        "",
        "friction",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(FLandroidx/compose/ui/unit/Density;)V",
        "getDensity",
        "()Landroidx/compose/ui/unit/Density;",
        "magicPhysicalCoefficient",
        "computeDeceleration",
        "flingDistance",
        "velocity",
        "flingDuration",
        "",
        "flingInfo",
        "Landroidx/compose/animation/FlingCalculator$FlingInfo;",
        "getSplineDeceleration",
        "",
        "FlingInfo",
        "animation_release"
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
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final friction:F

.field private final magicPhysicalCoefficient:F


# direct methods
.method public constructor <init>(FLandroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "density"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iput-object p2, p0, Landroidx/compose/animation/FlingCalculator;->density:Landroidx/compose/ui/unit/Density;

    .line 57
    invoke-direct {p0, p2}, Landroidx/compose/animation/FlingCalculator;->computeDeceleration(Landroidx/compose/ui/unit/Density;)F

    move-result p1

    iput p1, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    return-void
.end method

.method private final computeDeceleration(Landroidx/compose/ui/unit/Density;)F
    .locals 0

    const p0, 0x3f570a3d    # 0.84f

    .line 64
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/animation/FlingCalculatorKt;->access$computeDeceleration(FF)F

    move-result p0

    return p0
.end method

.method private final getSplineDeceleration(F)D
    .locals 2

    .line 66
    sget-object v0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    iget v1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v1, p0

    invoke-virtual {v0, p1, v1}, Landroidx/compose/animation/AndroidFlingSpline;->deceleration(FF)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final flingDistance(F)F
    .locals 6

    .line 84
    invoke-direct {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 85
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget p1, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 88
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result v4

    float-to-double v4, v4

    div-double/2addr v4, v2

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public final flingDuration(F)J
    .locals 4

    .line 75
    invoke-direct {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide p0

    .line 76
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public final flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 9

    .line 96
    invoke-direct {p0, p1}, Landroidx/compose/animation/FlingCalculator;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 97
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 98
    new-instance v4, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    iget v5, p0, Landroidx/compose/animation/FlingCalculator;->friction:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator;->magicPhysicalCoefficient:F

    mul-float/2addr v5, p0

    float-to-double v5, v5

    .line 102
    invoke-static {}, Landroidx/compose/animation/FlingCalculatorKt;->access$getDecelerationRate$p()F

    move-result p0

    float-to-double v7, p0

    div-double/2addr v7, v2

    mul-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    double-to-float p0, v5

    div-double/2addr v0, v2

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 98
    invoke-direct {v4, p1, p0, v0, v1}, Landroidx/compose/animation/FlingCalculator$FlingInfo;-><init>(FFJ)V

    return-object v4
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/FlingCalculator;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method
