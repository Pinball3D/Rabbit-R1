.class public final Lcom/google/android/material/shape/RelativeCornerSize;
.super Ljava/lang/Object;
.source "RelativeCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final percent:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    return-void
.end method

.method public static createFromCornerSize(Landroid/graphics/RectF;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/RelativeCornerSize;
    .locals 1

    .line 45
    instance-of v0, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    if-eqz v0, :cond_0

    .line 46
    check-cast p1, Lcom/google/android/material/shape/RelativeCornerSize;

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    invoke-interface {p1, p0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    invoke-static {p0}, Lcom/google/android/material/shape/RelativeCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    move-result p0

    div-float/2addr p1, p0

    invoke-direct {v0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private static getMaxCornerSize(Landroid/graphics/RectF;)F
    .locals 1

    .line 51
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

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

    .line 78
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/shape/RelativeCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 81
    :cond_1
    check-cast p1, Lcom/google/android/material/shape/RelativeCornerSize;

    iget p0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 82
    iget p1, p1, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

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

    iget p0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 70
    invoke-static {p1}, Lcom/google/android/material/shape/RelativeCornerSize;->getMaxCornerSize(Landroid/graphics/RectF;)F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public getRelativePercent()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/RelativeCornerSize;->percent:F

    .line 87
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 88
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
