.class public Lio/flutter/plugin/editing/TextInputPlugin;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;,
        Lio/flutter/plugin/editing/TextInputPlugin$MinMax;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextInputPlugin"


# instance fields
.field private final afm:Landroid/view/autofill/AutofillManager;

.field private autofillConfiguration:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

.field private imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

.field private inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

.field private isInputConnectionLocked:Z

.field private lastClientRect:Landroid/graphics/Rect;

.field private lastInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

.field private mRestartInputPending:Z

.field private final mView:Landroid/view/View;

.field private platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method public constructor <init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 70
    new-instance v0, Lio/flutter/plugin/editing/ListenableEditingState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/ListenableEditingState;-><init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Landroid/view/View;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    .line 82
    new-instance v0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-direct {v0, p1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 83
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->install()V

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    .line 86
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/editing/TextInputPlugin$1;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;)V

    invoke-virtual {p1, v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->setImeVisibleListener(Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$ImeVisibleListener;)V

    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 98
    new-instance p1, Lio/flutter/plugin/editing/TextInputPlugin$2;

    invoke-direct {p1, p0}, Lio/flutter/plugin/editing/TextInputPlugin$2;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;)V

    invoke-virtual {p2, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->setTextInputMethodHandler(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;)V

    .line 163
    invoke-virtual {p2}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->requestExistingInputState()V

    iput-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 166
    invoke-virtual {p3, p0}, Lio/flutter/plugin/platform/PlatformViewsController;->attachTextInputPlugin(Lio/flutter/plugin/editing/TextInputPlugin;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/plugin/editing/TextInputPlugin;)Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->hideTextInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewEntered()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/plugin/editing/TextInputPlugin;IZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->setPlatformViewTextInputClient(IZ)V

    return-void
.end method

.method static synthetic access$700(Lio/flutter/plugin/editing/TextInputPlugin;DD[D)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Lio/flutter/plugin/editing/TextInputPlugin;->saveEditableSizeAndTransform(DD[D)V

    return-void
.end method

.method private canShowTextInput()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 394
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private static composingChanged(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)Z
    .locals 7

    .line 462
    iget v0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    iget v1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    sub-int/2addr v0, v1

    .line 463
    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 467
    iget-object v4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    iget v5, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    iget v6, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    add-int/2addr v6, v3

    .line 468
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private hideTextInput(Landroid/view/View;)V
    .locals 1

    .line 408
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private static inputTypeFromTextInputType(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;ZZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;)I
    .locals 1

    .line 237
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->DATETIME:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 239
    :cond_0
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NUMBER:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_3

    .line 241
    iget-boolean p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isSigned:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x1002

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 244
    :goto_0
    iget-boolean p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->isDecimal:Z

    if-eqz p0, :cond_2

    or-int/lit16 p1, p1, 0x2000

    :cond_2
    return p1

    .line 248
    :cond_3
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->PHONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_4

    const/4 p0, 0x3

    return p0

    .line 250
    :cond_4
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NONE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_5

    const/4 p0, 0x0

    return p0

    .line 255
    :cond_5
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->MULTILINE:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_6

    const p0, 0x20001

    goto :goto_1

    .line 257
    :cond_6
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->EMAIL_ADDRESS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_7

    const/16 p0, 0x21

    goto :goto_1

    .line 259
    :cond_7
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->URL:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_8

    const/16 p0, 0x11

    goto :goto_1

    .line 261
    :cond_8
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->VISIBLE_PASSWORD:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_9

    const/16 p0, 0x91

    goto :goto_1

    .line 263
    :cond_9
    iget-object p4, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->NAME:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p4, v0, :cond_a

    const/16 p0, 0x61

    goto :goto_1

    .line 265
    :cond_a
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;->type:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    sget-object p4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;->POSTAL_ADDRESS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputType;

    if-ne p0, p4, :cond_b

    const/16 p0, 0x71

    goto :goto_1

    :cond_b
    const/4 p0, 0x1

    :goto_1
    if-eqz p1, :cond_c

    const p1, 0x80080

    :goto_2
    or-int/2addr p0, p1

    goto :goto_3

    :cond_c
    if-eqz p2, :cond_d

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_d
    if-nez p3, :cond_e

    const p1, 0x80090

    goto :goto_2

    .line 282
    :cond_e
    :goto_3
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->CHARACTERS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p5, p1, :cond_f

    or-int/lit16 p0, p0, 0x1000

    goto :goto_4

    .line 284
    :cond_f
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->WORDS:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p5, p1, :cond_10

    or-int/lit16 p0, p0, 0x2000

    goto :goto_4

    .line 286
    :cond_10
    sget-object p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;->SENTENCES:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    if-ne p5, p1, :cond_11

    or-int/lit16 p0, p0, 0x4000

    :cond_11
    :goto_4
    return p0
.end method

.method private needsAutofill()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyValueChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 725
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 726
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyViewEntered()V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    .line 695
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 699
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 701
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 702
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    .line 703
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 704
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, p0, v0, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyViewExited()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-eqz v0, :cond_1

    .line 712
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 716
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 717
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private saveEditableSizeAndTransform(DD[D)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x3

    .line 508
    aget-wide v8, v5, v7

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    const/16 v9, 0xf

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-nez v8, :cond_0

    const/4 v8, 0x7

    aget-wide v14, v5, v8

    cmpl-double v8, v14, v10

    if-nez v8, :cond_0

    aget-wide v14, v5, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v14, v16

    if-nez v8, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    move v8, v13

    :goto_0
    const/16 v14, 0xc

    .line 509
    aget-wide v14, v5, v14

    aget-wide v16, v5, v9

    div-double v14, v14, v16

    aput-wide v14, v6, v12

    aput-wide v14, v6, v13

    const/16 v9, 0xd

    .line 510
    aget-wide v14, v5, v9

    div-double v14, v14, v16

    aput-wide v14, v6, v7

    const/4 v9, 0x2

    aput-wide v14, v6, v9

    .line 512
    new-instance v14, Lio/flutter/plugin/editing/TextInputPlugin$3;

    invoke-direct {v14, v0, v8, v5, v6}, Lio/flutter/plugin/editing/TextInputPlugin$3;-><init>(Lio/flutter/plugin/editing/TextInputPlugin;Z[D[D)V

    .line 534
    invoke-interface {v14, v1, v2, v10, v11}, Lio/flutter/plugin/editing/TextInputPlugin$MinMax;->inspect(DD)V

    .line 535
    invoke-interface {v14, v1, v2, v3, v4}, Lio/flutter/plugin/editing/TextInputPlugin$MinMax;->inspect(DD)V

    .line 536
    invoke-interface {v14, v10, v11, v3, v4}, Lio/flutter/plugin/editing/TextInputPlugin$MinMax;->inspect(DD)V

    iget-object v1, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 537
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 538
    new-instance v2, Landroid/graphics/Rect;

    aget-wide v3, v6, v13

    .line 540
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v5

    mul-double/2addr v3, v10

    double-to-int v3, v3

    aget-wide v4, v6, v9

    .line 541
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    mul-double/2addr v4, v8

    double-to-int v4, v4

    aget-wide v8, v6, v12

    .line 542
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v5

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    aget-wide v6, v6, v7

    .line 543
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v8, v1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setPlatformViewTextInputClient(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 449
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 450
    new-instance p2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VIRTUAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {p2, v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 451
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    goto :goto_0

    .line 454
    :cond_0
    new-instance p2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->PHYSICAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {p2, v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    :goto_0
    return-void
.end method

.method private updateAutofillConfigurationIfNeeded(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 6

    if-eqz p1, :cond_4

    .line 734
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v0, :cond_0

    goto :goto_2

    .line 740
    :cond_0
    iget-object v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fields:[Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 741
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 744
    iget-object p0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 746
    :cond_1
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    .line 747
    iget-object v3, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    .line 749
    iget-object v5, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->afm:Landroid/view/autofill/AutofillManager;

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 750
    iget-object v5, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 752
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    .line 753
    invoke-static {v3}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 750
    invoke-virtual {v2, v4, v5, v3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    .line 812
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 816
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    .line 817
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 818
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 819
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    .line 821
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    if-eqz v3, :cond_3

    .line 822
    iget-object v4, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v4, :cond_1

    goto :goto_1

    .line 826
    :cond_1
    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    .line 827
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 828
    new-instance v4, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 829
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;-><init>(Ljava/lang/String;IIII)V

    .line 831
    iget-object v5, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    iget-object v6, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 835
    invoke-virtual {v3, v4}, Lio/flutter/plugin/editing/ListenableEditingState;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    goto :goto_1

    .line 837
    :cond_2
    iget-object v3, v3, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 840
    iget p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    invoke-virtual {p1, p0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingStateWithTag(ILjava/util/HashMap;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public clearPlatformViewClient(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 375
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VIRTUAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->PHYSICAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    if-ne v0, p1, :cond_1

    .line 378
    new-instance p1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 379
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 380
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iput-boolean v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    :cond_1
    return-void
.end method

.method clearTextInputClient()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 548
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VIRTUAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 565
    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 566
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 568
    invoke-direct {p0, v0}, Lio/flutter/plugin/editing/TextInputPlugin;->updateAutofillConfigurationIfNeeded(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 569
    new-instance v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 570
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    return-void
.end method

.method public createInputConnection(Landroid/view/View;Lio/flutter/embedding/android/KeyboardManager;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 8

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 296
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v2

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 301
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->PHYSICAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 305
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VIRTUAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_3

    iget-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->isInputConnectionLocked:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0

    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 309
    iget p2, p2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    .line 311
    invoke-virtual {p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewById(I)Landroid/view/View;

    move-result-object p1

    .line 312
    invoke-virtual {p1, p3}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p1

    :cond_3
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 316
    iget-object v1, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputType:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v2, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->obscureText:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v3, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autocorrect:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v4, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableSuggestions:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-boolean v5, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableIMEPersonalizedLearning:Z

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    iget-object v6, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->textCapitalization:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;

    .line 317
    invoke-static/range {v1 .. v6}, Lio/flutter/plugin/editing/TextInputPlugin;->inputTypeFromTextInputType(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$InputType;ZZZZLio/flutter/embedding/engine/systemchannels/TextInputChannel$TextCapitalization;)I

    move-result v0

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x2000000

    .line 324
    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 326
    iget-boolean v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableIMEPersonalizedLearning:Z

    if-nez v0, :cond_4

    .line 328
    iget v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 332
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputAction:Ljava/lang/Integer;

    if-nez v0, :cond_6

    const/high16 v0, 0x20000

    .line 336
    iget v1, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 340
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->inputAction:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 342
    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->actionLabel:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 343
    iget-object v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->actionLabel:Ljava/lang/String;

    iput-object v1, p3, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 344
    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 346
    :cond_7
    iget v1, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v1

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 348
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->contentCommitMimeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 349
    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->contentCommitMimeTypes:[Ljava/lang/String;

    .line 350
    invoke-static {p3, v0}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setContentMimeTypes(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 353
    :cond_8
    new-instance v0, Lio/flutter/plugin/editing/InputConnectionAdaptor;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    iget v3, v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    iget-object v4, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v6, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lio/flutter/plugin/editing/InputConnectionAdaptor;-><init>(Landroid/view/View;ILio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/inputmethod/EditorInfo;)V

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 356
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result p1

    iput p1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 357
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result p1

    iput p1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 221
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachTextInputPlugin()V

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->setTextInputMethodHandler(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;)V

    .line 223
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 224
    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->remove()V

    :cond_0
    return-void
.end method

.method public didChangeEditingState(ZZZ)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 625
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyValueChanged(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 628
    invoke-virtual {p1}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result p1

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 629
    invoke-virtual {p2}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result p2

    iget-object p3, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 630
    invoke-virtual {p3}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result p3

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 631
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v7

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 634
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->extractBatchTextEditingDeltas()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 638
    invoke-virtual {v1}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v2, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionStart:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionEnd:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    if-ne v7, v1, :cond_1

    goto :goto_1

    .line 644
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send EditingState to flutter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextInputPlugin"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 646
    iget-boolean v1, v1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->enableDeltaModel:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 647
    iget v2, v2, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    invoke-virtual {v1, v2, v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingStateWithDeltas(ILjava/util/ArrayList;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 648
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->clearBatchDeltas()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 650
    iget v1, v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 652
    invoke-virtual {v2}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v7

    .line 650
    invoke-virtual/range {v0 .. v6}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->updateEditingState(ILjava/lang/String;IIII)V

    .line 658
    :goto_0
    new-instance v6, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 660
    invoke-virtual {v0}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;-><init>(Ljava/lang/String;IIII)V

    iput-object v6, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 663
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->clearBatchDeltas()V

    :goto_2
    return-void
.end method

.method getEditable()Landroid/text/Editable;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    return-object p0
.end method

.method getImeSyncCallback()Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->imeSyncCallback:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    return-object p0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public getLastInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 603
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastInputConnection:Landroid/view/inputmethod/InputConnection;

    if-nez p0, :cond_0

    goto :goto_1

    .line 612
    :cond_0
    instance-of v0, p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;

    if-eqz v0, :cond_1

    .line 613
    check-cast p0, Lio/flutter/plugin/editing/InputConnectionAdaptor;

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/InputConnectionAdaptor;->handleKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    goto :goto_0

    .line 614
    :cond_1
    invoke-interface {p0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public lockPlatformViewInputConnection()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 198
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VIRTUAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->isInputConnectionLocked:Z

    :cond_0
    return-void
.end method

.method public onConnectionClosed()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->textInputChannel:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 845
    iget p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->id:I

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->onConnectionClosed(I)V

    return-void
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 760
    invoke-direct/range {p0 .. p0}, Lio/flutter/plugin/editing/TextInputPlugin;->needsAutofill()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 764
    iget-object v2, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v2, v2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->uniqueIdentifier:Ljava/lang/String;

    .line 765
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    .line 766
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    .line 767
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, v0, Lio/flutter/plugin/editing/TextInputPlugin;->autofillConfiguration:Landroid/util/SparseArray;

    .line 768
    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 769
    iget-object v7, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    .line 774
    invoke-virtual {v1, v8}, Landroid/view/ViewStructure;->addChildCount(I)I

    .line 775
    invoke-virtual {v1, v5}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v15

    .line 776
    invoke-virtual {v15, v3, v6}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    .line 779
    iget-object v9, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hints:[Ljava/lang/String;

    array-length v9, v9

    if-lez v9, :cond_2

    .line 780
    iget-object v9, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hints:[Ljava/lang/String;

    invoke-virtual {v15, v9}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    .line 782
    :cond_2
    invoke-virtual {v15, v8}, Landroid/view/ViewStructure;->setAutofillType(I)V

    .line 783
    invoke-virtual {v15, v4}, Landroid/view/ViewStructure;->setVisibility(I)V

    .line 784
    iget-object v8, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hintText:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 785
    iget-object v8, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->hintText:Ljava/lang/String;

    invoke-virtual {v15, v8}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    .line 791
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-ne v8, v6, :cond_4

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    .line 792
    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    iget v11, v6, Landroid/graphics/Rect;->top:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    .line 797
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    .line 798
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v9, v15

    move-object v8, v15

    move v15, v6

    .line 792
    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    iget-object v6, v0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 799
    invoke-static {v6}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_1

    :cond_4
    move-object v8, v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v9, v8

    .line 801
    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 802
    iget-object v6, v7, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v6, v6, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    invoke-static {v6}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public sendTextInputAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    .line 387
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method setTextInputClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 3

    .line 421
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->notifyViewExited()V

    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->configuration:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    .line 423
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->canShowTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->FRAMEWORK_CLIENT:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    goto :goto_0

    .line 426
    :cond_0
    new-instance v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->NO_TARGET:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;-><init>(Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    :goto_0
    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 429
    invoke-virtual {p1, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    .line 430
    new-instance p1, Lio/flutter/plugin/editing/ListenableEditingState;

    .line 432
    iget-object v0, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->autofill:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;

    iget-object v0, v0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration$Autofill;->editState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mView:Landroid/view/View;

    invoke-direct {p1, v0, v2}, Lio/flutter/plugin/editing/ListenableEditingState;-><init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Landroid/view/View;)V

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 433
    invoke-direct {p0, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->updateAutofillConfigurationIfNeeded(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    .line 438
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->unlockPlatformViewInputConnection()V

    iput-object v1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->lastClientRect:Landroid/graphics/Rect;

    iget-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 440
    invoke-virtual {p1, p0}, Lio/flutter/plugin/editing/ListenableEditingState;->addEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V

    return-void
.end method

.method setTextInputEditingState(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 2

    iget-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    .line 486
    invoke-static {v0, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->composingChanged(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    if-eqz v0, :cond_0

    const-string v0, "TextInputPlugin"

    const-string v1, "Composing region changed by the framework. Restarting the input method."

    .line 488
    invoke-static {v0, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mLastKnownFrameworkTextEditingState:Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mEditable:Lio/flutter/plugin/editing/ListenableEditingState;

    .line 493
    invoke-virtual {v0, p2}, Lio/flutter/plugin/editing/ListenableEditingState;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    iget-boolean p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 497
    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mRestartInputPending:Z

    :cond_1
    return-void
.end method

.method showTextInput(Landroid/view/View;)V
    .locals 1

    .line 399
    invoke-direct {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->canShowTextInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 403
    :cond_0
    invoke-direct {p0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->hideTextInput(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public unlockPlatformViewInputConnection()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->inputTarget:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    .line 209
    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->VIRTUAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/TextInputPlugin;->isInputConnectionLocked:Z

    :cond_0
    return-void
.end method
