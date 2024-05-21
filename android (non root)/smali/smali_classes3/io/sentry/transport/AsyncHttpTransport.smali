.class public final Lio/sentry/transport/AsyncHttpTransport;
.super Ljava/lang/Object;
.source "AsyncHttpTransport.java"

# interfaces
.implements Lio/sentry/transport/ITransport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;,
        Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;
    }
.end annotation


# instance fields
.field private final connection:Lio/sentry/transport/HttpConnection;

.field private volatile currentRunnable:Ljava/lang/Runnable;

.field private final envelopeCache:Lio/sentry/cache/IEnvelopeCache;

.field private final executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

.field private final options:Lio/sentry/SentryOptions;

.field private final rateLimiter:Lio/sentry/transport/RateLimiter;

.field private final transportGate:Lio/sentry/transport/ITransportGate;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/RequestDetails;)V
    .locals 10

    .line 52
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    .line 55
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v3

    .line 51
    invoke-static {v0, v1, v2, v3}, Lio/sentry/transport/AsyncHttpTransport;->initExecutor(ILio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)Lio/sentry/transport/QueuedThreadPoolExecutor;

    move-result-object v5

    new-instance v9, Lio/sentry/transport/HttpConnection;

    invoke-direct {v9, p1, p4, p2}, Lio/sentry/transport/HttpConnection;-><init>(Lio/sentry/SentryOptions;Lio/sentry/RequestDetails;Lio/sentry/transport/RateLimiter;)V

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .line 50
    invoke-direct/range {v4 .. v9}, Lio/sentry/transport/AsyncHttpTransport;-><init>(Lio/sentry/transport/QueuedThreadPoolExecutor;Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/transport/HttpConnection;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/transport/QueuedThreadPoolExecutor;Lio/sentry/SentryOptions;Lio/sentry/transport/RateLimiter;Lio/sentry/transport/ITransportGate;Lio/sentry/transport/HttpConnection;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    const-string v0, "executor is required"

    .line 68
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/QueuedThreadPoolExecutor;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 70
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object p1

    const-string v0, "envelopeCache is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/cache/IEnvelopeCache;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    const-string p1, "options is required"

    .line 71
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    const-string p1, "rateLimiter is required"

    .line 72
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/RateLimiter;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    const-string p1, "transportGate is required"

    .line 73
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/ITransportGate;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->transportGate:Lio/sentry/transport/ITransportGate;

    const-string p1, "httpConnection is required"

    .line 74
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/transport/HttpConnection;

    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->connection:Lio/sentry/transport/HttpConnection;

    return-void
.end method

.method static synthetic access$102(Lio/sentry/transport/AsyncHttpTransport;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iput-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/SentryOptions;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method static synthetic access$300(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/ITransportGate;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->transportGate:Lio/sentry/transport/ITransportGate;

    return-object p0
.end method

.method static synthetic access$400(Lio/sentry/transport/AsyncHttpTransport;)Lio/sentry/transport/HttpConnection;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->connection:Lio/sentry/transport/HttpConnection;

    return-object p0
.end method

.method private static initExecutor(ILio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)Lio/sentry/transport/QueuedThreadPoolExecutor;
    .locals 7

    .line 136
    new-instance v4, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1, p2}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda3;-><init>(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;)V

    .line 150
    new-instance p1, Lio/sentry/transport/QueuedThreadPoolExecutor;

    const/4 v1, 0x1

    new-instance v3, Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lio/sentry/transport/AsyncHttpTransport$AsyncConnectionThreadFactory;-><init>(Lio/sentry/transport/AsyncHttpTransport$1;)V

    move-object v0, p1

    move v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lio/sentry/transport/QueuedThreadPoolExecutor;-><init>(IILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Lio/sentry/ILogger;Lio/sentry/SentryDateProvider;)V

    return-object p1
.end method

.method static synthetic lambda$initExecutor$1(Lio/sentry/cache/IEnvelopeCache;Lio/sentry/ILogger;Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    .line 138
    instance-of p3, p2, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    if-eqz p3, :cond_1

    .line 139
    check-cast p2, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    .line 141
    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;

    move-result-object p3

    const-class v0, Lio/sentry/hints/Cached;

    invoke-static {p3, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 142
    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$600(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/SentryEnvelope;

    move-result-object p3

    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 145
    :cond_0
    invoke-static {p2}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;->access$500(Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;)Lio/sentry/Hint;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lio/sentry/transport/AsyncHttpTransport;->markHintWhenSendingFailed(Lio/sentry/Hint;Z)V

    .line 146
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Envelope rejected"

    invoke-interface {p1, p0, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$markHintWhenSendingFailed$2(Lio/sentry/hints/SubmissionResult;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-interface {p0, v0}, Lio/sentry/hints/SubmissionResult;->setResult(Z)V

    return-void
.end method

.method static synthetic lambda$markHintWhenSendingFailed$3(ZLio/sentry/hints/Retryable;)V
    .locals 0

    .line 209
    invoke-interface {p1, p0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    return-void
.end method

.method private static markHintWhenSendingFailed(Lio/sentry/Hint;Z)V
    .locals 2

    .line 208
    const-class v0, Lio/sentry/hints/SubmissionResult;

    new-instance v1, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 209
    const-class v0, Lio/sentry/hints/Retryable;

    new-instance v1, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {p0, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    invoke-virtual {p0, v0}, Lio/sentry/transport/AsyncHttpTransport;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Failed to shutdown the async connection async sender  within "

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 173
    invoke-virtual {v1}, Lio/sentry/transport/QueuedThreadPoolExecutor;->shutdown()V

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 174
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Shutting down"

    invoke-interface {v1, v2, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 177
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    :goto_0
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 178
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v4}, Lio/sentry/transport/QueuedThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 180
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms. Trying to force it now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 181
    invoke-interface {p1, v4, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 186
    invoke-virtual {p1}, Lio/sentry/transport/QueuedThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 189
    invoke-virtual {p1}, Lio/sentry/transport/QueuedThreadPoolExecutor;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object p1

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->currentRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    invoke-interface {p1, v0, v1}, Ljava/util/concurrent/RejectedExecutionHandler;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 195
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Thread interrupted while closing the connection."

    new-array v1, v3, [Ljava/lang/Object;

    .line 196
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_1
    return-void
.end method

.method public flush(J)V
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 127
    invoke-virtual {p0, p1, p2}, Lio/sentry/transport/QueuedThreadPoolExecutor;->waitTillIdle(J)V

    return-void
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    return-object p0
.end method

.method public isHealthy()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    .line 161
    invoke-virtual {v0}, Lio/sentry/transport/RateLimiter;->isAnyRateLimitActive()Z

    move-result v0

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 162
    invoke-virtual {p0}, Lio/sentry/transport/QueuedThreadPoolExecutor;->didRejectRecently()Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method synthetic lambda$send$0$io-sentry-transport-AsyncHttpTransport(Lio/sentry/hints/Enqueable;)V
    .locals 2

    .line 118
    invoke-interface {p1}, Lio/sentry/hints/Enqueable;->markEnqueued()V

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 119
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Envelope enqueued"

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/transport/AsyncHttpTransport;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    .line 83
    const-class v1, Lio/sentry/hints/Cached;

    invoke-static {p2, v1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 84
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 86
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Captured Envelope is already cached"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    :cond_0
    iget-object v1, p0, Lio/sentry/transport/AsyncHttpTransport;->rateLimiter:Lio/sentry/transport/RateLimiter;

    .line 89
    invoke-virtual {v1, p1, p2}, Lio/sentry/transport/RateLimiter;->filter(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_4

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->envelopeCache:Lio/sentry/cache/IEnvelopeCache;

    .line 93
    invoke-interface {p0, p1}, Lio/sentry/cache/IEnvelopeCache;->discard(Lio/sentry/SentryEnvelope;)V

    goto :goto_0

    .line 97
    :cond_1
    const-class p1, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, p1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 100
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/sentry/clientreport/IClientReportRecorder;->attachReportToEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/SentryEnvelope;

    move-result-object v1

    :cond_2
    iget-object p1, p0, Lio/sentry/transport/AsyncHttpTransport;->executor:Lio/sentry/transport/QueuedThreadPoolExecutor;

    .line 105
    new-instance v2, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;

    invoke-direct {v2, p0, v1, p2, v0}, Lio/sentry/transport/AsyncHttpTransport$EnvelopeSender;-><init>(Lio/sentry/transport/AsyncHttpTransport;Lio/sentry/SentryEnvelope;Lio/sentry/Hint;Lio/sentry/cache/IEnvelopeCache;)V

    .line 106
    invoke-virtual {p1, v2}, Lio/sentry/transport/QueuedThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 109
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lio/sentry/transport/AsyncHttpTransport;->options:Lio/sentry/SentryOptions;

    .line 111
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    move-result-object p0

    sget-object p1, Lio/sentry/clientreport/DiscardReason;->QUEUE_OVERFLOW:Lio/sentry/clientreport/DiscardReason;

    .line 112
    invoke-interface {p0, p1, v1}, Lio/sentry/clientreport/IClientReportRecorder;->recordLostEnvelope(Lio/sentry/clientreport/DiscardReason;Lio/sentry/SentryEnvelope;)V

    goto :goto_0

    .line 114
    :cond_3
    const-class p1, Lio/sentry/hints/Enqueable;

    new-instance v0, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lio/sentry/transport/AsyncHttpTransport$$ExternalSyntheticLambda2;-><init>(Lio/sentry/transport/AsyncHttpTransport;)V

    invoke-static {p2, p1, v0}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    :cond_4
    :goto_0
    return-void
.end method
