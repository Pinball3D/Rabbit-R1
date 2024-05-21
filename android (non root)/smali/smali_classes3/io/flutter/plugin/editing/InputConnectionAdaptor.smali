.class public Lio/flutter/plugin/editing/InputConnectionAdaptor;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputConnectionAdaptor.java"

# interfaces
.implements Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputConnectionAdaptor"


# instance fields
.field private batchEditNestDepth:I

.field private flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

.field private final keyboardDelegate:Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;

.field private final mClient:I

.field private mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field private final mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

.field private final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

.field private mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field private final mFlutterView:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mLayout:Landroid/text/Layout;

.field private mMonitorCursorUpdate:Z

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;)V
    .locals 8

    .line 104
    new-instance v7, Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v7}, Lio/flutter/embedding/engine/FlutterJNI;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lio/flutter/plugin/editing/InputConnectionAdaptor;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 8

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    .line 58
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    iput-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    iput p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    iput-object p3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iput-object p5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 79
    invoke-virtual {p5, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->addEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    iput-object p6, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object p4, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->keyboardDelegate:Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;

    .line 82
    new-instance p2, Lio/flutter/plugin/editing/FlutterTextUtils;

    invoke-direct {p2, p7}, Lio/flutter/plugin/editing/FlutterTextUtils;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    .line 85
    new-instance p2, Landroid/text/DynamicLayout;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    const v3, 0x7fffffff

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v1, p5

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method private static clampIndexToEditable(ILandroid/text/Editable;)I
    .locals 2

    .line 272
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eq p1, p0, :cond_0

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text selection index was clamped ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ") to remain in bounds. This may not be your fault, as some keyboards may select outside of bounds."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "flutter"

    invoke-static {v0, p0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private doPerformContextMenuAction(I)Z
    .locals 6

    const v0, 0x102001f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 396
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    return v1

    :cond_0
    const v0, 0x1020020

    const-string v3, "text label?"

    const-string v4, "clipboard"

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 399
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 400
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 402
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 403
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 404
    invoke-virtual {v0, v2, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v5, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 407
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipboardManager;

    .line 408
    invoke-static {v3, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 409
    invoke-virtual {v4, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 410
    invoke-virtual {v0, v2, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 411
    invoke-virtual {p0, v2, v2}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    :cond_1
    return v1

    :cond_2
    const v0, 0x1020021

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 415
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 416
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-eq p1, v0, :cond_3

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 419
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v2, v5, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 422
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 423
    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_3
    return v1

    :cond_4
    const v0, 0x1020022

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 428
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 429
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 431
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 432
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 433
    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 434
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 435
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v3, v0, :cond_5

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 436
    invoke-virtual {v2, v3, v0}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_5
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 437
    invoke-virtual {v0, v3, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 438
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v3, p1

    .line 439
    invoke-virtual {p0, v3, v3}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    :cond_6
    return v1

    :cond_7
    return v2
.end method

.method private getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    :goto_0
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 131
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v2

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 132
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 133
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v1

    if-ltz v0, :cond_1

    if-le v1, v0, :cond_1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 136
    invoke-virtual {v3}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 135
    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    const/4 v1, -0x1

    const-string v2, ""

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    :goto_1
    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 140
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method private getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    const/4 v1, 0x0

    .line 108
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    const/4 v1, -0x1

    .line 109
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 110
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 111
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 112
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz p1, :cond_1

    .line 114
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 115
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    :goto_1
    iput-object p1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-object p0
.end method

.method private handleHorizontalMovement(ZZ)Z
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 333
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 334
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    if-gez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    iget-object v3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 342
    invoke-virtual {p1, v3, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->flutterTextUtils:Lio/flutter/plugin/editing/FlutterTextUtils;

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 343
    invoke-virtual {p1, v2, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result p1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    if-ne v0, v1, :cond_2

    if-nez p2, :cond_2

    .line 348
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    goto :goto_1

    .line 350
    :cond_2
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v2
.end method

.method private handleVerticalMovement(ZZ)Z
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 356
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 357
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v0, :cond_5

    if-gez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_1

    move v2, v3

    .line 365
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 368
    invoke-static {p1, p2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 370
    invoke-static {p1, p2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    :goto_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 372
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 373
    invoke-virtual {p0, p1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 376
    invoke-static {p1, p2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mLayout:Landroid/text/Layout;

    .line 378
    invoke-static {p1, p2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    :goto_1
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 380
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 382
    :goto_2
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return v3

    :cond_5
    :goto_3
    return v2
.end method

.method private readStreamFully(Ljava/io/InputStream;I)[B
    .locals 2

    .line 538
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 540
    new-array p2, p2, [B

    :goto_0
    const/4 v0, -0x1

    .line 544
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v1, v0

    :goto_1
    if-ne v1, v0, :cond_0

    .line 550
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 150
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->beginBatchEdit()V

    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    .line 152
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    move-result p0

    return p0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 0

    .line 248
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->clearMetaKeyStates(I)Z

    move-result p0

    return p0
.end method

.method public closeConnection()V
    .locals 1

    .line 254
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 255
    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    :goto_0
    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    if-lez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    iget v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 492
    :try_start_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 501
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V

    .line 503
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    .line 504
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 505
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p2, :cond_0

    .line 511
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    const/high16 v0, 0x10000

    .line 518
    invoke-direct {p0, v2, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->readStreamFully(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 520
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "mimeType"

    .line 521
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 522
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "uri"

    .line 523
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 526
    invoke-virtual {p2, p0, v2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->commitContent(ILjava/util/Map;)V

    .line 527
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    return p3

    .line 513
    :catch_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    return v0

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->releasePermission()V

    :catch_1
    :cond_1
    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 165
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method public deleteSurroundingText(II)Z
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 171
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 175
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result p0

    return p0
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 0

    .line 181
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p0

    return p0
.end method

.method public didChangeEditingState(ZZZ)V
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 567
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v2

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 568
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v3

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 569
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v4

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 570
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v5

    .line 565
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 576
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 577
    invoke-direct {p0, v0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 576
    invoke-virtual {p2, p3, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_0
    iget-boolean p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    if-eqz p1, :cond_1

    .line 580
    invoke-direct {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p1

    iget-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 581
    invoke-virtual {p2, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_1
    return-void
.end method

.method public endBatchEdit()Z
    .locals 2

    .line 157
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    move-result v0

    iget v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->batchEditNestDepth:I

    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 159
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->endBatchEdit()V

    return v0
.end method

.method public finishComposingText()Z
    .locals 0

    .line 206
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    move-result p0

    return p0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    return-object p0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne p2, v0, :cond_3

    if-eqz p2, :cond_2

    const-string v0, "on"

    goto :goto_2

    :cond_2
    const-string v0, "off"

    :goto_2
    const-string v1, "The input method toggled text monitoring "

    .line 219
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputConnectionAdaptor"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_4

    move-object p2, p1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    :goto_3
    iput-object p2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mExtractRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 224
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 294
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 295
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x15

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 296
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleHorizontalMovement(ZZ)Z

    move-result p0

    return p0

    .line 297
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    .line 298
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleHorizontalMovement(ZZ)Z

    move-result p0

    return p0

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_2

    .line 300
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleVerticalMovement(ZZ)Z

    move-result p0

    return p0

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_3

    .line 302
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    invoke-direct {p0, v1, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleVerticalMovement(ZZ)Z

    move-result p0

    return p0

    .line 305
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_4

    .line 306
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-nez v0, :cond_5

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 308
    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->performEditorAction(I)Z

    return v3

    :cond_5
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 312
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 313
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 314
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    if-ltz v0, :cond_8

    if-ltz v2, :cond_8

    if-nez p1, :cond_6

    goto :goto_0

    .line 319
    :cond_6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 320
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 321
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    if-eq v1, v0, :cond_7

    iget-object v2, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 322
    invoke-virtual {v2, v1, v0}, Lio/flutter/plugin/editing/ListenableEditingState;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    int-to-char p1, p1

    .line 323
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/2addr v1, v3

    .line 324
    invoke-virtual {p0, v1, v1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->setSelection(II)Z

    .line 325
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return v3

    :cond_8
    :goto_0
    return v1
.end method

.method public performContextMenuAction(I)Z
    .locals 0

    .line 388
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 389
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->doPerformContextMenuAction(I)Z

    move-result p1

    .line 390
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 478
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->done(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 474
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->previous(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 471
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->next(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 468
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->send(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 465
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->search(I)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 462
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->go(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 456
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->newline(I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 459
    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->unspecifiedAction(I)V

    :goto_0
    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mClient:I

    .line 448
    invoke-virtual {v0, p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->performPrivateCommand(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public requestCursorUpdates(I)Z
    .locals 3

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mFlutterView:Landroid/view/View;

    .line 233
    invoke-direct {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->getCursorAnchorInfo()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    :cond_0
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    if-eq p1, v1, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "on"

    goto :goto_1

    :cond_2
    const-string v1, "off"

    :goto_1
    const-string v2, "The input method toggled cursor monitoring "

    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputConnectionAdaptor"

    invoke-static {v2, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-boolean p1, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->mMonitorCursorUpdate:Z

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;->keyboardDelegate:Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;

    .line 290
    invoke-interface {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;->handleEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setComposingRegion(II)Z
    .locals 0

    .line 187
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result p0

    return p0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 195
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    goto :goto_0

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    .line 200
    :goto_0
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return p1
.end method

.method public setSelection(II)Z
    .locals 0

    .line 263
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->beginBatchEdit()Z

    .line 264
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result p1

    .line 265
    invoke-virtual {p0}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->endBatchEdit()Z

    return p1
.end method
