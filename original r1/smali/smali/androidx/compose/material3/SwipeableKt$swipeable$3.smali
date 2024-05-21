.class final Landroidx/compose/material3/SwipeableKt$swipeable$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Swipeable.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableKt;->swipeable-pPrIpRY(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SwipeableState;Ljava/util/Map;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/ResistanceConfig;F)Landroidx/compose/ui/Modifier;
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
    value = "SMAP\nSwipeable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$swipeable$3\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,886:1\n76#2:887\n36#3:888\n1114#4,6:889\n*S KotlinDebug\n*F\n+ 1 Swipeable.kt\nandroidx/compose/material3/SwipeableKt$swipeable$3\n*L\n589#1:887\n612#1:888\n612#1:889,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/Modifier;",
        "T",
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
.field final synthetic $anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $orientation:Landroidx/compose/foundation/gestures/Orientation;

.field final synthetic $resistance:Landroidx/compose/material3/ResistanceConfig;

.field final synthetic $reverseDirection:Z

.field final synthetic $state:Landroidx/compose/material3/SwipeableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $thresholds:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TT;TT;",
            "Landroidx/compose/material3/ThresholdConfig;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $velocityThreshold:F


# direct methods
.method constructor <init>(Ljava/util/Map;Landroidx/compose/material3/SwipeableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLandroidx/compose/material3/ResistanceConfig;Lkotlin/jvm/functions/Function2;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Float;",
            "+TT;>;",
            "Landroidx/compose/material3/SwipeableState<",
            "TT;>;",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Landroidx/compose/material3/ResistanceConfig;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;+",
            "Landroidx/compose/material3/ThresholdConfig;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    iput-object p2, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    iput-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p4, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$enabled:Z

    iput-object p5, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$reverseDirection:Z

    iput-object p7, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$resistance:Landroidx/compose/material3/ResistanceConfig;

    iput-object p8, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$thresholds:Lkotlin/jvm/functions/Function2;

    iput p9, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$velocityThreshold:F

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 11

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x45bb2614

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "C588@24733L7,590@24775L502,611@25538L55:Swipeable.kt#uh7d8r"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.swipeable.<anonymous> (Swipeable.kt:581)"

    .line 583
    invoke-static {p1, p3, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    .line 586
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    if-ne p1, p3, :cond_4

    .line 589
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/CompositionLocal;

    const p3, 0x789c5f52

    const-string v0, "CC:CompositionLocal.kt#9igjgp"

    .line 887
    invoke-static {p2, p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V

    .line 589
    move-object v4, p1

    check-cast v4, Landroidx/compose/ui/unit/Density;

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    iget-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    .line 590
    invoke-virtual {p1, p3}, Landroidx/compose/material3/SwipeableState;->ensureInit$material3_release(Ljava/util/Map;)V

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    iget-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    .line 591
    new-instance v8, Landroidx/compose/material3/SwipeableKt$swipeable$3$3;

    iget-object v1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    iget-object v2, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$anchors:Ljava/util/Map;

    iget-object v3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$resistance:Landroidx/compose/material3/ResistanceConfig;

    iget-object v5, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$thresholds:Lkotlin/jvm/functions/Function2;

    iget v6, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$velocityThreshold:F

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/SwipeableKt$swipeable$3$3;-><init>(Landroidx/compose/material3/SwipeableState;Ljava/util/Map;Landroidx/compose/material3/ResistanceConfig;Landroidx/compose/ui/unit/Density;Lkotlin/jvm/functions/Function2;FLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x208

    invoke-static {p1, p3, v8, p2, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 606
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    .line 611
    invoke-virtual {p3}, Landroidx/compose/material3/SwipeableState;->isAnimationRunning()Z

    move-result v5

    iget-object p3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    .line 613
    invoke-virtual {p3}, Landroidx/compose/material3/SwipeableState;->getDraggableState$material3_release()Landroidx/compose/foundation/gestures/DraggableState;

    move-result-object v1

    .line 606
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$orientation:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v3, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$enabled:Z

    iget-object v4, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    const/4 v6, 0x0

    iget-object p1, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$state:Landroidx/compose/material3/SwipeableState;

    const p3, 0x44faf204

    .line 612
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 888
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    .line 889
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    if-nez p3, :cond_1

    .line 890
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v7, p3, :cond_2

    .line 612
    :cond_1
    new-instance p3, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;

    const/4 v7, 0x0

    invoke-direct {p3, p1, v7}, Landroidx/compose/material3/SwipeableKt$swipeable$3$4$1;-><init>(Landroidx/compose/material3/SwipeableState;Lkotlin/coroutines/Continuation;)V

    move-object v7, p3

    check-cast v7, Lkotlin/jvm/functions/Function3;

    .line 892
    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 888
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    iget-boolean v8, p0, Landroidx/compose/material3/SwipeableKt$swipeable$3;->$reverseDirection:Z

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 606
    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/gestures/DraggableKt;->draggable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0

    .line 586
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot have two anchors mapped to the same state."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 583
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must have at least one anchor."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 569
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/SwipeableKt$swipeable$3;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
