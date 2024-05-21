.class public Lcom/google/android/material/color/HarmonizedColorsOptions;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    }
.end annotation


# instance fields
.field private final colorAttributeToHarmonizeWith:I

.field private final colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field private final colorResourceIds:[I


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$000(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    .line 52
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$100(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 53
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$200(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;Lcom/google/android/material/color/HarmonizedColorsOptions$1;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V

    return-void
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .locals 2

    .line 45
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;-><init>()V

    .line 46
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColorAttributes;->createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->build()Lcom/google/android/material/color/HarmonizedColorsOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColorAttributeToHarmonizeWith()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    return p0
.end method

.method public getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    return-object p0
.end method

.method public getColorResourceIds()[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    return-object p0
.end method

.method getThemeOverlayResourceId(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    .line 136
    invoke-virtual {p0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    move-result p1

    :cond_0
    return p1
.end method
