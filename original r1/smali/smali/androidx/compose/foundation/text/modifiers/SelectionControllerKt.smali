.class public final Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;
.super Ljava/lang/Object;
.source "SelectionController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a<\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a+\u0010\u000c\u001a\u00020\u000b*\u0004\u0018\u00010\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "makeSelectionModifier",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
        "selectableId",
        "",
        "layoutCoordinates",
        "Lkotlin/Function0;",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "isInTouchMode",
        "",
        "outOfBoundary",
        "start",
        "Landroidx/compose/ui/geometry/Offset;",
        "end",
        "outOfBoundary-2x9bVx0",
        "(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z",
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
.method public static final synthetic access$makeSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->makeSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$outOfBoundary-2x9bVx0(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->outOfBoundary-2x9bVx0(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z

    move-result p0

    return p0
.end method

.method private static final makeSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Landroidx/compose/ui/Modifier;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;Z)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 168
    new-instance p5, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;

    move-object v1, p5

    move-object v2, p3

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;)V

    .line 255
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    new-instance p1, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$1;

    invoke-direct {p1, p5, v0}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$1;-><init>(Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$longPressDragObserver$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p5, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    goto :goto_0

    .line 261
    :cond_0
    new-instance p4, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$mouseSelectionObserver$1;

    invoke-direct {p4, p3, p0, p1, p2}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$mouseSelectionObserver$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)V

    .line 344
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    new-instance p1, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$2;

    invoke-direct {p1, p4, v0}, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$2;-><init>(Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeSelectionModifier$mouseSelectionObserver$1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p4, p1}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 346
    invoke-static {}, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final outOfBoundary-2x9bVx0(Landroidx/compose/ui/text/TextLayoutResult;JJ)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 353
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 354
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p1

    .line 355
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/text/TextLayoutResult;->getOffsetForPosition-k-4lQ0M(J)I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr v1, p2

    if-lt p1, v1, :cond_1

    if-ge p0, v1, :cond_2

    :cond_1
    if-gez p1, :cond_3

    if-gez p0, :cond_3

    :cond_2
    move v0, p2

    :cond_3
    return v0
.end method
