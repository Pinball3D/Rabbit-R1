.class public final Lcom/google/android/material/shape/ClampedCornerSize;
.super Ljava/lang/Object;
.source "ClampedCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final target:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/ClampedCornerSize;->target:F

    return-void
.end method

.method public static createFromCornerSize(Lcom/google/android/material/shape/AbsoluteCornerSize;)Lcom/google/android/material/shape/ClampedCornerSize;
    .locals 1

    .line 47
    new-instance v0, Lcom/google/android/material/shape/ClampedCornerSize;

    invoke-virtual {p0}, Lcom/google/android/material/shape/AbsoluteCornerSize;->getCornerSize()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ClampedCornerSize;-><init>(F)V

    return-object v0
.end method

.method private static getMaxCornerSize(Landroid/graphics/RectF;)F
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/shape/ClampedCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 71
    :cond_1
    check-cast p1, Lcom/google/android/material/shape/ClampedCornerSize;

    iget p0, p0, Lcom/google/android/material/shape/ClampedCornerSize;->target:F

    .line 72
    iget p1, p1, Lcom/google/android/material/shape/ClampedCornerSize;->target:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ClampedCornerSize;->target:F

    .line 60
    invoke-static {p1}, Lcom/google/android/material/shape/ClampedCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/ClampedCornerSize;->target:F

    .line 77
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
