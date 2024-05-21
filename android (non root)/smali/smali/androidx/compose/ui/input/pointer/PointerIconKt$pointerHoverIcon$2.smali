.class final Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerIcon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerIconKt;->pointerHoverIcon(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/pointer/PointerIcon;Z)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nPointerIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerIcon.kt\nandroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,242:1\n76#2:243\n25#3:244\n83#3,3:251\n36#3:260\n1097#4,6:245\n1097#4,6:254\n1097#4,6:261\n*S KotlinDebug\n*F\n+ 1 PointerIcon.kt\nandroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2\n*L\n91#1:243\n98#1:244\n101#1:251,3\n109#1:260\n98#1:245,6\n101#1:254,6\n109#1:261,6\n*E\n"
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
.field final synthetic $icon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field final synthetic $overrideDescendants:Z


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerIcon;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iput-boolean p2, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$overrideDescendants:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 8

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x305836b0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C90@3499L7,97@3759L103,100@3886L226,100@3875L237,108@4265L525:PointerIcon.kt#a556rk"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.ui.input.pointer.pointerHoverIcon.<anonymous> (PointerIcon.kt:89)"

    .line 91
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalPointerIconService()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    check-cast p3, Landroidx/compose/runtime/CompositionLocal;

    const v0, 0x789c5f52

    const-string v1, "CC:CompositionLocal.kt#9igjgp"

    .line 243
    invoke-static {p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 91
    check-cast p3, Landroidx/compose/ui/input/pointer/PointerIconService;

    if-nez p3, :cond_1

    .line 93
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    goto/16 :goto_2

    .line 95
    :cond_1
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;

    invoke-direct {v0, p3}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;-><init>(Landroidx/compose/ui/input/pointer/PointerIconService;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p3, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$overrideDescendants:Z

    const v2, -0x1d58f75c

    .line 98
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember):Composables.kt#9igjgp"

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 245
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 246
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 99
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    invoke-direct {v2, p3, v1, v0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;-><init>(Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V

    .line 248
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 244
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 98
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    iget-object p3, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$overrideDescendants:Z

    .line 101
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v2, p3, v1, v0}, [Ljava/lang/Object;

    move-result-object p3

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->$overrideDescendants:Z

    const v3, -0x21de6e89

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x4

    if-ge v5, v7, :cond_3

    .line 252
    aget-object v7, p3, v5

    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 254
    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez v6, :cond_4

    .line 255
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne p3, v5, :cond_5

    .line 101
    :cond_4
    new-instance p3, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;

    invoke-direct {p3, v2, v1, p0, v0}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 257
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 101
    invoke-static {p3, p2, v4}, Landroidx/compose/runtime/EffectsKt;->SideEffect(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 108
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->shouldUpdatePointerIcon()Z

    move-result p0

    if-eqz p0, :cond_8

    const p0, 0x44faf204

    .line 109
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {p2, v3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 260
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p0

    .line 261
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_6

    .line 262
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne p3, p0, :cond_7

    .line 109
    :cond_6
    new-instance p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$pointerInputModifier$1$1;

    const/4 p3, 0x0

    invoke-direct {p0, v2, p3}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$pointerInputModifier$1$1;-><init>(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;Lkotlin/coroutines/Continuation;)V

    move-object p3, p0

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 264
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 260
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    .line 109
    invoke-static {p1, v2, p3}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    goto :goto_1

    .line 123
    :cond_8
    sget-object p0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p0, Landroidx/compose/ui/Modifier;

    .line 126
    :goto_1
    invoke-virtual {v2, p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 92
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_9
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
