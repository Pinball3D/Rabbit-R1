.class public final Lio/sentry/EnvelopeSender;
.super Lio/sentry/DirectoryProcessor;
.source "EnvelopeSender.java"

# interfaces
.implements Lio/sentry/IEnvelopeSender;


# instance fields
.field private final hub:Lio/sentry/IHub;

.field private final logger:Lio/sentry/ILogger;

.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method public constructor <init>(Lio/sentry/IHub;Lio/sentry/ISerializer;Lio/sentry/ILogger;JI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    .line 30
    invoke-direct/range {v0 .. v5}, Lio/sentry/DirectoryProcessor;-><init>(Lio/sentry/IHub;Lio/sentry/ILogger;JI)V

    const-string p4, "Hub is required."

    .line 31
    invoke-static {p1, p4}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/EnvelopeSender;->hub:Lio/sentry/IHub;

    const-string p1, "Serializer is required."

    .line 32
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISerializer;

    iput-object p1, p0, Lio/sentry/EnvelopeSender;->serializer:Lio/sentry/ISerializer;

    const-string p1, "Logger is required."

    .line 33
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method private safeDelete(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    const-string v0, "Failed to delete \'%s\' %s"

    .line 124
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 125
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 125
    invoke-interface {v1, v2, v0, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 132
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 132
    invoke-interface {p0, v2, v1, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected isRelevantFileName(Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".envelope"

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method synthetic lambda$processFile$0$io-sentry-EnvelopeSender(Lio/sentry/hints/Flushable;)V
    .locals 2

    .line 71
    invoke-interface {p1}, Lio/sentry/hints/Flushable;->waitFlush()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 72
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Timed out waiting for envelope submission."

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$processFile$1$io-sentry-EnvelopeSender(Ljava/lang/Throwable;Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 87
    invoke-interface {p3, v0}, Lio/sentry/hints/Retryable;->setRetry(Z)V

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 88
    sget-object p3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "File \'%s\' won\'t retry."

    invoke-interface {p0, p3, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$processFile$2$io-sentry-EnvelopeSender(Ljava/io/File;Lio/sentry/hints/Retryable;)V
    .locals 1

    .line 97
    invoke-interface {p2}, Lio/sentry/hints/Retryable;->isRetry()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "after trying to capture it"

    .line 98
    invoke-direct {p0, p1, p2}, Lio/sentry/EnvelopeSender;->safeDelete(Ljava/io/File;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 99
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Deleted file %s."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 101
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 104
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "File not deleted since retry was marked. %s."

    .line 101
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic processDirectory(Ljava/io/File;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lio/sentry/DirectoryProcessor;->processDirectory(Ljava/io/File;)V

    return-void
.end method

.method public processEnvelopeFile(Ljava/lang/String;Lio/sentry/Hint;)V
    .locals 1

    const-string v0, "Path is required."

    .line 117
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lio/sentry/EnvelopeSender;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    return-void
.end method

.method protected processFile(Ljava/io/File;Lio/sentry/Hint;)V
    .locals 8

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 39
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\'%s\' is not a file."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/EnvelopeSender;->isRelevantFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 44
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "File \'%s\' doesn\'t match extension expected."

    .line 44
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 50
    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "File \'%s\' cannot be deleted so it will not be processed."

    .line 50
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 57
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->serializer:Lio/sentry/ISerializer;

    .line 58
    invoke-interface {v3, v2}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 60
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to deserialize cached envelope %s"

    new-array v6, v1, [Ljava/lang/Object;

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 60
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lio/sentry/EnvelopeSender;->hub:Lio/sentry/IHub;

    .line 63
    invoke-interface {v4, v3, p2}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 66
    :goto_0
    const-class v3, Lio/sentry/hints/Flushable;

    iget-object v4, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v5, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda0;-><init>(Lio/sentry/EnvelopeSender;)V

    invoke-static {p2, v3, v4, v5}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 57
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    :try_start_5
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 80
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to capture cached envelope %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    .line 80
    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda2;-><init>(Lio/sentry/EnvelopeSender;Ljava/lang/Throwable;Ljava/io/File;)V

    invoke-static {p2, v0, v1, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 92
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_6
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 78
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "I/O on file \'%s\' failed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 92
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_7
    iget-object v3, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    .line 76
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "File \'%s\' cannot be found."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-interface {v3, v4, v2, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 92
    const-class v0, Lio/sentry/hints/Retryable;

    iget-object v1, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v2, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    :goto_2
    invoke-static {p2, v0, v1, v2}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void

    :catchall_3
    move-exception v0

    const-class v1, Lio/sentry/hints/Retryable;

    iget-object v2, p0, Lio/sentry/EnvelopeSender;->logger:Lio/sentry/ILogger;

    new-instance v3, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lio/sentry/EnvelopeSender$$ExternalSyntheticLambda1;-><init>(Lio/sentry/EnvelopeSender;Ljava/io/File;)V

    invoke-static {p2, v1, v2, v3}, Lio/sentry/util/HintUtils;->runIfHasTypeLogIfNot(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/ILogger;Lio/sentry/util/HintUtils$SentryConsumer;)V

    .line 107
    throw v0
.end method
