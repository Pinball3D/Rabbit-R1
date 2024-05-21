.class public final Lcom/google/android/material/color/utilities/MaterialDynamicColors;
.super Ljava/lang/Object;
.source "MaterialDynamicColors.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findDesiredChromaByTone(DDDZ)D
    .locals 11

    .line 932
    invoke-static/range {p0 .. p5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    cmpg-double v1, v1, p2

    if-gez v1, :cond_5

    .line 934
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    move-object v6, v0

    move-wide v7, v1

    move-wide v0, p4

    .line 935
    :goto_0
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v2

    cmpg-double v2, v2, p2

    if-gez v2, :cond_4

    if-eqz p6, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_1
    add-double v9, v0, v2

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, v9

    .line 937
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/color/utilities/Hct;->from(DDD)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 938
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    cmpl-double v1, v7, v1

    if-lez v1, :cond_1

    goto :goto_2

    .line 941
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    sub-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v3, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    goto :goto_2

    .line 945
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v1

    sub-double/2addr v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 946
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v3

    sub-double/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    move-object v6, v0

    .line 950
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v0

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    move-wide v0, v9

    goto :goto_0

    :cond_4
    move-wide v9, v0

    goto :goto_2

    :cond_5
    move-wide v9, p4

    :goto_2
    return-wide v9
.end method

.method private static isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v1, Lcom/google/android/material/color/utilities/Variant;->FIDELITY:Lcom/google/android/material/color/utilities/Variant;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->CONTENT:Lcom/google/android/material/color/utilities/Variant;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z
    .locals 1

    .line 925
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->variant:Lcom/google/android/material/color/utilities/Variant;

    sget-object v0, Lcom/google/android/material/color/utilities/Variant;->MONOCHROME:Lcom/google/android/material/color/utilities/Variant;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$background$10(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$background$11(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 91
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlActivated$145(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 839
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$controlActivated$146(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 839
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlHighlight$149(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$controlHighlight$150(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 864
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlHighlight$151(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 870
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x3fc999999999999aL    # 0.2

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fbeb851eb851eb8L    # 0.12

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$controlNormal$147(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$controlNormal$148(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 848
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$error$91(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 607
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$error$92(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 608
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$errorContainer$97(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$errorContainer$98(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 635
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inverseOnSurface$39(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$inverseOnSurface$40(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 273
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4057c00000000000L    # 95.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inversePrimary$64(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$inversePrimary$65(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 431
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$inverseSurface$37(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 259
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$inverseSurface$38(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 260
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$neutralPaletteKeyColor$6(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$neutralPaletteKeyColor$7(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 75
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$neutralVariantPaletteKeyColor$8(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$neutralVariantPaletteKeyColor$9(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 83
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onBackground$12(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onBackground$13(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 104
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onError$94(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onError$95(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 622
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onErrorContainer$100(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->errorPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onErrorContainer$101(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 649
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onPrimary$55(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimary$56(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 371
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 374
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onPrimaryContainer$61(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixed$109(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixed$110(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 690
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixedVariant$113(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onPrimaryFixedVariant$114(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 703
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSecondary$70(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondary$71(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 459
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    if-eqz v0, :cond_1

    .line 460
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 462
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v1, 0x4034000000000000L    # 20.0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSecondaryContainer$76(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 506
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixed$123(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixed$124(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 746
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixedVariant$127(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSecondaryFixedVariant$128(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 759
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSurface$31(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSurface$32(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 221
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onSurfaceVariant$35(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onSurfaceVariant$36(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 247
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onTertiary$82(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiary$83(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 545
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 548
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onTertiaryContainer$88(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixed$137(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 801
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixed$138(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 802
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixedVariant$141(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$onTertiaryFixedVariant$142(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 815
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$outline$42(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$outline$43(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 286
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$outlineVariant$44(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$outlineVariant$45(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 299
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primary$52(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primary$53(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 352
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 355
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryContainer$58(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryContainer$59(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 389
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 392
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_1

    const-wide v0, 0x4055400000000000L    # 85.0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 395
    :cond_2
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_3

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_3
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryFixed$103(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryFixed$104(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 662
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryFixedDim$106(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryFixedDim$107(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 676
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$primaryPaletteKeyColor$0(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$primaryPaletteKeyColor$1(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 51
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$scrim$48(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$scrim$49(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    .line 325
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondary$67(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 443
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondary$68(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 444
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryContainer$73(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryContainer$74(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 12

    .line 478
    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    if-eqz v0, :cond_0

    move-wide v9, v1

    goto :goto_0

    :cond_0
    const-wide v3, 0x4056800000000000L    # 90.0

    move-wide v9, v3

    .line 479
    :goto_0
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-wide v1, 0x4055400000000000L    # 85.0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 482
    :cond_2
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 483
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 487
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getHue()D

    move-result-wide v5

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 488
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/TonalPalette;->getChroma()D

    move-result-wide v7

    iget-boolean v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    xor-int/lit8 v11, v0, 0x1

    .line 486
    invoke-static/range {v5 .. v11}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->findDesiredChromaByTone(DDDZ)D

    move-result-wide v0

    .line 491
    iget-object v2, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    .line 492
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryFixed$117(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 715
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryFixed$118(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 716
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryFixedDim$120(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 730
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryFixedDim$121(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 731
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$secondaryPaletteKeyColor$2(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$secondaryPaletteKeyColor$3(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 59
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->secondaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$shadow$46(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$shadow$47(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    .line 312
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surface$15(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surface$16(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 117
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceBright$19(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceBright$20(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 143
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4038000000000000L    # 24.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058800000000000L    # 98.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainer$25(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainer$26(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 182
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4057800000000000L    # 94.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHigh$27(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHigh$28(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 195
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4031000000000000L    # 17.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4057000000000000L    # 92.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHighest$29(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerHighest$30(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 208
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4036000000000000L    # 22.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLow$23(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLow$24(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 169
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLowest$21(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceContainerLowest$22(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 156
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceDim$17(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceDim$18(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 130
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4055c00000000000L    # 87.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceTint$50(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->primaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceTint$51(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 338
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$surfaceVariant$33(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$surfaceVariant$34(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 234
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiary$79(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiary$80(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 526
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 527
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 529
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryContainer$85(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryContainer$86(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 3

    .line 563
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4048800000000000L    # 49.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 566
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 567
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_1

    :cond_2
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 569
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->sourceColorHct:Lcom/google/android/material/color/utilities/Hct;

    .line 570
    invoke-virtual {v1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    .line 571
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    .line 572
    invoke-static {p0}, Lcom/google/android/material/color/utilities/DislikeAnalyzer;->fixIfDisliked(Lcom/google/android/material/color/utilities/Hct;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixed$131(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 771
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixed$132(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 772
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixedDim$134(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 786
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryFixedDim$135(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 787
    invoke-static {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$tertiaryPaletteKeyColor$4(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$tertiaryPaletteKeyColor$5(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 67
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->tertiaryPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/TonalPalette;->getKeyColor()Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textHintInverse$160(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 913
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textHintInverse$161(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 913
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverse$152(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverse$153(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 877
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverseDisableOnly$156(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textPrimaryInverseDisableOnly$157(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 896
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverse$154(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 886
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralVariantPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverse$155(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 887
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$158(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 905
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->neutralPalette:Lcom/google/android/material/color/utilities/TonalPalette;

    return-object p0
.end method

.method static synthetic lambda$textSecondaryAndTertiaryInverseDisabled$159(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 906
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method static performAlbers(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)D
    .locals 2

    .line 958
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->viewingConditionsForAlbers(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/Hct;->inViewingConditions(Lcom/google/android/material/color/utilities/ViewingConditions;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    .line 959
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->toneAllowsLightForeground(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    move-result-wide p0

    return-wide p0

    .line 963
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->enableLightForeground(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static viewingConditionsForAlbers(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ViewingConditions;
    .locals 2

    .line 917
    iget-boolean p0, p0, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4054000000000000L    # 80.0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/ViewingConditions;->defaultWithBackgroundLstar(D)Lcom/google/android/material/color/utilities/ViewingConditions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public background()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 88
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "background"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda25;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda25;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda26;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda26;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public controlActivated()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 838
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda98;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda98;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda99;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda99;-><init>()V

    const-string v1, "control_activated"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public controlHighlight()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10

    .line 861
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "control_highlight"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda150;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda150;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda152;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda152;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda153;

    invoke-direct {v9}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda153;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public controlNormal()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 847
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda13;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda13;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "control_normal"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public error()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 605
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "error"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda82;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda82;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda83;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda83;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda84;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda84;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 632
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "error_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda48;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda49;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda49;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda50;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda50;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public highestSurface(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 42
    iget-boolean p1, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public inverseOnSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 270
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "inverse_on_surface"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda38;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda38;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda39;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda39;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda40;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda40;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public inversePrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 428
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "inverse_primary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda90;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda90;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda91;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda91;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda92;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda92;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 257
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "inverse_surface"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda80;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda80;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda81;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda81;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method synthetic lambda$error$93$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 614
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$errorContainer$99$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 641
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$inverseOnSurface$41$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$inversePrimary$66$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onBackground$14$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onError$96$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 624
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onErrorContainer$102$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 651
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimary$57$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 377
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimaryContainer$62$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 411
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 414
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 415
    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 417
    :cond_2
    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_3

    const-wide p0, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_3
    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimaryContainer$63$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimaryFixed$111$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 692
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimaryFixed$112$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 693
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimaryFixedVariant$115$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 705
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onPrimaryFixedVariant$116$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 706
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondary$72$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondaryContainer$77$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 508
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 509
    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide p0, 0x4056800000000000L    # 90.0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondaryContainer$78$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 514
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondaryFixed$125$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 748
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondaryFixed$126$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 749
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondaryFixedVariant$129$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 761
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onSecondaryFixedVariant$130$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 762
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiary$84$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiaryContainer$89$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 2

    .line 588
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isMonochrome(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 591
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->isFidelity(Lcom/google/android/material/color/utilities/DynamicScheme;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 592
    iget-boolean p0, p1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz p0, :cond_2

    const-wide p0, 0x4056800000000000L    # 90.0

    goto :goto_1

    :cond_2
    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 594
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/high16 v0, 0x4012000000000000L    # 4.5

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiaryContainer$90$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 597
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiaryFixed$139$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 804
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiaryFixed$140$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 805
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiaryFixedVariant$143$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 817
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$onTertiaryFixedVariant$144$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 0

    .line 818
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$primary$54$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 362
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$primaryContainer$60$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 402
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$primaryFixed$105$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 668
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$primaryFixedDim$108$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 682
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$secondary$69$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 450
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$secondaryContainer$75$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 499
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$secondaryFixed$119$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 722
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 723
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$secondaryFixedDim$122$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 737
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 738
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$tertiary$81$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 536
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$tertiaryContainer$87$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 579
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$tertiaryFixed$133$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 778
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 779
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method synthetic lambda$tertiaryFixedDim$136$com-google-android-material-color-utilities-MaterialDynamicColors(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/ToneDeltaPair;
    .locals 7

    .line 793
    new-instance p1, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 794
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v2

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    sget-object v5, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/color/utilities/ToneDeltaPair;-><init>(Lcom/google/android/material/color/utilities/DynamicColor;Lcom/google/android/material/color/utilities/DynamicColor;DLcom/google/android/material/color/utilities/TonePolarity;Z)V

    return-object p1
.end method

.method public neutralPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 72
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda34;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda34;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda35;-><init>()V

    const-string v1, "neutral_palette_key_color"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public neutralVariantPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 80
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda114;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda114;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda115;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda115;-><init>()V

    const-string v1, "neutral_variant_palette_key_color"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public onBackground()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 101
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_background"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda59;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda59;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda60;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda60;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda61;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda61;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onError()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 619
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_error"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda130;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda130;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda131;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda131;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda132;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda132;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onErrorContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 646
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_error_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda70;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda70;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda71;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda71;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda72;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda72;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onPrimary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 367
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_primary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda106;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda106;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda108;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda108;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda109;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda109;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onPrimaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 407
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_primary_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda56;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda56;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda57;

    invoke-direct {v3, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda57;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda58;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda58;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onPrimaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 687
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_primary_fixed"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda119;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda119;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda120;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda120;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda121;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda121;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda122;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda122;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onPrimaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 700
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_primary_fixed_variant"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda160;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda160;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda161;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda161;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onSecondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 455
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_secondary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda135;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda135;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda136;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda136;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda137;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda137;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onSecondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 504
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_secondary_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda67;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda67;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda68;

    invoke-direct {v3, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda68;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda69;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda69;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onSecondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 743
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_secondary_fixed"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda33;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda33;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda44;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda44;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda55;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda55;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda66;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda66;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onSecondaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 756
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_secondary_fixed_variant"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda43;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda43;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda45;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda45;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda46;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda46;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda47;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda47;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onSurface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 218
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_surface"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda95;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda95;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda97;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda97;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onSurfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 244
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_surface_variant"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda133;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda133;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda134;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda134;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onTertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 541
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_tertiary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda143;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda143;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda144;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda144;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda145;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda145;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onTertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 584
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_tertiary_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda7;

    invoke-direct {v3, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda8;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onTertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 799
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_tertiary_fixed"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda138;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda138;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda139;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda139;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda141;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda141;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda142;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda142;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4012000000000000L    # 4.5

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v15, 0x4026000000000000L    # 11.0

    const-wide/high16 v17, 0x4035000000000000L    # 21.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public onTertiaryFixedVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 812
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "on_tertiary_fixed_variant"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda51;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda51;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda52;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda52;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda53;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda53;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v6, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda54;

    invoke-direct {v6, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda54;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public outline()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 283
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "outline"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda36;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda36;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda37;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda37;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    const-wide/high16 v15, 0x4012000000000000L    # 4.5

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public outlineVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    .line 296
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "outline_variant"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda123;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda123;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda124;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda124;-><init>()V

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public primary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 348
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "primary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda103;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda103;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda104;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda104;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda105;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda105;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 385
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "primary_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda0;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda74;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda74;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda96;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda96;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public primaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 659
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "primary_fixed"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda73;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda73;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda75;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda76;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda76;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public primaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 673
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "primary_fixed_dim"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda100;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda100;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda101;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda101;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda102;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda102;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public primaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 48
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda93;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda93;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda94;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda94;-><init>()V

    const-string v1, "primary_palette_key_color"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public scrim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 322
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "scrim"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda116;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda116;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda117;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda117;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public secondary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 441
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "secondary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda129;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda129;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda140;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda140;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda151;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda151;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 474
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "secondary_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda17;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda18;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda19;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda19;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public secondaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 713
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "secondary_fixed"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda162;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda11;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda22;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda22;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public secondaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 728
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "secondary_fixed_dim"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda77;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda77;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda78;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda78;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda79;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda79;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public secondaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 56
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda86;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda86;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda87;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda87;-><init>()V

    const-string v1, "secondary_palette_key_color"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public shadow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 309
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "shadow"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda146;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda146;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda147;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda147;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surface()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 114
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda29;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda29;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda30;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda30;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 140
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_bright"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda20;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda20;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda21;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda21;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 179
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda127;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda127;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda128;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda128;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceContainerHigh()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 192
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_container_high"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda23;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda24;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda24;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceContainerHighest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 205
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_container_highest"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda27;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda27;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda28;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda28;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceContainerLow()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 166
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_container_low"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda125;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda125;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda126;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda126;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceContainerLowest()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 153
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_container_lowest"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda110;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda110;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda111;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda111;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 127
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_dim"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda31;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda31;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda32;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda32;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceTint()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 335
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_tint"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda88;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda88;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda89;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda89;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9

    .line 231
    new-instance p0, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "surface_variant"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda64;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda64;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda65;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda65;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object p0
.end method

.method public tertiary()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 522
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "tertiary"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda9;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda10;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    const-wide/high16 v13, 0x4012000000000000L    # 4.5

    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    const-wide/high16 v17, 0x4026000000000000L    # 11.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda12;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda12;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 559
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "tertiary_container"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda157;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda157;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda158;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda158;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda159;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda159;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public tertiaryFixed()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 769
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "tertiary_fixed"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda5;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public tertiaryFixedDim()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 19

    move-object/from16 v0, p0

    .line 784
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const-string v1, "tertiary_fixed_dim"

    new-instance v2, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda154;

    invoke-direct {v2}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda154;-><init>()V

    new-instance v3, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda155;

    invoke-direct {v3}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda155;-><init>()V

    const/4 v4, 0x1

    new-instance v5, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;

    invoke-direct {v5, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda85;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    const/4 v6, 0x0

    new-instance v7, Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    move-object v10, v7

    invoke-direct/range {v10 .. v18}, Lcom/google/android/material/color/utilities/ContrastCurve;-><init>(DDDD)V

    new-instance v8, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda156;

    invoke-direct {v8, v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda156;-><init>(Lcom/google/android/material/color/utilities/MaterialDynamicColors;)V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public tertiaryPaletteKeyColor()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 64
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda62;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda62;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda63;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda63;-><init>()V

    const-string v1, "tertiary_palette_key_color"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public textHintInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 912
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda15;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda15;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "text_hint_inverse"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public textPrimaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 876
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda112;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda112;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda113;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda113;-><init>()V

    const-string v1, "text_primary_inverse"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public textPrimaryInverseDisableOnly()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 893
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda41;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda41;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda42;-><init>()V

    const-string v1, "text_primary_inverse_disable_only"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public textSecondaryAndTertiaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 884
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda107;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda107;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda118;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda118;-><init>()V

    const-string v1, "text_secondary_and_tertiary_inverse"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public textSecondaryAndTertiaryInverseDisabled()Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 903
    new-instance p0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda148;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda148;-><init>()V

    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda149;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors$$ExternalSyntheticLambda149;-><init>()V

    const-string v1, "text_secondary_and_tertiary_inverse_disabled"

    invoke-static {v1, p0, v0}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method
