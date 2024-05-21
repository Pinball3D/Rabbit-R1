.class public final Landroidx/compose/animation/core/CubicBezierEasing;
.super Ljava/lang/Object;
.source "Easing.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J \u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0003H\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/animation/core/CubicBezierEasing;",
        "Landroidx/compose/animation/core/Easing;",
        "a",
        "",
        "b",
        "c",
        "d",
        "(FFFF)V",
        "equals",
        "",
        "other",
        "",
        "evaluateCubic",
        "m",
        "hashCode",
        "",
        "transform",
        "fraction",
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
.field public static final $stable:I


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    iput p2, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iput p3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iput p4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 106
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Parameters to CubicBezierEasing cannot be NaN. Actual parameters are: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final evaluateCubic(FFF)F
    .locals 1

    const/4 p0, 0x3

    int-to-float p0, p0

    mul-float/2addr p1, p0

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p3

    mul-float/2addr p1, v0

    mul-float/2addr p1, v0

    mul-float/2addr p1, p3

    mul-float/2addr p0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p0, p3

    mul-float/2addr p0, p3

    add-float/2addr p1, p0

    mul-float p0, p3, p3

    mul-float/2addr p0, p3

    add-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 137
    instance-of v0, p1, Landroidx/compose/animation/core/CubicBezierEasing;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    check-cast p1, Landroidx/compose/animation/core/CubicBezierEasing;

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    iget v1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 138
    iget p1, p1, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    .line 142
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public transform(F)F
    .locals 6

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    :goto_0
    add-float v2, v0, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Landroidx/compose/animation/core/CubicBezierEasing;->a:F

    iget v4, p0, Landroidx/compose/animation/core/CubicBezierEasing;->c:F

    .line 123
    invoke-direct {p0, v3, v4, v2}, Landroidx/compose/animation/core/CubicBezierEasing;->evaluateCubic(FFF)F

    move-result v3

    sub-float v4, p1, v3

    .line 124
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget p1, p0, Landroidx/compose/animation/core/CubicBezierEasing;->b:F

    iget v0, p0, Landroidx/compose/animation/core/CubicBezierEasing;->d:F

    .line 125
    invoke-direct {p0, p1, v0, v2}, Landroidx/compose/animation/core/CubicBezierEasing;->evaluateCubic(FFF)F

    move-result p0

    return p0

    :cond_0
    cmpg-float v3, v3, p1

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    return p1
.end method
