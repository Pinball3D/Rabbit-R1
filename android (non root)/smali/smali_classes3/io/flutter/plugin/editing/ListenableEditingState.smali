.class Lio/flutter/plugin/editing/ListenableEditingState;
.super Landroid/text/SpannableStringBuilder;
.source "ListenableEditingState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListenableEditingState"


# instance fields
.field private mBatchEditNestDepth:I

.field private mBatchTextEditingDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/TextEditingDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mChangeNotificationDepth:I

.field private mComposingEndWhenBeginBatchEdit:I

.field private mComposingStartWhenBeginBatchEdit:I

.field private mDummyConnection:Landroid/view/inputmethod/BaseInputConnection;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionEndWhenBeginBatchEdit:I

.field private mSelectionStartWhenBeginBatchEdit:I

.field private mTextWhenBeginBatchEdit:Ljava/lang/String;

.field private mToStringCache:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Landroid/view/View;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mPendingListeners:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchTextEditingDeltas:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lio/flutter/plugin/editing/ListenableEditingState$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1, p0}, Lio/flutter/plugin/editing/ListenableEditingState$1;-><init>(Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/View;ZLandroid/text/Editable;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mDummyConnection:Landroid/view/inputmethod/BaseInputConnection;

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    :cond_0
    return-void
.end method

.method private notifyListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;ZZZ)V
    .locals 1

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    .line 249
    invoke-interface {p1, p2, p3, p4}, Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;->didChangeEditingState(ZZZ)V

    iget p1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    return-void
.end method

.method private notifyListenersIfNeeded(ZZZ)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;

    .line 257
    invoke-direct {p0, v1, p1, p2, p3}, Lio/flutter/plugin/editing/ListenableEditingState;->notifyListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;ZZZ)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V
    .locals 3

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    const-string v1, "ListenableEditingState"

    if-lez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adding a listener "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in a listener callback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    if-lez v0, :cond_1

    const-string v0, "a listener was added to EditingState while a batch edit was in progress"

    .line 179
    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mPendingListeners:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public beginBatchEdit()V
    .locals 3

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    if-lez v0, :cond_0

    const-string v0, "ListenableEditingState"

    const-string v2, "editing state should not be changed in a listener callback"

    .line 96
    invoke-static {v0, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mTextWhenBeginBatchEdit:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mSelectionStartWhenBeginBatchEdit:I

    .line 101
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mSelectionEndWhenBeginBatchEdit:I

    .line 102
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mComposingStartWhenBeginBatchEdit:I

    .line 103
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v0

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mComposingEndWhenBeginBatchEdit:I

    :cond_1
    return-void
.end method

.method public clearBatchDeltas()V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchTextEditingDeltas:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public endBatchEdit()V
    .locals 6

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    const-string v1, "ListenableEditingState"

    if-nez v0, :cond_0

    const-string p0, "endBatchEdit called without a matching beginBatchEdit"

    .line 111
    invoke-static {v1, p0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mPendingListeners:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;

    .line 116
    invoke-direct {p0, v3, v2, v2, v2}, Lio/flutter/plugin/editing/ListenableEditingState;->notifyListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;ZZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "didFinishBatchEdit with "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " listener(s)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mTextWhenBeginBatchEdit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    iget v1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mSelectionStartWhenBeginBatchEdit:I

    .line 123
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3

    iget v1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mSelectionEndWhenBeginBatchEdit:I

    .line 124
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v3

    if-eq v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    iget v3, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mComposingStartWhenBeginBatchEdit:I

    .line 126
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v5

    if-ne v3, v5, :cond_4

    iget v3, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mComposingEndWhenBeginBatchEdit:I

    .line 127
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v5

    if-eq v3, v5, :cond_5

    :cond_4
    move v4, v2

    .line 129
    :cond_5
    invoke-direct {p0, v0, v1, v4}, Lio/flutter/plugin/editing/ListenableEditingState;->notifyListenersIfNeeded(ZZZ)V

    :cond_6
    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mPendingListeners:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mPendingListeners:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    sub-int/2addr v0, v2

    iput v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    return-void
.end method

.method public extractBatchTextEditingDeltas()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lio/flutter/plugin/editing/TextEditingDelta;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchTextEditingDeltas:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchTextEditingDeltas:Ljava/util/ArrayList;

    .line 81
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v0
.end method

.method public final getComposingEnd()I
    .locals 0

    .line 275
    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result p0

    return p0
.end method

.method public final getComposingStart()I
    .locals 0

    .line 271
    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result p0

    return p0
.end method

.method public final getSelectionEnd()I
    .locals 0

    .line 267
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public final getSelectionStart()I
    .locals 0

    .line 263
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p0

    return p0
.end method

.method public removeEditingStateListener(Lio/flutter/plugin/editing/ListenableEditingState$EditingStateWatcher;)V
    .locals 2

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    if-lez v0, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removing a listener "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in a listener callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListenableEditingState"

    invoke-static {v1, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mListeners:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    if-lez v0, :cond_1

    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mPendingListeners:Ljava/util/ArrayList;

    .line 192
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 0

    .line 30
    invoke-virtual/range {p0 .. p5}, Lio/flutter/plugin/editing/ListenableEditingState;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lio/flutter/plugin/editing/ListenableEditingState;->mChangeNotificationDepth:I

    if-lez v1, :cond_0

    const-string v1, "ListenableEditingState"

    const-string v2, "editing state should not be changed in a listener callback"

    .line 201
    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v2

    sub-int v1, p2, p1

    sub-int v3, p5, p4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v12, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    if-nez v12, :cond_3

    add-int v4, p1, v3

    .line 208
    invoke-virtual {v0, v4}, Lio/flutter/plugin/editing/ListenableEditingState;->charAt(I)C

    move-result v4

    add-int v5, p4, v3

    move-object/from16 v6, p3

    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    or-int/2addr v12, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v6, p3

    if-eqz v12, :cond_4

    const/4 v1, 0x0

    iput-object v1, v0, Lio/flutter/plugin/editing/ListenableEditingState;->mToStringCache:Ljava/lang/String;

    .line 214
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v13

    .line 215
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v14

    .line 216
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v15

    .line 217
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v9

    .line 219
    invoke-super/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v16

    iget-object v8, v0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchTextEditingDeltas:Ljava/util/ArrayList;

    .line 220
    new-instance v7, Lio/flutter/plugin/editing/TextEditingDelta;

    .line 226
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v17

    .line 227
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v18

    .line 228
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v19

    .line 229
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v20

    move-object v1, v7

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, v17

    move-object v10, v7

    move/from16 v7, v18

    move-object v11, v8

    move/from16 v8, v19

    move/from16 v19, v12

    move v12, v9

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lio/flutter/plugin/editing/TextEditingDelta;-><init>(Ljava/lang/CharSequence;IILjava/lang/CharSequence;IIII)V

    .line 220
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, v0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchEditNestDepth:I

    if-lez v1, :cond_5

    return-object v16

    .line 236
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v1

    if-ne v1, v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v1

    if-eq v1, v14, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v1, 0x1

    .line 238
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v2

    if-ne v2, v15, :cond_9

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v2

    if-eq v2, v12, :cond_8

    goto :goto_5

    :cond_8
    move/from16 v12, v19

    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v12, v19

    const/4 v10, 0x1

    .line 239
    :goto_6
    invoke-direct {v0, v12, v1, v10}, Lio/flutter/plugin/editing/ListenableEditingState;->notifyListenersIfNeeded(ZZZ)V

    return-object v16
.end method

.method public setComposingRange(II)V
    .locals 0

    if-ltz p1, :cond_1

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mDummyConnection:Landroid/view/inputmethod/BaseInputConnection;

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    :goto_1
    return-void
.end method

.method public setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->beginBatchEdit()V

    .line 154
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->length()I

    move-result v0

    iget-object v1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lio/flutter/plugin/editing/ListenableEditingState;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 156
    invoke-virtual {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionStart:I

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->selectionEnd:I

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 162
    :goto_0
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingStart:I

    iget p1, p1, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->composingEnd:I

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/ListenableEditingState;->setComposingRange(II)V

    .line 166
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->clearBatchDeltas()V

    .line 168
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->endBatchEdit()V

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6

    .line 280
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mBatchTextEditingDeltas:Ljava/util/ArrayList;

    .line 283
    new-instance p2, Lio/flutter/plugin/editing/TextEditingDelta;

    .line 285
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionStart()I

    move-result v2

    .line 287
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getSelectionEnd()I

    move-result v3

    .line 288
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingStart()I

    move-result v4

    .line 289
    invoke-virtual {p0}, Lio/flutter/plugin/editing/ListenableEditingState;->getComposingEnd()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lio/flutter/plugin/editing/TextEditingDelta;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 283
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mToStringCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    invoke-super {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/editing/ListenableEditingState;->mToStringCache:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
