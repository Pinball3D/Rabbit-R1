.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "text",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "invoke",
        "(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/Boolean;"
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
.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $this_semantics:Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;->$this_semantics:Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/Boolean;
    .locals 9

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 431
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getInputSession()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 432
    sget-object v3, Landroidx/compose/foundation/text/TextFieldDelegate;->Companion:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    const/4 v4, 0x2

    new-array v4, v4, [Landroidx/compose/ui/text/input/EditCommand;

    .line 433
    new-instance v5, Landroidx/compose/ui/text/input/DeleteAllCommand;

    invoke-direct {v5}, Landroidx/compose/ui/text/input/DeleteAllCommand;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Landroidx/compose/ui/text/input/CommitTextCommand;

    invoke-direct {v5, p1, v1}, Landroidx/compose/ui/text/input/CommitTextCommand;-><init>(Landroidx/compose/ui/text/AnnotatedString;I)V

    aput-object v5, v4, v1

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 434
    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextFieldState;->getProcessor()Landroidx/compose/ui/text/input/EditProcessor;

    move-result-object v5

    .line 435
    invoke-virtual {v2}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 432
    invoke-virtual {v3, v4, v5, v2, v0}, Landroidx/compose/foundation/text/TextFieldDelegate$Companion;->onEditCommand$foundation_release(Ljava/util/List;Landroidx/compose/ui/text/input/EditProcessor;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 431
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 439
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getOnValueChange()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    new-instance v0, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(I)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 426
    check-cast p1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$2;->invoke(Landroidx/compose/ui/text/AnnotatedString;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
