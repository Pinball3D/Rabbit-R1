.class final Landroidx/compose/material3/RichTooltipPositionProvider;
.super Ljava/lang/Object;
.source "Tooltip.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J5\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000cH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/material3/RichTooltipPositionProvider;",
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
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/material3/RichTooltipPositionProvider;IILjava/lang/Object;)Landroidx/compose/material3/RichTooltipPositionProvider;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material3/RichTooltipPositionProvider;->copy(I)Landroidx/compose/material3/RichTooltipPositionProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 1

    const-string v0, "anchorBounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    move-result p4

    .line 578
    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v0

    add-int/2addr v0, p4

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p2

    if-le v0, p2, :cond_0

    .line 579
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p2

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p3

    sub-int p4, p2, p3

    if-gez p4, :cond_0

    .line 581
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    move-result p3

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int p4, p2, p3

    .line 587
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    move-result p2

    invoke-static {p5, p6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    sub-int/2addr p2, p3

    if-gez p2, :cond_1

    .line 589
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    move-result p1

    iget p0, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    add-int p2, p1, p0

    .line 590
    :cond_1
    invoke-static {p4, p2}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public final component1()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    return p0
.end method

.method public final copy(I)Landroidx/compose/material3/RichTooltipPositionProvider;
    .locals 0

    new-instance p0, Landroidx/compose/material3/RichTooltipPositionProvider;

    invoke-direct {p0, p1}, Landroidx/compose/material3/RichTooltipPositionProvider;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/RichTooltipPositionProvider;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/material3/RichTooltipPositionProvider;

    iget p0, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    iget p1, p1, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTooltipAnchorPadding()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RichTooltipPositionProvider(tooltipAnchorPadding="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/compose/material3/RichTooltipPositionProvider;->tooltipAnchorPadding:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
