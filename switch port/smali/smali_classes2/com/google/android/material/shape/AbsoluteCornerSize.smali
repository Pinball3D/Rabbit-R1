.class public final Lcom/google/android/material/shape/AbsoluteCornerSize;
.super Ljava/lang/Object;
.source "AbsoluteCornerSize.java"

# interfaces
.implements Lcom/google/android/material/shape/CornerSize;


# instance fields
.field private final size:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 52
    :cond_1
    check-cast p1, Lcom/google/android/material/shape/AbsoluteCornerSize;

    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 53
    iget p1, p1, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCornerSize()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return p0
.end method

.method public getCornerSize(Landroid/graphics/RectF;)F
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/shape/AbsoluteCornerSize;->size:F

    .line 58
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 59
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
