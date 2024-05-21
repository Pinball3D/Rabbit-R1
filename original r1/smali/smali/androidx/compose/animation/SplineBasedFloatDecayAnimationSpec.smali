.class public final Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;
.super Ljava/lang/Object;
.source "SplineBasedFloatDecayAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatDecayAnimationSpec;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J\u0018\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0016J \u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;",
        "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Landroidx/compose/ui/unit/Density;)V",
        "absVelocityThreshold",
        "",
        "getAbsVelocityThreshold",
        "()F",
        "flingCalculator",
        "Landroidx/compose/animation/FlingCalculator;",
        "flingDistance",
        "startVelocity",
        "getDurationNanos",
        "",
        "initialValue",
        "initialVelocity",
        "getTargetValue",
        "getValueFromNanos",
        "playTimeNanos",
        "getVelocityFromNanos",
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


# static fields
.field public static final $stable:I


# instance fields
.field private final flingCalculator:Landroidx/compose/animation/FlingCalculator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroidx/compose/animation/FlingCalculator;

    .line 32
    invoke-static {}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->getPlatformFlingScrollFriction()F

    move-result v1

    .line 31
    invoke-direct {v0, v1, p1}, Landroidx/compose/animation/FlingCalculator;-><init>(FLandroidx/compose/ui/unit/Density;)V

    iput-object v0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    return-void
.end method

.method private final flingDistance(F)F
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 39
    invoke-virtual {p0, p1}, Landroidx/compose/animation/FlingCalculator;->flingDistance(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public getAbsVelocityThreshold()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDurationNanos(FF)J
    .locals 2

    iget-object p0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 56
    invoke-virtual {p0, p2}, Landroidx/compose/animation/FlingCalculator;->flingDuration(F)J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public getTargetValue(FF)F
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    move-result p0

    add-float/2addr p1, p0

    return p1
.end method

.method public getValueFromNanos(JFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 50
    div-long/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 51
    invoke-virtual {p0, p4}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/FlingCalculator$FlingInfo;->position(J)F

    move-result p0

    add-float/2addr p3, p0

    return p3
.end method

.method public getVelocityFromNanos(JFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 64
    div-long/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->flingCalculator:Landroidx/compose/animation/FlingCalculator;

    .line 65
    invoke-virtual {p0, p4}, Landroidx/compose/animation/FlingCalculator;->flingInfo(F)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/FlingCalculator$FlingInfo;->velocity(J)F

    move-result p0

    return p0
.end method
