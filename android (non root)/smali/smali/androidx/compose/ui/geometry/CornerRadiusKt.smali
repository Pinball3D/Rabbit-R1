.class public final Landroidx/compose/ui/geometry/CornerRadiusKt;
.super Ljava/lang/Object;
.source "CornerRadius.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCornerRadius.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CornerRadius.kt\nandroidx/compose/ui/geometry/CornerRadiusKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,164:1\n25#2,3:165\n*S KotlinDebug\n*F\n+ 1 CornerRadius.kt\nandroidx/compose/ui/geometry/CornerRadiusKt\n*L\n33#1:165,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\t\u001a\"\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u001a-\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0003H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000c"
    }
    d2 = {
        "CornerRadius",
        "Landroidx/compose/ui/geometry/CornerRadius;",
        "x",
        "",
        "y",
        "(FF)J",
        "lerp",
        "start",
        "stop",
        "fraction",
        "lerp-3Ry4LBc",
        "(JJF)J",
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
.method public static final CornerRadius(FF)J
    .locals 4

    .line 165
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 166
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic CornerRadius$default(FFILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    move p1, p0

    .line 33
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final lerp-3Ry4LBc(JJF)J
    .locals 2

    .line 160
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->getX-impl(J)F

    move-result v1

    invoke-static {v0, v1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    .line 161
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/CornerRadius;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 159
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/CornerRadiusKt;->CornerRadius(FF)J

    move-result-wide p0

    return-wide p0
.end method
