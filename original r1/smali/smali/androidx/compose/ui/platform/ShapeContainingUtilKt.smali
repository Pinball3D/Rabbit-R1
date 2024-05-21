.class public final Landroidx/compose/ui/platform/ShapeContainingUtilKt;
.super Ljava/lang/Object;
.source "ShapeContainingUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0000\u001a4\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002\u001a \u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a4\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0008H\u0002\u001a=\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u000c\u0010\u001a\u001a\u00020\u0001*\u00020\u001bH\u0002\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "isInOutline",
        "",
        "outline",
        "Landroidx/compose/ui/graphics/Outline;",
        "x",
        "",
        "y",
        "tmpTouchPointPath",
        "Landroidx/compose/ui/graphics/Path;",
        "tmpOpPath",
        "isInPath",
        "path",
        "isInRectangle",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "isInRoundedRect",
        "Landroidx/compose/ui/graphics/Outline$Rounded;",
        "touchPointPath",
        "opPath",
        "isWithinEllipse",
        "cornerRadius",
        "Landroidx/compose/ui/geometry/CornerRadius;",
        "centerX",
        "centerY",
        "isWithinEllipse-VE1yxkc",
        "(FFJFF)Z",
        "cornersFit",
        "Landroidx/compose/ui/geometry/RoundRect;",
        "ui_release"
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
.method private static final cornersFit(Landroidx/compose/ui/geometry/RoundRect;)Z
    .locals 3

    .line 110
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isInOutline(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 1

    const-string v0, "outline"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    instance-of v0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInRectangle(Landroidx/compose/ui/geometry/Rect;FF)Z

    move-result p0

    goto :goto_0

    .line 44
    :cond_0
    instance-of v0, p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInRoundedRect(Landroidx/compose/ui/graphics/Outline$Rounded;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result p0

    goto :goto_0

    .line 45
    :cond_1
    instance-of v0, p0, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v0, :cond_2

    check-cast p0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInPath(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static synthetic isInOutline$default(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;ILjava/lang/Object;)Z
    .locals 1

    and-int/lit8 p6, p5, 0x8

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 36
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInOutline(Landroidx/compose/ui/graphics/Outline;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result p0

    return p0
.end method

.method private static final isInPath(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 4

    .line 148
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    const v1, 0x3ba3d70a    # 0.005f

    sub-float v2, p1, v1

    sub-float v3, p2, v1

    add-float/2addr p1, v1

    add-float/2addr p2, v1

    invoke-direct {v0, v2, v3, p1, p2}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    if-nez p3, :cond_0

    .line 149
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p3

    .line 150
    :cond_0
    invoke-interface {p3, v0}, Landroidx/compose/ui/graphics/Path;->addRect(Landroidx/compose/ui/geometry/Rect;)V

    if-nez p4, :cond_1

    .line 154
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object p4

    .line 155
    :cond_1
    sget-object p1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getIntersect-b3I0S0c()I

    move-result p1

    invoke-interface {p4, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    .line 157
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Path;->isEmpty()Z

    move-result p0

    .line 158
    invoke-interface {p4}, Landroidx/compose/ui/graphics/Path;->reset()V

    .line 159
    invoke-interface {p3}, Landroidx/compose/ui/graphics/Path;->reset()V

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final isInRectangle(Landroidx/compose/ui/geometry/Rect;FF)Z
    .locals 1

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final isInRoundedRect(Landroidx/compose/ui/graphics/Outline$Rounded;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z
    .locals 13

    move v0, p1

    move v1, p2

    move-object/from16 v2, p4

    .line 61
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v4

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_7

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v4

    cmpl-float v4, v0, v4

    if-gez v4, :cond_7

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v4

    cmpg-float v4, v1, v4

    if-ltz v4, :cond_7

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    goto/16 :goto_2

    .line 71
    :cond_0
    invoke-static {v3}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->cornersFit(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_1

    .line 72
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    .line 73
    :goto_0
    invoke-interface {v4, v3}, Landroidx/compose/ui/graphics/Path;->addRoundRect(Landroidx/compose/ui/geometry/RoundRect;)V

    move-object/from16 v3, p3

    .line 74
    invoke-static {v4, p1, p2, v3, v2}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isInPath(Landroidx/compose/ui/graphics/Path;FFLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;)Z

    move-result v0

    return v0

    .line 77
    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v4

    add-float/2addr v4, v2

    .line 78
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v5

    add-float/2addr v5, v2

    .line 80
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v6

    sub-float v6, v2, v6

    .line 81
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v7

    add-float/2addr v7, v2

    .line 83
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v8

    sub-float v8, v2, v8

    .line 84
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v9

    sub-float v9, v2, v9

    .line 86
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result v10

    sub-float v10, v2, v10

    .line 87
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v11

    add-float/2addr v11, v2

    cmpg-float v2, v0, v4

    if-gez v2, :cond_3

    cmpg-float v2, v1, v5

    if-gez v2, :cond_3

    .line 91
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v2

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_1

    :cond_3
    cmpg-float v2, v0, v11

    if-gez v2, :cond_4

    cmpl-float v2, v1, v10

    if-lez v2, :cond_4

    .line 94
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottomLeftCornerRadius-kKHJgLs()J

    move-result-wide v2

    move v0, p1

    move v1, p2

    move v4, v11

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_1

    :cond_4
    cmpl-float v2, v0, v6

    if-lez v2, :cond_5

    cmpg-float v2, v1, v7

    if-gez v2, :cond_5

    .line 97
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getTopRightCornerRadius-kKHJgLs()J

    move-result-wide v2

    move v0, p1

    move v1, p2

    move v4, v6

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_1

    :cond_5
    cmpl-float v2, v0, v8

    if-lez v2, :cond_6

    cmpl-float v2, v1, v9

    if-lez v2, :cond_6

    .line 100
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getBottomRightCornerRadius-kKHJgLs()J

    move-result-wide v2

    move v0, p1

    move v1, p2

    move v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/platform/ShapeContainingUtilKt;->isWithinEllipse-VE1yxkc(FFJFF)Z

    move-result v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_7
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method private static final isWithinEllipse-VE1yxkc(FFJFF)Z
    .locals 0

    sub-float/2addr p0, p4

    sub-float/2addr p1, p5

    .line 129
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result p4

    .line 130
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p2

    mul-float/2addr p0, p0

    mul-float/2addr p4, p4

    div-float/2addr p0, p4

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    div-float/2addr p1, p2

    add-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
