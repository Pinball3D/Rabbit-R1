.class public final Landroidx/compose/foundation/pager/PagerSemanticsKt;
.super Ljava/lang/Object;
.source "PagerSemantics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerSemantics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerSemantics.kt\nandroidx/compose/foundation/pager/PagerSemanticsKt\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,34:1\n67#2,3:35\n66#2:38\n1097#3,6:39\n*S KotlinDebug\n*F\n+ 1 PagerSemantics.kt\nandroidx/compose/foundation/pager/PagerSemanticsKt\n*L\n31#1:35,3\n31#1:38\n31#1:39,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0001\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "rememberPagerSemanticState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;",
        "state",
        "Landroidx/compose/foundation/pager/PagerState;",
        "reverseScrolling",
        "",
        "isVertical",
        "(Landroidx/compose/foundation/pager/PagerState;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;",
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
.method public static final rememberPagerSemanticState(Landroidx/compose/foundation/pager/PagerState;ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
    .locals 3

    const-string/jumbo v0, "state"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x14fe4cc3

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(rememberPagerSemanticState)P(2,1)30@1089L104:PagerSemantics.kt#g6yjnt"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.pager.rememberPagerSemanticState (PagerSemantics.kt:25)"

    .line 30
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    const v0, 0x607fb4c4

    .line 31
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v0, "CC(remember)P(1,2,3):Composables.kt#9igjgp"

    invoke-static {p3, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 35
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    .line 37
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p4

    or-int/2addr p1, p4

    .line 39
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p4

    if-nez p1, :cond_1

    .line 40
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_2

    .line 32
    :cond_1
    invoke-static {p0, p2}, Landroidx/compose/foundation/pager/LazyLayoutSemanticStateKt;->LazyLayoutSemanticState(Landroidx/compose/foundation/pager/PagerState;Z)Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    move-result-object p4

    .line 42
    invoke-interface {p3, p4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 38
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 31
    check-cast p4, Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p4
.end method
