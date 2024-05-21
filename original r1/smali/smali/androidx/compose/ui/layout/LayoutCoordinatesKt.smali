.class public final Landroidx/compose/ui/layout/LayoutCoordinatesKt;
.super Ljava/lang/Object;
.source "LayoutCoordinates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0002*\u00020\u0002\u001a\u0012\u0010\u0006\u001a\u00020\u0007*\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a\u0012\u0010\t\u001a\u00020\u0007*\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a\u0012\u0010\n\u001a\u00020\u0007*\u00020\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000b"
    }
    d2 = {
        "boundsInParent",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "boundsInRoot",
        "boundsInWindow",
        "findRootCoordinates",
        "positionInParent",
        "Landroidx/compose/ui/geometry/Offset;",
        "(Landroidx/compose/ui/layout/LayoutCoordinates;)J",
        "positionInRoot",
        "positionInWindow",
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
.method public static final boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 170
    :cond_0
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    :cond_1
    return-object v0
.end method

.method public static final boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    .line 135
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    .line 136
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v2

    int-to-float v2, v2

    .line 137
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v3

    int-to-float v3, v3

    .line 138
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    .line 139
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v6

    invoke-static {v6, v5, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v6

    .line 140
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v7

    invoke-static {v7, v5, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v2

    .line 141
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-static {v1, v5, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    cmpg-float v3, v4, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v3, v6, v1

    if-nez v3, :cond_1

    .line 143
    :goto_0
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 145
    :cond_1
    invoke-static {v4, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    invoke-interface {v0, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v7

    .line 146
    invoke-static {v2, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v5

    .line 147
    invoke-static {v2, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v2

    .line 148
    invoke-static {v4, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v9

    invoke-interface {v0, v9, v10}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v0

    .line 149
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    const/4 v9, 0x3

    new-array v10, v9, [F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    const/4 v13, 0x1

    aput v11, v10, v13

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    const/4 v14, 0x2

    aput v11, v10, v14

    invoke-static {v4, v10}, Lkotlin/comparisons/ComparisonsKt;->minOf(F[F)F

    move-result v4

    .line 150
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v10

    new-array v11, v9, [F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    aput v15, v11, v12

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    aput v15, v11, v13

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    aput v15, v11, v14

    invoke-static {v10, v11}, Lkotlin/comparisons/ComparisonsKt;->minOf(F[F)F

    move-result v10

    .line 151
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v11

    new-array v15, v9, [F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v16

    aput v16, v15, v12

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v16

    aput v16, v15, v13

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v16

    aput v16, v15, v14

    invoke-static {v11, v15}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result v11

    .line 152
    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v7

    new-array v8, v9, [F

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v5

    aput v5, v8, v12

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    aput v0, v8, v13

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    aput v0, v8, v14

    invoke-static {v7, v8}, Lkotlin/comparisons/ComparisonsKt;->maxOf(F[F)F

    move-result v0

    .line 153
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v1, v4, v10, v11, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object v1
.end method

.method public static final findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    goto :goto_0

    .line 185
    :cond_0
    instance-of p0, v0, Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    move-object p0, v0

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    return-object v0

    .line 186
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    :goto_2
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    if-eqz p0, :cond_3

    .line 189
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getWrappedBy$ui_release()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    goto :goto_2

    .line 191
    :cond_3
    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    return-object v0
.end method

.method public static final positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    move-result-wide v0

    return-wide v0
.end method
