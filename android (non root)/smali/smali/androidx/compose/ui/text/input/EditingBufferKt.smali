.class public final Landroidx/compose/ui/text/input/EditingBufferKt;
.super Ljava/lang/Object;
.source "EditingBuffer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "updateRangeAfterDelete",
        "Landroidx/compose/ui/text/TextRange;",
        "target",
        "deleted",
        "updateRangeAfterDelete-pWDy79M",
        "(JJ)J",
        "ui-text_release"
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
.method public static final updateRangeAfterDelete-pWDy79M(JJ)J
    .locals 3

    .line 325
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 326
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v1

    .line 331
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/TextRange;->intersects-5zc-tL8(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 332
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/text/TextRange;->contains-5zc-tL8(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 341
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    move v1, v0

    goto :goto_1

    .line 343
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/TextRange;->contains-5zc-tL8(JJ)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 352
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    goto :goto_0

    .line 353
    :cond_1
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/text/TextRange;->contains-impl(JI)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 362
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v0

    .line 363
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    goto :goto_0

    .line 373
    :cond_2
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    goto :goto_1

    .line 376
    :cond_3
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    if-le v1, p0, :cond_4

    .line 395
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    sub-int/2addr v0, p0

    .line 396
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getLength-impl(J)I

    move-result p0

    :goto_0
    sub-int/2addr v1, p0

    .line 400
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method
