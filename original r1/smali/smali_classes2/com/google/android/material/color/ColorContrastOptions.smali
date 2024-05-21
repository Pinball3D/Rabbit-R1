.class public Lcom/google/android/material/color/ColorContrastOptions;
.super Ljava/lang/Object;
.source "ColorContrastOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorContrastOptions$Builder;
    }
.end annotation


# instance fields
.field private final highContrastThemeOverlayResourceId:I

.field private final mediumContrastThemeOverlayResourceId:I


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/ColorContrastOptions$Builder;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/material/color/ColorContrastOptions$Builder;->access$000(Lcom/google/android/material/color/ColorContrastOptions$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/color/ColorContrastOptions;->mediumContrastThemeOverlayResourceId:I

    .line 46
    invoke-static {p1}, Lcom/google/android/material/color/ColorContrastOptions$Builder;->access$100(Lcom/google/android/material/color/ColorContrastOptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/color/ColorContrastOptions;->highContrastThemeOverlayResourceId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/ColorContrastOptions$Builder;Lcom/google/android/material/color/ColorContrastOptions$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/material/color/ColorContrastOptions;-><init>(Lcom/google/android/material/color/ColorContrastOptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getHighContrastThemeOverlay()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/ColorContrastOptions;->highContrastThemeOverlayResourceId:I

    return p0
.end method

.method public getMediumContrastThemeOverlay()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/color/ColorContrastOptions;->mediumContrastThemeOverlayResourceId:I

    return p0
.end method
