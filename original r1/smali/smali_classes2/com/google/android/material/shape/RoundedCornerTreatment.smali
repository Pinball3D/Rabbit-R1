.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "RoundedCornerTreatment.java"


# instance fields
.field radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    iput p1, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->radius:F

    return-void
.end method


# virtual methods
.method public getCornerPath(Lcom/google/android/material/shape/ShapePath;FFF)V
    .locals 10

    mul-float p0, p4, p3

    const/high16 v0, 0x43340000    # 180.0f

    sub-float v1, v0, p2

    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1, v2, p0, v0, v1}, Lcom/google/android/material/shape/ShapePath;->reset(FFFF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p4, p0

    mul-float v7, p4, p3

    const/high16 v8, 0x43340000    # 180.0f

    move-object v3, p1

    move v6, v7

    move v9, p2

    .line 44
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    return-void
.end method
