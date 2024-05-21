.class final Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Scrollable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScrollable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt$scrollable$2\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n*L\n1#1,637:1\n486#2,4:638\n490#2,2:646\n494#2:652\n25#3:642\n83#3,3:653\n1097#4,3:643\n1100#4,3:649\n1097#4,6:656\n486#5:648\n*S KotlinDebug\n*F\n+ 1 Scrollable.kt\nandroidx/compose/foundation/gestures/ScrollableKt$scrollable$2\n*L\n163#1:638,4\n163#1:646,2\n163#1:652\n163#1:642\n165#1:653,3\n163#1:643,3\n163#1:649,3\n165#1:656,6\n163#1:648\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "invoke",
        "(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;"
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
.field final synthetic $enabled:Z

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

.field final synthetic $reverseDirection:Z

.field final synthetic $state:Landroidx/compose/foundation/gestures/ScrollableState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-boolean p3, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$reverseDirection:Z

    iput-object p4, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iput-boolean p7, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$enabled:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 10

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, -0x258a750f

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C162@7780L24,164@7862L170,171@8149L242:Scrollable.kt#8bwon0"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.gestures.scrollable.<anonymous> (Scrollable.kt:161)"

    .line 163
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p1, 0x2e20b340

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "CC(rememberCoroutineScope)488@20446L144:Effects.kt#9igjgp"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const p1, -0x1d58f75c

    .line 641
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p1, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, p1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 643
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p1

    .line 644
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p1, p3, :cond_1

    .line 648
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 647
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    .line 646
    new-instance p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {p3, p1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 649
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p1, p3

    .line 642
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 641
    check-cast p1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 652
    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    iget-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-boolean v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$reverseDirection:Z

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-boolean v2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$reverseDirection:Z

    const v3, -0x21de6e89

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_2

    .line 654
    aget-object v5, p3, v3

    invoke-interface {p2, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 656
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez v4, :cond_3

    .line 657
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne p3, v3, :cond_4

    .line 166
    :cond_3
    new-instance p3, Landroidx/compose/foundation/gestures/ContentInViewModifier;

    invoke-direct {p3, p1, v0, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Z)V

    .line 659
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 655
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 165
    check-cast p3, Landroidx/compose/foundation/gestures/ContentInViewModifier;

    .line 169
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 170
    invoke-static {p1}, Landroidx/compose/foundation/FocusableKt;->focusGroup(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->getModifier()Landroidx/compose/ui/Modifier;

    move-result-object p3

    invoke-interface {p1, p3}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v3, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$reverseDirection:Z

    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$state:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v5, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$overscrollEffect:Landroidx/compose/foundation/OverscrollEffect;

    iget-boolean v7, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$enabled:Z

    const/4 v9, 0x0

    move-object v8, p2

    .line 172
    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/gestures/ScrollableKt;->access$pointerScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/OverscrollEffect;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iget-boolean p0, p0, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->$enabled:Z

    if-eqz p0, :cond_5

    .line 181
    sget-object p0, Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;->INSTANCE:Landroidx/compose/foundation/gestures/ModifierLocalScrollableContainerProvider;

    goto :goto_1

    :cond_5
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :goto_1
    check-cast p0, Landroidx/compose/ui/Modifier;

    invoke-interface {p1, p0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_6
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 151
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ScrollableKt$scrollable$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
