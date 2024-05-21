.class public final Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;
.super Ljava/lang/Object;
.source "TextInputServiceAndroid.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\tH\u0000\u001a\u001c\u0010\n\u001a\u00020\u000b*\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u000c\u0010\u0011\u001a\u00020\u000b*\u00020\u000cH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "DEBUG_CLASS",
        "",
        "hasFlag",
        "",
        "bits",
        "",
        "flag",
        "asExecutor",
        "Ljava/util/concurrent/Executor;",
        "Landroid/view/Choreographer;",
        "update",
        "",
        "Landroid/view/inputmethod/EditorInfo;",
        "imeOptions",
        "Landroidx/compose/ui/text/input/ImeOptions;",
        "textFieldValue",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "updateWithEmojiCompat",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DEBUG_CLASS:Ljava/lang/String; = "TextInputServiceAndroid"


# direct methods
.method public static synthetic $r8$lambda$RYljF3nl5HRu6JKEM8xFRHwbGFg(Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->asExecutor$lambda$1$lambda$0(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzP0QYZAK9fPNHI8CrYdtRFmmqA(Landroid/view/Choreographer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->asExecutor$lambda$1(Landroid/view/Choreographer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final synthetic access$updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method

.method public static final asExecutor(Landroid/view/Choreographer;)Ljava/util/concurrent/Executor;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda1;-><init>(Landroid/view/Choreographer;)V

    return-object v0
.end method

.method private static final asExecutor$lambda$1(Landroid/view/Choreographer;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "$this_asExecutor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    new-instance v0, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method private static final asExecutor$lambda$1$lambda$0(Ljava/lang/Runnable;J)V
    .locals 0

    .line 511
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static final hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final update(Landroid/view/inputmethod/EditorInfo;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imeOptions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "textFieldValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getImeAction-eUduSuo()I

    move-result v0

    .line 423
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 424
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 433
    :cond_1
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNone-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v4, v5

    goto :goto_0

    .line 434
    :cond_2
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getGo-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    move v4, v3

    goto :goto_0

    .line 435
    :cond_3
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getNext-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x5

    goto :goto_0

    .line 436
    :cond_4
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getPrevious-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x7

    goto :goto_0

    .line 437
    :cond_5
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSearch-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_6

    move v4, v2

    goto :goto_0

    .line 438
    :cond_6
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getSend-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v4, 0x4

    goto :goto_0

    .line 439
    :cond_7
    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDone-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 422
    :goto_0
    iput v4, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 442
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getKeyboardType-PjHm6EE()I

    move-result v0

    .line 443
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getText-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_8

    iput v5, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1

    .line 444
    :cond_8
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getAscii-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 445
    iput v5, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 446
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_1

    .line 448
    :cond_9
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumber-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_a

    iput v3, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 449
    :cond_a
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPhone-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_b

    iput v2, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 450
    :cond_b
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getUri-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0x11

    .line 451
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 452
    :cond_c
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getEmail-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0x21

    .line 453
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 455
    :cond_d
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getPassword-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x81

    .line 456
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 459
    :cond_e
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getNumberPassword-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0x12

    .line 460
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_1

    .line 463
    :cond_f
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardType;->Companion:Landroidx/compose/ui/text/input/KeyboardType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardType$Companion;->getDecimal-PjHm6EE()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardType;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0x2002

    .line 464
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 470
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getSingleLine()Z

    move-result v0

    if-nez v0, :cond_10

    .line 471
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 473
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 475
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getImeAction-eUduSuo()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/input/ImeAction;->Companion:Landroidx/compose/ui/text/input/ImeAction$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/ImeAction$Companion;->getDefault-eUduSuo()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/ImeAction;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 476
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 481
    :cond_10
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v0, v5}, Landroidx/compose/ui/text/input/TextInputServiceAndroid_androidKt;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 482
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getCapitalization-IUNYP9k()I

    move-result v0

    .line 483
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getCharacters-IUNYP9k()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 484
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    .line 486
    :cond_11
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getWords-IUNYP9k()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 487
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_2

    .line 489
    :cond_12
    sget-object v1, Landroidx/compose/ui/text/input/KeyboardCapitalization;->Companion:Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization$Companion;->getSentences-IUNYP9k()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/input/KeyboardCapitalization;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 490
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 497
    :cond_13
    :goto_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/ImeOptions;->getAutoCorrect()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 498
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 502
    :cond_14
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 503
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 505
    invoke-virtual {p2}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 507
    iget p1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 p2, 0x2000000

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    return-void

    .line 464
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Keyboard Type"

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invalid ImeAction"

    .line 440
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final updateWithEmojiCompat(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    .line 413
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/emoji2/text/EmojiCompat;->updateEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method
