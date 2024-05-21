.class final Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryComposeTracing.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/compose/SentryComposeTracingKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lio/sentry/compose/ImmutableHolder<",
        "Lio/sentry/ISpan;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000f\u0012\u000b\u0012\t\u0018\u00010\u0002\u00a2\u0006\u0002\u0008\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/sentry/compose/ImmutableHolder;",
        "Lio/sentry/ISpan;",
        "Lorg/jetbrains/annotations/NotNull;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;

    invoke-direct {v0}, Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;-><init>()V

    sput-object v0, Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;->INSTANCE:Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lio/sentry/compose/ImmutableHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/sentry/compose/ImmutableHolder<",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lio/sentry/compose/SentryComposeTracingKt;->access$getRootSpan()Lio/sentry/ISpan;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    new-instance v0, Lio/sentry/SpanOptions;

    invoke-direct {v0}, Lio/sentry/SpanOptions;-><init>()V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lio/sentry/SpanOptions;->setTrimStart(Z)V

    .line 61
    invoke-virtual {v0, v1}, Lio/sentry/SpanOptions;->setTrimEnd(Z)V

    .line 62
    invoke-virtual {v0, v1}, Lio/sentry/SpanOptions;->setIdle(Z)V

    .line 63
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string v1, "ui.compose.rendering"

    const-string v2, "Jetpack Compose Initial Render"

    .line 56
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    const-string v1, "auto.ui.jetpack_compose"

    invoke-virtual {v0, v1}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 54
    :goto_0
    new-instance v0, Lio/sentry/compose/ImmutableHolder;

    invoke-direct {v0, p0}, Lio/sentry/compose/ImmutableHolder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lio/sentry/compose/SentryComposeTracingKt$localSentryRenderingParentSpan$1;->invoke()Lio/sentry/compose/ImmutableHolder;

    move-result-object p0

    return-object p0
.end method
