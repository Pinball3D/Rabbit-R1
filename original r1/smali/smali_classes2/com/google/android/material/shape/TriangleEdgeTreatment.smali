.class public Lcom/google/android/material/shape/TriangleEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "TriangleEdgeTreatment.java"


# instance fields
.field private final inside:Z

.field private final size:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    iput-boolean p2, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    return-void
.end method


# virtual methods
.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->inside:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float/2addr v0, p3

    sub-float v0, p2, v0

    .line 51
    invoke-virtual {p4, v0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    iget p0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float v0, p0, p3

    mul-float/2addr p0, p3

    add-float/2addr p0, p2

    .line 52
    invoke-virtual {p4, p2, v0, p0, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    .line 53
    invoke-virtual {p4, p1, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float v2, v0, p3

    sub-float v2, p2, v2

    neg-float v0, v0

    mul-float/2addr v0, p3

    .line 55
    invoke-virtual {p4, v2, v1, p2, v0}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    iget p0, p0, Lcom/google/android/material/shape/TriangleEdgeTreatment;->size:F

    mul-float/2addr p0, p3

    add-float/2addr p2, p0

    .line 56
    invoke-virtual {p4, p2, v1, p1, v1}, Lcom/google/android/material/shape/ShapePath;->lineTo(FFFF)V

    :goto_0
    return-void
.end method
