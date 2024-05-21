.class final Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldKeyInput.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldKeyInput;->process-ZmokQxo(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextFieldKeyInput.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldKeyInput.kt\nandroidx/compose/foundation/text/TextFieldKeyInput$process$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n1#2:264\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;",
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
.field final synthetic $command:Landroidx/compose/foundation/text/KeyCommand;

.field final synthetic $consumed:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/KeyCommand;Landroidx/compose/foundation/text/TextFieldKeyInput;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$command:Landroidx/compose/foundation/text/KeyCommand;

    iput-object p2, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$consumed:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    check-cast p1, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->invoke(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;)V
    .locals 3

    const-string v0, "$this$commandExecutionContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$command:Landroidx/compose/foundation/text/KeyCommand;

    .line 107
    sget-object v1, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/foundation/text/KeyCommand;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 211
    :pswitch_0
    invoke-static {}, Landroidx/compose/foundation/text/KeyEventHelpers_androidKt;->showCharacterPalette()V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 208
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getUndoManager()Landroidx/compose/foundation/text/UndoManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/foundation/text/UndoManager;->redo()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$getOnValueChange$p(Landroidx/compose/foundation/text/TextFieldKeyInput;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 204
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getUndoManager()Landroidx/compose/foundation/text/UndoManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->getValue()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/UndoManager;->makeSnapshot(Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 205
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getUndoManager()Landroidx/compose/foundation/text/UndoManager;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/foundation/text/UndoManager;->undo()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$getOnValueChange$p(Landroidx/compose/foundation/text/TextFieldKeyInput;)Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 202
    :pswitch_3
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deselect()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 201
    :pswitch_4
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 200
    :pswitch_5
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToHome()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 199
    :pswitch_6
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorDownByPage()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 198
    :pswitch_7
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorUpByPage()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 197
    :pswitch_8
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorDownByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 196
    :pswitch_9
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorUpByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 195
    :pswitch_a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineRightSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 194
    :pswitch_b
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 193
    :pswitch_c
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 192
    :pswitch_d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 191
    :pswitch_e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 190
    :pswitch_f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 189
    :pswitch_10
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRightByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 188
    :pswitch_11
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeftByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 187
    :pswitch_12
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRight()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 186
    :pswitch_13
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeft()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectMovement()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 185
    :pswitch_14
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->selectAll()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    :pswitch_15
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 180
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getSingleLine()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 181
    new-instance p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    const-string v0, "\t"

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Landroidx/compose/ui/text/input/EditCommand;)V

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->$consumed:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 183
    iput-boolean v2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto/16 :goto_0

    :pswitch_16
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 174
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getSingleLine()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 175
    new-instance p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    const-string v0, "\n"

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Landroidx/compose/ui/text/input/EditCommand;)V

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 177
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getState()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getOnImeActionPerformed()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    invoke-static {p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$getImeAction$p(Landroidx/compose/foundation/text/TextFieldKeyInput;)I

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/text/input/ImeAction;->box-impl(I)Landroidx/compose/ui/text/input/ImeAction;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 168
    :pswitch_17
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$8;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$8;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 172
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    goto/16 :goto_0

    .line 162
    :pswitch_18
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$7;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$7;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 166
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    goto/16 :goto_0

    .line 156
    :pswitch_19
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$6;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$6;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 160
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    goto/16 :goto_0

    .line 150
    :pswitch_1a
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$5;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$5;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 154
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    goto/16 :goto_0

    .line 138
    :pswitch_1b
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$4;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$4;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 147
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    goto/16 :goto_0

    .line 129
    :pswitch_1c
    sget-object v0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$3;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->deleteIfSelectedOr(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 134
    invoke-static {p0, p1}, Landroidx/compose/foundation/text/TextFieldKeyInput;->access$apply(Landroidx/compose/foundation/text/TextFieldKeyInput;Ljava/util/List;)V

    goto/16 :goto_0

    .line 127
    :pswitch_1d
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 126
    :pswitch_1e
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToHome()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto/16 :goto_0

    .line 125
    :pswitch_1f
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineRightSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 124
    :pswitch_20
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineLeftSide()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 123
    :pswitch_21
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineEnd()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 122
    :pswitch_22
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorToLineStart()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 121
    :pswitch_23
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorDownByPage()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 120
    :pswitch_24
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorUpByPage()Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;

    goto :goto_0

    .line 119
    :pswitch_25
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorDownByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 118
    :pswitch_26
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorUpByLine()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 117
    :pswitch_27
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorNextByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 116
    :pswitch_28
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorPrevByParagraph()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 115
    :pswitch_29
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorRightByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 114
    :pswitch_2a
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->moveCursorLeftByWord()Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 113
    :pswitch_2b
    sget-object p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$2;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$2;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->collapseRightOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    .line 112
    :pswitch_2c
    sget-object p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$1;->INSTANCE:Landroidx/compose/foundation/text/TextFieldKeyInput$process$2$1;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldPreparedSelection;->collapseLeftOr(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/selection/BaseTextPreparedSelection;

    goto :goto_0

    :pswitch_2d
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 111
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getSelectionManager()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->cut$foundation_release()V

    goto :goto_0

    :pswitch_2e
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 110
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getSelectionManager()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->paste$foundation_release()V

    goto :goto_0

    :pswitch_2f
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldKeyInput$process$2;->this$0:Landroidx/compose/foundation/text/TextFieldKeyInput;

    .line 108
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldKeyInput;->getSelectionManager()Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->copy$foundation_release(Z)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
