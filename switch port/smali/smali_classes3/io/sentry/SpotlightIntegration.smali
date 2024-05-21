.class public final Lio/sentry/SpotlightIntegration;
.super Ljava/lang/Object;
.source "SpotlightIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
.implements Ljava/io/Closeable;


# instance fields
.field private executorService:Lio/sentry/ISentryExecutorService;

.field private logger:Lio/sentry/ILogger;

.field private options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 26
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    return-void
.end method

.method private closeAndDisconnect(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 125
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 126
    throw p0

    .line 125
    :catch_0
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method private createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 p1, 0x3e8

    .line 98
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 99
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string p1, "POST"

    .line 100
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 101
    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string p1, "Content-Encoding"

    const-string v0, "gzip"

    .line 103
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v0, "application/x-sentry-envelope"

    .line 104
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    const-string v0, "application/json"

    .line 105
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Connection"

    const-string v0, "close"

    .line 108
    invoke-virtual {p0, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    return-object p0
.end method

.method private sendEnvelope(Lio/sentry/SentryEnvelope;)V
    .locals 7

    const-string v0, "Envelope sent to spotlight: %d"

    :try_start_0
    iget-object v1, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {p0}, Lio/sentry/SpotlightIntegration;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-direct {p0, v1}, Lio/sentry/SpotlightIntegration;->createConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 63
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 64
    :try_start_2
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v6, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    .line 65
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v6

    invoke-interface {v6, p1, v5}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 70
    :cond_0
    :try_start_6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iget-object v4, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 71
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v4, v5, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    invoke-direct {p0, v1}, Lio/sentry/SpotlightIntegration;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 63
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_8
    invoke-virtual {p1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v4, :cond_1

    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v4

    :try_start_a
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_b
    iget-object v4, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 67
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "An exception occurred while submitting the envelope to the Sentry server."

    invoke-interface {v4, v5, v6, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 70
    :try_start_c
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iget-object v4, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 71
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v4, v5, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_5
    move-exception p1

    .line 70
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iget-object v5, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 71
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-interface {v5, v6, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0, v1}, Lio/sentry/SpotlightIntegration;->closeAndDisconnect(Ljava/net/HttpURLConnection;)V

    .line 73
    throw p1

    .line 58
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SentryOptions are required to send envelopes."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 75
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "An exception occurred while creating the connection to spotlight."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    const-wide/16 v1, 0x0

    .line 131
    invoke-interface {v0, v1, v2}, Lio/sentry/ISentryExecutorService;->close(J)V

    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object p0, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V

    :cond_0
    return-void
.end method

.method public execute(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 1

    :try_start_0
    iget-object p2, p0, Lio/sentry/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    .line 49
    new-instance v0, Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/SpotlightIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SpotlightIntegration;Lio/sentry/SentryEnvelope;)V

    invoke-interface {p2, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 51
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "Spotlight envelope submission rejected."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    .line 82
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSpotlightConnectionUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 84
    :cond_0
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "http://10.0.2.2:8969/stream"

    return-object p0

    :cond_1
    const-string p0, "http://localhost:8969/stream"

    return-object p0
.end method

.method synthetic lambda$execute$0$io-sentry-SpotlightIntegration(Lio/sentry/SentryEnvelope;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/sentry/SpotlightIntegration;->sendEnvelope(Lio/sentry/SentryEnvelope;)V

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 1

    iput-object p2, p0, Lio/sentry/SpotlightIntegration;->options:Lio/sentry/SentryOptions;

    .line 31
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 33
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableSpotlight()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    new-instance p1, Lio/sentry/SentryExecutorService;

    invoke-direct {p1}, Lio/sentry/SentryExecutorService;-><init>()V

    iput-object p1, p0, Lio/sentry/SpotlightIntegration;->executorService:Lio/sentry/ISentryExecutorService;

    .line 35
    invoke-virtual {p2, p0}, Lio/sentry/SentryOptions;->setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V

    iget-object p0, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 36
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "SpotlightIntegration enabled."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/SpotlightIntegration;->logger:Lio/sentry/ILogger;

    .line 38
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "SpotlightIntegration is not enabled. BeforeEnvelopeCallback is already set or spotlight is not enabled."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
