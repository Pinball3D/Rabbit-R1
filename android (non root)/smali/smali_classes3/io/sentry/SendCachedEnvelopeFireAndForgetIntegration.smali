.class public final Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeFireAndForgetIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;,
        Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;,
        Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;
    }
.end annotation


# instance fields
.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private final factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

.field private hub:Lio/sentry/IHub;

.field private final isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private options:Lio/sentry/SentryOptions;

.field private sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;


# direct methods
.method public constructor <init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "SendFireAndForgetFactory is required"

    .line 65
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    iput-object p1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    return-void
.end method

.method private declared-synchronized sendCachedEnvelopes(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 2

    monitor-enter p0

    .line 108
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;Lio/sentry/SentryOptions;Lio/sentry/IHub;)V

    .line 109
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 174
    :try_start_1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to call the executor. Cached events will not be sent"

    .line 175
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?"

    .line 168
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0}, Lio/sentry/IConnectionStatusProvider;->removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$sendCachedEnvelopes$0$io-sentry-SendCachedEnvelopeFireAndForgetIntegration(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "SendCachedEnvelopeFireAndForgetIntegration, not trying to send after closing."

    new-array v1, v1, [Ljava/lang/Object;

    .line 115
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 121
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    .line 123
    invoke-interface {v0, p0}, Lio/sentry/IConnectionStatusProvider;->addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    .line 125
    invoke-interface {v0, p2, p1}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->create(Lio/sentry/IHub;Lio/sentry/SentryOptions;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    :cond_1
    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    sget-object v2, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    if-ne v0, v2, :cond_2

    .line 133
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "SendCachedEnvelopeFireAndForgetIntegration, no connection."

    new-array v1, v1, [Ljava/lang/Object;

    .line 134
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 141
    :cond_2
    invoke-interface {p2}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 142
    sget-object v0, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {p2, v0}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 144
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "SendCachedEnvelopeFireAndForgetIntegration, rate limiting active."

    new-array v1, v1, [Ljava/lang/Object;

    .line 145
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    iget-object p0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sender:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    if-nez p0, :cond_4

    .line 153
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "SendFireAndForget factory is null."

    new-array v1, v1, [Ljava/lang/Object;

    .line 154
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_4
    invoke-interface {p0}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;->send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 161
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed trying to send cached events."

    .line 162
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    .locals 1

    iget-object p1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->hub:Lio/sentry/IHub;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, p1, v0}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sendCachedEnvelopes(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    const-string v0, "Hub is required"

    .line 70
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IHub;

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->hub:Lio/sentry/IHub;

    const-string v0, "SentryOptions is required"

    .line 71
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->options:Lio/sentry/SentryOptions;

    .line 73
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->factory:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;

    .line 74
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;->hasValidPath(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p2, "No cache dir path is defined in options."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 80
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "SendCachedEventFireAndForgetIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    .line 84
    invoke-direct {p0, p1, p2}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;->sendCachedEnvelopes(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    return-void
.end method
