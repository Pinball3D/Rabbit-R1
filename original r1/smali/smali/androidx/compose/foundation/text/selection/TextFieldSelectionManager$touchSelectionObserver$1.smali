.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;
.super Ljava/lang/Object;
.source "TextFieldSelectionManager.kt"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;-><init>(Landroidx/compose/foundation/text/UndoManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u001d\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001d\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u0008J\u001d\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u0006H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u0008J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016J\u0008\u0010\u0010\u001a\u00020\u0003H\u0016\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "onCancel",
        "",
        "onDown",
        "point",
        "Landroidx/compose/ui/geometry/Offset;",
        "onDown-k-4lQ0M",
        "(J)V",
        "onDrag",
        "delta",
        "onDrag-k-4lQ0M",
        "onStart",
        "startPoint",
        "onStart-k-4lQ0M",
        "onStop",
        "onUp",
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


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onDown-k-4lQ0M(J)V
    .locals 0

    return-void
.end method

.method public onDrag-k-4lQ0M(J)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 221
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 223
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 224
    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 225
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragBeginPosition$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v1

    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 226
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragBeginOffsetInText$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragBeginPosition$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v1

    .line 226
    invoke-virtual {p1, v1, v2, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k(JZ)I

    move-result v1

    :goto_0
    move v2, v1

    .line 231
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v3

    .line 230
    invoke-virtual {p1, v3, v4, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k(JZ)I

    move-result v3

    .line 235
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v1

    const/4 v4, 0x0

    .line 239
    sget-object p1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v5

    .line 234
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateSelection(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 242
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Landroidx/compose/foundation/text/TextFieldState;->setShowFloatingToolbar(Z)V

    :goto_1
    return-void
.end method

.method public onStart-k-4lQ0M(J)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 172
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 175
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDraggingHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 178
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->hideSelectionToolbar$foundation_release()V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 181
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->isPositionOnText-k-4lQ0M(J)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 182
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 183
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    move-result-object v1

    .line 185
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getLineForVerticalPosition(F)I

    move-result p1

    const/4 p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 184
    invoke-static {v0, p1, v3, p2, v2}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getLineEnd$default(Landroidx/compose/foundation/text/TextLayoutResultProxy;IZILjava/lang/Object;)I

    move-result p1

    .line 183
    invoke-interface {v1, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result p1

    .line 188
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHapticFeedBack()Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    move-result v0

    invoke-interface {p2, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->performHapticFeedback-CdsT49E(I)V

    .line 191
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p2

    .line 192
    invoke-static {p1, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide v0

    .line 190
    invoke-static {p0, p2, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$createTextFieldValue-FDrldGo(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/AnnotatedString;J)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation_release()V

    .line 195
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOnValueChange$foundation_release()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 201
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 202
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->enterSelectionMode$foundation_release()V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 203
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-wide v2, p1

    .line 204
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getOffsetForPosition-3MmeM6k$default(Landroidx/compose/foundation/text/TextLayoutResultProxy;JZILjava/lang/Object;)I

    move-result v1

    .line 206
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    const/4 v6, 0x0

    .line 210
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v7

    move-object v2, v0

    move v4, v1

    move v5, v1

    .line 205
    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateSelection(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;IIZLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V

    .line 212
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragBeginOffsetInText$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ljava/lang/Integer;)V

    :cond_5
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 214
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragBeginPosition$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    iget-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 215
    invoke-static {p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragBeginPosition$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 216
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v1, 0x0

    .line 246
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDraggingHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 247
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 248
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/text/TextFieldState;->setShowFloatingToolbar(Z)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 249
    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getTextToolbar()Landroidx/compose/ui/platform/TextToolbar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/platform/TextToolbar;->getStatus()Landroidx/compose/ui/platform/TextToolbarStatus;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    sget-object v2, Landroidx/compose/ui/platform/TextToolbarStatus;->Hidden:Landroidx/compose/ui/platform/TextToolbarStatus;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->showSelectionToolbar$foundation_release()V

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$touchSelectionObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 250
    invoke-static {p0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragBeginOffsetInText$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Ljava/lang/Integer;)V

    return-void
.end method

.method public onUp()V
    .locals 0

    return-void
.end method
