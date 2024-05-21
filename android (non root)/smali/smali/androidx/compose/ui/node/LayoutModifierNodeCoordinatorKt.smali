.class public final Landroidx/compose/ui/node/LayoutModifierNodeCoordinatorKt;
.super Ljava/lang/Object;
.source "LayoutModifierNodeCoordinator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "calculateAlignmentAndPlaceChildAsNeeded",
        "",
        "Landroidx/compose/ui/node/LookaheadCapablePlaceable;",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
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
.method public static final synthetic access$calculateAlignmentAndPlaceChildAsNeeded(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinatorKt;->calculateAlignmentAndPlaceChildAsNeeded(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result p0

    return p0
.end method

.method private static final calculateAlignmentAndPlaceChildAsNeeded(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 3

    .line 200
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 204
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, -0x80000000

    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_0
    return v2

    .line 207
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v1

    if-ne v1, v2, :cond_2

    return v2

    :cond_2
    const/4 v2, 0x1

    .line 212
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->setShallowPlacing$ui_release(Z)V

    .line 213
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->setPlacingForAlignment$ui_release(Z)V

    .line 214
    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->replace$ui_release()V

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->setShallowPlacing$ui_release(Z)V

    .line 216
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->setPlacingForAlignment$ui_release(Z)V

    .line 217
    instance-of p0, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    if-eqz p0, :cond_3

    .line 218
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getPosition-nOcc-ac()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p0

    goto :goto_0

    .line 220
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getPosition-nOcc-ac()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1

    .line 202
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Child of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " cannot be null when calculating alignment line"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
