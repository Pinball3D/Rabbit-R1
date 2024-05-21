.class abstract Lio/sentry/DirectoryProcessor;
.super Ljava/lang/Object;
.source "DirectoryProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
    }
.end annotation


# static fields
.field private static final ENVELOPE_PROCESSING_DELAY:J = 0x64L


# instance fields
.field private final flushTimeoutMillis:J

.field private final hub:Lio/sentry/IHub;

.field private final logger:Lio/sentry/ILogger;

.field private final processedEnvelopes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/sentry/IHub;Lio/sentry/ILogger;JI)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/DirectoryProcessor;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    iput-wide p3, p0, Lio/sentry/DirectoryProcessor;->flushTimeoutMillis:J

    .line 35
    new-instance p1, Lio/sentry/CircularFifoQueue;

    invoke-direct {p1, p5}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    .line 36
    invoke-static {p1}, Lio/sentry/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/DirectoryProcessor;->processedEnvelopes:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method protected abstract isRelevantFileName(Ljava/lang/String;)Z
.end method

.method synthetic lambda$processDirectory$0$io-sentry-DirectoryProcessor(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-virtual {p0, p2}, Lio/sentry/DirectoryProcessor;->isRelevantFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public processDirectory(Ljava/io/File;)V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 41
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Processing dir. %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 44
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Directory \'%s\' doesn\'t exist. No cached events to send."

    new-array v3, v3, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 44
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 51
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Cache dir %s is not a directory."

    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 51
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 58
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Cache dir %s is null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 62
    :cond_2
    new-instance v1, Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lio/sentry/DirectoryProcessor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/DirectoryProcessor;)V

    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 64
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v5, "Processing %d items from cache dir %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 67
    array-length v1, v1

    goto :goto_0

    :cond_3
    move v1, v6

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v6

    .line 68
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v3

    .line 64
    invoke-interface {v2, v4, v5, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    array-length v1, v0

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v4, v0, v2

    .line 72
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 73
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "File %s is not a File."

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v6

    invoke-interface {v5, v7, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 77
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->processedEnvelopes:Ljava/util/Queue;

    .line 80
    invoke-interface {v5, v11}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v4, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 81
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v7, "File \'%s\' has already been processed so it will not be processed again."

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v7, v8}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->hub:Lio/sentry/IHub;

    .line 89
    invoke-interface {v5}, Lio/sentry/IHub;->getRateLimiter()Lio/sentry/transport/RateLimiter;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 90
    sget-object v7, Lio/sentry/DataCategory;->All:Lio/sentry/DataCategory;

    invoke-virtual {v5, v7}, Lio/sentry/transport/RateLimiter;->isActiveForCategory(Lio/sentry/DataCategory;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 91
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "DirectoryProcessor, rate limiting active."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    iget-object v5, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 95
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v8, "Processing file: %s"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v7, v8, v9}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v5, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;

    iget-wide v8, p0, Lio/sentry/DirectoryProcessor;->flushTimeoutMillis:J

    iget-object v10, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    iget-object v12, p0, Lio/sentry/DirectoryProcessor;->processedEnvelopes:Ljava/util/Queue;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;-><init>(JLio/sentry/ILogger;Ljava/lang/String;Ljava/util/Queue;)V

    .line 100
    invoke-static {v5}, Lio/sentry/util/HintUtils;->createWithTypeCheckHint(Ljava/lang/Object;)Lio/sentry/Hint;

    move-result-object v5

    .line 101
    invoke-virtual {p0, v4, v5}, Lio/sentry/DirectoryProcessor;->processFile(Ljava/io/File;Lio/sentry/Hint;)V

    const-wide/16 v4, 0x64

    .line 106
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/DirectoryProcessor;->logger:Lio/sentry/ILogger;

    .line 109
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed processing \'%s\'"

    invoke-interface {p0, v1, v0, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method protected abstract processFile(Ljava/io/File;Lio/sentry/Hint;)V
.end method
