.class public Lcom/google/android/material/color/utilities/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/CheckReturnValue;
.end annotation


# instance fields
.field private background:I

.field private error:I

.field private errorContainer:I

.field private inverseOnSurface:I

.field private inversePrimary:I

.field private inverseSurface:I

.field private onBackground:I

.field private onError:I

.field private onErrorContainer:I

.field private onPrimary:I

.field private onPrimaryContainer:I

.field private onSecondary:I

.field private onSecondaryContainer:I

.field private onSurface:I

.field private onSurfaceVariant:I

.field private onTertiary:I

.field private onTertiaryContainer:I

.field private outline:I

.field private outlineVariant:I

.field private primary:I

.field private primaryContainer:I

.field private scrim:I

.field private secondary:I

.field private secondaryContainer:I

.field private shadow:I

.field private surface:I

.field private surfaceVariant:I

.field private tertiary:I

.field private tertiaryContainer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIIIIIIIIIIIIII)V
    .locals 2

    move-object v0, p0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    move v1, p2

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    move v1, p3

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    move v1, p4

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    move v1, p5

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    move v1, p6

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    move v1, p7

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    move v1, p8

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    move v1, p9

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    move v1, p10

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    move v1, p11

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    move v1, p12

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    move v1, p13

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    move/from16 v1, p15

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    move/from16 v1, p16

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    move/from16 v1, p17

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    move/from16 v1, p18

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    move/from16 v1, p19

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    move/from16 v1, p20

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    move/from16 v1, p21

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    move/from16 v1, p22

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    move/from16 v1, p23

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    move/from16 v1, p24

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    move/from16 v1, p25

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    move/from16 v1, p26

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    move/from16 v1, p27

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    move/from16 v1, p28

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    move/from16 v1, p29

    iput v1, v0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-void
.end method

.method public static dark(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 133
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method public static darkContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method private static darkFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 7

    .line 178
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x50

    .line 179
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x14

    .line 180
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v4, 0x1e

    .line 181
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v5, 0x5a

    .line 182
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 184
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 185
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 186
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 187
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 188
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 189
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 190
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 191
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 192
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 193
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v6, 0xa

    .line 195
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 196
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 197
    invoke-virtual {v1, v6}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 198
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 199
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 200
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x3c

    .line 201
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 202
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 205
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 206
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v1, 0x28

    .line 207
    invoke-virtual {p0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method public static light(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 129
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->of(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method public static lightContent(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    .line 137
    invoke-static {p0}, Lcom/google/android/material/color/utilities/CorePalette;->contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/color/utilities/Scheme;->lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method

.method private static lightFromCorePalette(Lcom/google/android/material/color/utilities/CorePalette;)Lcom/google/android/material/color/utilities/Scheme;
    .locals 6

    .line 145
    new-instance v0, Lcom/google/android/material/color/utilities/Scheme;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/Scheme;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x28

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x64

    .line 147
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v4, 0x5a

    .line 148
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v5, 0xa

    .line 149
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 150
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 151
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 152
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 153
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 155
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 157
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 159
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnError(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 160
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 161
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x63

    .line 162
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 163
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 165
    invoke-virtual {v1, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 166
    invoke-virtual {v1, v4}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x1e

    .line 167
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x32

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutline(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v2, 0x50

    .line 169
    invoke-virtual {v1, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/4 v3, 0x0

    .line 170
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withShadow(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 171
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withScrim(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x14

    .line 172
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const/16 v3, 0x5f

    .line 173
    invoke-virtual {v1, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/Scheme;->withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 174
    invoke-virtual {p0, v2}, Lcom/google/android/material/color/utilities/TonalPalette;->tone(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/color/utilities/Scheme;->withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 685
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/color/utilities/Scheme;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 688
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 692
    :cond_2
    check-cast p1, Lcom/google/android/material/color/utilities/Scheme;

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    .line 694
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    .line 697
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    .line 700
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    .line 703
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    .line 706
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    .line 709
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    .line 712
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    .line 715
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    .line 718
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    .line 721
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    .line 724
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    .line 727
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    .line 730
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->error:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    .line 733
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    .line 736
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    .line 739
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    .line 742
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->background:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    .line 745
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    .line 748
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    .line 751
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    .line 754
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    .line 757
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    .line 760
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    .line 763
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    .line 766
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    .line 769
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    .line 772
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    .line 775
    iget v3, p1, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    .line 778
    iget p1, p1, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    if-eq p0, p1, :cond_1f

    return v2

    :cond_1f
    return v0
.end method

.method public getBackground()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return p0
.end method

.method public getError()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return p0
.end method

.method public getErrorContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return p0
.end method

.method public getInverseOnSurface()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return p0
.end method

.method public getInversePrimary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return p0
.end method

.method public getInverseSurface()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return p0
.end method

.method public getOnBackground()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return p0
.end method

.method public getOnError()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return p0
.end method

.method public getOnErrorContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return p0
.end method

.method public getOnPrimary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return p0
.end method

.method public getOnPrimaryContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return p0
.end method

.method public getOnSecondary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return p0
.end method

.method public getOnSecondaryContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return p0
.end method

.method public getOnSurface()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return p0
.end method

.method public getOnSurfaceVariant()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return p0
.end method

.method public getOnTertiary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return p0
.end method

.method public getOnTertiaryContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return p0
.end method

.method public getOutline()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return p0
.end method

.method public getOutlineVariant()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return p0
.end method

.method public getPrimary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return p0
.end method

.method public getPrimaryContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return p0
.end method

.method public getScrim()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return p0
.end method

.method public getSecondary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return p0
.end method

.method public getSecondaryContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return p0
.end method

.method public getShadow()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return p0
.end method

.method public getSurface()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return p0
.end method

.method public getSurfaceVariant()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return p0
.end method

.method public getTertiary()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return p0
.end method

.method public getTertiaryContainer()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 787
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    add-int/2addr v0, p0

    return v0
.end method

.method public setBackground(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return-void
.end method

.method public setError(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return-void
.end method

.method public setErrorContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return-void
.end method

.method public setInverseOnSurface(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return-void
.end method

.method public setInversePrimary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-void
.end method

.method public setInverseSurface(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return-void
.end method

.method public setOnBackground(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return-void
.end method

.method public setOnError(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return-void
.end method

.method public setOnErrorContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return-void
.end method

.method public setOnPrimary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return-void
.end method

.method public setOnPrimaryContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return-void
.end method

.method public setOnSecondary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return-void
.end method

.method public setOnSecondaryContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return-void
.end method

.method public setOnSurface(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return-void
.end method

.method public setOnSurfaceVariant(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return-void
.end method

.method public setOnTertiary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return-void
.end method

.method public setOnTertiaryContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return-void
.end method

.method public setOutline(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return-void
.end method

.method public setOutlineVariant(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return-void
.end method

.method public setPrimary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return-void
.end method

.method public setPrimaryContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return-void
.end method

.method public setScrim(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return-void
.end method

.method public setSecondary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return-void
.end method

.method public setSecondaryContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return-void
.end method

.method public setShadow(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return-void
.end method

.method public setSurface(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return-void
.end method

.method public setSurfaceVariant(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return-void
.end method

.method public setTertiary(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return-void
.end method

.method public setTertiaryContainer(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scheme{primary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrimaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSecondary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSecondaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onTertiary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tertiaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onTertiaryContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onErrorContainer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surfaceVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onSurfaceVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outlineVariant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scrim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inverseOnSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inversePrimary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->background:I

    return-object p0
.end method

.method public withError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->error:I

    return-object p0
.end method

.method public withErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->errorContainer:I

    return-object p0
.end method

.method public withInverseOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseOnSurface:I

    return-object p0
.end method

.method public withInversePrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inversePrimary:I

    return-object p0
.end method

.method public withInverseSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->inverseSurface:I

    return-object p0
.end method

.method public withOnBackground(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onBackground:I

    return-object p0
.end method

.method public withOnError(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onError:I

    return-object p0
.end method

.method public withOnErrorContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onErrorContainer:I

    return-object p0
.end method

.method public withOnPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimary:I

    return-object p0
.end method

.method public withOnPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onPrimaryContainer:I

    return-object p0
.end method

.method public withOnSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondary:I

    return-object p0
.end method

.method public withOnSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSecondaryContainer:I

    return-object p0
.end method

.method public withOnSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurface:I

    return-object p0
.end method

.method public withOnSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onSurfaceVariant:I

    return-object p0
.end method

.method public withOnTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiary:I

    return-object p0
.end method

.method public withOnTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->onTertiaryContainer:I

    return-object p0
.end method

.method public withOutline(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outline:I

    return-object p0
.end method

.method public withOutlineVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->outlineVariant:I

    return-object p0
.end method

.method public withPrimary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primary:I

    return-object p0
.end method

.method public withPrimaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->primaryContainer:I

    return-object p0
.end method

.method public withScrim(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->scrim:I

    return-object p0
.end method

.method public withSecondary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondary:I

    return-object p0
.end method

.method public withSecondaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->secondaryContainer:I

    return-object p0
.end method

.method public withShadow(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->shadow:I

    return-object p0
.end method

.method public withSurface(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surface:I

    return-object p0
.end method

.method public withSurfaceVariant(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->surfaceVariant:I

    return-object p0
.end method

.method public withTertiary(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiary:I

    return-object p0
.end method

.method public withTertiaryContainer(I)Lcom/google/android/material/color/utilities/Scheme;
    .locals 0

    iput p1, p0, Lcom/google/android/material/color/utilities/Scheme;->tertiaryContainer:I

    return-object p0
.end method
