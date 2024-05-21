.class public final Lio/sentry/HubAdapter;
.super Ljava/lang/Object;
.source "HubAdapter.java"

# interfaces
.implements Lio/sentry/IHub;


# static fields
.field private static final INSTANCE:Lio/sentry/HubAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/sentry/HubAdapter;

    invoke-direct {v0}, Lio/sentry/HubAdapter;-><init>()V

    sput-object v0, Lio/sentry/HubAdapter;->INSTANCE:Lio/sentry/HubAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/HubAdapter;
    .locals 1

    sget-object v0, Lio/sentry/HubAdapter;->INSTANCE:Lio/sentry/HubAdapter;

    return-object v0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 99
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/sentry/HubAdapter;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0

    .line 94
    invoke-static {p1, p2}, Lio/sentry/Sentry;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0

    .line 174
    invoke-static {p1}, Lio/sentry/Sentry;->bindClient(Lio/sentry/ISentryClient;)V

    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 268
    invoke-static {p1}, Lio/sentry/Sentry;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 53
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 30
    invoke-static {p1, p2}, Lio/sentry/Sentry;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 36
    invoke-static {p1, p2, p3}, Lio/sentry/Sentry;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 58
    invoke-static {p1, p2}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 64
    invoke-static {p1, p2, p3}, Lio/sentry/Sentry;->captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 41
    invoke-static {p1, p2}, Lio/sentry/Sentry;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 47
    invoke-static {p1, p2, p3}, Lio/sentry/Sentry;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 198
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    .line 199
    invoke-interface {p0, p1, p2, p3, p4}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lio/sentry/Sentry;->captureUserFeedback(Lio/sentry/UserFeedback;)V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    .line 124
    invoke-static {}, Lio/sentry/Sentry;->clearBreadcrumbs()V

    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 0

    .line 189
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->clone()Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lio/sentry/HubAdapter;->clone()Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    .line 89
    invoke-static {}, Lio/sentry/Sentry;->close()V

    return-void
.end method

.method public close(Z)V
    .locals 0

    .line 84
    invoke-static {}, Lio/sentry/Sentry;->close()V

    return-void
.end method

.method public configureScope(Lio/sentry/ScopeCallback;)V
    .locals 0

    .line 169
    invoke-static {p1}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

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

    .line 252
    invoke-static {p1, p2}, Lio/sentry/Sentry;->continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;

    move-result-object p0

    return-object p0
.end method

.method public endSession()V
    .locals 0

    .line 79
    invoke-static {}, Lio/sentry/Sentry;->endSession()V

    return-void
.end method

.method public flush(J)V
    .locals 0

    .line 184
    invoke-static {p1, p2}, Lio/sentry/Sentry;->flush(J)V

    return-void
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 0

    .line 262
    invoke-static {}, Lio/sentry/Sentry;->getBaggage()Lio/sentry/BaggageHeader;

    move-result-object p0

    return-object p0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 149
    invoke-static {}, Lio/sentry/Sentry;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 0

    .line 236
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 274
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 0

    .line 225
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->getSpan()Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 0

    .line 257
    invoke-static {}, Lio/sentry/Sentry;->getTraceparent()Lio/sentry/SentryTraceHeader;

    move-result-object p0

    return-object p0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 0

    .line 231
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 0

    .line 241
    invoke-static {}, Lio/sentry/Sentry;->isCrashedLastRun()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 25
    invoke-static {}, Lio/sentry/Sentry;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isHealthy()Z
    .locals 0

    .line 179
    invoke-static {}, Lio/sentry/Sentry;->isHealthy()Z

    move-result p0

    return p0
.end method

.method public metrics()Lio/sentry/metrics/MetricsApi;
    .locals 0

    .line 279
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IHub;->metrics()Lio/sentry/metrics/MetricsApi;

    move-result-object p0

    return-object p0
.end method

.method public popScope()V
    .locals 0

    .line 159
    invoke-static {}, Lio/sentry/Sentry;->popScope()V

    return-void
.end method

.method public pushScope()V
    .locals 0

    .line 154
    invoke-static {}, Lio/sentry/Sentry;->pushScope()V

    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0

    .line 144
    invoke-static {p1}, Lio/sentry/Sentry;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0

    .line 134
    invoke-static {p1}, Lio/sentry/Sentry;->removeTag(Ljava/lang/String;)V

    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 0

    .line 246
    invoke-static {}, Lio/sentry/Sentry;->reportFullyDisplayed()V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 139
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 119
    invoke-static {p1}, Lio/sentry/Sentry;->setFingerprint(Ljava/util/List;)V

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lio/sentry/Sentry;->setLevel(Lio/sentry/SentryLevel;)V

    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 0

    .line 220
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lio/sentry/IHub;->setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-static {p1}, Lio/sentry/Sentry;->setTransaction(Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0

    .line 114
    invoke-static {p1}, Lio/sentry/Sentry;->setUser(Lio/sentry/protocol/User;)V

    return-void
.end method

.method public startSession()V
    .locals 0

    .line 74
    invoke-static {}, Lio/sentry/Sentry;->startSession()V

    return-void
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 0

    .line 206
    invoke-static {p1, p2}, Lio/sentry/Sentry;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public traceHeaders()Lio/sentry/SentryTraceHeader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    invoke-static {}, Lio/sentry/Sentry;->traceHeaders()Lio/sentry/SentryTraceHeader;

    move-result-object p0

    return-object p0
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 0

    .line 164
    invoke-static {p1}, Lio/sentry/Sentry;->withScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method
