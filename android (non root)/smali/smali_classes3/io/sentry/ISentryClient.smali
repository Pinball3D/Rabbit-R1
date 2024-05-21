.class public interface abstract Lio/sentry/ISentryClient;
.super Ljava/lang/Object;
.source "ISentryClient.java"


# virtual methods
.method public abstract captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-interface {p0, p1, v0}, Lio/sentry/ISentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public abstract captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public captureEvent(Lio/sentry/SentryEvent;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-interface {p0, p1, v0, v0}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public abstract captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
.end method

.method public captureException(Ljava/lang/Throwable;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-interface {p0, p1, v0, v0}, Lio/sentry/ISentryClient;->captureException(Ljava/lang/Throwable;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 143
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ISentryClient;->captureException(Ljava/lang/Throwable;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ISentryClient;->captureException(Ljava/lang/Throwable;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    .line 131
    new-instance v0, Lio/sentry/SentryEvent;

    invoke-direct {v0, p1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 132
    invoke-interface {p0, v0, p2, p3}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ISentryClient;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;
    .locals 2

    .line 91
    new-instance v0, Lio/sentry/SentryEvent;

    invoke-direct {v0}, Lio/sentry/SentryEvent;-><init>()V

    .line 92
    new-instance v1, Lio/sentry/protocol/Message;

    invoke-direct {v1}, Lio/sentry/protocol/Message;-><init>()V

    .line 93
    invoke-virtual {v1, p1}, Lio/sentry/protocol/Message;->setFormatted(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lio/sentry/SentryEvent;->setMessage(Lio/sentry/protocol/Message;)V

    .line 95
    invoke-virtual {v0, p2}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    .line 97
    invoke-interface {p0, v0, p3}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureSession(Lio/sentry/Session;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-interface {p0, p1, v0}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    return-void
.end method

.method public abstract captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 273
    invoke-interface {p0, p1, v0, v0, v0}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-interface {p0, p1, v0, p2, p3}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-interface {p0, p1, p2, v0, v0}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 231
    invoke-interface/range {v0 .. v5}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public abstract captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
.end method

.method public abstract captureUserFeedback(Lio/sentry/UserFeedback;)V
.end method

.method public abstract close()V
.end method

.method public abstract close(Z)V
.end method

.method public abstract flush(J)V
.end method

.method public abstract getMetricsAggregator()Lio/sentry/IMetricsAggregator;
.end method

.method public abstract getRateLimiter()Lio/sentry/transport/RateLimiter;
.end method

.method public abstract isEnabled()Z
.end method

.method public isHealthy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
