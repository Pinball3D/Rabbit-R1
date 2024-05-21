.class final Landroidx/compose/material3/PlainTooltipPositionProvider;
.super Ljava/lang/Object;
.source "Tooltip.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J5\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/material3/PlainTooltipPositionProvider;",
        "Landroidx/compose/ui/window/PopupPositionProvider;",
        "tooltipAnchorPadding",
        "",
        "(I)V",
        "getTooltipAnchorPadding",
        "()I",
        "calculatePosition",
        "Landroidx/compose/ui/unit/IntOffset;",
        "anchorBounds",
        "Landroidx/compose/ui/unit/IntRect;",
        "windowSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "popupContentSize",
        "calculatePosition-llwVHH4",
        "(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final tooltipAnchorPadding:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/PlainTooltipPositionProvider;->tooltipAnchorPadding:I

    return-void
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 0

    const-string p2, "anchorBounds"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "layoutDirection"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result p3

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    .line 559
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p3

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p4

    sub-int/2addr p3, p4

    iget p4, p0, Landroidx/compose/material3/PlainTooltipPositionProvider;->tooltipAnchorPadding:I

    sub-int/2addr p3, p4

    if-gez p3, :cond_0

    .line 561
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    iget p0, p0, Landroidx/compose/material3/PlainTooltipPositionProvider;->tooltipAnchorPadding:I

    add-int p3, p1, p0

    .line 562
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getTooltipAnchorPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/PlainTooltipPositionProvider;->tooltipAnchorPadding:I

    return p0
.end method
