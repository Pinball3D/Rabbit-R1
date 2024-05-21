.class public Lcom/google/android/material/internal/EdgeToEdgeUtils;
.super Ljava/lang/Object;
.source "EdgeToEdgeUtils.java"


# static fields
.field private static final EDGE_TO_EDGE_BAR_ALPHA:I = 0x80


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyEdgeToEdge(Landroid/view/Window;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static applyEdgeToEdge(Landroid/view/Window;ZLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 83
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz p3, :cond_2

    .line 85
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_6

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x1010031

    const/high16 v4, -0x1000000

    invoke-static {v1, v3, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result v1

    if-eqz v2, :cond_5

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_5
    if-eqz v0, :cond_6

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_6
    xor-int/lit8 v0, p1, 0x1

    .line 97
    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 99
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->getStatusBarColor(Landroid/content/Context;Z)I

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->getNavigationBarColor(Landroid/content/Context;Z)I

    move-result p1

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 103
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 107
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->isUsingLightSystemBar(IZ)Z

    move-result p2

    .line 105
    invoke-static {p0, p2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 111
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result p2

    .line 110
    invoke-static {p1, p2}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->isUsingLightSystemBar(IZ)Z

    move-result p1

    .line 108
    invoke-static {p0, p1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightNavigationBar(Landroid/view/Window;Z)V

    return-void
.end method

.method private static getNavigationBarColor(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p1, 0x1010452

    const/high16 v0, -0x1000000

    .line 167
    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static getStatusBarColor(Landroid/content/Context;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p1, 0x1010451

    const/high16 v0, -0x1000000

    .line 152
    invoke-static {p0, p1, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static isUsingLightSystemBar(IZ)Z
    .locals 1

    .line 171
    invoke-static {p0}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    if-eqz p1, :cond_0

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

.method public static setLightNavigationBar(Landroid/view/Window;Z)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    .line 137
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    return-void
.end method

.method public static setLightStatusBar(Landroid/view/Window;Z)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    return-void
.end method
