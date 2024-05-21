.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $cursorModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $drawModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $magnifierModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $maxLines:I

.field final synthetic $minLines:I

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $onPositionedModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $readOnly:Z

.field final synthetic $scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field final synthetic $showHandleAndMagnifier:Z

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/TextStyle;IILandroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/text/TextFieldState;",
            "Landroidx/compose/ui/text/TextStyle;",
            "II",
            "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/input/OffsetMapping;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    move v1, p3

    iput v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$minLines:I

    move v1, p4

    iput v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$maxLines:I

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$cursorModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$drawModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onPositionedModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$magnifierModifier:Landroidx/compose/ui/Modifier;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$showHandleAndMagnifier:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$readOnly:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$density:Landroidx/compose/ui/unit/Density;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 599
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    const-string v0, "C623@27932L3371:CoreTextField.kt#423gt5"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 602
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 602
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.CoreTextField.<anonymous>.<anonymous> (CoreTextField.kt:598)"

    const v3, 0x7925855b

    invoke-static {v3, p2, v0, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p2, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 605
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getMinHeightForSingleLineField-D9Ej5fM()F

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v2, v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    iget v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$minLines:I

    iget v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$maxLines:I

    .line 606
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/foundation/text/HeightInLinesModifierKt;->heightInLines(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;II)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 611
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-direct {v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$cursorModifier:Landroidx/compose/ui/Modifier;

    .line 617
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$drawModifier:Landroidx/compose/ui/Modifier;

    .line 618
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 619
    invoke-static {p2, v0}, Landroidx/compose/foundation/text/TextFieldSizeKt;->textFieldMinSize(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onPositionedModifier:Landroidx/compose/ui/Modifier;

    .line 620
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$magnifierModifier:Landroidx/compose/ui/Modifier;

    .line 621
    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 622
    invoke-static {p2, v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->bringIntoViewRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 624
    new-instance v10, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iget-boolean v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$showHandleAndMagnifier:Z

    iget-boolean v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$readOnly:Z

    iget-object v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v7, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-object v8, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$density:Landroidx/compose/ui/unit/Density;

    iget v9, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$maxLines:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/TextFieldState;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/ui/unit/Density;I)V

    const p0, -0x15a57eaf

    const/4 v0, 0x1

    invoke-static {p1, p0, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x30

    const/4 v1, 0x0

    invoke-static {p2, p0, p1, v0, v1}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SimpleLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
