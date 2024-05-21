.class public interface abstract Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/VectorizedAnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec$DefaultImpls;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroidx/compose/animation/core/AnimationVector;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/VectorizedAnimationSpec<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008f\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0006\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0007\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;",
        "V",
        "Landroidx/compose/animation/core/AnimationVector;",
        "Landroidx/compose/animation/core/VectorizedAnimationSpec;",
        "isInfinite",
        "",
        "()Z",
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
.method public static synthetic access$getEndVelocity$jd(Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;
    .locals 0

    .line 162
    invoke-super {p0, p1, p2, p3}, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;->getEndVelocity(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$isInfinite$jd(Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;)Z
    .locals 0

    .line 162
    invoke-super {p0}, Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;->isInfinite()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isInfinite()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
