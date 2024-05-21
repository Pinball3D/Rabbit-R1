.class public final Lio/sentry/Hub;
.super Ljava/lang/Object;
.source "Hub.java"

# interfaces
.implements Lio/sentry/IHub;
.implements Lio/sentry/metrics/MetricsApi$IMetricsInterface;


# instance fields
.field private volatile isEnabled:Z

.field private volatile lastEventId:Lio/sentry/protocol/SentryId;

.field private final metricsApi:Lio/sentry/metrics/MetricsApi;

.field private final options:Lio/sentry/SentryOptions;

.field private final stack:Lio/sentry/Stack;

.field private final throwableToSpan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Lio/sentry/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/ISpan;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tracesSampler:Lio/sentry/TracesSampler;

.field private final transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 43
    invoke-static {p1}, Lio/sentry/Hub;->createRootStackItem(Lio/sentry/SentryOptions;)Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack$StackItem;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/Stack$StackItem;)V
    .locals 2

    .line 64
    new-instance v0, Lio/sentry/Stack;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lio/sentry/Stack;-><init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V

    invoke-direct {p0, p1, v0}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V

    return-void
.end method

.method private constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 48
    invoke-static {p1}, Lio/sentry/Hub;->validateOptions(Lio/sentry/SentryOptions;)V

    iput-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 51
    new-instance v0, Lio/sentry/TracesSampler;

    invoke-direct {v0, p1}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v0, p0, Lio/sentry/Hub;->tracesSampler:Lio/sentry/TracesSampler;

    iput-object p2, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 53
    sget-object p2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object p2, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    .line 54
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransactionPerformanceCollector()Lio/sentry/TransactionPerformanceCollector;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Hub;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/sentry/Hub;->isEnabled:Z

    .line 60
    new-instance p1, Lio/sentry/metrics/MetricsApi;

    invoke-direct {p1, p0}, Lio/sentry/metrics/MetricsApi;-><init>(Lio/sentry/metrics/MetricsApi$IMetricsInterface;)V

    iput-object p1, p0, Lio/sentry/Hub;->metricsApi:Lio/sentry/metrics/MetricsApi;

    return-void
.end method

.method private assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 250
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 252
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/util/Pair;

    if-eqz p0, :cond_1

    .line 254
    invoke-virtual {p0}, Lio/sentry/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 255
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lio/sentry/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 263
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;
    .locals 2

    if-eqz p2, :cond_0

    .line 855
    :try_start_0
    invoke-interface {p1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    .line 856
    invoke-interface {p2, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 859
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'ScopeCallback\' callback."

    invoke-interface {p0, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 3

    .line 105
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 106
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 108
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "Instance is disabled and this \'captureEvent\' call is a no-op."

    new-array p3, v2, [Ljava/lang/Object;

    .line 109
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 112
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "captureEvent called with null parameter."

    new-array p3, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lio/sentry/Hub;->assignTraceContext(Lio/sentry/SentryEvent;)V

    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 116
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/Hub;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object p3

    .line 120
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p3, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 124
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while capturing event with id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-interface {p0, p3, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 220
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 221
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 223
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "Instance is disabled and this \'captureException\' call is a no-op."

    new-array v1, v2, [Ljava/lang/Object;

    .line 224
    invoke-interface {p1, p2, p3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 228
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "captureException called with null parameter."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 231
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 232
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, p1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 233
    invoke-direct {p0, v2}, Lio/sentry/Hub;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 235
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v3

    invoke-direct {p0, v3, p3}, Lio/sentry/Hub;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object p3

    .line 237
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, v2, p3, p2}, Lio/sentry/ISentryClient;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 240
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while capturing exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-interface {p3, v1, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method private captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 150
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 151
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 153
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "Instance is disabled and this \'captureMessage\' call is a no-op."

    new-array v1, v2, [Ljava/lang/Object;

    .line 154
    invoke-interface {p1, p2, p3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 158
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p3, "captureMessage called with null parameter."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 161
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v2

    invoke-direct {p0, v2, p3}, Lio/sentry/Hub;->buildLocalScope(Lio/sentry/IScope;Lio/sentry/ScopeCallback;)Lio/sentry/IScope;

    move-result-object p3

    .line 165
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lio/sentry/ISentryClient;->captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 167
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while capturing message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v1, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method private static createRootStackItem(Lio/sentry/SentryOptions;)Lio/sentry/Stack$StackItem;
    .locals 3

    .line 76
    invoke-static {p0}, Lio/sentry/Hub;->validateOptions(Lio/sentry/SentryOptions;)V

    .line 77
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    .line 78
    new-instance v1, Lio/sentry/SentryClient;

    invoke-direct {v1, p0}, Lio/sentry/SentryClient;-><init>(Lio/sentry/SentryOptions;)V

    .line 79
    new-instance v2, Lio/sentry/Stack$StackItem;

    invoke-direct {v2, p0, v1, v0}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/IScope;)V

    return-object v2
.end method

.method private createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 3

    const-string v0, "transactionContext is required"

    .line 726
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 729
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 731
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'startTransaction\' returns a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 732
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 736
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 738
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 742
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object p1

    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 743
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s"

    .line 739
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 745
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 747
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Tracing is disabled and this \'startTransaction\' returns a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 748
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    invoke-static {}, Lio/sentry/NoOpTransaction;->getInstance()Lio/sentry/NoOpTransaction;

    move-result-object p1

    goto :goto_1

    .line 752
    :cond_2
    new-instance v0, Lio/sentry/SamplingContext;

    .line 753
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getCustomSamplingContext()Lio/sentry/CustomSamplingContext;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Lio/sentry/CustomSamplingContext;)V

    iget-object v1, p0, Lio/sentry/Hub;->tracesSampler:Lio/sentry/TracesSampler;

    .line 754
    invoke-virtual {v1, v0}, Lio/sentry/TracesSampler;->sample(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    move-result-object v0

    .line 755
    invoke-virtual {p1, v0}, Lio/sentry/TransactionContext;->setSamplingDecision(Lio/sentry/TracesSamplingDecision;)V

    .line 757
    new-instance v1, Lio/sentry/SentryTracer;

    iget-object v2, p0, Lio/sentry/Hub;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    invoke-direct {v1, p1, p0, p2, v2}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V

    .line 763
    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lio/sentry/TracesSamplingDecision;->getProfileSampled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 764
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object p1

    .line 766
    invoke-interface {p1}, Lio/sentry/ITransactionProfiler;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 767
    invoke-interface {p1}, Lio/sentry/ITransactionProfiler;->start()V

    .line 768
    invoke-interface {p1, v1}, Lio/sentry/ITransactionProfiler;->bindTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    .line 769
    :cond_3
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->isAppStartTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 771
    invoke-interface {p1, v1}, Lio/sentry/ITransactionProfiler;->bindTransaction(Lio/sentry/ITransaction;)V

    :cond_4
    :goto_0
    move-object p1, v1

    .line 775
    :goto_1
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->isBindToScope()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 776
    new-instance p2, Lio/sentry/Hub$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lio/sentry/Hub$$ExternalSyntheticLambda1;-><init>(Lio/sentry/ITransaction;)V

    invoke-virtual {p0, p2}, Lio/sentry/Hub;->configureScope(Lio/sentry/ScopeCallback;)V

    :cond_5
    return-object p1
.end method

.method static synthetic lambda$close$0(Lio/sentry/IScope;)V
    .locals 0

    .line 364
    invoke-interface {p0}, Lio/sentry/IScope;->clear()V

    return-void
.end method

.method static synthetic lambda$continueTrace$3(Lio/sentry/PropagationContext;Lio/sentry/IScope;)V
    .locals 0

    .line 873
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    return-void
.end method

.method static synthetic lambda$createTransaction$2(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    .line 776
    invoke-interface {p1, p0}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    return-void
.end method

.method private static validateOptions(Lio/sentry/SentryOptions;)V
    .locals 1

    const-string v0, "SentryOptions is required."

    .line 68
    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Hub requires a DSN to be instantiated. Considering using the NoOpHub if no DSN is available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    .line 402
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-virtual {p0, p1, v0}, Lio/sentry/Hub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 2

    .line 387
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 389
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    new-array v0, v1, [Ljava/lang/Object;

    .line 390
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 394
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "addBreadcrumb called with null parameter."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 396
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/sentry/IScope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    :goto_0
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 4

    .line 608
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 610
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'bindClient\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 611
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 613
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 615
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "New client bound to scope."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    invoke-virtual {v0, p1}, Lio/sentry/Stack$StackItem;->setClient(Lio/sentry/ISentryClient;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 618
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "NoOp client bound to scope."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/Stack$StackItem;->setClient(Lio/sentry/ISentryClient;)V

    :goto_0
    return-void
.end method

.method public captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 921
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 922
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 924
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'captureCheckIn\' call is a no-op."

    .line 925
    invoke-interface {p1, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 930
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 931
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lio/sentry/ISentryClient;->captureCheckIn(Lio/sentry/CheckIn;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 933
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error while capturing check-in for slug"

    invoke-interface {v1, v2, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iput-object v0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 2

    const-string v0, "SentryEnvelope is required."

    .line 178
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 181
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 183
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    .line 184
    invoke-interface {p0, p1, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 190
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lio/sentry/ISentryClient;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 195
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error while capturing envelope."

    invoke-interface {p0, p2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Hub;->captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Hub;->captureEventInternal(Lio/sentry/SentryEvent;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Hub;->captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureException(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Hub;->captureExceptionInternal(Ljava/lang/Throwable;Lio/sentry/Hint;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;)Lio/sentry/protocol/SentryId;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/Hub;->captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureMessage(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/Hub;->captureMessageInternal(Ljava/lang/String;Lio/sentry/SentryLevel;Lio/sentry/ScopeCallback;)Lio/sentry/protocol/SentryId;

    move-result-object p0

    return-object p0
.end method

.method public captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 8

    const-string v0, "transaction is required"

    .line 660
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 662
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    .line 663
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 665
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    .line 666
    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 670
    :cond_0
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 672
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 676
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Transaction: %s is not finished and this \'captureTransaction\' call is a no-op."

    .line 673
    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 678
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->isSampled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 680
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 684
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Transaction %s was dropped due to sampling decision."

    .line 681
    invoke-interface {p2, p3, p4, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 685
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/backpressure/IBackpressureMonitor;->getDownsampleFactor()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 687
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p1, Lio/sentry/clientreport/DiscardReason;->BACKPRESSURE:Lio/sentry/clientreport/DiscardReason;

    sget-object p2, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 688
    invoke-interface {p0, p1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 691
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p1, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    sget-object p2, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 692
    invoke-interface {p0, p1, p2}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEvent(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 697
    invoke-virtual {v1}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v1

    .line 699
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    .line 701
    invoke-virtual {v1}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v5

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .line 700
    invoke-interface/range {v2 .. v7}, Lio/sentry/ISentryClient;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 704
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "Error while capturing transaction with id: "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-interface {p0, p3, p1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public captureUserFeedback(Lio/sentry/UserFeedback;)V
    .locals 4

    .line 271
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 273
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'captureUserFeedback\' call is a no-op."

    .line 274
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 279
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->captureUserFeedback(Lio/sentry/UserFeedback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 283
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while capturing captureUserFeedback: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p1}, Lio/sentry/UserFeedback;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-interface {p0, v1, p1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 3

    .line 459
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 461
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'clearBreadcrumbs\' call is a no-op."

    .line 462
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 466
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IScope;->clearBreadcrumbs()V

    :goto_0
    return-void
.end method

.method public clone()Lio/sentry/IHub;
    .locals 4

    .line 646
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 647
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Disabled Hub cloned."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    :cond_0
    new-instance v0, Lio/sentry/Hub;

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    new-instance v2, Lio/sentry/Stack;

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    invoke-direct {v2, p0}, Lio/sentry/Stack;-><init>(Lio/sentry/Stack;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/Hub;-><init>(Lio/sentry/SentryOptions;Lio/sentry/Stack;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lio/sentry/Hub;->clone()Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, v0}, Lio/sentry/Hub;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 7

    .line 346
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 348
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'close\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 349
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 352
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Integration;

    .line 353
    instance-of v3, v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 355
    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/io/Closeable;

    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 358
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v6, "Failed to close the integration {}."

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 359
    invoke-interface {v4, v5, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 364
    :cond_2
    new-instance v0, Lio/sentry/Hub$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lio/sentry/Hub$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lio/sentry/Hub;->configureScope(Lio/sentry/ScopeCallback;)V

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 365
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 366
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionPerformanceCollector()Lio/sentry/TransactionPerformanceCollector;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/TransactionPerformanceCollector;->close()V

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 367
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 369
    new-instance v2, Lio/sentry/Hub$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lio/sentry/Hub$$ExternalSyntheticLambda3;-><init>(Lio/sentry/Hub;Lio/sentry/ISentryExecutorService;)V

    invoke-interface {v0, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 371
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lio/sentry/ISentryExecutorService;->close(J)V

    :goto_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 375
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 377
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->close(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 379
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error while closing the Hub."

    invoke-interface {v0, v2, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iput-boolean v1, p0, Lio/sentry/Hub;->isEnabled:Z

    :goto_3
    return-void
.end method

.method public configureScope(Lio/sentry/ScopeCallback;)V
    .locals 2

    .line 591
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 593
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 594
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 599
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 601
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error in the \'configureScope\' callback."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public continueTrace(Ljava/lang/String;Ljava/util/List;)Lio/sentry/TransactionContext;
    .locals 1
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

    .line 870
    invoke-virtual {p0}, Lio/sentry/Hub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/sentry/PropagationContext;->fromHeaders(Lio/sentry/ILogger;Ljava/lang/String;Ljava/util/List;)Lio/sentry/PropagationContext;

    move-result-object p1

    .line 871
    new-instance p2, Lio/sentry/Hub$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lio/sentry/Hub$$ExternalSyntheticLambda0;-><init>(Lio/sentry/PropagationContext;)V

    invoke-virtual {p0, p2}, Lio/sentry/Hub;->configureScope(Lio/sentry/ScopeCallback;)V

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 875
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 876
    invoke-static {p1}, Lio/sentry/TransactionContext;->fromPropagationContext(Lio/sentry/PropagationContext;)Lio/sentry/TransactionContext;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public endSession()V
    .locals 3

    .line 323
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 325
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'endSession\' call is a no-op."

    .line 326
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 328
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->endSession()Lio/sentry/Session;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    new-instance v1, Lio/sentry/hints/SessionEndHint;

    invoke-direct {v1}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-static {v1}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    .line 333
    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flush(J)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 633
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Instance is disabled and this \'flush\' call is a no-op."

    .line 634
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 637
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/ISentryClient;->flush(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 639
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Error in the \'client.flush\'."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getBaggage()Lio/sentry/BaggageHeader;
    .locals 4

    .line 903
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 905
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'getBaggage\' call is a no-op."

    .line 906
    invoke-interface {p0, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 909
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IHub;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 911
    invoke-virtual {p0}, Lio/sentry/util/TracingUtils$TracingHeaders;->getBaggageHeader()Lio/sentry/BaggageHeader;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getDefaultTagsForMetrics()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 959
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableDefaultTagsForMetrics()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 963
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 964
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "release"

    .line 966
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 969
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "environment"

    .line 971
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 974
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IScope;->getTransactionName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "transaction"

    .line 976
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/Hub;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
    .locals 2

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 992
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableSpanLocalMetricAggregation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 995
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->getSpan()Lio/sentry/ISpan;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 997
    invoke-interface {p0}, Lio/sentry/ISpan;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public getMetricsAggregator()Lio/sentry/IMetricsAggregator;
    .locals 0

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 954
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/ISentryClient;->getMetricsAggregator()Lio/sentry/IMetricsAggregator;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 0

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 542
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    return-object p0
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 943
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    .line 944
    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/ISentryClient;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 3

    .line 791
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 793
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'getSpan\' call is a no-op."

    .line 794
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 796
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getSpanContext(Ljava/lang/Throwable;)Lio/sentry/SpanContext;
    .locals 1

    const-string v0, "throwable is required"

    .line 836
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 837
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 838
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/util/Pair;

    if-eqz p0, :cond_0

    .line 840
    invoke-virtual {p0}, Lio/sentry/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 842
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/ISpan;

    if-eqz p0, :cond_0

    .line 844
    invoke-interface {p0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTraceparent()Lio/sentry/SentryTraceHeader;
    .locals 4

    .line 884
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 886
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Instance is disabled and this \'getTraceparent\' call is a no-op."

    .line 887
    invoke-interface {p0, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lio/sentry/util/TracingUtils;->trace(Lio/sentry/IHub;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 894
    invoke-virtual {p0}, Lio/sentry/util/TracingUtils$TracingHeaders;->getSentryTraceHeader()Lio/sentry/SentryTraceHeader;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 3

    .line 805
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 807
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'getTransaction\' call is a no-op."

    .line 808
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 812
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isCrashedLastRun()Ljava/lang/Boolean;
    .locals 2

    .line 547
    invoke-static {}, Lio/sentry/SentryCrashLastRunState;->getInstance()Lio/sentry/SentryCrashLastRunState;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 548
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v1, p0}, Lio/sentry/SentryCrashLastRunState;->isCrashedLastRun(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/Hub;->isEnabled:Z

    return p0
.end method

.method public isHealthy()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 626
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/ISentryClient;->isHealthy()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$close$1$io-sentry-Hub(Lio/sentry/ISentryExecutorService;)V
    .locals 2

    .line 0
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 369
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lio/sentry/ISentryExecutorService;->close(J)V

    return-void
.end method

.method public metrics()Lio/sentry/metrics/MetricsApi;
    .locals 0

    iget-object p0, p0, Lio/sentry/Hub;->metricsApi:Lio/sentry/metrics/MetricsApi;

    return-object p0
.end method

.method public popScope()V
    .locals 3

    .line 560
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 562
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'popScope\' call is a no-op."

    .line 563
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 565
    invoke-virtual {p0}, Lio/sentry/Stack;->pop()V

    :goto_0
    return-void
.end method

.method public pushScope()V
    .locals 4

    .line 529
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 531
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Instance is disabled and this \'pushScope\' call is a no-op."

    .line 532
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 534
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 535
    new-instance v1, Lio/sentry/Stack$StackItem;

    iget-object v2, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v3

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ISentryClient;Lio/sentry/IScope;)V

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 536
    invoke-virtual {p0, v1}, Lio/sentry/Stack;->push(Lio/sentry/Stack$StackItem;)V

    :goto_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 2

    .line 511
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 513
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'removeExtra\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 514
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 516
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "removeExtra called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 518
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/sentry/IScope;->removeExtra(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 2

    .line 485
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 487
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'removeTag\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 488
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 490
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "removeTag called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 492
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/sentry/IScope;->removeTag(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reportFullyDisplayed()V
    .locals 1

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 553
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 554
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/FullyDisplayedReporter;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 498
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 500
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "Instance is disabled and this \'setExtra\' call is a no-op."

    new-array v0, v1, [Ljava/lang/Object;

    .line 501
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 505
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/sentry/IScope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 503
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "setExtra called with null parameter."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 446
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'setFingerprint\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 447
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 451
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "setFingerprint called with null parameter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 453
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/sentry/IScope;->setFingerprint(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 2

    .line 407
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 409
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'setLevel\' call is a no-op."

    .line 410
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 412
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/sentry/IScope;->setLevel(Lio/sentry/SentryLevel;)V

    :goto_0
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 2

    const-string v0, "throwable is required"

    .line 823
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "span is required"

    .line 824
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "transactionName is required"

    .line 825
    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 827
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    iget-object v0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 829
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->throwableToSpan:Ljava/util/Map;

    .line 830
    new-instance v0, Lio/sentry/util/Pair;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p3}, Lio/sentry/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 472
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 474
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "Instance is disabled and this \'setTag\' call is a no-op."

    new-array v0, v1, [Ljava/lang/Object;

    .line 475
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 479
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lio/sentry/IScope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 477
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p2, "setTag called with null parameter."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 420
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Instance is disabled and this \'setTransaction\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 421
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 425
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/sentry/IScope;->setTransaction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 427
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Transaction cannot be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 435
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Instance is disabled and this \'setUser\' call is a no-op."

    .line 436
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 438
    invoke-virtual {p0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    :goto_0
    return-void
.end method

.method public startSession()V
    .locals 4

    .line 294
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 296
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Instance is disabled and this \'startSession\' call is a no-op."

    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 300
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IScope;->startSession()Lio/sentry/Scope$SessionPair;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 306
    invoke-virtual {v2}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 307
    new-instance p0, Lio/sentry/hints/SessionEndHint;

    invoke-direct {p0}, Lio/sentry/hints/SessionEndHint;-><init>()V

    invoke-static {p0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p0

    .line 309
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    invoke-virtual {v2}, Lio/sentry/Scope$SessionPair;->getPrevious()Lio/sentry/Session;

    move-result-object v3

    invoke-interface {v1, v3, p0}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 312
    :cond_1
    new-instance p0, Lio/sentry/hints/SessionStartHint;

    invoke-direct {p0}, Lio/sentry/hints/SessionStartHint;-><init>()V

    invoke-static {p0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object p0

    .line 314
    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    invoke-virtual {v2}, Lio/sentry/Scope$SessionPair;->getCurrent()Lio/sentry/Session;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lio/sentry/ISentryClient;->captureSession(Lio/sentry/Session;Lio/sentry/Hint;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 316
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Session could not be started."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public startSpanForMetric(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    .line 983
    invoke-virtual {p0}, Lio/sentry/Hub;->getSpan()Lio/sentry/ISpan;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 985
    invoke-interface {p0, p1, p2}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 0

    .line 720
    invoke-direct {p0, p1, p2}, Lio/sentry/Hub;->createTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object p0

    return-object p0
.end method

.method public traceHeaders()Lio/sentry/SentryTraceHeader;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 785
    invoke-virtual {p0}, Lio/sentry/Hub;->getTraceparent()Lio/sentry/SentryTraceHeader;

    move-result-object p0

    return-object p0
.end method

.method public withScope(Lio/sentry/ScopeCallback;)V
    .locals 3

    .line 571
    invoke-virtual {p0}, Lio/sentry/Hub;->isEnabled()Z

    move-result v0

    const-string v1, "Error in the \'withScope\' callback."

    if-nez v0, :cond_0

    .line 573
    :try_start_0
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 575
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 579
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Hub;->pushScope()V

    :try_start_1
    iget-object v0, p0, Lio/sentry/Hub;->stack:Lio/sentry/Stack;

    .line 581
    invoke-virtual {v0}, Lio/sentry/Stack;->peek()Lio/sentry/Stack$StackItem;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/Stack$StackItem;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->run(Lio/sentry/IScope;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lio/sentry/Hub;->options:Lio/sentry/SentryOptions;

    .line 583
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-interface {v0, v2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    :goto_0
    invoke-virtual {p0}, Lio/sentry/Hub;->popScope()V

    :goto_1
    return-void
.end method
