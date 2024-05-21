.class final Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldScroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScrollable(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/foundation/interaction/MutableInteractionSource;Z)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nTextFieldScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextFieldScroll.kt\nandroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,370:1\n76#2:371\n36#3:372\n50#3:379\n49#3:380\n1097#4,6:373\n1097#4,6:381\n*S KotlinDebug\n*F\n+ 1 TextFieldScroll.kt\nandroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2\n*L\n69#1:371\n71#1:372\n84#1:379\n84#1:380\n71#1:373,6\n84#1:381,6\n*E\n"
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

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    iput-boolean p2, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$enabled:Z

    iput-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 12

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3001dc2a

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C68@2901L7,70@3070L388,70@3046L412,83@3610L352:TextFieldScroll.kt#423gt5"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.foundation.text.textFieldScrollable.<anonymous> (TextFieldScroll.kt:66)"

    .line 69
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const p3, 0x789c5f52

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    .line 371
    invoke-static {p2, p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 69
    sget-object p3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 70
    invoke-virtual {p3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p3

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p3, v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v7, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v0

    :goto_2
    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    const p3, 0x44faf204

    .line 71
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 372
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    .line 373
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p3, :cond_4

    .line 374
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v2, p3, :cond_5

    .line 71
    :cond_4
    new-instance p3, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;

    invoke-direct {p3, p1}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;-><init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;)V

    move-object v2, p3

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 376
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 372
    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 71
    invoke-static {v2, p2, v1}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->rememberScrollableState(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/ScrollableState;

    move-result-object p1

    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    const v2, 0x1e7b2b64

    .line 84
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v2, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 379
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 381
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_6

    .line 382
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_7

    .line 85
    :cond_6
    new-instance v3, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    invoke-direct {v3, p1, p3}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/text/TextFieldScrollerPosition;)V

    .line 384
    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 380
    :cond_7
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    check-cast v3, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;

    .line 92
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 93
    invoke-virtual {p3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v5

    iget-boolean p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$enabled:Z

    if-eqz p3, :cond_9

    iget-object p3, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 97
    invoke-virtual {p3}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getMaximum()F

    move-result p3

    const/4 v2, 0x0

    cmpg-float p3, p3, v2

    if-nez p3, :cond_8

    goto :goto_3

    :cond_8
    move v6, v0

    goto :goto_4

    :cond_9
    :goto_3
    move v6, v1

    .line 92
    :goto_4
    check-cast p1, Landroidx/compose/ui/Modifier;

    .line 95
    move-object v4, v3

    check-cast v4, Landroidx/compose/foundation/gestures/ScrollableState;

    const/4 v8, 0x0

    iget-object v9, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v3, p1

    .line 92
    invoke-static/range {v3 .. v11}, Landroidx/compose/foundation/gestures/ScrollableKt;->scrollable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_a
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
