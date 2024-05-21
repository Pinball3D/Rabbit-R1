.class public final Landroidx/compose/ui/geometry/RectKt;
.super Ljava/lang/Object;
.source "Rect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u0006\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a \u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\rH\u0007\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "topLeft",
        "Landroidx/compose/ui/geometry/Offset;",
        "bottomRight",
        "Rect-0a9Yr6o",
        "(JJ)Landroidx/compose/ui/geometry/Rect;",
        "offset",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "Rect-tz77jQw",
        "center",
        "radius",
        "",
        "Rect-3MmeM6k",
        "(JF)Landroidx/compose/ui/geometry/Rect;",
        "lerp",
        "start",
        "stop",
        "fraction",
        "ui-geometry_release"
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
.method public static final Rect-0a9Yr6o(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 2

    .line 283
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 284
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    .line 285
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    .line 286
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p1

    .line 287
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    .line 283
    invoke-direct {v0, v1, p0, p1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final Rect-3MmeM6k(JF)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 297
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 298
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    sub-float/2addr v1, p2

    .line 299
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    sub-float/2addr v2, p2

    .line 300
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    add-float/2addr v3, p2

    .line 301
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    add-float/2addr p0, p2

    .line 297
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;
    .locals 5

    .line 268
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 269
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    .line 270
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    .line 271
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v4

    add-float/2addr v3, v4

    .line 272
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    add-float/2addr p0, p1

    .line 268
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method public static final lerp(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;F)Landroidx/compose/ui/geometry/Rect;
    .locals 5

    const-string/jumbo v0, "start"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 322
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v2

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v1

    .line 323
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v3

    invoke-static {v2, v3, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v2

    .line 324
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v4

    invoke-static {v3, v4, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    .line 325
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p1

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 321
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v0
.end method
