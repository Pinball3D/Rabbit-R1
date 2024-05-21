.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt;
.super Ljava/lang/Object;
.source "LazyStaggeredGridItemProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridItemProvider.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,99:1\n36#2:100\n1097#3,6:101\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridItemProvider.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt\n*L\n43#1:100\n43#1:101,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a4\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0008\tH\u0001\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "rememberStaggeredGridItemProviderLambda",
        "Lkotlin/Function0;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;",
        "state",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "content",
        "Lkotlin/Function1;",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;",
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
.method public static final rememberStaggeredGridItemProviderLambda(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScope;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x292e52e4

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberStaggeredGridItemProviderLambda)P(1)41@1727L29,42@1768L622:LazyStaggeredGridItemProvider.kt#fzvcnm"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.staggeredgrid.rememberStaggeredGridItemProviderLambda (LazyStaggeredGridItemProvider.kt:37)"

    .line 41
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    shr-int/lit8 p3, p3, 0x3

    and-int/lit8 p3, p3, 0xe

    .line 42
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p1

    const p3, 0x44faf204

    .line 43
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p3, "CC(remember)P(1):Composables.kt#9igjgp"

    invoke-static {p2, p3}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 100
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    .line 101
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_1

    .line 102
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_2

    .line 44
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p3

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$intervalContentState$1;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$intervalContentState$1;-><init>(Landroidx/compose/runtime/State;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p1

    .line 47
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->referentialEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object p3

    new-instance v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$itemProviderState$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$itemProviderState$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p3, v0}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object p0

    .line 56
    new-instance p1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProviderKt$rememberStaggeredGridItemProviderLambda$1$1;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/KProperty0;

    .line 104
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 43
    check-cast v0, Lkotlin/reflect/KProperty0;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    return-object v0
.end method
