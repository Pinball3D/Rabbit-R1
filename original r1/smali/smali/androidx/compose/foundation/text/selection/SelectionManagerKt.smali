.class public final Landroidx/compose/foundation/text/selection/SelectionManagerKt;
.super Ljava/lang/Object;
.source "SelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0000\u001a\u001e\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\rH\u0000\u001a!\u0010\u0011\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0001H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\u000c\u0010\u0017\u001a\u00020\u0013*\u00020\u0018H\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0019"
    }
    d2 = {
        "calculateSelectionMagnifierCenterAndroid",
        "Landroidx/compose/ui/geometry/Offset;",
        "manager",
        "Landroidx/compose/foundation/text/selection/SelectionManager;",
        "magnifierSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "calculateSelectionMagnifierCenterAndroid-O0kMr_c",
        "(Landroidx/compose/foundation/text/selection/SelectionManager;J)J",
        "getCurrentSelectedText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "selectable",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "selection",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "merge",
        "lhs",
        "rhs",
        "containsInclusive",
        "",
        "Landroidx/compose/ui/geometry/Rect;",
        "offset",
        "containsInclusive-Uv8p0NA",
        "(Landroidx/compose/ui/geometry/Rect;J)Z",
        "visibleBounds",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
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
.method public static final calculateSelectionMagnifierCenterAndroid-O0kMr_c(Landroidx/compose/foundation/text/selection/SelectionManager;J)J
    .locals 4

    const-string v0, "manager"

    .line 853
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getSelection()Landroidx/compose/foundation/text/selection/Selection;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 849
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/compose/foundation/text/selection/SelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/foundation/text/Handle;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_0
    if-eq v1, v2, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 p0, 0x3

    if-eq v1, p0, :cond_2

    .line 853
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 852
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SelectionContainer does not support cursor"

    .line 853
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 852
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J

    move-result-wide p0

    goto :goto_1

    .line 851
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, v2}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J

    move-result-wide p0

    :goto_1
    return-wide p0

    .line 850
    :cond_5
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0
.end method

.method private static final calculateSelectionMagnifierCenterAndroid_O0kMr_c$getMagnifierCenter(Landroidx/compose/foundation/text/selection/SelectionManager;JLandroidx/compose/foundation/text/selection/Selection$AnchorInfo;Z)J
    .locals 6

    .line 804
    invoke-virtual {p0, p3}, Landroidx/compose/foundation/text/selection/SelectionManager;->getAnchorSelectable$foundation_release(Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;)Landroidx/compose/foundation/text/selection/Selectable;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getContainerLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 806
    :cond_1
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 808
    :cond_2
    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p3

    if-eqz p4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    .line 810
    :goto_0
    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/Selectable;->getLastVisibleOffset()I

    move-result p4

    if-le p3, p4, :cond_4

    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 816
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v3

    .line 814
    invoke-interface {v2, v1, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v3

    .line 818
    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    .line 820
    invoke-interface {v0, p3}, Landroidx/compose/foundation/text/selection/Selectable;->getRangeOfLineContaining--jx7JFs(I)J

    move-result-wide v3

    .line 821
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p4

    invoke-interface {v0, p4}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p4

    .line 824
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v3

    invoke-static {v5, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    invoke-interface {v0, v3}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object v3

    .line 825
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 826
    invoke-virtual {p4}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result p4

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    invoke-static {p4, v3}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 827
    invoke-static {p0, v4, p4}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p4

    sub-float/2addr p0, p4

    .line 833
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_5

    .line 834
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    return-wide p0

    .line 839
    :cond_5
    invoke-interface {v0, p3}, Landroidx/compose/foundation/text/selection/Selectable;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    .line 840
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    .line 844
    invoke-static {p4, p0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    .line 842
    invoke-interface {v1, v2, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z
    .locals 3

    const-string v0, "$this$containsInclusive"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 913
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    cmpg-float p2, v0, p1

    if-gtz p2, :cond_0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getCurrentSelectedText(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 5

    const-string/jumbo v0, "selectable"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 861
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 864
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 865
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 871
    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 872
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 876
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 877
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_2
    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/Selectable;->getSelectableId()J

    move-result-wide v1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getSelectableId()J

    move-result-wide v3

    cmp-long p0, v1, v3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    .line 884
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 885
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getStart()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_0

    .line 892
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getHandlesCrossed()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 893
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    goto :goto_0

    .line 895
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/Selection;->getEnd()Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/Selection$AnchorInfo;->getOffset()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/AnnotatedString;->subSequence(II)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static final merge(Landroidx/compose/foundation/text/selection/Selection;Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;
    .locals 0

    if-eqz p0, :cond_1

    .line 792
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/Selection;->merge(Landroidx/compose/foundation/text/selection/Selection;)Landroidx/compose/foundation/text/selection/Selection;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    move-result-wide v1

    .line 908
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getBottomRight-F1C5BW0()J

    move-result-wide v3

    invoke-interface {p0, v3, v4}, Landroidx/compose/ui/layout/LayoutCoordinates;->windowToLocal-MK-Hz9U(J)J

    move-result-wide v3

    .line 906
    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/RectKt;->Rect-0a9Yr6o(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method
