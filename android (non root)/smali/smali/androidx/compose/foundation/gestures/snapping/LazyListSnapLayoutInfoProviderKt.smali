.class public final Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;
.super Ljava/lang/Object;
.source "LazyListSnapLayoutInfoProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyListSnapLayoutInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyListSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,121:1\n36#2:122\n1097#3,6:123\n*S KotlinDebug\n*F\n+ 1 LazyListSnapLayoutInfoProvider.kt\nandroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt\n*L\n116#1:122\n116#1:123,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u0007\u001a\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a2\u0006\u0002\u0010\r\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000e"
    }
    d2 = {
        "singleAxisViewportSize",
        "",
        "Landroidx/compose/foundation/lazy/LazyListLayoutInfo;",
        "getSingleAxisViewportSize",
        "(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I",
        "SnapLayoutInfoProvider",
        "Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;",
        "lazyListState",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "positionInLayout",
        "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;",
        "rememberSnapFlingBehavior",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;",
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
.method public static final SnapLayoutInfoProvider(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 1

    const-string v0, "lazyListState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positionInLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)V

    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    return-object v0
.end method

.method public static synthetic SnapLayoutInfoProvider$default(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;ILjava/lang/Object;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 48
    sget-object p1, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;->Companion:Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;->getCenterToCenter()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;

    move-result-object p1

    .line 46
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->SnapLayoutInfoProvider(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public static final getSingleAxisViewportSize(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;->getViewportSize-YbymL2g()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final rememberSnapFlingBehavior(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/FlingBehavior;
    .locals 3

    const-string v0, "lazyListState"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x44740d55

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberSnapFlingBehavior)115@4630L65,116@4707L41:LazyListSnapLayoutInfoProvider.kt#ppz6w6"

    invoke-static {p1, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.gestures.snapping.rememberSnapFlingBehavior (LazyListSnapLayoutInfoProvider.kt:114)"

    .line 115
    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    const p2, 0x44faf204

    .line 116
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p2

    .line 123
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_1

    .line 124
    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v0, p2, :cond_2

    :cond_1
    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 116
    invoke-static {p0, v0, p2, v0}, Landroidx/compose/foundation/gestures/snapping/LazyListSnapLayoutInfoProviderKt;->SnapLayoutInfoProvider$default(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;ILjava/lang/Object;)Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    move-result-object v0

    .line 126
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 122
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 116
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;

    const/4 p0, 0x0

    .line 117
    invoke-static {v0, p1, p0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehaviorKt;->rememberSnapFlingBehavior(Landroidx/compose/foundation/gestures/snapping/SnapLayoutInfoProvider;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast p0, Landroidx/compose/foundation/gestures/FlingBehavior;

    return-object p0
.end method
