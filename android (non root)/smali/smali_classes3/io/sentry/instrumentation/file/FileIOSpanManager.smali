.class final Lio/sentry/instrumentation/file/FileIOSpanManager;
.super Ljava/lang/Object;
.source "FileIOSpanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;
    }
.end annotation


# instance fields
.field private byteCount:J

.field private final currentSpan:Lio/sentry/ISpan;

.field private final file:Ljava/io/File;

.field private final options:Lio/sentry/SentryOptions;

.field private spanStatus:Lio/sentry/SpanStatus;

.field private final stackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method constructor <init>(Lio/sentry/ISpan;Ljava/io/File;Lio/sentry/SentryOptions;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    iput-object p1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iput-object p2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    iput-object p3, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    .line 43
    new-instance p1, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {p1, p3}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    iput-object p1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 44
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "FileIO"

    invoke-virtual {p0, p1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    return-void
.end method

.method private finishSpan()V
    .locals 4

    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    .line 94
    invoke-static {v0, v1}, Lio/sentry/util/StringUtils;->byteCountToString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    .line 97
    invoke-interface {v1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->file:Ljava/io/File;

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.path"

    invoke-interface {v0, v2, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    .line 102
    invoke-interface {v1, v0}, Lio/sentry/ISpan;->setDescription(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-wide v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "file.size"

    invoke-interface {v0, v2, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->options:Lio/sentry/SentryOptions;

    .line 105
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result v0

    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    const-string v2, "blocked_main_thread"

    .line 106
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-object v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->stackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 109
    invoke-virtual {v1}, Lio/sentry/SentryStackTraceFactory;->getInAppCallStack()Ljava/util/List;

    move-result-object v1

    const-string v2, "call_stack"

    .line 108
    invoke-interface {v0, v2, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    iget-object p0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    .line 111
    invoke-interface {v0, p0}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;)V

    :cond_4
    return-void
.end method

.method static startSpan(Lio/sentry/IHub;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1

    .line 32
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lio/sentry/IHub;->getSpan()Lio/sentry/ISpan;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 33
    invoke-interface {p0, p1}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method


# virtual methods
.method finish(Ljava/io/Closeable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-direct {p0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finishSpan()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    :try_start_1
    sget-object v0, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    .line 84
    invoke-interface {v0, p1}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :goto_0
    invoke-direct {p0}, Lio/sentry/instrumentation/file/FileIOSpanManager;->finishSpan()V

    .line 89
    throw p1
.end method

.method performIO(Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-interface {p1}, Lio/sentry/instrumentation/file/FileIOSpanManager$FileIOCallable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 57
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 63
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->byteCount:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 70
    sget-object v0, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    iput-object v0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->spanStatus:Lio/sentry/SpanStatus;

    iget-object p0, p0, Lio/sentry/instrumentation/file/FileIOSpanManager;->currentSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_2

    .line 72
    invoke-interface {p0, p1}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    .line 74
    :cond_2
    throw p1
.end method
