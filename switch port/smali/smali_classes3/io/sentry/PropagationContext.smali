.class public final Lio/sentry/PropagationContext;
.super Ljava/lang/Object;
.source "PropagationContext.java"


# instance fields
.field private baggage:Lio/sentry/Baggage;

.field private parentSpanId:Lio/sentry/SpanId;

.field private sampled:Ljava/lang/Boolean;

.field private spanId:Lio/sentry/SpanId;

.field private traceId:Lio/sentry/protocol/SentryId;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 62
    new-instance v1, Lio/sentry/protocol/SentryId;

    invoke-direct {v1}, Lio/sentry/protocol/SentryId;-><init>()V

    new-instance v2, Lio/sentry/SpanId;

    invoke-direct {v2}, Lio/sentry/SpanId;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/Baggage;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/PropagationContext;)V
    .locals 6

    .line 67
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v3

    .line 70
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/PropagationContext;->cloneBaggage(Lio/sentry/Baggage;)Lio/sentry/Baggage;

    move-result-object v4

    .line 71
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->isSampled()Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    .line 66
    invoke-direct/range {v0 .. v5}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/Baggage;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/Baggage;Ljava/lang/Boolean;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/PropagationContext;->traceId:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/PropagationContext;->spanId:Lio/sentry/SpanId;

    iput-object p3, p0, Lio/sentry/PropagationContext;->parentSpanId:Lio/sentry/SpanId;

    iput-object p4, p0, Lio/sentry/PropagationContext;->baggage:Lio/sentry/Baggage;

    iput-object p5, p0, Lio/sentry/PropagationContext;->sampled:Ljava/lang/Boolean;

    return-void
.end method

.method private static cloneBaggage(Lio/sentry/Baggage;)Lio/sentry/Baggage;
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    new-instance v0, Lio/sentry/Baggage;

    invoke-direct {v0, p0}, Lio/sentry/Baggage;-><init>(Lio/sentry/Baggage;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/PropagationContext;
    .locals 0

    .line 18
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/sentry/PropagationContext;->fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/util/List;)Lio/sentry/PropagationContext;

    move-result-object p0

    return-object p0
.end method

.method public static fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/util/List;)Lio/sentry/PropagationContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/PropagationContext;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 26
    new-instance p0, Lio/sentry/PropagationContext;

    invoke-direct {p0}, Lio/sentry/PropagationContext;-><init>()V

    return-object p0

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Lio/sentry/SentryTraceHeader;

    invoke-direct {v0, p1}, Lio/sentry/SentryTraceHeader;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {p2, p0}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;Lio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object p1

    const/4 p2, 0x0

    .line 32
    invoke-static {v0, p1, p2}, Lio/sentry/PropagationContext;->fromHeaders(Lio/sentry/SentryTraceHeader;Lio/sentry/Baggage;Lio/sentry/SpanId;)Lio/sentry/PropagationContext;

    move-result-object p0
    :try_end_0
    .catch Lio/sentry/exception/InvalidSentryTraceHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 34
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Lio/sentry/exception/InvalidSentryTraceHeaderException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to parse Sentry trace header: %s"

    invoke-interface {p0, p2, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance p0, Lio/sentry/PropagationContext;

    invoke-direct {p0}, Lio/sentry/PropagationContext;-><init>()V

    return-object p0
.end method

.method public static fromHeaders(Lio/sentry/SentryTraceHeader;Lio/sentry/Baggage;Lio/sentry/SpanId;)Lio/sentry/PropagationContext;
    .locals 6

    if-nez p2, :cond_0

    .line 43
    new-instance p2, Lio/sentry/SpanId;

    invoke-direct {p2}, Lio/sentry/SpanId;-><init>()V

    :cond_0
    move-object v2, p2

    .line 45
    new-instance p2, Lio/sentry/PropagationContext;

    .line 46
    invoke-virtual {p0}, Lio/sentry/SentryTraceHeader;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Lio/sentry/SentryTraceHeader;->getSpanId()Lio/sentry/SpanId;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Lio/sentry/SentryTraceHeader;->isSampled()Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Lio/sentry/Baggage;Ljava/lang/Boolean;)V

    return-object p2
.end method


# virtual methods
.method public getBaggage()Lio/sentry/Baggage;
    .locals 0

    iget-object p0, p0, Lio/sentry/PropagationContext;->baggage:Lio/sentry/Baggage;

    return-object p0
.end method

.method public getParentSpanId()Lio/sentry/SpanId;
    .locals 0

    iget-object p0, p0, Lio/sentry/PropagationContext;->parentSpanId:Lio/sentry/SpanId;

    return-object p0
.end method

.method public getSpanId()Lio/sentry/SpanId;
    .locals 0

    iget-object p0, p0, Lio/sentry/PropagationContext;->spanId:Lio/sentry/SpanId;

    return-object p0
.end method

.method public getTraceId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/PropagationContext;->traceId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/PropagationContext;->sampled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setBaggage(Lio/sentry/Baggage;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/PropagationContext;->baggage:Lio/sentry/Baggage;

    return-void
.end method

.method public setParentSpanId(Lio/sentry/SpanId;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/PropagationContext;->parentSpanId:Lio/sentry/SpanId;

    return-void
.end method

.method public setSampled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/PropagationContext;->sampled:Ljava/lang/Boolean;

    return-void
.end method

.method public setSpanId(Lio/sentry/SpanId;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/PropagationContext;->spanId:Lio/sentry/SpanId;

    return-void
.end method

.method public setTraceId(Lio/sentry/protocol/SentryId;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/PropagationContext;->traceId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/PropagationContext;->baggage:Lio/sentry/Baggage;

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
