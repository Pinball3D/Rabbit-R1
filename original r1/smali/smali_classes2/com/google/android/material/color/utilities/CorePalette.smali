.class public final Lcom/google/android/material/color/utilities/CorePalette;
.super Ljava/lang/Object;
.source "CorePalette.java"


# instance fields
.field public a1:Lcom/google/android/material/color/utilities/TonalPalette;

.field public a2:Lcom/google/android/material/color/utilities/TonalPalette;

.field public a3:Lcom/google/android/material/color/utilities/TonalPalette;

.field public error:Lcom/google/android/material/color/utilities/TonalPalette;

.field public n1:Lcom/google/android/material/color/utilities/TonalPalette;

.field public n2:Lcom/google/android/material/color/utilities/TonalPalette;


# direct methods
.method private constructor <init>(IZ)V
    .locals 10

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v0

    .line 62
    invoke-virtual {p1}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    if-eqz p2, :cond_0

    .line 64
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const-wide/high16 p1, 0x4008000000000000L    # 3.0

    div-double p1, v2, p1

    .line 65
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    add-double/2addr v8, v0

    const-wide/high16 p1, 0x4000000000000000L    # 2.0

    div-double p1, v2, p1

    .line 66
    invoke-static {v8, v9, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    const-wide/high16 p1, 0x4028000000000000L    # 12.0

    div-double p1, v2, p1

    .line 67
    invoke-static {p1, p2, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    const-wide/high16 p1, 0x4018000000000000L    # 6.0

    div-double/2addr v2, p1

    .line 68
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    goto :goto_0

    :cond_0
    const-wide/high16 p1, 0x4048000000000000L    # 48.0

    .line 70
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a1:Lcom/google/android/material/color/utilities/TonalPalette;

    const-wide/high16 p1, 0x4030000000000000L    # 16.0

    .line 71
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a2:Lcom/google/android/material/color/utilities/TonalPalette;

    add-double/2addr v8, v0

    const-wide/high16 p1, 0x4038000000000000L    # 24.0

    .line 72
    invoke-static {v8, v9, p1, p2}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->a3:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 73
    invoke-static {v0, v1, v6, v7}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n1:Lcom/google/android/material/color/utilities/TonalPalette;

    .line 74
    invoke-static {v0, v1, v4, v5}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->n2:Lcom/google/android/material/color/utilities/TonalPalette;

    :goto_0
    const-wide/high16 p1, 0x4039000000000000L    # 25.0

    const-wide/high16 v0, 0x4055000000000000L    # 84.0

    .line 76
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->fromHueAndChroma(DD)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/color/utilities/CorePalette;->error:Lcom/google/android/material/color/utilities/TonalPalette;

    return-void
.end method

.method public static contentOf(I)Lcom/google/android/material/color/utilities/CorePalette;
    .locals 2

    .line 56
    new-instance v0, Lcom/google/android/material/color/utilities/CorePalette;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/utilities/CorePalette;-><init>(IZ)V

    return-object v0
.end method

.method public static of(I)Lcom/google/android/material/color/utilities/CorePalette;
    .locals 2

    .line 47
    new-instance v0, Lcom/google/android/material/color/utilities/CorePalette;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/utilities/CorePalette;-><init>(IZ)V

    return-object v0
.end method
