.class public Lcom/google/android/material/color/MaterialColors;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# static fields
.field public static final ALPHA_DISABLED:F = 0.38f

.field public static final ALPHA_DISABLED_LOW:F = 0.12f

.field public static final ALPHA_FULL:F = 1.0f

.field public static final ALPHA_LOW:F = 0.32f

.field public static final ALPHA_MEDIUM:F = 0.54f

.field private static final CHROMA_NEUTRAL:I = 0x6

.field private static final TONE_ACCENT_CONTAINER_DARK:I = 0x1e

.field private static final TONE_ACCENT_CONTAINER_LIGHT:I = 0x5a

.field private static final TONE_ACCENT_DARK:I = 0x50

.field private static final TONE_ACCENT_LIGHT:I = 0x28

.field private static final TONE_ON_ACCENT_CONTAINER_DARK:I = 0x5a

.field private static final TONE_ON_ACCENT_CONTAINER_LIGHT:I = 0xa

.field private static final TONE_ON_ACCENT_DARK:I = 0x14

.field private static final TONE_ON_ACCENT_LIGHT:I = 0x64

.field private static final TONE_SURFACE_CONTAINER_DARK:I = 0xc

.field private static final TONE_SURFACE_CONTAINER_HIGH_DARK:I = 0x11

.field private static final TONE_SURFACE_CONTAINER_HIGH_LIGHT:I = 0x5c

.field private static final TONE_SURFACE_CONTAINER_LIGHT:I = 0x5e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeARGBWithAlpha(II)I
    .locals 1

    .line 247
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 248
    invoke-static {p0, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/content/Context;II)I
    .locals 0

    .line 117
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColorOrNull(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public static getColor(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    .line 96
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveTypedValueOrThrow(Landroid/view/View;I)Landroid/util/TypedValue;

    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    return p0
.end method

.method public static getColor(Landroid/view/View;II)I
    .locals 0

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getColorOrNull(Landroid/content/Context;I)Ljava/lang/Integer;
    .locals 0

    .line 128
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getColorRole(II)I
    .locals 2

    .line 356
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    int-to-double v0, p1

    .line 357
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/color/utilities/Hct;->setTone(D)V

    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    return p0
.end method

.method private static getColorRole(III)I
    .locals 0

    .line 364
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p0

    int-to-double p1, p2

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/color/utilities/Hct;->setChroma(D)V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p0

    return p0
.end method

.method public static getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;
    .locals 4

    const/16 v0, 0x5a

    if-eqz p1, :cond_0

    .line 301
    new-instance p1, Lcom/google/android/material/color/ColorRoles;

    const/16 v1, 0x28

    .line 302
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v1

    const/16 v2, 0x64

    .line 303
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v2

    .line 304
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v0

    const/16 v3, 0xa

    .line 305
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result p0

    invoke-direct {p1, v1, v2, v0, p0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    goto :goto_0

    .line 306
    :cond_0
    new-instance p1, Lcom/google/android/material/color/ColorRoles;

    const/16 v1, 0x50

    .line 307
    invoke-static {p0, v1}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v1

    const/16 v2, 0x14

    .line 308
    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v2

    const/16 v3, 0x1e

    .line 309
    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result v3

    .line 310
    invoke-static {p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(II)I

    move-result p0

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/google/android/material/color/ColorRoles;-><init>(IIII)V

    :goto_0
    return-object p1
.end method

.method public static getColorRoles(Landroid/content/Context;I)Lcom/google/android/material/color/ColorRoles;
    .locals 0

    .line 289
    invoke-static {p0}, Lcom/google/android/material/color/MaterialColors;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->getColorRoles(IZ)Lcom/google/android/material/color/ColorRoles;

    move-result-object p0

    return-object p0
.end method

.method public static getColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    .line 142
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, p0

    :goto_1
    return-object p2
.end method

.method public static getColorStateListOrNull(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    .line 156
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 159
    :cond_0
    iget v1, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    .line 160
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 161
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_2

    .line 162
    iget p0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getSurfaceContainerFromSeed(Landroid/content/Context;I)I
    .locals 1

    .line 325
    invoke-static {p0}, Lcom/google/android/material/color/MaterialColors;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5e

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    const/4 v0, 0x6

    .line 326
    invoke-static {p1, p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(III)I

    move-result p0

    return p0
.end method

.method public static getSurfaceContainerHighFromSeed(Landroid/content/Context;I)I
    .locals 1

    .line 343
    invoke-static {p0}, Lcom/google/android/material/color/MaterialColors;->isLightTheme(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x5c

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    :goto_0
    const/4 v0, 0x6

    .line 346
    invoke-static {p1, p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColorRole(III)I

    move-result p0

    return p0
.end method

.method public static harmonize(II)I
    .locals 0

    .line 278
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/Blend;->harmonize(II)I

    move-result p0

    return p0
.end method

.method public static harmonizeWithPrimary(Landroid/content/Context;I)I
    .locals 2

    .line 264
    sget v0, Lcom/google/android/material/R$attr;->colorPrimary:I

    const-class v1, Lcom/google/android/material/color/MaterialColors;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    .line 264
    invoke-static {p1, p0}, Lcom/google/android/material/color/MaterialColors;->harmonize(II)I

    move-result p0

    return p0
.end method

.method public static isColorLight(I)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 253
    invoke-static {p0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isLightTheme(Landroid/content/Context;)Z
    .locals 2

    .line 350
    sget v0, Lcom/google/android/material/R$attr;->isLightTheme:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method public static layer(II)I
    .locals 0

    .line 233
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method public static layer(IIF)I
    .locals 1

    .line 222
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 223
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 224
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result p0

    return p0
.end method

.method public static layer(Landroid/view/View;II)I
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/MaterialColors;->layer(Landroid/view/View;IIF)I

    move-result p0

    return p0
.end method

.method public static layer(Landroid/view/View;IIF)I
    .locals 0

    .line 208
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p1

    .line 209
    invoke-static {p0, p2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result p0

    .line 210
    invoke-static {p1, p0, p3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result p0

    return p0
.end method

.method private static resolveColor(Landroid/content/Context;Landroid/util/TypedValue;)I
    .locals 1

    .line 168
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 170
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 173
    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private static resolveColorStateList(Landroid/content/Context;Landroid/util/TypedValue;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 179
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 180
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    iget p0, p1, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
