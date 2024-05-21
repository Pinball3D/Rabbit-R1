.class public final Landroidx/compose/foundation/text/TextFieldScrollKt;
.super Ljava/lang/Object;
.source "TextFieldScroll.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextFieldScrollKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldScroll.kt\nandroidx/compose/foundation/text/TextFieldScrollKt\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,370:1\n135#2:371\n*S KotlinDebug\n*F\n+ 1 TextFieldScroll.kt\nandroidx/compose/foundation/text/TextFieldScrollKt\n*L\n61#1:371\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a6\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u001a4\u0010\u000c\u001a\u00020\r*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u000e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00160\u0015H\u0000\u001a*\u0010\u0017\u001a\u00020\r*\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\nH\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "getCursorRectInScroller",
        "Landroidx/compose/ui/geometry/Rect;",
        "Landroidx/compose/ui/unit/Density;",
        "cursorOffset",
        "",
        "transformedText",
        "Landroidx/compose/ui/text/input/TransformedText;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "rtl",
        "",
        "textFieldWidth",
        "textFieldScroll",
        "Landroidx/compose/ui/Modifier;",
        "scrollerPosition",
        "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
        "textFieldValue",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "visualTransformation",
        "Landroidx/compose/ui/text/input/VisualTransformation;",
        "textLayoutResultProvider",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
        "textFieldScrollable",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "enabled",
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
.method public static final synthetic access$getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/text/TextFieldScrollKt;->getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method private static final getCursorRectInScroller(Landroidx/compose/ui/unit/Density;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    if-eqz p3, :cond_0

    .line 222
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object p2

    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p1

    .line 221
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getCursorRect(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    if-nez p1, :cond_1

    .line 223
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object p1

    :cond_1
    move-object v0, p1

    .line 224
    invoke-static {}, Landroidx/compose/foundation/text/TextFieldCursorKt;->getDefaultCursorThickness()F

    move-result p1

    invoke-interface {p0, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    if-eqz p4, :cond_2

    int-to-float p1, p5

    .line 227
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, p0

    sub-float/2addr p1, p2

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    :goto_0
    move v1, p1

    if-eqz p4, :cond_3

    int-to-float p0, p5

    .line 233
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    sub-float/2addr p0, p1

    move v3, p0

    goto :goto_1

    .line 235
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    int-to-float p0, p0

    add-float/2addr p1, p0

    move v3, p1

    :goto_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 237
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/geometry/Rect;->copy$default(Landroidx/compose/ui/geometry/Rect;FFFFILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final textFieldScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scrollerPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textFieldValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "visualTransformation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textLayoutResultProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOffsetToFollow-5zc-tL8(J)I

    move-result v1

    .line 111
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->setPreviousSelection-5zc-tL8(J)V

    .line 113
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p2

    invoke-static {p3, p2}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->filterWithValidation(Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    move-result-object p2

    .line 115
    sget-object p3, Landroidx/compose/foundation/text/TextFieldScrollKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/gestures/Orientation;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 124
    new-instance p3, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;

    invoke-direct {p3, p1, v1, p2, p4}, Landroidx/compose/foundation/text/HorizontalScrollLayoutModifier;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ILandroidx/compose/ui/text/input/TransformedText;Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Landroidx/compose/ui/layout/LayoutModifier;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 117
    :cond_1
    new-instance p3, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;

    invoke-direct {p3, p1, v1, p2, p4}, Landroidx/compose/foundation/text/VerticalScrollLayoutModifier;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ILandroidx/compose/ui/text/input/TransformedText;Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Landroidx/compose/ui/layout/LayoutModifier;

    .line 131
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/draw/ClipKt;->clipToBounds(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    check-cast p3, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final textFieldScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "scrollerPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$$inlined$debugInspectorInfo$1;

    invoke-direct {v0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 60
    :goto_0
    new-instance v1, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;

    invoke-direct {v1, p1, p3, p2}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic textFieldScrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 56
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
