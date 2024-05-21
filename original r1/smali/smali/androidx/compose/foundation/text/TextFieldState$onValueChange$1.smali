.class final Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldState;-><init>(Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/runtime/RecomposeScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
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
.field final synthetic this$0:Landroidx/compose/foundation/text/TextFieldState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 878
    check-cast p1, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->invoke(Landroidx/compose/ui/text/input/TextFieldValue;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/text/input/TextFieldValue;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldState;->getUntransformedText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 881
    sget-object v1, Landroidx/compose/foundation/text/HandleState;->None:Landroidx/compose/foundation/text/HandleState;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->setHandleState(Landroidx/compose/foundation/text/HandleState;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 883
    invoke-static {v0}, Landroidx/compose/foundation/text/TextFieldState;->access$getOnValueChangeOriginal$p(Landroidx/compose/foundation/text/TextFieldState;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldState$onValueChange$1;->this$0:Landroidx/compose/foundation/text/TextFieldState;

    .line 884
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldState;->getRecomposeScope()Landroidx/compose/runtime/RecomposeScope;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/RecomposeScope;->invalidate()V

    return-void
.end method
