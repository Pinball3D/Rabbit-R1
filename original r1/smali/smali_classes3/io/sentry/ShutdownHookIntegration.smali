.class public final Lio/sentry/ShutdownHookIntegration;
.super Ljava/lang/Object;
.source "ShutdownHookIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# instance fields
.field private final runtime:Ljava/lang/Runtime;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/ShutdownHookIntegration;-><init>(Ljava/lang/Runtime;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runtime;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Runtime is required"

    .line 22
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runtime;

    iput-object p1, p0, Lio/sentry/ShutdownHookIntegration;->runtime:Ljava/lang/Runtime;

    return-void
.end method

.method static synthetic lambda$register$0(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 35
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lio/sentry/IHub;->flush(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lio/sentry/ShutdownHookIntegration;->runtime:Ljava/lang/Runtime;

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Shutdown in progress"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method getHook()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 3

    const-string v0, "Hub is required"

    .line 31
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required"

    .line 32
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableShutdownHook()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lio/sentry/ShutdownHookIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/sentry/ShutdownHookIntegration;->thread:Ljava/lang/Thread;

    iget-object p1, p0, Lio/sentry/ShutdownHookIntegration;->runtime:Ljava/lang/Runtime;

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 37
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "ShutdownHookIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "enableShutdownHook is disabled."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
