.class public final Lio/sentry/util/TracingUtils;
.super Ljava/lang/Object;
.source "TracingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/TracingUtils$TracingHeaders;,
        Lio/sentry/util/TracingUtils$PropagationContextHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$maybeUpdateBaggage$3(Lio/sentry/SentryOptions;Lio/sentry/IScope;Lio/sentry/PropagationContext;)V
    .locals 2

    .line 79
    invoke-virtual {p2}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lio/sentry/Baggage;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    .line 82
    invoke-virtual {p2, v0}, Lio/sentry/PropagationContext;->setBaggage(Lio/sentry/Baggage;)V

    .line 84
    :cond_0
    invoke-virtual {v0}, Lio/sentry/Baggage;->isMutable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {v0, p1, p0}, Lio/sentry/Baggage;->setValuesFromScope(Lio/sentry/IScope;Lio/sentry/SentryOptions;)V

    .line 86
    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$startNewTrace$0(Lio/sentry/IScope;Lio/sentry/PropagationContext;)V
    .locals 0

    .line 22
    new-instance p1, Lio/sentry/PropagationContext;

    invoke-direct {p1}, Lio/sentry/PropagationContext;-><init>()V

    invoke-interface {p0, p1}, Lio/sentry/IScope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    return-void
.end method

.method static synthetic lambda$startNewTrace$1(Lio/sentry/IScope;)V
    .locals 1

    .line 20
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IScope;)V

    invoke-interface {p0, v0}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    return-void
.end method

.method static synthetic lambda$trace$2(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/SentryOptions;Lio/sentry/IScope;)V
    .locals 0

    .line 53
    invoke-static {p2, p1}, Lio/sentry/util/TracingUtils;->maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;

    move-result-object p1

    invoke-static {p0, p1}, Lio/sentry/util/TracingUtils$PropagationContextHolder;->access$102(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/PropagationContext;)Lio/sentry/PropagationContext;

    return-void
.end method

.method public static maybeUpdateBaggage(Lio/sentry/IScope;Lio/sentry/SentryOptions;)Lio/sentry/PropagationContext;
    .locals 1

    .line 77
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryOptions;Lio/sentry/IScope;)V

    invoke-interface {p0, v0}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    move-result-object p0

    return-object p0
.end method

.method private static shouldAttachTracingHeaders(Ljava/lang/String;Lio/sentry/SentryOptions;)Z
    .locals 0

    .line 93
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p0}, Lio/sentry/util/PropagationTargetsUtils;->contain(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static startNewTrace(Lio/sentry/IHub;)V
    .locals 1

    .line 18
    new-instance v0, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public static trace(Lio/sentry/IHub;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IHub;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/ISpan;",
            ")",
            "Lio/sentry/util/TracingUtils$TracingHeaders;"
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 46
    invoke-interface {p2}, Lio/sentry/ISpan;->isNoOp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    new-instance p0, Lio/sentry/util/TracingUtils$TracingHeaders;

    .line 48
    invoke-interface {p2}, Lio/sentry/ISpan;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object v0

    invoke-interface {p2, p1}, Lio/sentry/ISpan;->toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/sentry/util/TracingUtils$TracingHeaders;-><init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;)V

    return-object p0

    .line 50
    :cond_0
    new-instance p2, Lio/sentry/util/TracingUtils$PropagationContextHolder;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lio/sentry/util/TracingUtils$PropagationContextHolder;-><init>(Lio/sentry/util/TracingUtils$1;)V

    .line 51
    new-instance v2, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2, v0}, Lio/sentry/util/TracingUtils$$ExternalSyntheticLambda3;-><init>(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/SentryOptions;)V

    invoke-interface {p0, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 56
    invoke-static {p2}, Lio/sentry/util/TracingUtils$PropagationContextHolder;->access$100(Lio/sentry/util/TracingUtils$PropagationContextHolder;)Lio/sentry/PropagationContext;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 57
    invoke-static {p2}, Lio/sentry/util/TracingUtils$PropagationContextHolder;->access$100(Lio/sentry/util/TracingUtils$PropagationContextHolder;)Lio/sentry/PropagationContext;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 62
    invoke-static {p2, p1}, Lio/sentry/BaggageHeader;->fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 65
    :goto_0
    new-instance p2, Lio/sentry/util/TracingUtils$TracingHeaders;

    new-instance v0, Lio/sentry/SentryTraceHeader;

    .line 67
    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object p0

    invoke-direct {v0, v2, p0, v1}, Lio/sentry/SentryTraceHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    invoke-direct {p2, v0, p1}, Lio/sentry/util/TracingUtils$TracingHeaders;-><init>(Lio/sentry/SentryTraceHeader;Lio/sentry/BaggageHeader;)V

    return-object p2

    :cond_2
    return-object v1
.end method

.method public static traceIfAllowed(Lio/sentry/IHub;Ljava/lang/String;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IHub;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/ISpan;",
            ")",
            "Lio/sentry/util/TracingUtils$TracingHeaders;"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lio/sentry/util/TracingUtils;->shouldAttachTracingHeaders(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-static {p0, p2, p3}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IHub;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
