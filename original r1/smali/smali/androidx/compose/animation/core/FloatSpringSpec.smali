.class public final Landroidx/compose/animation/core/FloatSpringSpec;
.super Ljava/lang/Object;
.source "FloatAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/FloatAnimationSpec;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J \u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J \u0010\u0011\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J(\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016J(\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/animation/core/FloatSpringSpec;",
        "Landroidx/compose/animation/core/FloatAnimationSpec;",
        "dampingRatio",
        "",
        "stiffness",
        "visibilityThreshold",
        "(FFF)V",
        "getDampingRatio",
        "()F",
        "spring",
        "Landroidx/compose/animation/core/SpringSimulation;",
        "getStiffness",
        "getDurationNanos",
        "",
        "initialValue",
        "targetValue",
        "initialVelocity",
        "getEndVelocity",
        "getValueFromNanos",
        "playTimeNanos",
        "getVelocityFromNanos",
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final dampingRatio:F

.field private final spring:Landroidx/compose/animation/core/SpringSimulation;

.field private final stiffness:F

.field private final visibilityThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/FloatSpringSpec;->dampingRatio:F

    iput p2, p0, Landroidx/compose/animation/core/FloatSpringSpec;->stiffness:F

    iput p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    .line 137
    new-instance p3, Landroidx/compose/animation/core/SpringSimulation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p3, v0}, Landroidx/compose/animation/core/SpringSimulation;-><init>(F)V

    .line 138
    invoke-virtual {p3, p1}, Landroidx/compose/animation/core/SpringSimulation;->setDampingRatio(F)V

    .line 139
    invoke-virtual {p3, p2}, Landroidx/compose/animation/core/SpringSimulation;->setStiffness(F)V

    iput-object p3, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    return-void
.end method

.method public synthetic constructor <init>(FFFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    const p2, 0x44bb8000    # 1500.0f

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const p3, 0x3c23d70a    # 0.01f

    .line 131
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatSpringSpec;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public final getDampingRatio()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->dampingRatio:F

    return p0
.end method

.method public getDurationNanos(FFF)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 181
    invoke-virtual {v0}, Landroidx/compose/animation/core/SpringSimulation;->getStiffness()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 182
    invoke-virtual {v1}, Landroidx/compose/animation/core/SpringSimulation;->getDampingRatio()F

    move-result v1

    sub-float/2addr p1, p2

    iget p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->visibilityThreshold:F

    div-float/2addr p1, p0

    div-float/2addr p3, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 180
    invoke-static {v0, v1, p3, p1, p0}, Landroidx/compose/animation/core/SpringEstimationKt;->estimateAnimationDurationMillis(FFFFF)J

    move-result-wide p0

    const-wide/32 p2, 0xf4240

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public getEndVelocity(FFF)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStiffness()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->stiffness:F

    return p0
.end method

.method public getValueFromNanos(JFFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 149
    div-long/2addr p1, v0

    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 150
    invoke-virtual {v0, p4}, Landroidx/compose/animation/core/SpringSimulation;->setFinalPosition(F)V

    iget-object p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 151
    invoke-virtual {p0, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->updateValues-IJZedt4$animation_core_release(FFJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/animation/core/Motion;->getValue-impl(J)F

    move-result p0

    return p0
.end method

.method public getVelocityFromNanos(JFFF)F
    .locals 2

    const-wide/32 v0, 0xf4240

    .line 162
    div-long/2addr p1, v0

    iget-object v0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 163
    invoke-virtual {v0, p4}, Landroidx/compose/animation/core/SpringSimulation;->setFinalPosition(F)V

    iget-object p0, p0, Landroidx/compose/animation/core/FloatSpringSpec;->spring:Landroidx/compose/animation/core/SpringSimulation;

    .line 164
    invoke-virtual {p0, p3, p5, p1, p2}, Landroidx/compose/animation/core/SpringSimulation;->updateValues-IJZedt4$animation_core_release(FFJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/animation/core/Motion;->getVelocity-impl(J)F

    move-result p0

    return p0
.end method
