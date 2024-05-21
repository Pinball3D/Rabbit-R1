.class final Landroidx/compose/foundation/text/modifiers/SelectionController$modifier$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectionController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/modifiers/SelectionController;-><init>(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLandroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/text/TextLayoutResult;",
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
.field final synthetic this$0:Landroidx/compose/foundation/text/modifiers/SelectionController;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/modifiers/SelectionController;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionController$modifier$2;->this$0:Landroidx/compose/foundation/text/modifiers/SelectionController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/modifiers/SelectionController$modifier$2;->this$0:Landroidx/compose/foundation/text/modifiers/SelectionController;

    .line 87
    invoke-static {p0}, Landroidx/compose/foundation/text/modifiers/SelectionController;->access$getParams$p(Landroidx/compose/foundation/text/modifiers/SelectionController;)Landroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/StaticTextSelectionParams;->getTextLayoutResult()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0}, Landroidx/compose/foundation/text/modifiers/SelectionController$modifier$2;->invoke()Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p0

    return-object p0
.end method
