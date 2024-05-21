.class final Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BackwardsCompatNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/BackwardsCompatNode;->updateModifierLocalConsumer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Landroidx/compose/ui/node/BackwardsCompatNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;->this$0:Landroidx/compose/ui/node/BackwardsCompatNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;->this$0:Landroidx/compose/ui/node/BackwardsCompatNode;

    .line 274
    invoke-virtual {v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->getElement()Landroidx/compose/ui/Modifier$Element;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.modifier.ModifierLocalConsumer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;->this$0:Landroidx/compose/ui/node/BackwardsCompatNode;

    check-cast p0, Landroidx/compose/ui/modifier/ModifierLocalReadScope;

    invoke-interface {v0, p0}, Landroidx/compose/ui/modifier/ModifierLocalConsumer;->onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V

    return-void
.end method
