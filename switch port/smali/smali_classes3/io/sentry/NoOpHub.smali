.class public final Lio/sentry/NoOpHub;
.super Ljava/lang/Object;
.source "NoOpHub.java"

# interfaces
.implements Lio/sentry/IHub;


# static fields
.field private static final instance:Lio/sentry/NoOpHub;


# instance fields
.field private final emptyOptions:Lio/sentry/SentryOptions;

.field private final metricsApi:Lio/sentry/metrics/MetricsApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lio/sentry/NoOpHub;

    invoke-direct {v0}, Lio/sentry/NoOpHub;-><init>()V

    sput-object v0, Lio/sentry/NoOpHub;->instance:Lio/sentry/NoOpHub;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/NoOpHub;->emptyOptions:Lio/sentry/SentryOptions;

    .line 19
    new-instance v0, Lio/sentry/metrics/MetricsApi;

    .line 20
    invoke-static {}, Lio/sentry/metrics/NoopMetricsAggregator;->getInstance()Lio/sentry/metrics/NoopMetricsAggregator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/metrics/MetricsApi;-><init>(Lio/sentry/metrics/MetricsApi$IMetricsInterface;)V

    iput-object v0, p0, Lio/sentry/NoOpHub;->metricsApi:Lio/sentry/metrics/MetricsApi;

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpHub;
    .locals 1

    sget-object v0, Lio/sentry/NoOpHub;->instance:Lio/sentry/NoOpHub;

    return-object v0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0

    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0

    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 225
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 57
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 35
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 41
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 62
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 68
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 46
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 52
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 160
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 0

    sget-object p0, Lio/sentry/NoOpHub;->instance:Lio/sentry/NoOpHub;

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lio/sentry/NoOpHub;->clone()Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public close(Z)V
    .locals 0

    return-void
.end method

.method public configureScope(Lio/sentry/ScopeCallback;)V
    .locals 0

    return-void
.end method

.method public continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/TransactionContext;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public endSession()V
    .locals 0

    return-void
.end method

.method public flush(J)V
    .locals 0

    return-void
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 121
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 0

    iget-object p0, p0, Lio/sentry/NoOpHub;->emptyOptions:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isHealthy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public metrics()Lio/sentry/metrics/MetricsApi;
    .locals 0

    iget-object p0, p0, Lio/sentry/NoOpHub;->metricsApi:Lio/sentry/metrics/MetricsApi;

    return-object p0
.end method

.method public popScope()V
    .locals 0

    return-void
.end method

.method public pushScope()V
    .locals 0

    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 0

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0

    return-void
.end method

.method public startSession()V
    .locals 0

    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 0

    .line 167
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p0

    return-object p0
.end method

.method public traceHeaders()Lio/sentry/SentryTraceHeader;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    new-instance p0, Lio/sentry/SentryTraceHeader;

    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v1, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/SentryTraceHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 0

    .line 132
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V

    return-void
.end method
