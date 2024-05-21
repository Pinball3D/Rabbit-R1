.class final Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Clickable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/AbstractClickablePointerInputNode;-><init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/AbstractClickableNode$InteractionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic this$0:Landroidx/compose/foundation/AbstractClickablePointerInputNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/AbstractClickablePointerInputNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;->this$0:Landroidx/compose/foundation/AbstractClickablePointerInputNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;->this$0:Landroidx/compose/foundation/AbstractClickablePointerInputNode;

    .line 843
    invoke-static {}, Landroidx/compose/foundation/gestures/ScrollableKt;->getModifierLocalScrollableContainer()Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocal;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->getCurrent(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;->this$0:Landroidx/compose/foundation/AbstractClickablePointerInputNode;

    check-cast p0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {p0}, Landroidx/compose/foundation/Clickable_androidKt;->isComposeRootInScrollableContainer(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 842
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickablePointerInputNode$delayPressInteraction$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
