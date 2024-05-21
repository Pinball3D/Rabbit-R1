.class final Lio/sentry/PreviousSessionFinalizer;
.super Ljava/lang/Object;
.source "PreviousSessionFinalizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final hub:Lio/sentry/IHub;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 32
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/PreviousSessionFinalizer;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/IHub;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    iput-object p2, p0, Lio/sentry/PreviousSessionFinalizer;->hub:Lio/sentry/IHub;

    return-void
.end method

.method private getTimestampFromCrashMarkerFile(Ljava/io/File;)Ljava/util/Date;
    .locals 5

    .line 140
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lio/sentry/PreviousSessionFinalizer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 143
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Crash marker file has %s timestamp."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-static {p1}, Lio/sentry/DateUtils;->getDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 140
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 148
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error converting the crash timestamp."

    invoke-interface {p0, v0, p1, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 146
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error reading the crash marker file."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 45
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 47
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "Cache dir is not set, not finalizing the previous session."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 51
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 53
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Session tracking is disabled, bailing from previous session finalizer."

    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 58
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    move-result-object v2

    .line 59
    instance-of v3, v2, Lio/sentry/cache/EnvelopeCache;

    if-eqz v3, :cond_2

    .line 60
    check-cast v2, Lio/sentry/cache/EnvelopeCache;

    invoke-virtual {v2}, Lio/sentry/cache/EnvelopeCache;->waitPreviousSessionFlush()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 62
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Timed out waiting to flush previous session to its own file in session finalizer."

    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 70
    :cond_2
    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 71
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 74
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Current session is not ended, we\'d need to end it."

    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Lio/sentry/PreviousSessionFinalizer;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 80
    :try_start_1
    const-class v4, Lio/sentry/Session;

    invoke-interface {v2, v3, v4}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/Session;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    iget-object v2, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 83
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "Stream from path %s resulted in a null envelope."

    new-array v5, v5, [Ljava/lang/Object;

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    .line 84
    invoke-interface {v2, v4, v6, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_3
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 91
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".sentry-native/last_crash"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    iget-object v7, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 94
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v9, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v10, "Crash marker file exists, last Session is gonna be Crashed."

    new-array v11, v1, [Ljava/lang/Object;

    .line 95
    invoke-interface {v7, v9, v10, v11}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, v6}, Lio/sentry/PreviousSessionFinalizer;->getTimestampFromCrashMarkerFile(Ljava/io/File;)Ljava/util/Date;

    move-result-object v7

    .line 99
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 101
    invoke-virtual {v9}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v9

    sget-object v10, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v11, "Failed to delete the crash marker file. %s."

    new-array v12, v5, [Ljava/lang/Object;

    .line 105
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v1

    .line 102
    invoke-interface {v9, v10, v11, v12}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    :cond_4
    sget-object v6, Lio/sentry/Session$State;->Crashed:Lio/sentry/Session$State;

    invoke-virtual {v4, v6, v8, v5}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;Z)Z

    move-object v8, v7

    .line 111
    :cond_5
    invoke-virtual {v4}, Lio/sentry/Session;->getAbnormalMechanism()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 112
    invoke-virtual {v4, v8}, Lio/sentry/Session;->end(Ljava/util/Date;)V

    :cond_6
    iget-object v5, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 118
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lio/sentry/SentryEnvelope;->from(Lio/sentry/ISerializer;Lio/sentry/Session;Lio/sentry/protocol/SdkVersion;)Lio/sentry/SentryEnvelope;

    move-result-object v2

    iget-object v4, p0, Lio/sentry/PreviousSessionFinalizer;->hub:Lio/sentry/IHub;

    .line 119
    invoke-interface {v4, v2}, Lio/sentry/IHub;->captureEnvelope(Lio/sentry/SentryEnvelope;)Lio/sentry/protocol/SentryId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 76
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    iget-object v3, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 122
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error processing previous session."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, Lio/sentry/PreviousSessionFinalizer;->options:Lio/sentry/SentryOptions;

    .line 128
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Failed to delete the previous session file."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method
