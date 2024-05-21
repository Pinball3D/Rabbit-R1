.class public final Lio/sentry/android/core/cache/AndroidEnvelopeCache;
.super Lio/sentry/cache/EnvelopeCache;
.source "AndroidEnvelopeCache.java"


# static fields
.field public static final LAST_ANR_REPORT:Ljava/lang/String; = "last_anr_report"


# instance fields
.field private final currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 37
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 2

    .line 45
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cacheDirPath must not be null"

    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getMaxCacheItems()I

    move-result v1

    .line 43
    invoke-direct {p0, p1, v0, v1}, Lio/sentry/cache/EnvelopeCache;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    iput-object p2, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method

.method public static hasStartupCrashMarker(Lio/sentry/SentryOptions;)Z
    .locals 7

    .line 112
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "Outbox path is null, the startup crash marker file does not exist"

    new-array v3, v1, [Ljava/lang/Object;

    .line 116
    invoke-interface {p0, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 120
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "startup_crash"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Failed to delete the startup crash marker file. %s."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 127
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    .line 136
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error reading/deleting the startup crash marker file on the disk"

    .line 137
    invoke-interface {p0, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static lastReportedAnr(Lio/sentry/SentryOptions;)Ljava/lang/Long;
    .locals 7

    .line 145
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cache dir path should be set for getting ANRs reported"

    .line 144
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    new-instance v1, Ljava/io/File;

    const-string v2, "last_anr_report"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-static {v1}, Lio/sentry/util/FileUtils;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Last ANR marker does not exist. %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 160
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error reading last ANR marker"

    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private writeLastReportedAnrMarker(Ljava/lang/Long;)V
    .locals 3

    .line 166
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    iget-object p0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cache dir path is null, the ANR marker will not be written"

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 172
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "last_anr_report"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 174
    :try_start_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 173
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
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
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 177
    iget-object p0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error writing the ANR marker to the disk"

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private writeStartupCrashMarkerFile()V
    .locals 3

    .line 96
    iget-object v0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    iget-object p0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 99
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Outbox path is null, the startup crash marker file will not be written"

    .line 100
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "startup_crash"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 107
    iget-object p0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error writing the startup crash marker file to the disk"

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 0

    .line 90
    iget-object p0, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method synthetic lambda$store$0$io-sentry-android-core-cache-AndroidEnvelopeCache(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;)V
    .locals 3

    .line 76
    invoke-virtual {p2}, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->timestamp()Ljava/lang/Long;

    move-result-object p2

    .line 78
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Writing last reported ANR marker with timestamp %d"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 79
    invoke-interface {p1, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-direct {p0, p2}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeLastReportedAnrMarker(Ljava/lang/Long;)V

    return-void
.end method

.method public store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 5

    .line 52
    invoke-super {p0, p1, p2}, Lio/sentry/cache/EnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    .line 54
    iget-object p1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->options:Lio/sentry/SentryOptions;

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 55
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object v0

    .line 57
    const-class v1, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, v1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->currentDateProvider:Lio/sentry/transport/ICurrentDateProvider;

    .line 60
    invoke-interface {v1}, Lio/sentry/transport/ICurrentDateProvider;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 61
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getStartupCrashDurationThresholdMillis()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Startup Crash detected %d milliseconds after SDK init. Writing a startup crash marker file to disk."

    .line 64
    invoke-interface {v0, v3, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;->writeStartupCrashMarkerFile()V

    .line 72
    :cond_0
    const-class v0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;

    new-instance v1, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/cache/AndroidEnvelopeCache$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/cache/AndroidEnvelopeCache;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-static {p2, v0, v1}, Lio/sentry/util/HintUtils;->runIfHasType(Lio/sentry/Hint;Ljava/lang/Class;Lio/sentry/util/HintUtils$SentryConsumer;)V

    return-void
.end method
