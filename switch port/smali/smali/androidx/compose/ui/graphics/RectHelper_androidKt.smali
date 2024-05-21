.class public final Landroidx/compose/ui/graphics/RectHelper_androidKt;
.super Ljava/lang/Object;
.source "RectHelper.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0001\u001a\n\u0010\u0007\u001a\u00020\u0002*\u00020\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "toAndroidRect",
        "Landroid/graphics/Rect;",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/unit/IntRect;",
        "toAndroidRectF",
        "Landroid/graphics/RectF;",
        "toComposeIntRect",
        "toComposeRect",
        "ui-graphics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        message = "Converting Rect to android.graphics.Rect is lossy, and requires rounding. The behavior of toAndroidRect() truncates to an integral Rect, but you should choose the method of rounding most suitable for your use case."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.graphics.Rect(left.toInt(), top.toInt(), right.toInt(), bottom.toInt())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    float-to-int v1, v1

    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    float-to-int v2, v2

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    float-to-int v3, v3

    .line 38
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    float-to-int p0, p0

    .line 34
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static final toAndroidRect(Landroidx/compose/ui/unit/IntRect;)Landroid/graphics/Rect;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static final toAndroidRectF(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Landroid/graphics/RectF;

    .line 48
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    .line 50
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    .line 51
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    .line 47
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static final toComposeIntRect(Landroid/graphics/Rect;)Landroidx/compose/ui/unit/IntRect;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    return-object v0
.end method

.method public static final toComposeRect(Landroid/graphics/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 61
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    .line 62
    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 63
    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    .line 64
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    .line 60
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method
