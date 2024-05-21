.class public final Landroidx/compose/ui/text/input/RecordingInputConnection;
.super Ljava/lang/Object;
.source "RecordingInputConnection.android.kt"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecordingInputConnection.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecordingInputConnection.android.kt\nandroidx/compose/ui/text/input/RecordingInputConnection\n*L\n1#1,403:1\n80#1,5:404\n80#1,5:409\n80#1,5:414\n80#1,5:419\n80#1,5:424\n80#1,5:429\n80#1,5:434\n80#1,5:439\n80#1,5:444\n80#1,5:449\n80#1,5:454\n80#1,5:459\n80#1,5:464\n80#1,5:469\n80#1,5:474\n80#1,5:479\n80#1,5:484\n*S KotlinDebug\n*F\n+ 1 RecordingInputConnection.android.kt\nandroidx/compose/ui/text/input/RecordingInputConnection\n*L\n139#1:404,5\n175#1:409,5\n180#1:414,5\n186#1:419,5\n194#1:424,5\n205#1:429,5\n211#1:434,5\n217#1:439,5\n223#1:444,5\n259#1:449,5\n295#1:454,5\n321#1:459,5\n344#1:464,5\n354#1:469,5\n366#1:474,5\n386#1:479,5\n395#1:484,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0010H\u0002J\u0008\u0010\u001e\u001a\u00020\u0007H\u0016J\u0008\u0010\u001f\u001a\u00020\u0007H\u0002J\u0010\u0010 \u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u000cH\u0016J\u0008\u0010\"\u001a\u00020\u001cH\u0016J\u0012\u0010#\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\"\u0010&\u001a\u00020\u00072\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u000c2\u0008\u0010*\u001a\u0004\u0018\u00010+H\u0016J\u0012\u0010,\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0016J\u001a\u0010/\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u000cH\u0016J\u0018\u00102\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0018\u00105\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u000c2\u0006\u00104\u001a\u00020\u000cH\u0016J\u0008\u00106\u001a\u00020\u0007H\u0016J\u0008\u00107\u001a\u00020\u0007H\u0002J\u0017\u00108\u001a\u00020\u00072\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u001c0:H\u0082\u0008J\u0008\u0010;\u001a\u00020\u0007H\u0016J\u0010\u0010<\u001a\u00020\u000c2\u0006\u0010=\u001a\u00020\u000cH\u0016J\u001a\u0010>\u001a\u00020?2\u0008\u0010@\u001a\u0004\u0018\u00010A2\u0006\u0010)\u001a\u00020\u000cH\u0016J\n\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0012\u0010D\u001a\u0004\u0018\u0001002\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010E\u001a\u0002002\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0018\u0010G\u001a\u0002002\u0006\u0010F\u001a\u00020\u000c2\u0006\u0010)\u001a\u00020\u000cH\u0016J\u0010\u0010H\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020JH\u0002J\u0010\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020\u000cH\u0016J\u0010\u0010M\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u000cH\u0016J\u001c\u0010O\u001a\u00020\u00072\u0008\u0010P\u001a\u0004\u0018\u00010J2\u0008\u0010Q\u001a\u0004\u0018\u00010+H\u0016J\u0010\u0010R\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0007H\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010U\u001a\u00020\u000cH\u0016J\u0010\u0010V\u001a\u00020\u00072\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020\u001c2\u0006\u0010Z\u001a\u00020\u000cH\u0002J\u0018\u0010[\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000cH\u0016J\u001a\u0010^\u001a\u00020\u00072\u0008\u0010$\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u00020\u000cH\u0016J\u0018\u0010_\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u000c2\u0006\u0010]\u001a\u00020\u000cH\u0016J\u0016\u0010`\u001a\u00020\u001c2\u0006\u0010a\u001a\u00020\u00032\u0006\u0010b\u001a\u00020cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u0003@@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006d"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/RecordingInputConnection;",
        "Landroid/view/inputmethod/InputConnection;",
        "initState",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "eventCallback",
        "Landroidx/compose/ui/text/input/InputEventCallback2;",
        "autoCorrect",
        "",
        "(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V",
        "getAutoCorrect",
        "()Z",
        "batchDepth",
        "",
        "currentExtractedTextRequestToken",
        "editCommands",
        "",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "getEventCallback",
        "()Landroidx/compose/ui/text/input/InputEventCallback2;",
        "extractedTextMonitorMode",
        "isActive",
        "value",
        "mTextFieldValue",
        "getMTextFieldValue$ui_release",
        "()Landroidx/compose/ui/text/input/TextFieldValue;",
        "setMTextFieldValue$ui_release",
        "(Landroidx/compose/ui/text/input/TextFieldValue;)V",
        "addEditCommandWithBatch",
        "",
        "editCommand",
        "beginBatchEdit",
        "beginBatchEditInternal",
        "clearMetaKeyStates",
        "states",
        "closeConnection",
        "commitCompletion",
        "text",
        "Landroid/view/inputmethod/CompletionInfo;",
        "commitContent",
        "inputContentInfo",
        "Landroid/view/inputmethod/InputContentInfo;",
        "flags",
        "opts",
        "Landroid/os/Bundle;",
        "commitCorrection",
        "correctionInfo",
        "Landroid/view/inputmethod/CorrectionInfo;",
        "commitText",
        "",
        "newCursorPosition",
        "deleteSurroundingText",
        "beforeLength",
        "afterLength",
        "deleteSurroundingTextInCodePoints",
        "endBatchEdit",
        "endBatchEditInternal",
        "ensureActive",
        "block",
        "Lkotlin/Function0;",
        "finishComposingText",
        "getCursorCapsMode",
        "reqModes",
        "getExtractedText",
        "Landroid/view/inputmethod/ExtractedText;",
        "request",
        "Landroid/view/inputmethod/ExtractedTextRequest;",
        "getHandler",
        "Landroid/os/Handler;",
        "getSelectedText",
        "getTextAfterCursor",
        "maxChars",
        "getTextBeforeCursor",
        "logDebug",
        "message",
        "",
        "performContextMenuAction",
        "id",
        "performEditorAction",
        "editorAction",
        "performPrivateCommand",
        "action",
        "data",
        "reportFullscreenMode",
        "enabled",
        "requestCursorUpdates",
        "cursorUpdateMode",
        "sendKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "sendSynthesizedKeyEvent",
        "code",
        "setComposingRegion",
        "start",
        "end",
        "setComposingText",
        "setSelection",
        "updateInputState",
        "state",
        "inputMethodManager",
        "Landroidx/compose/ui/text/input/InputMethodManager;",
        "ui_release"
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
.field private final autoCorrect:Z

.field private batchDepth:I

.field private currentExtractedTextRequestToken:I

.field private final editCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

.field private extractedTextMonitorMode:Z

.field private isActive:Z

.field private mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputEventCallback2;Z)V
    .locals 1

    const-string v0, "initState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    iput-boolean p3, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    return-void
.end method

.method private final addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->beginBatchEditInternal()Z

    :try_start_0
    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    .line 129
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    throw p1
.end method

.method private final beginBatchEditInternal()Z
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    return v1
.end method

.method private final endBatchEditInternal()Z
    .locals 3

    iget v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    .line 156
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    iget-object v2, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    .line 157
    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/text/input/InputEventCallback2;->onEditCommands(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    .line 158
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final ensureActive(Lkotlin/jvm/functions/Function0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return p0
.end method

.method private final logDebug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final sendSynthesizedKeyEvent(I)V
    .locals 2

    .line 317
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 318
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->beginBatchEditInternal()Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public closeConnection()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->editCommands:Ljava/util/List;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->batchDepth:I

    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    .line 168
    invoke-interface {v0, p0}, Landroidx/compose/ui/text/input/InputEventCallback2;->onConnectionClosed(Landroidx/compose/ui/text/input/RecordingInputConnection;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 0

    const-string p2, "inputContentInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    return p0

    :cond_0
    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v1, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    .line 198
    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public endBatchEdit()Z
    .locals 0

    .line 151
    invoke-direct {p0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->endBatchEditInternal()Z

    move-result p0

    return p0
.end method

.method public finishComposingText()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/FinishComposingTextCommand;-><init>()V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final getAutoCorrect()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->autoCorrect:Z

    return p0
.end method

.method public getCursorCapsMode(I)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 383
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    invoke-static {v0, p0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public final getEventCallback()Landroidx/compose/ui/text/input/InputEventCallback2;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    return-object p0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 269
    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    :cond_1
    iput v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->currentExtractedTextRequestToken:I

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 272
    invoke-static {p0}, Landroidx/compose/ui/text/input/InputState_androidKt;->toExtractedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMTextFieldValue$ui_release()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 249
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 253
    invoke-static {p0}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getSelectedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    :goto_0
    return-object p0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 242
    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getTextAfterSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 244
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 235
    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/TextFieldValueKt;->getTextBeforeSelection(Landroidx/compose/ui/text/input/TextFieldValue;I)Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->toString()Ljava/lang/String;

    move-result-object p0

    .line 237
    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x117

    .line 304
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x116

    .line 303
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x115

    .line 302
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->sendSynthesizedKeyEvent(I)V

    goto :goto_0

    .line 299
    :pswitch_3
    new-instance p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    iget-object v1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    check-cast p1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performEditorAction(I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IME sends unsupported Editor Action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingIC"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 328
    :pswitch_0
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getPrevious-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 325
    :pswitch_1
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 329
    :pswitch_2
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 326
    :pswitch_3
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 327
    :pswitch_4
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 330
    :pswitch_5
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getGo-eUduSuo()I

    move-result p1

    goto :goto_0

    .line 324
    :cond_0
    sget-object p1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result p1

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    .line 336
    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/InputEventCallback2;->onImeAction-KlQnJC8(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestCursorUpdates(I)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz p0, :cond_0

    const-string p0, "RecordingIC"

    const-string p1, "requestCursorUpdates is not supported"

    .line 261
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->eventCallback:Landroidx/compose/ui/text/input/InputEventCallback2;

    .line 225
    invoke-interface {p0, p1}, Landroidx/compose/ui/text/input/InputEventCallback2;->onKeyEvent(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/SetComposingRegionCommand;-><init>(II)V

    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/text/input/SetComposingTextCommand;-><init>(Ljava/lang/String;I)V

    check-cast v1, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    :cond_0
    return v0
.end method

.method public final setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->mTextFieldValue:Landroidx/compose/ui/text/input/TextFieldValue;

    return-void
.end method

.method public setSelection(II)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Landroidx/compose/ui/text/input/SetSelectionCommand;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/text/input/SetSelectionCommand;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/RecordingInputConnection;->addEditCommandWithBatch(Landroidx/compose/ui/text/input/EditCommand;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final updateInputState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/InputMethodManager;)V
    .locals 4

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMethodManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->isActive:Z

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/RecordingInputConnection;->setMTextFieldValue$ui_release(Landroidx/compose/ui/text/input/TextFieldValue;)V

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->extractedTextMonitorMode:Z

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/compose/ui/text/input/RecordingInputConnection;->currentExtractedTextRequestToken:I

    .line 106
    invoke-static {p1}, Landroidx/compose/ui/text/input/InputState_androidKt;->toExtractedText(Landroidx/compose/ui/text/input/TextFieldValue;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 104
    invoke-interface {p2, p0, v0}, Landroidx/compose/ui/text/input/InputMethodManager;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v0

    .line 112
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v0

    .line 121
    :cond_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result p1

    .line 120
    invoke-interface {p2, v1, p1, p0, v0}, Landroidx/compose/ui/text/input/InputMethodManager;->updateSelection(IIII)V

    return-void
.end method
