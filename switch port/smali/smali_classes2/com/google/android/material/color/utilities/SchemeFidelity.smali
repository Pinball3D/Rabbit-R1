.class public Lcom/google/android/material/color/utilities/SchemeFidelity;
.super Lcom/google/android/material/color/utilities/DynamicScheme;
.source "SchemeFidelity.java"


# direct methods
.method public constructor <init>(Lcom/google/android/material/color/utilities/Hct;ZD)V
    .locals 15

    .line 38
    sget-object v2, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v6

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    const-wide/high16 v7, 0x4040000000000000L    # 32.0

    sub-double/2addr v3, v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    .line 44
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v7

    new-instance v0, Lcom/google/android/material/color/utilities/TemperatureCache;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/google/android/material/color/utilities/TemperatureCache;-><init>(Lcom/google/android/material/color/utilities/Hct;)V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TemperatureCache;->getComplement()Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/color/utilities/DislikeAnalyzer;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHct(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v8

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v9

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    div-double/2addr v9, v11

    invoke-static {v3, v4, v9, v10}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v9

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v13

    div-double/2addr v13, v11

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    add-double/2addr v13, v10

    .line 50
    invoke-static {v3, v4, v13, v14}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object v10

    move-object v0, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    .line 38
    invoke-direct/range {v0 .. v10}, Lcom/google/android/material/color/utilities/DynamicScheme;-><init>(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/Variant;ZDLcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/TonalPalette;)V

    return-void
.end method
