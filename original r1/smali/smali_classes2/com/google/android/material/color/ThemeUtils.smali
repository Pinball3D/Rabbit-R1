.class public final Lcom/google/android/material/color/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyThemeOverlay(Landroid/content/Context;I)V
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 49
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/google/android/material/color/ThemeUtils;->getWindowDecorViewTheme(Landroid/app/Activity;)Landroid/content/res/Resources$Theme;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    return-void
.end method

.method private static getWindowDecorViewTheme(Landroid/app/Activity;)Landroid/content/res/Resources$Theme;
    .locals 0

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
