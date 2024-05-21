.class public Lcom/google/android/material/color/utilities/Blend;
.super Ljava/lang/Object;
.source "Blend.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cam16Ucs(IID)I
    .locals 18

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    move-result-wide v2

    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    move-result-wide v4

    .line 83
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    move-result-wide v6

    .line 84
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getJstar()D

    move-result-wide v8

    .line 85
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getAstar()D

    move-result-wide v10

    .line 86
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Cam16;->getBstar()D

    move-result-wide v0

    sub-double/2addr v8, v2

    mul-double v8, v8, p2

    add-double v12, v2, v8

    sub-double/2addr v10, v4

    mul-double v10, v10, p2

    add-double v14, v4, v10

    sub-double/2addr v0, v6

    mul-double v0, v0, p2

    add-double v16, v6, v0

    .line 90
    invoke-static/range {v12 .. v17}, Lcom/google/android/material/color/utilities/Cam16;->fromUcs(DDD)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Cam16;->toInt()I

    move-result v0

    return v0
.end method

.method public static harmonize(II)I
    .locals 10

    .line 42
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    .line 43
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 45
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v2

    .line 49
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/material/color/utilities/MathUtils;->rotationDirection(DD)D

    move-result-wide v4

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    .line 47
    invoke-static {v2, v3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v4

    .line 50
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v8

    invoke-static/range {v4 .. v9}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    return p0
.end method

.method public static hctHue(IID)I
    .locals 6

    .line 63
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Blend;->cam16Ucs(IID)I

    move-result p1

    .line 64
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object p1

    .line 65
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Cam16;->fromInt(I)Lcom/google/android/material/color/utilities/Cam16;

    move-result-object p2

    .line 66
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Cam16;->getHue()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/android/material/color/utilities/Cam16;->getChroma()D

    move-result-wide v2

    invoke-static {p0}, Lcom/google/android/material/color/utilities/ColorUtils;->lstarFromArgb(I)D

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    return p0
.end method
