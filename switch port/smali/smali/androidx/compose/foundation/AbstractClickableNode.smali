.class abstract Landroidx/compose/foundation/AbstractClickableNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "Clickable.kt"

# interfaces
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/AbstractClickableNode$InteractionData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClickable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/AbstractClickableNode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,978:1\n1855#2,2:979\n*S KotlinDebug\n*F\n+ 1 Clickable.kt\nandroidx/compose/foundation/AbstractClickableNode\n*L\n691#1:979,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00082\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u00011B<\u0008\u0004\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u001c\u001a\u00020\u000eH\u0004J\u0008\u0010\u001d\u001a\u00020\u000eH\u0016J\u0008\u0010\u001e\u001a\u00020\u000eH\u0016J\u001d\u0010\u001f\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J-\u0010$\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008+\u0010,J\u001d\u0010-\u001a\u00020\u00072\u0006\u0010 \u001a\u00020!H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008.\u0010#JG\u0010/\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0004\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0002\u00080R\u0012\u0010\u0010\u001a\u00020\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0012\u0010\u0014\u001a\u00020\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u0019X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0019\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000\u0082\u0001\u000223\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00064"
    }
    d2 = {
        "Landroidx/compose/foundation/AbstractClickableNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "Landroidx/compose/ui/input/key/KeyInputModifierNode;",
        "interactionSource",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "enabled",
        "",
        "onClickLabel",
        "",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "onClick",
        "Lkotlin/Function0;",
        "",
        "(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V",
        "clickablePointerInputNode",
        "Landroidx/compose/foundation/AbstractClickablePointerInputNode;",
        "getClickablePointerInputNode",
        "()Landroidx/compose/foundation/AbstractClickablePointerInputNode;",
        "clickableSemanticsNode",
        "Landroidx/compose/foundation/ClickableSemanticsNode;",
        "getClickableSemanticsNode",
        "()Landroidx/compose/foundation/ClickableSemanticsNode;",
        "interactionData",
        "Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
        "getInteractionData",
        "()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;",
        "disposeInteractionSource",
        "onCancelPointerInput",
        "onDetach",
        "onKeyEvent",
        "event",
        "Landroidx/compose/ui/input/key/KeyEvent;",
        "onKeyEvent-ZmokQxo",
        "(Landroid/view/KeyEvent;)Z",
        "onPointerEvent",
        "pointerEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "bounds",
        "Landroidx/compose/ui/unit/IntSize;",
        "onPointerEvent-H0pRuoY",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "onPreKeyEvent",
        "onPreKeyEvent-ZmokQxo",
        "updateCommon",
        "updateCommon-XHw0xAI",
        "InteractionData",
        "Landroidx/compose/foundation/ClickableNode;",
        "Landroidx/compose/foundation/CombinedClickableNode;",
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
.field private enabled:Z

.field private final interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

.field private interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field private onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onClickLabel:Ljava/lang/String;

.field private role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClickLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    .line 658
    new-instance p1, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    invoke-direct {p1}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getInteractionSource$p(Landroidx/compose/foundation/AbstractClickableNode;)Landroidx/compose/foundation/interaction/MutableInteractionSource;
    .locals 0

    .line 642
    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    return-object p0
.end method

.method public static synthetic updateCommon-XHw0xAI$default(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    .line 660
    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/AbstractClickableNode;->updateCommon-XHw0xAI(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateCommon-XHw0xAI"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final disposeInteractionSource()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 687
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getPressInteraction()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    new-instance v1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 689
    check-cast v1, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v0, v1}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 691
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getCurrentKeyPressInteractions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 979
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 692
    new-instance v3, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {v3, v1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    check-cast v3, Landroidx/compose/foundation/interaction/Interaction;

    invoke-interface {v2, v3}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->tryEmit(Landroidx/compose/foundation/interaction/Interaction;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    const/4 v1, 0x0

    .line 694
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->setPressInteraction(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 695
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getCurrentKeyPressInteractions()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public abstract getClickablePointerInputNode()Landroidx/compose/foundation/AbstractClickablePointerInputNode;
.end method

.method public abstract getClickableSemanticsNode()Landroidx/compose/foundation/ClickableSemanticsNode;
.end method

.method protected final getInteractionData()Landroidx/compose/foundation/AbstractClickableNode$InteractionData;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    return-object p0
.end method

.method public onCancelPointerInput()V
    .locals 0

    .line 707
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getClickablePointerInputNode()Landroidx/compose/foundation/AbstractClickablePointerInputNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->onCancelPointerInput()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 683
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractionSource()V

    return-void
.end method

.method public onKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 10

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 712
    invoke-static {p1}, Landroidx/compose/foundation/Clickable_androidKt;->isPress-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 715
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getCurrentKeyPressInteractions()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/input/key/Key;->box-impl(J)Landroidx/compose/ui/input/key/Key;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 716
    new-instance v0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    invoke-virtual {v2}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getCentreOffset-F1C5BW0()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/foundation/interaction/PressInteraction$Press;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 717
    invoke-virtual {v2}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getCurrentKeyPressInteractions()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/input/key/Key;->box-impl(J)Landroidx/compose/ui/input/key/Key;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance p1, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    invoke-direct {p1, p0, v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eqz v0, :cond_2

    .line 724
    invoke-static {p1}, Landroidx/compose/foundation/Clickable_androidKt;->isClick-ZmokQxo(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionData:Landroidx/compose/foundation/AbstractClickableNode$InteractionData;

    .line 725
    invoke-virtual {v0}, Landroidx/compose/foundation/AbstractClickableNode$InteractionData;->getCurrentKeyPressInteractions()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->getKey-ZmokQxo(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/ui/input/key/Key;->box-impl(J)Landroidx/compose/ui/input/key/Key;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz p1, :cond_1

    .line 726
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2$1;

    invoke-direct {v0, p0, p1, v3}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    .line 730
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->getClickablePointerInputNode()Landroidx/compose/foundation/AbstractClickablePointerInputNode;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AbstractClickablePointerInputNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public onPreKeyEvent-ZmokQxo(Landroid/view/KeyEvent;)Z
    .locals 0

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected final updateCommon-XHw0xAI(Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "interactionSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 667
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractionSource()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    :cond_0
    iget-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    if-eq p1, p2, :cond_2

    if-nez p2, :cond_1

    .line 673
    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->disposeInteractionSource()V

    :cond_1
    iput-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->enabled:Z

    :cond_2
    iput-object p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClickLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->role:Landroidx/compose/ui/semantics/Role;

    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method
