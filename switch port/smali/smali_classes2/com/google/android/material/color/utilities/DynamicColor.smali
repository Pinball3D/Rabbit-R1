.class public final Lcom/google/android/material/color/utilities/DynamicColor;
.super Ljava/lang/Object;
.source "DynamicColor.java"


# instance fields
.field public final background:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;"
        }
    .end annotation
.end field

.field public final contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

.field private final hctCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation
.end field

.field public final isBackground:Z

.field public final name:Ljava/lang/String;

.field public final opacity:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final palette:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;"
        }
    .end annotation
.end field

.field public final secondBackground:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;"
        }
    .end annotation
.end field

.field public final tone:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final toneDeltaPair:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/ToneDeltaPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Lcom/google/android/material/color/utilities/ContrastCurve;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/ToneDeltaPair;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->palette:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    iput-boolean p4, p0, Lcom/google/android/material/color/utilities/DynamicColor;->isBackground:Z

    iput-object p5, p0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    iput-object p8, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Lcom/google/android/material/color/utilities/ContrastCurve;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/ToneDeltaPair;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->palette:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    iput-boolean p4, p0, Lcom/google/android/material/color/utilities/DynamicColor;->isBackground:Z

    iput-object p5, p0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    iput-object p8, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    iput-object p9, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    return-void
.end method

.method public static enableLightForeground(D)D
    .locals 1

    .line 493
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->toneAllowsLightForeground(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide p0, 0x4048800000000000L    # 49.0

    :cond_0
    return-wide p0
.end method

.method public static foregroundTone(DD)D
    .locals 10

    .line 462
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Contrast;->lighterUnsafe(DD)D

    move-result-wide v0

    .line 463
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Contrast;->darkerUnsafe(DD)D

    move-result-wide v2

    .line 464
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v4

    .line 465
    invoke-static {v2, v3, p0, p1}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v6

    .line 466
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result p0

    if-eqz p0, :cond_3

    sub-double p0, v4, v6

    .line 477
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, p0, v8

    if-gez p0, :cond_0

    cmpg-double p0, v4, p2

    if-gez p0, :cond_0

    cmpg-double p0, v6, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    cmpl-double p1, v4, p2

    if-gez p1, :cond_2

    cmpl-double p1, v4, v6

    if-gez p1, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return-wide v2

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    cmpl-double p0, v6, p2

    if-gez p0, :cond_4

    cmpl-double p0, v6, v4

    if-ltz p0, :cond_5

    :cond_4
    move-wide v0, v2

    :cond_5
    return-wide v0
.end method

.method public static fromArgb(Ljava/lang/String;I)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 231
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 232
    invoke-static {p1}, Lcom/google/android/material/color/utilities/TonalPalette;->fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    .line 233
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/color/utilities/TonalPalette;)V

    new-instance p1, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/color/utilities/Hct;)V

    invoke-static {p0, v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/android/material/color/utilities/DynamicColor;"
        }
    .end annotation

    .line 170
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method public static fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;Z)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z)",
            "Lcom/google/android/material/color/utilities/DynamicColor;"
        }
    .end annotation

    .line 210
    new-instance v9, Lcom/google/android/material/color/utilities/DynamicColor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v9
.end method

.method static synthetic lambda$fromArgb$0(Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$fromArgb$1(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 233
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static toneAllowsLightForeground(D)Z
    .locals 2

    .line 515
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x31

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static tonePrefersLightForeground(D)Z
    .locals 2

    .line 510
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x3c

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getArgb(Lcom/google/android/material/color/utilities/DynamicScheme;)I
    .locals 3

    .line 243
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->getHct(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    if-nez p0, :cond_0

    return v0

    .line 247
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v1

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v1, p0}, Lcom/google/android/material/color/utilities/MathUtils;->clampInt(III)I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public getHct(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/Hct;
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 260
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/Hct;

    if-eqz v0, :cond_0

    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->palette:Ljava/util/function/Function;

    .line 271
    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 273
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 274
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 277
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 283
    iget-wide v2, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v7, v0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    if-eqz v7, :cond_12

    .line 287
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 288
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getRoleA()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v16

    .line 289
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getRoleB()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v17

    .line 290
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getDelta()D

    move-result-wide v18

    .line 291
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getPolarity()Lcom/google/android/material/color/utilities/TonePolarity;

    move-result-object v6

    .line 292
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getStayTogether()Z

    move-result v7

    iget-object v3, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    .line 294
    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/color/utilities/DynamicColor;

    .line 295
    invoke-virtual {v3, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v8

    .line 297
    sget-object v3, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    if-eq v6, v3, :cond_3

    sget-object v3, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    if-ne v6, v3, :cond_1

    iget-boolean v3, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v3, :cond_3

    :cond_1
    sget-object v3, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    if-ne v6, v3, :cond_2

    iget-boolean v3, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    move-object/from16 v6, v16

    goto :goto_3

    :cond_4
    move-object/from16 v6, v17

    :goto_3
    if-eqz v3, :cond_5

    move-object/from16 v3, v17

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    :goto_4
    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    .line 303
    iget-object v12, v6, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 304
    iget-boolean v12, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v12, :cond_6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v22, v12

    goto :goto_5

    :cond_6
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 307
    :goto_5
    iget-object v12, v6, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    iget-wide v4, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v12, v4, v5}, Lcom/google/android/material/color/utilities/ContrastCurve;->getContrast(D)D

    move-result-wide v4

    .line 308
    iget-object v12, v3, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    iget-wide v14, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v12, v14, v15}, Lcom/google/android/material/color/utilities/ContrastCurve;->getContrast(D)D

    move-result-wide v12

    .line 312
    iget-object v6, v6, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v6, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 315
    invoke-static {v8, v9, v14, v15}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v20

    cmpl-double v6, v20, v4

    if-ltz v6, :cond_7

    goto :goto_6

    .line 317
    :cond_7
    invoke-static {v8, v9, v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v14

    .line 319
    :goto_6
    iget-object v3, v3, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 322
    invoke-static {v8, v9, v10, v11}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v20

    cmpl-double v1, v20, v12

    if-ltz v1, :cond_8

    goto :goto_7

    .line 324
    :cond_8
    invoke-static {v8, v9, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v10

    :goto_7
    if-eqz v2, :cond_9

    .line 329
    invoke-static {v8, v9, v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v14

    .line 330
    invoke-static {v8, v9, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v10

    :cond_9
    sub-double v1, v10, v14

    mul-double v1, v1, v22

    cmpg-double v1, v1, v18

    if-gez v1, :cond_a

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v1, v18, v22

    add-double v28, v14, v1

    .line 336
    invoke-static/range {v24 .. v29}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v10

    sub-double v3, v10, v14

    mul-double v3, v3, v22

    cmpg-double v3, v3, v18

    if-gez v3, :cond_a

    const-wide/16 v24, 0x0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    sub-double v28, v10, v1

    .line 340
    invoke-static/range {v24 .. v29}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v14

    :cond_a
    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    cmpg-double v3, v1, v14

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    if-gtz v3, :cond_c

    cmpg-double v3, v14, v1

    if-gez v3, :cond_c

    const-wide/16 v3, 0x0

    cmpl-double v3, v22, v3

    if-lez v3, :cond_b

    mul-double v18, v18, v22

    add-double v3, v18, v1

    .line 350
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    move-wide v14, v1

    goto :goto_9

    :cond_b
    mul-double v18, v18, v22

    const-wide v1, 0x4048800000000000L    # 49.0

    add-double v3, v18, v1

    .line 353
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    :goto_8
    move-wide v12, v1

    const-wide v14, 0x4048800000000000L    # 49.0

    goto :goto_9

    :cond_c
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    cmpg-double v3, v3, v10

    if-gtz v3, :cond_10

    cmpg-double v3, v10, v1

    if-gez v3, :cond_10

    if-eqz v7, :cond_e

    const-wide/16 v3, 0x0

    cmpl-double v3, v22, v3

    if-lez v3, :cond_d

    mul-double v18, v18, v22

    add-double v3, v18, v1

    .line 361
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x404e000000000000L    # 60.0

    goto :goto_9

    :cond_d
    mul-double v18, v18, v22

    const-wide v1, 0x4048800000000000L    # 49.0

    add-double v3, v18, v1

    .line 364
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_8

    :cond_e
    const-wide/16 v3, 0x0

    cmpl-double v1, v22, v3

    if-lez v1, :cond_f

    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    goto :goto_9

    :cond_f
    const-wide v12, 0x4048800000000000L    # 49.0

    goto :goto_9

    :cond_10
    move-wide v12, v10

    :goto_9
    if-eqz v0, :cond_11

    move-wide v12, v14

    :cond_11
    return-wide v12

    :cond_12
    move-wide v3, v4

    iget-object v5, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    .line 380
    invoke-interface {v5, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    if-nez v7, :cond_13

    return-wide v5

    .line 386
    :cond_13
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v7, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v7

    iget-object v9, v0, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 388
    iget-wide v10, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v9, v10, v11}, Lcom/google/android/material/color/utilities/ContrastCurve;->getContrast(D)D

    move-result-wide v9

    .line 390
    invoke-static {v7, v8, v5, v6}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v11

    cmpl-double v11, v11, v9

    if-ltz v11, :cond_14

    goto :goto_a

    .line 394
    :cond_14
    invoke-static {v7, v8, v9, v10}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v5

    :goto_a
    if-eqz v2, :cond_15

    .line 398
    invoke-static {v7, v8, v9, v10}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v5

    :cond_15
    iget-boolean v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->isBackground:Z

    if-eqz v2, :cond_17

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    cmpg-double v2, v11, v5

    if-gtz v2, :cond_17

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    cmpg-double v2, v5, v11

    if-gez v2, :cond_17

    const-wide v13, 0x4048800000000000L    # 49.0

    .line 403
    invoke-static {v13, v14, v7, v8}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v5

    cmpl-double v2, v5, v9

    if-ltz v2, :cond_16

    move-wide v12, v13

    goto :goto_b

    :cond_16
    move-wide v12, v11

    goto :goto_b

    :cond_17
    move-wide v12, v5

    :goto_b
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    .line 413
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v2, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v5

    iget-object v0, v0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    .line 414
    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    .line 416
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 417
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 419
    invoke-static {v7, v8, v12, v13}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v16

    cmpl-double v2, v16, v9

    if-ltz v2, :cond_18

    .line 420
    invoke-static {v14, v15, v12, v13}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v16

    cmpl-double v2, v16, v9

    if-ltz v2, :cond_18

    return-wide v12

    .line 426
    :cond_18
    invoke-static {v7, v8, v9, v10}, Lcom/google/android/material/color/utilities/Contrast;->lighter(DD)D

    move-result-wide v7

    .line 430
    invoke-static {v14, v15, v9, v10}, Lcom/google/android/material/color/utilities/Contrast;->darker(DD)D

    move-result-wide v9

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v13, v7, v11

    if-eqz v13, :cond_19

    .line 435
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    cmpl-double v11, v9, v11

    if-eqz v11, :cond_1a

    .line 438
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_1a
    invoke-static {v5, v6}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 443
    invoke-static {v0, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_d

    .line 447
    :cond_1b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x0

    .line 448
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_1c
    if-nez v11, :cond_1d

    move-wide v4, v3

    goto :goto_c

    :cond_1d
    move-wide v4, v9

    :goto_c
    return-wide v4

    :cond_1e
    :goto_d
    if-nez v13, :cond_1f

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    :cond_1f
    return-wide v7

    :cond_20
    return-wide v12
.end method
