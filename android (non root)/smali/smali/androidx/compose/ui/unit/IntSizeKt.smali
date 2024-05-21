.class public final Landroidx/compose/ui/unit/IntSizeKt;
.super Ljava/lang/Object;
.source "IntSize.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n+ 2 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,111:1\n48#2:112\n*S KotlinDebug\n*F\n+ 1 IntSize.kt\nandroidx/compose/ui/unit/IntSizeKt\n*L\n32#1:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\"\u0010\u000c\u001a\u00020\u0002*\u00020\t2\u0006\u0010\r\u001a\u00020\u0002H\u0087\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u0019\u0010\u0010\u001a\u00020\u0011*\u00020\u0002H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u0019\u0010\u0014\u001a\u00020\u0015*\u00020\u0002H\u0007\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0006\"!\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004\u00f8\u0001\u0000\u00a2\u0006\u000c\u0012\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0017"
    }
    d2 = {
        "center",
        "Landroidx/compose/ui/unit/IntOffset;",
        "Landroidx/compose/ui/unit/IntSize;",
        "getCenter-ozmzZPI$annotations",
        "(J)V",
        "getCenter-ozmzZPI",
        "(J)J",
        "IntSize",
        "width",
        "",
        "height",
        "(II)J",
        "times",
        "size",
        "times-O0kMr_c",
        "(IJ)J",
        "toIntRect",
        "Landroidx/compose/ui/unit/IntRect;",
        "toIntRect-ozmzZPI",
        "(J)Landroidx/compose/ui/unit/IntRect;",
        "toSize",
        "Landroidx/compose/ui/geometry/Size;",
        "toSize-ozmzZPI",
        "ui-unit_release"
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
.method public static final IntSize(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getCenter-ozmzZPI(J)J
    .locals 1

    .line 107
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic getCenter-ozmzZPI$annotations(J)V
    .locals 0

    return-void
.end method

.method public static final times-O0kMr_c(IJ)J
    .locals 0

    .line 91
    invoke-static {p1, p2, p0}, Landroidx/compose/ui/unit/IntSize;->times-YEO4UFw(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final toIntRect-ozmzZPI(J)Landroidx/compose/ui/unit/IntRect;
    .locals 2

    .line 98
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Landroidx/compose/ui/unit/IntRectKt;->IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;

    move-result-object p0

    return-object p0
.end method

.method public static final toSize-ozmzZPI(J)J
    .locals 1

    .line 111
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    invoke-static {v0, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p0

    return-wide p0
.end method
