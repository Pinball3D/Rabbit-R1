.class public Lcom/google/android/material/internal/ClippableRoundedCornerLayout;
.super Landroid/widget/FrameLayout;
.source "ClippableRoundedCornerLayout.java"


# instance fields
.field private cornerRadius:F

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->cornerRadius:F

    return p0
.end method

.method public resetClipBoundsAndCornerRadius()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->cornerRadius:F

    .line 71
    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->invalidate()V

    return-void
.end method

.method public updateClipBoundsAndCornerRadius(FFFFF)V
    .locals 1

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public updateClipBoundsAndCornerRadius(Landroid/graphics/Rect;F)V
    .locals 7

    .line 83
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, p1

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(FFFFF)V

    return-void
.end method

.method public updateClipBoundsAndCornerRadius(Landroid/graphics/RectF;F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    :cond_0
    iput p2, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->cornerRadius:F

    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    .line 97
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->path:Landroid/graphics/Path;

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->invalidate()V

    return-void
.end method

.method public updateCornerRadius(F)V
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getTop()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->getBottom()I

    move-result v0

    int-to-float v5, v0

    move-object v1, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->updateClipBoundsAndCornerRadius(FFFFF)V

    return-void
.end method
