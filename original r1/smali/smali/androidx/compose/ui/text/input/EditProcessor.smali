.class public final Landroidx/compose/ui/text/input/EditProcessor;
.super Ljava/lang/Object;
.source "EditProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEditProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditProcessor.kt\nandroidx/compose/ui/text/input/EditProcessor\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,173:1\n33#2,6:174\n*S KotlinDebug\n*F\n+ 1 EditProcessor.kt\nandroidx/compose/ui/text/input/EditProcessor\n*L\n112#1:174,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u000c\u001a\u00020\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eJ \u0010\u0010\u001a\u00020\u00112\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0006\u0010\u0018\u001a\u00020\u0008J\u000c\u0010\u0019\u001a\u00020\u0011*\u00020\u000fH\u0002R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0008@BX\u0080\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/EditProcessor;",
        "",
        "()V",
        "<set-?>",
        "Landroidx/compose/ui/text/input/EditingBuffer;",
        "mBuffer",
        "getMBuffer$ui_text_release",
        "()Landroidx/compose/ui/text/input/EditingBuffer;",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "mBufferState",
        "getMBufferState$ui_text_release",
        "()Landroidx/compose/ui/text/input/TextFieldValue;",
        "apply",
        "editCommands",
        "",
        "Landroidx/compose/ui/text/input/EditCommand;",
        "generateBatchErrorMessage",
        "",
        "failedCommand",
        "reset",
        "",
        "value",
        "textInputSession",
        "Landroidx/compose/ui/text/input/TextInputSession;",
        "toTextFieldValue",
        "toStringForLog",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

.field private mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v6, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 38
    invoke-static {}, Landroidx/compose/ui/text/AnnotatedStringKt;->emptyAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 39
    sget-object v0, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    .line 37
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v6, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 46
    new-instance v0, Landroidx/compose/ui/text/input/EditingBuffer;

    iget-object v1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 47
    invoke-virtual {v1}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 48
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v2

    .line 46
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    return-void
.end method

.method public static final synthetic access$toStringForLog(Landroidx/compose/ui/text/input/EditProcessor;Landroidx/compose/ui/text/input/EditCommand;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/EditProcessor;->toStringForLog(Landroidx/compose/ui/text/input/EditCommand;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final generateBatchErrorMessage(Ljava/util/List;Landroidx/compose/ui/text/input/EditCommand;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while applying EditCommand batch to buffer (length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 141
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/EditingBuffer;->getLength$ui_text_release()I

    move-result v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", composition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 142
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/EditingBuffer;->getComposition-MzsxiRA$ui_text_release()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", selection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 143
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelection-d9O1mEE$ui_text_release()J

    move-result-wide v2

    .line 140
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "append(value)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "append(\'\\n\')"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    move-object v4, v0

    check-cast v4, Ljava/lang/Appendable;

    const-string p1, "\n"

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance p1, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1;

    invoke-direct {p1, p2, p0}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1;-><init>(Landroidx/compose/ui/text/input/EditCommand;Landroidx/compose/ui/text/input/EditProcessor;)V

    move-object v10, p1

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v11, 0x3c

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final toStringForLog(Landroidx/compose/ui/text/input/EditCommand;)Ljava/lang/String;
    .locals 3

    .line 157
    instance-of p0, p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    const/16 v0, 0x29

    const-string v1, ", newCursorPosition="

    if-eqz p0, :cond_0

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "CommitTextCommand(text.length="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/CommitTextCommand;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/CommitTextCommand;->getNewCursorPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 159
    :cond_0
    instance-of p0, p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    if-eqz p0, :cond_1

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "SetComposingTextCommand(text.length="

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/text/input/SetComposingTextCommand;

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 161
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/SetComposingTextCommand;->getNewCursorPosition()I

    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 162
    :cond_1
    instance-of p0, p1, Landroidx/compose/ui/text/input/SetComposingRegionCommand;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 163
    :cond_2
    instance-of p0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextCommand;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 164
    :cond_3
    instance-of p0, p1, Landroidx/compose/ui/text/input/DeleteSurroundingTextInCodePointsCommand;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 165
    :cond_4
    instance-of p0, p1, Landroidx/compose/ui/text/input/SetSelectionCommand;

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 166
    :cond_5
    instance-of p0, p1, Landroidx/compose/ui/text/input/FinishComposingTextCommand;

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 167
    :cond_6
    instance-of p0, p1, Landroidx/compose/ui/text/input/BackspaceCommand;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 168
    :cond_7
    instance-of p0, p1, Landroidx/compose/ui/text/input/MoveCursorCommand;

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 169
    :cond_8
    instance-of p0, p1, Landroidx/compose/ui/text/input/DeleteAllCommand;

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unknown EditCommand: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const-string/jumbo p1, "{anonymous EditCommand}"

    :cond_a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final apply(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/input/EditCommand;",
            ">;)",
            "Landroidx/compose/ui/text/input/TextFieldValue;"
        }
    .end annotation

    const-string v0, "editCommands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 176
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 177
    check-cast v3, Landroidx/compose/ui/text/input/EditCommand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 114
    invoke-interface {v3, v0}, Landroidx/compose/ui/text/input/EditCommand;->applyTo(Landroidx/compose/ui/text/input/EditingBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 120
    :cond_0
    new-instance p1, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 121
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->toAnnotatedString$ui_text_release()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelection-d9O1mEE$ui_text_release()J

    move-result-wide v4

    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->getComposition-MzsxiRA$ui_text_release()Landroidx/compose/ui/text/TextRange;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p1

    .line 120
    invoke-direct/range {v2 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p1

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    .line 117
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v2, v3

    check-cast v2, Landroidx/compose/ui/text/input/EditCommand;

    invoke-direct {p0, p1, v3}, Landroidx/compose/ui/text/input/EditProcessor;->generateBatchErrorMessage(Ljava/util/List;Landroidx/compose/ui/text/input/EditCommand;)Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getMBuffer$ui_text_release()Landroidx/compose/ui/text/input/EditingBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    return-object p0
.end method

.method public final getMBufferState$ui_text_release()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method

.method public final reset(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextInputSession;)V
    .locals 9

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    invoke-virtual {v1}, Landroidx/compose/ui/text/input/EditingBuffer;->getComposition-MzsxiRA$ui_text_release()Landroidx/compose/ui/text/TextRange;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 66
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Landroidx/compose/ui/text/input/EditingBuffer;

    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getAnnotatedString()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v4

    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 67
    invoke-direct {v2, v4, v5, v6, v7}, Landroidx/compose/ui/text/input/EditingBuffer;-><init>(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 72
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/text/TextRange;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 73
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->setSelection$ui_text_release(II)V

    move v8, v3

    move v3, v1

    move v1, v8

    goto :goto_0

    :cond_1
    move v1, v3

    .line 77
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 78
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/EditingBuffer;->commitComposition$ui_text_release()V

    goto :goto_1

    .line 79
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 80
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getMin-impl(J)I

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getComposition-MzsxiRA()Landroidx/compose/ui/text/TextRange;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/compose/ui/text/TextRange;->getMax-impl(J)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroidx/compose/ui/text/input/EditingBuffer;->setComposition$ui_text_release(II)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBuffer:Landroidx/compose/ui/text/input/EditingBuffer;

    .line 87
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/EditingBuffer;->commitComposition$ui_text_release()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v1, p1

    .line 88
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/text/input/TextFieldValue;->copy-3r_uNRQ$default(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/AnnotatedString;JLandroidx/compose/ui/text/TextRange;ILjava/lang/Object;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object p1

    :cond_5
    iget-object v0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-object p1, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    if-eqz p2, :cond_6

    .line 96
    invoke-virtual {p2, v0, p1}, Landroidx/compose/ui/text/input/TextInputSession;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)Z

    :cond_6
    return-void
.end method

.method public final toTextFieldValue()Landroidx/compose/ui/text/input/TextFieldValue;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/input/EditProcessor;->mBufferState:Landroidx/compose/ui/text/input/TextFieldValue;

    return-object p0
.end method
