.class public final Landroidx/compose/foundation/text/TextFieldDelegate$Companion;
.super Ljava/lang/Object;
.source "TextFieldDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/TextFieldDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ5\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0001\u00a2\u0006\u0002\u0008\u0016JK\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00130\u00182\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0013H\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008!\u0010\"JE\u0010#\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u0011H\u0001\u00a2\u0006\u0002\u0008*J1\u0010+\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020\'2\u0006\u0010,\u001a\u00020-2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0/H\u0001\u00a2\u0006\u0002\u00080JA\u00101\u001a\u00020\u000b2\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u000204032\u0006\u0010,\u001a\u00020-2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0/2\u0008\u00105\u001a\u0004\u0018\u00010\'H\u0001\u00a2\u0006\u0002\u00086JX\u00107\u001a\u00020\'2\u0006\u00108\u001a\u0002092\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020-2\u0006\u0010:\u001a\u00020;2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0/2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u000b0/H\u0001\u00f8\u0001\u0001\u00a2\u0006\u0002\u0008>JX\u0010?\u001a\u00020\'2\u0006\u00108\u001a\u0002092\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010,\u001a\u00020-2\u0006\u0010:\u001a\u00020;2\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0/2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u000b0/H\u0001\u00f8\u0001\u0001\u00a2\u0006\u0002\u0008@JI\u0010A\u001a\u00020\u000b2\u0006\u0010B\u001a\u00020C2\u0006\u0010\u0012\u001a\u00020D2\u0006\u0010,\u001a\u00020-2\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000b0/H\u0001\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008E\u0010F\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006G"
    }
    d2 = {
        "Landroidx/compose/foundation/text/TextFieldDelegate$Companion;",
        "",
        "()V",
        "applyCompositionDecoration",
        "Landroidx/compose/ui/text/input/TransformedText;",
        "compositionRange",
        "Landroidx/compose/ui/text/TextRange;",
        "transformed",
        "applyCompositionDecoration-72CqOWE",
        "(JLandroidx/compose/ui/text/input/TransformedText;)Landroidx/compose/ui/text/input/TransformedText;",
        "draw",
        "",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "value",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "offsetMapping",
        "Landroidx/compose/ui/text/input/OffsetMapping;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "selectionPaint",
        "Landroidx/compose/ui/graphics/Paint;",
        "draw$foundation_release",
        "layout",
        "Lkotlin/Triple;",
        "",
        "textDelegate",
        "Landroidx/compose/foundation/text/TextDelegate;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "prevResultText",
        "layout-_EkL_-Y$foundation_release",
        "(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Triple;",
        "notifyFocusedRect",
        "layoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "textInputSession",
        "Landroidx/compose/ui/text/input/TextInputSession;",
        "hasFocus",
        "",
        "notifyFocusedRect$foundation_release",
        "onBlur",
        "editProcessor",
        "Landroidx/compose/ui/text/input/EditProcessor;",
        "onValueChange",
        "Lkotlin/Function1;",
        "onBlur$foundation_release",
        "onEditCommand",
        "ops",
        "",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "session",
        "onEditCommand$foundation_release",
        "onFocus",
        "textInputService",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "imeOptions",
        "Landroidx/compose/ui/text/input/ImeOptions;",
        "onImeActionPerformed",
        "Landroidx/compose/ui/text/input/ImeAction;",
        "onFocus$foundation_release",
        "restartInput",
        "restartInput$foundation_release",
        "setCursorOffset",
        "position",
        "Landroidx/compose/ui/geometry/Offset;",
        "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
        "setCursorOffset-ULxng0E$foundation_release",
        "(JLandroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/jvm/functions/Function1;)V",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;-><init>()V

    return-void
.end method

.method public static synthetic layout-_EkL_-Y$foundation_release$default(Landroidx/compose/foundation/text/TextFieldDelegate$Companion;Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;ILjava/lang/Object;)Lkotlin/Triple;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 95
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->layout-_EkL_-Y$foundation_release(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyCompositionDecoration-72CqOWE(JLandroidx/compose/ui/text/input/TransformedText;)Landroidx/compose/ui/text/input/TransformedText;
    .locals 26

    const-string/jumbo v0, "transformed"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString$Builder;

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 325
    new-instance v2, Landroidx/compose/ui/text/SpanStyle;

    move-object v3, v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    sget-object v20, Landroidx/compose/ui/text/style/TextDecoration;->Companion:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/text/style/TextDecoration$Companion;->getUnderline()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xefff

    const/16 v25, 0x0

    invoke-direct/range {v3 .. v25}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    invoke-interface {v3, v4}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v3

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    invoke-interface {v4, v5}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v4

    .line 324
    invoke-virtual {v0, v2, v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->addStyle(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 329
    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString$Builder;->toAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/ui/text/input/TransformedText;->getOffsetMapping()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v1

    .line 322
    new-instance v2, Landroidx/compose/ui/text/input/TransformedText;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/text/input/TransformedText;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/input/OffsetMapping;)V

    return-object v2
.end method

.method public final draw$foundation_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/graphics/Paint;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "offsetMapping"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "textLayoutResult"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "selectionPaint"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p0

    if-nez p0, :cond_0

    .line 122
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    invoke-interface {p3, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p0

    .line 123
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p2

    invoke-interface {p3, p2}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p2

    if-eq p0, p2, :cond_0

    .line 125
    invoke-virtual {p4, p0, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getPathForRange(II)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    .line 126
    invoke-interface {p1, p0, p5}, Landroidx/compose/ui/graphics/Canvas;->drawPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V

    .line 129
    :cond_0
    sget-object p0, Landroidx/compose/ui/text/TextPainter;->INSTANCE:Landroidx/compose/ui/text/TextPainter;

    invoke-virtual {p0, p1, p4}, Landroidx/compose/ui/text/TextPainter;->paint(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/text/TextLayoutResult;)V

    return-void
.end method

.method public final layout-_EkL_-Y$foundation_release(Landroidx/compose/foundation/text/TextDelegate;JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Lkotlin/Triple;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextDelegate;",
            "J",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ")",
            "Lkotlin/Triple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "textDelegate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutDirection"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/compose/foundation/text/TextDelegate;->layout-NN6Ew-U(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p0

    .line 102
    new-instance p1, Lkotlin/Triple;

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final notifyFocusedRect$foundation_release(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/text/input/TextInputSession;ZLandroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "textDelegate"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "textLayoutResult"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "layoutCoordinates"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "textInputSession"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "offsetMapping"

    invoke-static {p7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p6, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p0

    invoke-interface {p7, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result p0

    .line 158
    invoke-virtual {p3}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result p1

    if-ge p0, p1, :cond_1

    .line 159
    invoke-virtual {p3, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, -0x1

    .line 162
    invoke-virtual {p3, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    .line 167
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    .line 168
    invoke-virtual {p2}, Landroidx/compose/foundation/text/TextDelegate;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x18

    const/4 v6, 0x0

    .line 165
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;IILjava/lang/Object;)J

    move-result-wide p0

    .line 170
    new-instance p2, Landroidx/compose/ui/geometry/Rect;

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    int-to-float p0, p0

    const/4 p1, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p2, p1, p1, p3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    move-object p0, p2

    .line 173
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p2

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p1

    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    move-result-wide p1

    .line 176
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p3, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getWidth()F

    move-result p3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getHeight()F

    move-result p0

    invoke-static {p3, p0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    .line 175
    invoke-virtual {p5, p0}, Landroidx/compose/ui/text/input/TextInputSession;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)Z

    return-void
.end method

.method public final onBlur$foundation_release(Landroidx/compose/ui/text/input/TextInputSession;Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputSession;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "textInputSession"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "editProcessor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onValueChange"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/EditProcessor;->toTextFieldValue()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextInputSession;->dispose()V

    return-void
.end method

.method public final onEditCommand$foundation_release(Ljava/util/List;Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextInputSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/input/TextInputSession;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "ops"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "editProcessor"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onValueChange"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2, p1}, Landroidx/compose/ui/text/input/EditProcessor;->apply(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p0

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 204
    invoke-virtual {p4, p1, p0}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)Z

    .line 205
    :cond_0
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onFocus$foundation_release(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputService;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextInputSession;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "textInputService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editProcessor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imeOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onValueChange"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onImeActionPerformed"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->restartInput$foundation_release(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object p0

    return-object p0
.end method

.method public final restartInput$foundation_release(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/TextInputService;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Landroidx/compose/ui/text/input/ImeOptions;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/ImeAction;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextInputSession;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "textInputService"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "value"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "editProcessor"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "imeOptions"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onValueChange"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onImeActionPerformed"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 251
    new-instance v0, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$restartInput$1;

    invoke-direct {v0, p3, p5, p0}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion$restartInput$1;-><init>(Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p2, p4, v0, p6}, Landroidx/compose/ui/text/input/TextInputService;->startInput(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 257
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/text/input/TextInputSession;

    return-object p0
.end method

.method public final setCursorOffset-ULxng0E$foundation_release(JLandroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/compose/foundation/text/TextLayoutResultProxy;",
            "Landroidx/compose/ui/text/input/EditProcessor;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo p0, "textLayoutResult"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "editProcessor"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "offsetMapping"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "onValueChange"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p3

    move-wide v1, p1

    .line 226
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k$default(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    move-result p0

    .line 225
    invoke-interface {p5, p0}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p0

    .line 228
    invoke-virtual {p4}, Landroidx/compose/ui/text/input/EditProcessor;->toTextFieldValue()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p0

    invoke-interface {p6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
