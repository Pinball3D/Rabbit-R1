.class final Lio/sentry/HostnameCache;
.super Ljava/lang/Object;
.source "HostnameCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/HostnameCache$HostnameCacheThreadFactory;
    }
.end annotation


# static fields
.field private static final GET_HOSTNAME_TIMEOUT:J

.field private static final HOSTNAME_CACHE_DURATION:J

.field private static INSTANCE:Lio/sentry/HostnameCache;


# instance fields
.field private final cacheDuration:J

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile expirationTimestamp:J

.field private final getLocalhost:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private volatile hostname:Ljava/lang/String;

.field private final updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/HostnameCache;->HOSTNAME_CACHE_DURATION:J

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-wide v0, Lio/sentry/HostnameCache;->HOSTNAME_CACHE_DURATION:J

    .line 58
    invoke-direct {p0, v0, v1}, Lio/sentry/HostnameCache;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 1

    .line 64
    new-instance v0, Lio/sentry/HostnameCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/HostnameCache$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/HostnameCache;-><init>(JLjava/util/concurrent/Callable;)V

    return-void
.end method

.method constructor <init>(JLjava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/Callable<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance v0, Lio/sentry/HostnameCache$HostnameCacheThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/HostnameCache$HostnameCacheThreadFactory;-><init>(Lio/sentry/HostnameCache$1;)V

    .line 48
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-wide p1, p0, Lio/sentry/HostnameCache;->cacheDuration:J

    const-string p1, "getLocalhost is required"

    .line 76
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lio/sentry/HostnameCache;->getLocalhost:Ljava/util/concurrent/Callable;

    .line 77
    invoke-direct {p0}, Lio/sentry/HostnameCache;->updateCache()V

    return-void
.end method

.method static getInstance()Lio/sentry/HostnameCache;
    .locals 1

    sget-object v0, Lio/sentry/HostnameCache;->INSTANCE:Lio/sentry/HostnameCache;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lio/sentry/HostnameCache;

    invoke-direct {v0}, Lio/sentry/HostnameCache;-><init>()V

    sput-object v0, Lio/sentry/HostnameCache;->INSTANCE:Lio/sentry/HostnameCache;

    :cond_0
    sget-object v0, Lio/sentry/HostnameCache;->INSTANCE:Lio/sentry/HostnameCache;

    return-object v0
.end method

.method private handleCacheUpdateFailure()V
    .locals 5

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/sentry/HostnameCache;->expirationTimestamp:J

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private updateCache()V
    .locals 4

    .line 107
    new-instance v0, Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/HostnameCache$$ExternalSyntheticLambda1;-><init>(Lio/sentry/HostnameCache;)V

    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 120
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-wide v1, Lio/sentry/HostnameCache;->GET_HOSTNAME_TIMEOUT:J

    .line 121
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    goto :goto_0

    .line 123
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 124
    invoke-direct {p0}, Lio/sentry/HostnameCache;->handleCacheUpdateFailure()V

    :goto_0
    return-void
.end method


# virtual methods
.method close()V
    .locals 0

    iget-object p0, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 81
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method getHostname()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lio/sentry/HostnameCache;->expirationTimestamp:J

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lio/sentry/HostnameCache;->updateCache()V

    :cond_0
    iget-object p0, p0, Lio/sentry/HostnameCache;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method isClosed()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/HostnameCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 85
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$updateCache$1$io-sentry-HostnameCache()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/HostnameCache;->getLocalhost:Ljava/util/concurrent/Callable;

    .line 110
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/HostnameCache;->hostname:Ljava/lang/String;

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lio/sentry/HostnameCache;->cacheDuration:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/HostnameCache;->expirationTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lio/sentry/HostnameCache;->updateRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    throw v1
.end method
