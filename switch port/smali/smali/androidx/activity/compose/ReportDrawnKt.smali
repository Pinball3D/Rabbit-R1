.class public final Landroidx/activity/compose/ReportDrawnKt;
.super Ljava/lang/Object;
.source "ReportDrawn.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007\u00a2\u0006\u0002\u0010\u0002\u001a.\u0010\u0003\u001a\u00020\u00012\u001c\u0010\u0004\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0008\u001a\u001b\u0010\t\u001a\u00020\u00012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0007\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "ReportDrawn",
        "",
        "(Landroidx/compose/runtime/Composer;I)V",
        "ReportDrawnAfter",
        "block",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V",
        "ReportDrawnWhen",
        "predicate",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V",
        "activity-compose_release"
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
.method public static final ReportDrawn(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    const v0, -0x50e25fa8

    .line 153
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p0

    const-string v0, "C(ReportDrawn)152@5068L24:ReportDrawn.kt#q1dkbc"

    invoke-static {p0, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    if-nez p1, :cond_1

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawn$1;->INSTANCE:Landroidx/activity/compose/ReportDrawnKt$ReportDrawn$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Landroidx/activity/compose/ReportDrawnKt;->ReportDrawnWhen(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawn$2;

    invoke-direct {v0, p1}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawn$2;-><init>(I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    return-void
.end method

.method public static final ReportDrawnAfter(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, 0x38584e28

    .line 169
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v0, "C(ReportDrawnAfter)170@5599L7,171@5641L102:ReportDrawn.kt#q1dkbc"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 171
    sget-object v0, Landroidx/activity/compose/LocalFullyDrawnReporterOwner;->INSTANCE:Landroidx/activity/compose/LocalFullyDrawnReporterOwner;

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Landroidx/activity/compose/LocalFullyDrawnReporterOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/FullyDrawnReporterOwner;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/activity/FullyDrawnReporterOwner;->getFullyDrawnReporter()Landroidx/activity/FullyDrawnReporter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 172
    :cond_0
    new-instance v1, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$1;-><init>(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/16 v2, 0x248

    invoke-static {p0, v0, v1, p1, v2}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$2;

    invoke-direct {v0, p0, p2}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$2;-><init>(Lkotlin/jvm/functions/Function1;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void

    .line 171
    :cond_2
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$fullyDrawnReporter$1;

    invoke-direct {v0, p0, p2}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnAfter$fullyDrawnReporter$1;-><init>(Lkotlin/jvm/functions/Function1;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    return-void
.end method

.method public static final ReportDrawnWhen(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, -0x7a04927a

    .line 130
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    const-string v0, "C(ReportDrawnWhen)131@4432L7,132@4474L339:ReportDrawn.kt#q1dkbc"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0xb

    if-ne v2, v1, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 143
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 132
    :cond_3
    :goto_2
    sget-object v1, Landroidx/activity/compose/LocalFullyDrawnReporterOwner;->INSTANCE:Landroidx/activity/compose/LocalFullyDrawnReporterOwner;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Landroidx/activity/compose/LocalFullyDrawnReporterOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/FullyDrawnReporterOwner;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroidx/activity/FullyDrawnReporterOwner;->getFullyDrawnReporter()Landroidx/activity/FullyDrawnReporter;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_5

    .line 133
    :cond_4
    new-instance v2, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;

    invoke-direct {v2, v1, p0}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$1;-><init>(Landroidx/activity/FullyDrawnReporter;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x8

    invoke-static {v1, p0, v2, p1, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 143
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$2;

    invoke-direct {v0, p0, p2}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_4
    return-void

    .line 132
    :cond_6
    :goto_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_6

    :cond_7
    new-instance v0, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1;

    invoke-direct {v0, p0, p2}, Landroidx/activity/compose/ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1;-><init>(Lkotlin/jvm/functions/Function0;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_6
    return-void
.end method
