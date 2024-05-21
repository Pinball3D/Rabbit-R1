.class public Lcom/google/android/material/color/utilities/SchemeFruitSalad;
.super Lcom/google/android/material/color/utilities/DynamicScheme;
.source "SchemeFruitSalad.java"


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;ZD)V
    .locals 11

    .line 31
    sget-object v2, Lcom/google/android/material/color/utilities/Variant;->FRUIT_SALAD:Lcom/google/android/material/color/utilities/Variant;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    .line 36
    invoke-static {v0, v1, v5, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v6

    .line 39
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesDouble(D)D

    move-result-wide v0

    const-wide/high16 v3, 0x4042000000000000L    # 36.0

    .line 38
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v7

    .line 40
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v8

    .line 41
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v9

    .line 42
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v10

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    .line 31
    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/color/utilities/DynamicScheme;-><init>(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/Variant;ZDLcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;)V

    return-void
.end method
