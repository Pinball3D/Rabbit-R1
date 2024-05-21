.class final Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryComposeTracing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/compose/SentryComposeTracingKt;->SentryTraced(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $firstRendered:Lio/sentry/compose/ImmutableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/compose/ImmutableHolder<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $parentRenderingSpan:Lio/sentry/compose/ImmutableHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/compose/ImmutableHolder<",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/sentry/compose/ImmutableHolder;Lio/sentry/compose/ImmutableHolder;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/compose/ImmutableHolder<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/sentry/compose/ImmutableHolder<",
            "Lio/sentry/ISpan;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$firstRendered:Lio/sentry/compose/ImmutableHolder;

    iput-object p2, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$parentRenderingSpan:Lio/sentry/compose/ImmutableHolder;

    iput-object p3, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$tag:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {p0, p1}, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 3

    const-string v0, "$this$drawWithContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$firstRendered:Lio/sentry/compose/ImmutableHolder;

    .line 90
    invoke-virtual {v0}, Lio/sentry/compose/ImmutableHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$parentRenderingSpan:Lio/sentry/compose/ImmutableHolder;

    .line 91
    invoke-virtual {v0}, Lio/sentry/compose/ImmutableHolder;->getItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    if-eqz v0, :cond_0

    const-string v1, "ui.render"

    iget-object v2, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$tag:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v1

    .line 98
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    iget-object p0, p0, Lio/sentry/compose/SentryComposeTracingKt$SentryTraced$1$1;->$firstRendered:Lio/sentry/compose/ImmutableHolder;

    const/4 p1, 0x1

    .line 99
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/compose/ImmutableHolder;->setItem(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v1}, Lio/sentry/ISpan;->finish()V

    :cond_1
    return-void
.end method
