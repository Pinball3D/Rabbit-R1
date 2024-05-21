.class public Lcom/google/android/material/color/ColorContrast;
.super Ljava/lang/Object;
.source "ColorContrast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final HIGH_CONTRAST_THRESHOLD:F = 0.6666667f

.field private static final MEDIUM_CONTRAST_THRESHOLD:F = 0.33333334f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyToActivitiesIfAvailable(Landroid/app/Application;Lcom/google/android/material/color/ColorContrastOptions;)V
    .locals 1

    .line 77
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;

    invoke-direct {v0, p1}, Lcom/google/android/material/color/ColorContrast$ColorContrastActivityLifecycleCallbacks;-><init>(Lcom/google/android/material/color/ColorContrastOptions;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static applyToActivityIfAvailable(Landroid/app/Activity;Lcom/google/android/material/color/ColorContrastOptions;)V
    .locals 1

    .line 98
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    invoke-static {p0, p1}, Lcom/google/android/material/color/ThemeUtils;->applyThemeOverlay(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method private static getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I
    .locals 3

    const-string v0, "uimode"

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    .line 143
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getContrast()F

    move-result p0

    .line 148
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getMediumContrastThemeOverlay()I

    move-result v0

    .line 149
    invoke-virtual {p1}, Lcom/google/android/material/color/ColorContrastOptions;->getHighContrastThemeOverlay()I

    move-result p1

    const v2, 0x3f2aaaab

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0

    :cond_2
    const v2, 0x3eaaaaab

    cmpl-float p0, p0, v2

    if-ltz p0, :cond_4

    if-nez v0, :cond_3

    move v0, p1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public static isContrastAvailable()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static wrapContextIfAvailable(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)Landroid/content/Context;
    .locals 1

    .line 123
    invoke-static {}, Lcom/google/android/material/color/ColorContrast;->isContrastAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 127
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorContrast;->getContrastThemeOverlayResourceId(Landroid/content/Context;Lcom/google/android/material/color/ColorContrastOptions;)I

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    .line 131
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
