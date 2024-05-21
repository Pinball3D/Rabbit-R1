.class public final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt;
.super Ljava/lang/Object;
.source "LazyStaggeredGridState.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyStaggeredGridState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyStaggeredGridState.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,504:1\n50#2:505\n49#2:506\n1097#3,6:507\n*S KotlinDebug\n*F\n+ 1 LazyStaggeredGridState.kt\nandroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt\n*L\n69#1:505\n69#1:506\n69#1:507,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a!\u0010\u0000\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "rememberLazyStaggeredGridState",
        "Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
        "initialFirstVisibleItemIndex",
        "",
        "initialFirstVisibleItemScrollOffset",
        "(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;",
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
.method public static final rememberLazyStaggeredGridState(IILandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;
    .locals 10

    const v0, 0x99ae3c4

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberLazyStaggeredGridState)68@3273L139,68@3218L194:LazyStaggeredGridState.kt#fzvcnm"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p0, v2

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move p1, v2

    .line 67
    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p4, -0x1

    const-string v1, "androidx.compose.foundation.lazy.staggeredgrid.rememberLazyStaggeredGridState (LazyStaggeredGridState.kt:64)"

    .line 69
    invoke-static {v0, p3, p4, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    new-array v3, v2, [Ljava/lang/Object;

    sget-object p3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->Companion:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;

    invoke-virtual {p3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const v0, 0x1e7b2b64

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 505
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p3, p4

    .line 507
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p3, :cond_3

    .line 508
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne p4, p3, :cond_4

    .line 69
    :cond_3
    new-instance p3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt$rememberLazyStaggeredGridState$1$1;

    invoke-direct {p3, p0, p1}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridStateKt$rememberLazyStaggeredGridState$1$1;-><init>(II)V

    move-object p4, p3

    check-cast p4, Lkotlin/jvm/functions/Function0;

    .line 510
    invoke-interface {p2, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 506
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v6, p4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x48

    const/4 v9, 0x4

    move-object v7, p2

    .line 69
    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method
