.class final Landroidx/compose/foundation/FocusableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Focusable.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusEventModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Focusable.kt\nandroidx/compose/foundation/FocusableNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n1#2:373\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u000f\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000c\u0010\u001e\u001a\u00020\u0018*\u00020\u001fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/foundation/FocusableNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "Landroidx/compose/ui/node/LayoutAwareModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V",
        "bringIntoViewRequester",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
        "bringIntoViewRequesterNode",
        "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;",
        "focusState",
        "Landroidx/compose/ui/focus/FocusState;",
        "focusableInteractionNode",
        "Landroidx/compose/foundation/FocusableInteractionNode;",
        "focusablePinnableContainer",
        "Landroidx/compose/foundation/FocusablePinnableContainerNode;",
        "focusableSemanticsNode",
        "Landroidx/compose/foundation/FocusableSemanticsNode;",
        "focusedBoundsNode",
        "Landroidx/compose/foundation/FocusedBoundsNode;",
        "onFocusEvent",
        "",
        "onGloballyPositioned",
        "coordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "onPlaced",
        "update",
        "applySemantics",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "foundation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field private final bringIntoViewRequesterNode:Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

.field private focusState:Landroidx/compose/ui/focus/FocusState;

.field private final focusableInteractionNode:Landroidx/compose/foundation/FocusableInteractionNode;

.field private final focusablePinnableContainer:Landroidx/compose/foundation/FocusablePinnableContainerNode;

.field private final focusableSemanticsNode:Landroidx/compose/foundation/FocusableSemanticsNode;

.field private final focusedBoundsNode:Landroidx/compose/foundation/FocusedBoundsNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    .line 202
    new-instance v0, Landroidx/compose/foundation/FocusableSemanticsNode;

    invoke-direct {v0}, Landroidx/compose/foundation/FocusableSemanticsNode;-><init>()V

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/FocusableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/FocusableSemanticsNode;

    iput-object v0, p0, Landroidx/compose/foundation/FocusableNode;->focusableSemanticsNode:Landroidx/compose/foundation/FocusableSemanticsNode;

    .line 204
    new-instance v0, Landroidx/compose/foundation/FocusableInteractionNode;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/FocusableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusableInteractionNode;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->focusableInteractionNode:Landroidx/compose/foundation/FocusableInteractionNode;

    .line 205
    new-instance p1, Landroidx/compose/foundation/FocusablePinnableContainerNode;

    invoke-direct {p1}, Landroidx/compose/foundation/FocusablePinnableContainerNode;-><init>()V

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusablePinnableContainerNode;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->focusablePinnableContainer:Landroidx/compose/foundation/FocusablePinnableContainerNode;

    .line 206
    new-instance p1, Landroidx/compose/foundation/FocusedBoundsNode;

    invoke-direct {p1}, Landroidx/compose/foundation/FocusedBoundsNode;-><init>()V

    check-cast p1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusedBoundsNode;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->focusedBoundsNode:Landroidx/compose/foundation/FocusedBoundsNode;

    .line 218
    invoke-static {}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->BringIntoViewRequester()Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 221
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;)V

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    .line 220
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/FocusableNode;->delegate(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->bringIntoViewRequesterNode:Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    return-void
.end method

.method public static final synthetic access$getBringIntoViewRequester$p(Landroidx/compose/foundation/FocusableNode;)Landroidx/compose/foundation/relocation/BringIntoViewRequester;
    .locals 0

    .line 194
    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    return-object p0
.end method


# virtual methods
.method public applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->focusableSemanticsNode:Landroidx/compose/foundation/FocusableSemanticsNode;

    .line 251
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableSemanticsNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    return-void
.end method

.method public onFocusEvent(Landroidx/compose/ui/focus/FocusState;)V
    .locals 7

    const-string v0, "focusState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->focusState:Landroidx/compose/ui/focus/FocusState;

    .line 233
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/compose/foundation/FocusableNode$onFocusEvent$1;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroidx/compose/foundation/FocusableNode$onFocusEvent$1;-><init>(Landroidx/compose/foundation/FocusableNode;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/FocusableNode;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-static {v1}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->invalidateSemantics(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->focusableInteractionNode:Landroidx/compose/foundation/FocusableInteractionNode;

    .line 241
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusableInteractionNode;->setFocus(Z)V

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->focusedBoundsNode:Landroidx/compose/foundation/FocusedBoundsNode;

    .line 242
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusedBoundsNode;->setFocus(Z)V

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->focusablePinnableContainer:Landroidx/compose/foundation/FocusablePinnableContainerNode;

    .line 243
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->setFocus(Z)V

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->focusableSemanticsNode:Landroidx/compose/foundation/FocusableSemanticsNode;

    .line 244
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusableSemanticsNode;->setFocus(Z)V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->focusState:Landroidx/compose/ui/focus/FocusState;

    :cond_2
    return-void
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->focusedBoundsNode:Landroidx/compose/foundation/FocusedBoundsNode;

    .line 255
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusedBoundsNode;->onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->bringIntoViewRequesterNode:Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;

    .line 226
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    return-void
.end method

.method public final update(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/FocusableNode;->focusableInteractionNode:Landroidx/compose/foundation/FocusableInteractionNode;

    .line 229
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;->update(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V

    return-void
.end method
