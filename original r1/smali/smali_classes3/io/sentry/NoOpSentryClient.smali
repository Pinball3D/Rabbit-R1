.class final Lio/sentry/NoOpSentryClient;
.super Ljava/lang/Object;
.source "NoOpSentryClient.java"

# interfaces
.implements Lio/sentry/ISentryClient;


# static fields
.field private static final instance:Lio/sentry/NoOpSentryClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/sentry/NoOpSentryClient;

    invoke-direct {v0}, Lio/sentry/NoOpSentryClient;-><init>()V

    sput-object v0, Lio/sentry/NoOpSentryClient;->instance:Lio/sentry/NoOpSentryClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpSentryClient;
    .locals 1

    sget-object v0, Lio/sentry/NoOpSentryClient;->instance:Lio/sentry/NoOpSentryClient;

    return-object v0
.end method


# virtual methods
.method public captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 66
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 49
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 29
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V
    .locals 0

    return-void
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 59
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public close(Z)V
    .locals 0

    return-void
.end method

.method public flush(J)V
    .locals 0

    return-void
.end method

.method public getMetricsAggregator()Lio/sentry/IMetricsAggregator;
    .locals 0

    .line 76
    invoke-static {}, Lio/sentry/metrics/NoopMetricsAggregator;->getInstance()Lio/sentry/metrics/NoopMetricsAggregator;

    move-result-object p0

    return-object p0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
