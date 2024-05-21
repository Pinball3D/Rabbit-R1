.class Lcom/google/android/material/shape/ShapeableDelegateV14;
.super Lcom/google/android/material/shape/ShapeableDelegate;
.source "ShapeableDelegateV14.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeableDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method invalidateClippingMethod(Landroid/view/View;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV14;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/shape/ShapeableDelegateV14;->maskBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeableDelegateV14;->shouldUseCompatClipping()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method shouldUseCompatClipping()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
