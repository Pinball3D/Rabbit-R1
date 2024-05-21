.class public final Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;
.super Ljava/lang/Object;
.source "LayoutUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u001a5\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u001a-\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a5\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "finalConstraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "constraints",
        "softWrap",
        "",
        "overflow",
        "Landroidx/compose/ui/text/style/TextOverflow;",
        "maxIntrinsicWidth",
        "",
        "finalConstraints-tfFHcEY",
        "(JZIF)J",
        "finalMaxLines",
        "",
        "maxLinesIn",
        "finalMaxLines-xdlQI24",
        "(ZII)I",
        "finalMaxWidth",
        "finalMaxWidth-tfFHcEY",
        "(JZIF)I",
        "foundation_release"
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
.method public static final finalConstraints-tfFHcEY(JZIF)J
    .locals 6

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/LayoutUtilsKt;->finalMaxWidth-tfFHcEY(JZIF)I

    move-result v1

    const/4 v2, 0x0

    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final finalMaxLines-xdlQI24(ZII)I
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 86
    sget-object p0, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final finalMaxWidth-tfFHcEY(JZIF)I
    .locals 0

    if-nez p2, :cond_0

    .line 45
    sget-object p2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result p2

    invoke-static {p3, p2}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 47
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p2

    goto :goto_0

    :cond_1
    const p2, 0x7fffffff

    .line 61
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-static {p4}, Landroidx/compose/foundation/text/TextDelegateKt;->ceilToIntPx(F)I

    move-result p3

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result p0

    invoke-static {p3, p0, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p2

    :goto_1
    return p2
.end method
