.class public final Landroidx/compose/ui/input/pointer/PointerEventKt;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\u0002H\u0007\u001a\u000c\u0010\t\u001a\u00020\u0008*\u00020\u0002H\u0007\u001a\u000c\u0010\n\u001a\u00020\u0008*\u00020\u0002H\u0007\u001a!\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\rH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\'\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a\u0012\u0010\u0014\u001a\u00020\u0015*\u00020\u0002\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0016\u001a\u000c\u0010\u0017\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u0012\u0010\u0018\u001a\u00020\u0015*\u00020\u0002\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u0016\u001a\u001e\u0010\u0019\u001a\u00020\u0015*\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0001H\u0002\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001b\u001a\n\u0010\u001c\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u001d\u001a\u00020\u0001*\u00020\u0002\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "anyChangeConsumed",
        "",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "changedToDown",
        "changedToDownIgnoreConsumed",
        "changedToUp",
        "changedToUpIgnoreConsumed",
        "consumeAllChanges",
        "",
        "consumeDownChange",
        "consumePositionChange",
        "isOutOfBounds",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "isOutOfBounds-O0kMr_c",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z",
        "extendedTouchPadding",
        "Landroidx/compose/ui/geometry/Size;",
        "isOutOfBounds-jwHxaWs",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z",
        "positionChange",
        "Landroidx/compose/ui/geometry/Offset;",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;)J",
        "positionChangeConsumed",
        "positionChangeIgnoreConsumed",
        "positionChangeInternal",
        "ignoreConsumed",
        "(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J",
        "positionChanged",
        "positionChangedIgnoreConsumed",
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
.method public static final anyChangeConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Partial consumption has been deprecated. Use isConsumed instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isConsumed"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 953
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result p0

    return p0
.end method

.method public static final changedToDown(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final consumeAllChanges(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use consume() instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "consume()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    return-void
.end method

.method public static final consumeDownChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Partial consumption has been deprecated. Use consume() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "if (pressed != previousPressed) consume()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 965
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_0
    return-void
.end method

.method public static final consumePositionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)V
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        message = "Partial consumption has been deprecated. Use consume() instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "if (positionChange() != Offset.Zero) consume()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 977
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_0
    return-void
.end method

.method public static final isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
        message = "Use isOutOfBounds() that supports minimum touch target"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.isOutOfBounds(size, extendedTouchPadding)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "$this$isOutOfBounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    .line 1001
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    .line 1002
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    .line 1003
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    .line 1004
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    const/4 p2, 0x0

    cmpg-float v2, p0, p2

    if-ltz v2, :cond_1

    int-to-float v1, v1

    cmpl-float p0, p0, v1

    if-gtz p0, :cond_1

    cmpg-float p0, v0, p2

    if-ltz p0, :cond_1

    int-to-float p0, p1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z
    .locals 4

    const-string v0, "$this$isOutOfBounds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getType-T8wyACA()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerType;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    move-result p0

    return p0

    .line 1020
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v0

    .line 1021
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    .line 1022
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    .line 1023
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    neg-float v1, v1

    .line 1024
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v3

    add-float/2addr v2, v3

    .line 1025
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v3

    neg-float v3, v3

    .line 1026
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    add-float/2addr p1, p2

    cmpg-float p2, p0, v1

    if-ltz p2, :cond_2

    cmpl-float p0, p0, v2

    if-gtz p0, :cond_2

    cmpg-float p0, v0, v3

    if-ltz p0, :cond_2

    cmpl-float p0, v0, p1

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final positionChange(Landroidx/compose/ui/input/pointer/PointerInputChange;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 920
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final positionChangeConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Partial consumption has been deprecated. Use isConsumed instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isConsumed"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result p0

    return p0
.end method

.method public static final positionChangeIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 926
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J
    .locals 4

    .line 929
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v0

    .line 930
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v2

    .line 932
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    if-nez p1, :cond_0

    .line 934
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method static synthetic positionChangeInternal$default(Landroidx/compose/ui/input/pointer/PointerInputChange;ZILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 928
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final positionChanged(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 908
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final positionChangedIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 915
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/PointerEventKt;->positionChangeInternal(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
