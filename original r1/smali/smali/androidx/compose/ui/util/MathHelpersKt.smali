.class public final Landroidx/compose/ui/util/MathHelpersKt;
.super Ljava/lang/Object;
.source "MathHelpers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001\u001a\u001e\u0010\u0000\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0001\u001a\u001e\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00062\u0006\u0010\u0004\u001a\u00020\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "lerp",
        "",
        "start",
        "stop",
        "fraction",
        "",
        "",
        "ui-util_release"
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
.method public static final lerp(FFF)F
    .locals 1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static final lerp(IIF)I
    .locals 2

    sub-int/2addr p1, p0

    int-to-double v0, p1

    float-to-double p1, p2

    mul-double/2addr v0, p1

    .line 32
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static final lerp(JJF)J
    .locals 2

    sub-long/2addr p2, p0

    long-to-double p2, p2

    float-to-double v0, p4

    mul-double/2addr p2, v0

    .line 39
    invoke-static {p2, p3}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method
