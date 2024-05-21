.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(FFFF)F
    .locals 2

    sub-float/2addr p0, p2

    float-to-double v0, p0

    sub-float/2addr p1, p3

    float-to-double p0, p1

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distance(IIII)F
    .locals 2

    sub-int/2addr p0, p2

    int-to-double v0, p0

    sub-int/2addr p1, p3

    int-to-double p0, p1

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static round(F)I
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x41000000    # -0.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    :goto_0
    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static sum([I)I
    .locals 4

    .line 72
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
