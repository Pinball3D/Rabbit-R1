.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "selectionStart",
        "",
        "selectionEnd",
        "relativeToOriginalText",
        "invoke",
        "(IIZ)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $enabled:Z

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/OffsetMapping;ZLandroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-boolean p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$state:Landroidx/compose/foundation/text/TextFieldState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(IIZ)Ljava/lang/Boolean;
    .locals 8

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 472
    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 477
    invoke-interface {v0, p2}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p2

    :goto_1
    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$enabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 482
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v0

    if-ne p2, v0, :cond_3

    goto :goto_4

    .line 484
    :cond_3
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    if-ltz v0, :cond_6

    .line 485
    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/AnnotatedString;->length()I

    move-result v2

    if-gt v0, v2, :cond_6

    if-nez p3, :cond_5

    if-ne p1, p2, :cond_4

    goto :goto_2

    :cond_4
    iget-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 492
    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation_release()V

    goto :goto_3

    :cond_5
    :goto_2
    iget-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 490
    invoke-virtual {p3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->exitSelectionMode$foundation_release()V

    :goto_3
    iget-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 494
    invoke-virtual {p3}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object p3

    .line 495
    new-instance v7, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 496
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 497
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, v7

    .line 495
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 494
    invoke-interface {p3, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 502
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->exitSelectionMode$foundation_release()V

    .line 503
    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 465
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;->invoke(IIZ)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
