.class final Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatDecayAnimationSpec;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0006H\u0002J\u0018\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J \u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;",
        "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Landroidx/compose/ui/unit/Density;)V",
        "absVelocityThreshold",
        "",
        "getAbsVelocityThreshold",
        "()F",
        "magicPhysicalCoefficient",
        "flingDistance",
        "velocity",
        "getDurationNanos",
        "",
        "initialValue",
        "initialVelocity",
        "getSplineDeceleration",
        "",
        "getTargetValue",
        "getValueFromNanos",
        "playTimeNanos",
        "getVelocityFromNanos",
        "foundation-layout_release"
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
.field private final magicPhysicalCoefficient:F


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x43c10b3d

    .line 590
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->magicPhysicalCoefficient:F

    return-void
.end method

.method private final getSplineDeceleration(F)D
    .locals 2

    .line 593
    sget-object v0, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    .line 595
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getPlatformFlingScrollFriction$p()F

    move-result v1

    iget p0, p0, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->magicPhysicalCoefficient:F

    mul-float/2addr v1, p0

    .line 593
    invoke-virtual {v0, p1, v1}, Landroidx/compose/foundation/layout/AndroidFlingSpline;->deceleration(FF)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final flingDistance(F)F
    .locals 8

    .line 602
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getSplineDeceleration(F)D

    move-result-wide v0

    .line 604
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getPlatformFlingScrollFriction$p()F

    move-result v2

    iget p0, p0, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->magicPhysicalCoefficient:F

    mul-float/2addr v2, p0

    float-to-double v2, v2

    .line 605
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getDecelerationRate$p()D

    move-result-wide v4

    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getDecelMinusOne$p()D

    move-result-wide v6

    div-double/2addr v4, v6

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    double-to-float p0, v2

    .line 606
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public getAbsVelocityThreshold()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDurationNanos(FF)J
    .locals 2

    .line 627
    invoke-direct {p0, p2}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getSplineDeceleration(F)D

    move-result-wide p0

    .line 628
    invoke-static {}, Landroidx/compose/foundation/layout/WindowInsetsConnection_androidKt;->access$getDecelMinusOne$p()D

    move-result-wide v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public getTargetValue(FF)F
    .locals 0

    .line 610
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p0

    add-float/2addr p1, p0

    return p1
.end method

.method public getValueFromNanos(JFF)F
    .locals 4

    const/4 v0, 0x0

    .line 618
    invoke-virtual {p0, v0, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getDurationNanos(FF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 620
    :goto_0
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p0

    .line 622
    sget-object p2, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/AndroidFlingSpline;->flingPosition-LfoxSSI(F)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->getDistanceCoefficient-impl(J)F

    move-result p1

    mul-float/2addr p0, p1

    add-float/2addr p3, p0

    return p3
.end method

.method public getVelocityFromNanos(JFF)F
    .locals 4

    const/4 p3, 0x0

    .line 637
    invoke-virtual {p0, p3, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->getDurationNanos(FF)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 639
    :goto_0
    invoke-virtual {p0, p4}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p0

    .line 640
    sget-object p2, Landroidx/compose/foundation/layout/AndroidFlingSpline;->INSTANCE:Landroidx/compose/foundation/layout/AndroidFlingSpline;

    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/AndroidFlingSpline;->flingPosition-LfoxSSI(F)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/AndroidFlingSpline$FlingResult;->getVelocityCoefficient-impl(J)F

    move-result p1

    mul-float/2addr p1, p0

    long-to-float p0, v0

    div-float/2addr p1, p0

    const p0, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr p1, p0

    return p1
.end method
