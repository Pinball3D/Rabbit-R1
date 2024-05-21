.class public final Landroidx/compose/ui/geometry/OffsetKt;
.super Ljava/lang/Object;
.source "Offset.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOffset.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,266:1\n25#2,3:267\n*S KotlinDebug\n*F\n+ 1 Offset.kt\nandroidx/compose/ui/geometry/OffsetKt\n*L\n31#1:267,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a \u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011\u001a-\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u000fH\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a+\u0010\u0018\u001a\u00020\u0002*\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001aH\u0086\u0008\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\"!\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"!\u0010\u0007\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0008\u0010\u0004\u001a\u0004\u0008\t\u0010\u0006\"!\u0010\n\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006\u0082\u0002\u0012\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0005\u0008\u009920\u0001\u00a8\u0006\u001d"
    }
    d2 = {
        "isFinite",
        "",
        "Landroidx/compose/ui/geometry/Offset;",
        "isFinite-k-4lQ0M$annotations",
        "(J)V",
        "isFinite-k-4lQ0M",
        "(J)Z",
        "isSpecified",
        "isSpecified-k-4lQ0M$annotations",
        "isSpecified-k-4lQ0M",
        "isUnspecified",
        "isUnspecified-k-4lQ0M$annotations",
        "isUnspecified-k-4lQ0M",
        "Offset",
        "x",
        "",
        "y",
        "(FF)J",
        "lerp",
        "start",
        "stop",
        "fraction",
        "lerp-Wko1d7g",
        "(JJF)J",
        "takeOrElse",
        "block",
        "Lkotlin/Function0;",
        "takeOrElse-3MmeM6k",
        "(JLkotlin/jvm/functions/Function0;)J",
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
.method public static final Offset(FF)J
    .locals 4

    .line 267
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    .line 268
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 31
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final isFinite-k-4lQ0M(J)Z
    .locals 2

    .line 246
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isFinite-k-4lQ0M$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final isSpecified-k-4lQ0M(J)Z
    .locals 2

    .line 252
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isSpecified-k-4lQ0M$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final isUnspecified-k-4lQ0M(J)Z
    .locals 2

    .line 258
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic isUnspecified-k-4lQ0M$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final lerp-Wko1d7g(JJF)J
    .locals 2

    .line 237
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    invoke-static {v0, v1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    .line 238
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1, p4}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 236
    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final takeOrElse-3MmeM6k(JLkotlin/jvm/functions/Function0;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;)J"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
