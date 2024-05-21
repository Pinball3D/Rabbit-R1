.class public final Lcom/google/android/material/color/MaterialColorUtilitiesHelper;
.super Ljava/lang/Object;
.source "MaterialColorUtilitiesHelper.java"


# static fields
.field private static final colorResourceIdToColorValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;"
        }
    .end annotation
.end field

.field private static final dynamicColors:Lcom/google/android/material/color/utilities/MaterialDynamicColors;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;-><init>()V

    sput-object v0, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->dynamicColors:Lcom/google/android/material/color/utilities/MaterialDynamicColors;

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_primary:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_primary:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_primary_inverse:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inversePrimary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_primary_container:I

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->primaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 49
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_primary_container:I

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onPrimaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 51
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_secondary:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_secondary:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_secondary_container:I

    .line 57
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 58
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->secondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 56
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_secondary_container:I

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSecondaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 59
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_tertiary:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_tertiary:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiary()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_tertiary_container:I

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->tertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 64
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_tertiary_container:I

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 68
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onTertiaryContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 66
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_background:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->background()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_background:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onBackground()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_surface:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_variant:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_surface_variant:I

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onSurfaceVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 74
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_inverse:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_surface_inverse:I

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->inverseOnSurface()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 77
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_bright:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceBright()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_dim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceDim()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container:I

    .line 82
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 81
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_low:I

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerLow()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 83
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_high:I

    .line 87
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 88
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerHigh()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 86
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_lowest:I

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 91
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerLowest()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 89
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_surface_container_highest:I

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 94
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->surfaceContainerHighest()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 92
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_outline:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->outline()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_outline_variant:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->outlineVariant()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->error()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_error:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onError()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_error_container:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->errorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_on_error_container:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->onErrorContainer()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 100
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_control_activated:I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlActivated()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 102
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_control_normal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlNormal()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_control_highlight:I

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->controlHighlight()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 105
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_text_primary_inverse:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textPrimaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 107
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_text_secondary_and_tertiary_inverse:I

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 112
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textSecondaryAndTertiaryInverse()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 110
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_text_secondary_and_tertiary_inverse_disabled:I

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 115
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textSecondaryAndTertiaryInverseDisabled()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 113
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_text_primary_inverse_disable_only:I

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 118
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textPrimaryInverseDisableOnly()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v3

    .line 116
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget v2, Lcom/google/android/material/R$color;->material_personalized_color_text_hint_foreground_inverse:I

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 121
    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/MaterialDynamicColors;->textHintInverse()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v0

    .line 119
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->colorResourceIdToColorValue:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorResourcesIdsToColorValues(Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/google/android/material/color/MaterialColorUtilitiesHelper;->colorResourceIdToColorValue:Ljava/util/Map;

    .line 129
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v2, p0}, Lcom/google/android/material/color/utilities/DynamicColor;->getArgb(Lcom/google/android/material/color/utilities/DynamicScheme;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
