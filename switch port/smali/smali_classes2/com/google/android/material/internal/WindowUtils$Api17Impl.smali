.class Lcom/google/android/material/internal/WindowUtils$Api17Impl;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/WindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api17Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCurrentWindowBounds(Landroid/view/WindowManager;)Landroid/graphics/Rect;
    .locals 2

    .line 72
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 77
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 78
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 79
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method
