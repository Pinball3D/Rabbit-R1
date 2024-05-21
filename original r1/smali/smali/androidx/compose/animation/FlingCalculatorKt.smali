.class public final Landroidx/compose/animation/FlingCalculatorKt;
.super Ljava/lang/Object;
.source "FlingCalculator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u001a\u0018\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "DecelerationRate",
        "",
        "GravityEarth",
        "InchesPerMeter",
        "computeDeceleration",
        "friction",
        "density",
        "animation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DecelerationRate:F

.field private static final GravityEarth:F = 9.80665f

.field private static final InchesPerMeter:F = 39.37f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    return-void
.end method

.method public static final synthetic access$computeDeceleration(FF)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/animation/FlingCalculatorKt;->computeDeceleration(FF)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getDecelerationRate$p()F
    .locals 1

    sget v0, Landroidx/compose/animation/FlingCalculatorKt;->DecelerationRate:F

    return v0
.end method

.method private static final computeDeceleration(FF)F
    .locals 1

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    mul-float/2addr p1, p0

    return p1
.end method
