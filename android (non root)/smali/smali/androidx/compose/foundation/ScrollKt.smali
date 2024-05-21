.class public final Landroidx/compose/foundation/ScrollKt;
.super Ljava/lang/Object;
.source "Scroll.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScroll.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Scroll.kt\nandroidx/compose/foundation/ScrollKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,454:1\n36#2:455\n1097#3,6:456\n135#4:462\n*S KotlinDebug\n*F\n+ 1 Scroll.kt\nandroidx/compose/foundation/ScrollKt\n*L\n74#1:455\n74#1:456,6\n320#1:462\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a\u0017\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0004\u001a2\u0010\u0005\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u001a6\u0010\r\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\tH\u0002\u001a2\u0010\u0010\u001a\u00020\u0006*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u00a8\u0006\u0011"
    }
    d2 = {
        "rememberScrollState",
        "Landroidx/compose/foundation/ScrollState;",
        "initial",
        "",
        "(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;",
        "horizontalScroll",
        "Landroidx/compose/ui/Modifier;",
        "state",
        "enabled",
        "",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "reverseScrolling",
        "scroll",
        "isScrollable",
        "isVertical",
        "verticalScroll",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final horizontalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move v5, p2

    .line 251
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt;->scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic horizontalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 246
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollKt;->horizontalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberScrollState(ILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/ScrollState;
    .locals 10

    const v0, -0x5746c6c7

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberScrollState)73@3370L46,73@3326L90:Scroll.kt#71ulvw"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 p3, p3, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    move p0, v1

    .line 73
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x1

    const-string v2, "androidx.compose.foundation.rememberScrollState (Scroll.kt:72)"

    invoke-static {v0, p2, p3, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 74
    sget-object p2, Landroidx/compose/foundation/ScrollState;->Companion:Landroidx/compose/foundation/ScrollState$Companion;

    invoke-virtual {p2}, Landroidx/compose/foundation/ScrollState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const p3, 0x44faf204

    invoke-interface {p1, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 455
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    .line 456
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_2

    .line 457
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne p3, p2, :cond_3

    .line 74
    :cond_2
    new-instance p2, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/ScrollKt$rememberScrollState$1$1;-><init>(I)V

    move-object p3, p2

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 459
    invoke-interface {p1, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 455
    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v6, p3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x48

    const/4 v9, 0x4

    move-object v7, p1

    .line 74
    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/ScrollState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method private static final scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)Landroidx/compose/ui/Modifier;
    .locals 8

    .line 462
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/ScrollKt$scroll$$inlined$debugInspectorInfo$1;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt$scroll$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 266
    :goto_0
    new-instance v7, Landroidx/compose/foundation/ScrollKt$scroll$2;

    move-object v1, v7

    move v2, p5

    move v3, p2

    move-object v4, p1

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt$scroll$2;-><init>(ZZLandroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;)V

    check-cast v7, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, v0, v7}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final verticalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move v5, p2

    .line 222
    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/ScrollKt;->scroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZZ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic verticalScroll$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 217
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/ScrollKt;->verticalScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZLandroidx/compose/foundation/gestures/FlingBehavior;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
