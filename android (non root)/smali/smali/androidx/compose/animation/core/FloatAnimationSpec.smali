.class public interface abstract Landroidx/compose/animation/core/FloatAnimationSpec;
.super Ljava/lang/Object;
.source "FloatAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/FloatAnimationSpec$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationSpec<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H&J \u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J(\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H&J(\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H&J,\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\r\"\u0008\u0008\u0000\u0010\u000e*\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u000e0\u0011H\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/animation/core/FloatAnimationSpec;",
        "Landroidx/compose/animation/core/AnimationSpec;",
        "",
        "getDurationNanos",
        "",
        "initialValue",
        "targetValue",
        "initialVelocity",
        "getEndVelocity",
        "getValueFromNanos",
        "playTimeNanos",
        "getVelocityFromNanos",
        "vectorize",
        "Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "converter",
        "Landroidx/compose/animation/core/TwoWayConverter;",
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


# direct methods
.method public static synthetic access$getEndVelocity$jd(Landroidx/compose/animation/core/FloatAnimationSpec;FFF)F
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatAnimationSpec;->getEndVelocity(FFF)F

    move-result p0

    return p0
.end method

.method public static synthetic access$vectorize$jd(Landroidx/compose/animation/core/FloatAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroidx/compose/animation/core/FloatAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getDurationNanos(FFF)J
.end method

.method public getEndVelocity(FFF)F
    .locals 6

    .line 86
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatAnimationSpec;->getDurationNanos(FFF)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 85
    invoke-interface/range {v0 .. v5}, Landroidx/compose/animation/core/FloatAnimationSpec;->getVelocityFromNanos(JFFF)F

    move-result p0

    return p0
.end method

.method public abstract getValueFromNanos(JFFF)F
.end method

.method public abstract getVelocityFromNanos(JFFF)F
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 36
    invoke-interface {p0, p1}, Landroidx/compose/animation/core/FloatAnimationSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/VectorizedAnimationSpec;

    return-object p0
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Ljava/lang/Float;",
            "TV;>;)",
            "Landroidx/compose/animation/core/VectorizedFloatAnimationSpec<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance p1, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    invoke-direct {p1, p0}, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V

    return-object p1
.end method
