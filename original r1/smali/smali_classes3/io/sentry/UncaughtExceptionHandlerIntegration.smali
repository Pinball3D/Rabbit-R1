.class public final Lio/sentry/UncaughtExceptionHandlerIntegration;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandlerIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;
    }
.end annotation


# instance fields
.field private defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private hub:Lio/sentry/IHub;

.field private options:Lio/sentry/SentryOptions;

.field private registered:Z

.field private final threadAdapter:Lio/sentry/UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-static {}, Lio/sentry/UncaughtExceptionHandler$Adapter;->getInstance()Lio/sentry/UncaughtExceptionHandler;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>(Lio/sentry/UncaughtExceptionHandler;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/UncaughtExceptionHandler;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    const-string v0, "threadAdapter is required."

    .line 42
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/UncaughtExceptionHandler;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    return-void
.end method

.method static getUnhandledThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 147
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    const/4 v1, 0x0

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setHandled(Ljava/lang/Boolean;)V

    const-string v1, "UncaughtExceptionHandler"

    .line 149
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 150
    new-instance v1, Lio/sentry/exception/ExceptionMechanismException;

    invoke-direct {v1, v0, p1, p0}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    .line 155
    invoke-interface {v0}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne p0, v0, :cond_0

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 156
    invoke-interface {v0, v1}, Lio/sentry/UncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "UncaughtExceptionHandlerIntegration removed."

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    iget-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p2, "Attempt to register a UncaughtExceptionHandlerIntegration twice."

    new-array v0, v1, [Ljava/lang/Object;

    .line 50
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->registered:Z

    const-string v0, "Hub is required"

    .line 57
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    const-string p1, "SentryOptions is required"

    .line 58
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 61
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 65
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "UncaughtExceptionHandlerIntegration enabled: %s"

    .line 62
    invoke-interface {p1, p2, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 67
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    .line 69
    invoke-interface {p1}, Lio/sentry/UncaughtExceptionHandler;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 72
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "default UncaughtExceptionHandler class=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 73
    invoke-interface {p2, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    :cond_1
    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->threadAdapter:Lio/sentry/UncaughtExceptionHandler;

    .line 81
    invoke-interface {p1, p0}, Lio/sentry/UncaughtExceptionHandler;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object p1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 84
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "UncaughtExceptionHandlerIntegration installed."

    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    :cond_2
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Uncaught exception received."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :try_start_0
    new-instance v0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 97
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v1

    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v4}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;-><init>(JLio/sentry/ILogger;)V

    .line 98
    invoke-static {p1, p2}, Lio/sentry/UncaughtExceptionHandlerIntegration;->getUnhandledThrowable(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 99
    new-instance v2, Lio/sentry/SentryEvent;

    invoke-direct {v2, v1}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 100
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    invoke-virtual {v2, v1}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    .line 102
    invoke-interface {v1}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->setFlushable(Lio/sentry/protocol/SentryId;)V

    .line 107
    :cond_0
    invoke-static {v0}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v1

    iget-object v4, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->hub:Lio/sentry/IHub;

    .line 109
    invoke-interface {v4, v2, v1}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    move-result-object v4

    .line 110
    sget-object v5, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v4, v5}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 111
    invoke-static {v1}, Lio/sentry/util/HintUtils;->getEventDropReason(Lio/sentry/Hint;)Lio/sentry/hints/EventDropReason;

    move-result-object v1

    if-eqz v4, :cond_1

    .line 114
    sget-object v4, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    .line 115
    invoke-virtual {v4, v1}, Lio/sentry/hints/EventDropReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    :cond_1
    invoke-virtual {v0}, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;->waitFlush()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 119
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Timed out waiting to flush event to disk before crashing. Event: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 123
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    aput-object v2, v5, v3

    .line 120
    invoke-interface {v0, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 128
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error sending uncaught exception to Sentry."

    .line 129
    invoke-interface {v1, v2, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 133
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Invoking inner uncaught exception handler."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->defaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 134
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lio/sentry/UncaughtExceptionHandlerIntegration;->options:Lio/sentry/SentryOptions;

    .line 136
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isPrintUncaughtStackTrace()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 137
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
