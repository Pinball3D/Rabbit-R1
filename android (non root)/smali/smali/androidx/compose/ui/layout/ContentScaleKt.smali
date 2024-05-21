.class public final Landroidx/compose/ui/layout/ContentScaleKt;
.super Ljava/lang/Object;
.source "ContentScale.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a%\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\u0006\u001a%\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u0006\u001a%\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\r"
    }
    d2 = {
        "computeFillHeight",
        "",
        "srcSize",
        "Landroidx/compose/ui/geometry/Size;",
        "dstSize",
        "computeFillHeight-iLBOSCw",
        "(JJ)F",
        "computeFillMaxDimension",
        "computeFillMaxDimension-iLBOSCw",
        "computeFillMinDimension",
        "computeFillMinDimension-iLBOSCw",
        "computeFillWidth",
        "computeFillWidth-iLBOSCw",
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
.method public static final synthetic access$computeFillHeight-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillMaxDimension-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillMaxDimension-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillMinDimension-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillMinDimension-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$computeFillWidth-iLBOSCw(JJ)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    move-result p0

    return p0
.end method

.method private static final computeFillHeight-iLBOSCw(JJ)F
    .locals 0

    .line 171
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p0

    div-float/2addr p2, p0

    return p2
.end method

.method private static final computeFillMaxDimension-iLBOSCw(JJ)F
    .locals 1

    .line 156
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    move-result v0

    .line 157
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    move-result p0

    .line 158
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static final computeFillMinDimension-iLBOSCw(JJ)F
    .locals 1

    .line 162
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillWidth-iLBOSCw(JJ)F

    move-result v0

    .line 163
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/ContentScaleKt;->computeFillHeight-iLBOSCw(JJ)F

    move-result p0

    .line 164
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private static final computeFillWidth-iLBOSCw(JJ)F
    .locals 0

    .line 168
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p0

    div-float/2addr p2, p0

    return p2
.end method
