.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "invoke"
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

.field final synthetic $focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field final synthetic $imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

.field final synthetic $isPassword:Z

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $readOnly:Z

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $transformedText:Landroidx/compose/ui/text/input/TransformedText;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/input/TextFieldValue;ZZZLandroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/OffsetMapping;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/focus/FocusRequester;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$transformedText:Landroidx/compose/ui/text/input/TransformedText;

    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-boolean p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$enabled:Z

    iput-boolean p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$isPassword:Z

    iput-boolean p6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$readOnly:Z

    iput-object p7, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iput-object p8, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iput-object p9, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-object p10, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 411
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 9

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 413
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/ImeOptions;->getImeAction-eUduSuo()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setImeAction-4L7nppU(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$transformedText:Landroidx/compose/ui/text/input/TransformedText;

    .line 414
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TransformedText;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/AnnotatedString;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 415
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTextSelectionRange-FDrldGo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;J)V

    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$enabled:Z

    if-nez v0, :cond_0

    .line 416
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$isPassword:Z

    if-eqz v0, :cond_1

    .line 417
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->password(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 418
    :cond_1
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->getTextLayoutResult$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 426
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-direct {v0, v3, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 443
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$3;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-direct {v0, v3, p1, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$3;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/text/input/TextFieldValue;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->insertTextAtCursor$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 465
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    iget-boolean v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$enabled:Z

    iget-object v6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v7, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v8, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$4;-><init>(Landroidx/compose/ui/text/input/OffsetMapping;ZLandroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/TextFieldState;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setSelection$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function3;ILjava/lang/Object;)V

    .line 506
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$5;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$5;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/ImeOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->performImeAction$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 513
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$6;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    iget-boolean v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$readOnly:Z

    invoke-direct {v0, v3, v4, v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$6;-><init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/focus/FocusRequester;Z)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 519
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$7;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$7;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->onLongClick$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 523
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$isPassword:Z

    if-nez v0, :cond_2

    .line 524
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$8;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$8;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->copyText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$enabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$readOnly:Z

    if-nez v0, :cond_2

    .line 529
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$9;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$9;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->cutText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$enabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$readOnly:Z

    if-nez v0, :cond_3

    .line 536
    new-instance v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$10;

    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$10;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pasteText$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
