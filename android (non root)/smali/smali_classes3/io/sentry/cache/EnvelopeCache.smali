.class public Lio/sentry/cache/EnvelopeCache;
.super Lio/sentry/cache/CacheStrategy;
.source "EnvelopeCache.java"

# interfaces
.implements Lio/sentry/cache/IEnvelopeCache;


# static fields
.field public static final CRASH_MARKER_FILE:Ljava/lang/String; = "last_crash"

.field public static final NATIVE_CRASH_MARKER_FILE:Ljava/lang/String; = ".sentry-native/last_crash"

.field public static final PREFIX_CURRENT_SESSION_FILE:Ljava/lang/String; = "session"

.field public static final PREFIX_PREVIOUS_SESSION_FILE:Ljava/lang/String; = "previous_session"

.field public static final STARTUP_CRASH_MARKER_FILE:Ljava/lang/String; = "startup_crash"

.field public static final SUFFIX_ENVELOPE_FILE:Ljava/lang/String; = ".envelope"

.field static final SUFFIX_SESSION_FILE:Ljava/lang/String; = ".json"


# instance fields
.field private final fileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/SentryEnvelope;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final previousSessionLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/cache/CacheStrategy;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 72
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    .line 90
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lio/sentry/cache/EnvelopeCache;->previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private allEnvelopeFiles()[Ljava/io/File;
    .locals 1

    .line 413
    invoke-virtual {p0}, Lio/sentry/cache/EnvelopeCache;->isDirectoryValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->directory:Ljava/io/File;

    new-instance v0, Lio/sentry/cache/EnvelopeCache$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/sentry/cache/EnvelopeCache$$ExternalSyntheticLambda0;-><init>()V

    .line 416
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    return-object p0
.end method

.method public static create(Lio/sentry/SentryOptions;)Lio/sentry/cache/IEnvelopeCache;
    .locals 3

    .line 75
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxCacheItems()I

    move-result v1

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cacheDirPath is null, returning NoOpEnvelopeCache"

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    new-instance v2, Lio/sentry/cache/EnvelopeCache;

    invoke-direct {v2, p0, v0, v1}, Lio/sentry/cache/EnvelopeCache;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    return-object v2
.end method

.method public static getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 375
    new-instance v0, Ljava/io/File;

    const-string v1, "session.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized getEnvelopeFile(Lio/sentry/SentryEnvelope;)Ljava/io/File;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    .line 364
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    .line 365
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".envelope"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->fileNameMap:Ljava/util/Map;

    .line 368
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 371
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 379
    new-instance v0, Ljava/io/File;

    const-string v1, "previous_session.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$allEnvelopeFiles$0(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".envelope"

    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private tryEndPreviousSession(Lio/sentry/Hint;)V
    .locals 8

    .line 197
    invoke-static {p1}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p1

    .line 198
    instance-of v0, p1, Lio/sentry/hints/AbnormalExit;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Previous session is not ended, we\'d need to end it."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 207
    :try_start_1
    iget-object v3, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/ISerializer;

    const-class v4, Lio/sentry/Session;

    invoke-interface {v3, v1, v4}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Session;

    if-eqz v3, :cond_3

    .line 209
    check-cast p1, Lio/sentry/hints/AbnormalExit;

    .line 210
    invoke-interface {p1}, Lio/sentry/hints/AbnormalExit;->timestamp()Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object v4

    .line 216
    invoke-virtual {v3}, Lio/sentry/Session;->getStarted()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 217
    invoke-virtual {v4, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 218
    :cond_0
    iget-object p1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 219
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Abnormal exit happened before previous session start, not ending the session."

    new-array v2, v2, [Ljava/lang/Object;

    .line 220
    invoke-interface {p1, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :cond_1
    move-object v4, v5

    .line 227
    :cond_2
    :try_start_3
    invoke-interface {p1}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object p1

    .line 228
    sget-object v2, Lio/sentry/Session$State;->Abnormal:Lio/sentry/Session$State;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v5, v6, p1}, Lio/sentry/Session;->update(Lio/sentry/Session$State;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 231
    invoke-virtual {v3, v4}, Lio/sentry/Session;->end(Ljava/util/Date;)V

    .line 232
    invoke-direct {p0, v0, v3}, Lio/sentry/cache/EnvelopeCache;->writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 204
    :try_start_5
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 235
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error processing previous session."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 238
    :cond_4
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "No previous session file to end."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateCurrentSession(Ljava/io/File;Lio/sentry/SentryEnvelope;)V
    .locals 5

    .line 256
    invoke-virtual {p2}, Lio/sentry/SentryEnvelope;->getItems()Ljava/lang/Iterable;

    move-result-object p2

    .line 259
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/SentryEnvelopeItem;

    .line 262
    sget-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryItemType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 265
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v3, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 266
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/ISerializer;

    const-class v2, Lio/sentry/Session;

    invoke-interface {v1, v0, v2}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Session;

    if-nez v1, :cond_0

    .line 268
    iget-object p1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 269
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Item of type %s returned null by the parser."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 273
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p2

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 270
    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, p1, v1}, Lio/sentry/cache/EnvelopeCache;->writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 263
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 278
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Item failed to process."

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 281
    :cond_1
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 282
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 286
    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItem;->getHeader()Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryEnvelopeItemHeader;->getType()Lio/sentry/SentryItemType;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Current envelope has a different envelope type %s"

    .line 283
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 289
    :cond_2
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 290
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Current envelope %s is empty"

    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method private writeCrashMarkerFile()V
    .locals 3

    .line 244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "last_crash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 246
    :try_start_1
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/DateUtils;->getTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 247
    sget-object v2, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 245
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 250
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error writing the crash marker file to the disk"

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private writeEnvelopeToDisk(Ljava/io/File;Lio/sentry/SentryEnvelope;)V
    .locals 4

    .line 297
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 299
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Overwriting envelope to offline storage: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to delete: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 307
    :try_start_1
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/ISerializer;

    invoke-interface {v1, p2, v0}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 306
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p2

    .line 309
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 310
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 311
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error writing Envelope %s to offline storage"

    invoke-interface {p0, v0, p2, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)V
    .locals 4

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 318
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 319
    invoke-virtual {p2}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Overwriting session to offline storage: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to delete: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 326
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 327
    :try_start_2
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/ISerializer;

    invoke-interface {v1, p2, p1}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :try_start_3
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 325
    :try_start_5
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    .line 329
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 330
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 331
    invoke-virtual {p2}, Lio/sentry/Session;->getSessionId()Ljava/util/UUID;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Error writing Session to offline storage: %s"

    invoke-interface {p0, v0, p1, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public discard(Lio/sentry/SentryEnvelope;)V
    .locals 4

    const-string v0, "Envelope is required."

    .line 337
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    invoke-direct {p0, p1}, Lio/sentry/cache/EnvelopeCache;->getEnvelopeFile(Lio/sentry/SentryEnvelope;)Ljava/io/File;

    move-result-object p1

    .line 340
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 342
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 343
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Discarding envelope from cache: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 347
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 348
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to delete envelope: %s"

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_0
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Envelope was not cached: %s"

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public flushPreviousSession()V
    .locals 0

    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 437
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/sentry/SentryEnvelope;",
            ">;"
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Lio/sentry/cache/EnvelopeCache;->allEnvelopeFiles()[Ljava/io/File;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 389
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :try_start_1
    iget-object v6, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/ISerializer;

    invoke-interface {v6, v5}, Lio/sentry/ISerializer;->deserializeEnvelope(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v6

    .line 389
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v6
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v5

    .line 400
    iget-object v6, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 401
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 404
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "Error while reading cached envelope from file %s"

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 402
    invoke-interface {v6, v7, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 393
    :catch_1
    iget-object v5, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 394
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 398
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v7, "Envelope file \'%s\' disappeared while converting all cached files to envelopes."

    .line 395
    invoke-interface {v5, v6, v7, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 7

    const-string v0, "Envelope is required."

    .line 95
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lio/sentry/cache/EnvelopeCache;->allEnvelopeFiles()[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/cache/EnvelopeCache;->rotateCacheIfNeeded([Ljava/io/File;)V

    .line 99
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/cache/EnvelopeCache;->getCurrentSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->directory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/cache/EnvelopeCache;->getPreviousSessionFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 102
    const-class v2, Lio/sentry/hints/SessionEnd;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Current envelope doesn\'t exist."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    const-class v2, Lio/sentry/hints/AbnormalExit;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-direct {p0, p2}, Lio/sentry/cache/EnvelopeCache;->tryEndPreviousSession(Lio/sentry/Hint;)V

    .line 112
    :cond_1
    const-class v2, Lio/sentry/hints/SessionStart;

    invoke-static {p2, v2}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Current session is not ended, we\'d need to end it."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v6, Lio/sentry/cache/EnvelopeCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    :try_start_1
    iget-object v4, p0, Lio/sentry/cache/EnvelopeCache;->serializer:Lio/sentry/ISerializer;

    const-class v5, Lio/sentry/Session;

    invoke-interface {v4, v2, v5}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/Session;

    if-eqz v4, :cond_2

    .line 121
    invoke-direct {p0, v1, v4}, Lio/sentry/cache/EnvelopeCache;->writeSessionToDisk(Ljava/io/File;Lio/sentry/Session;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 116
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    .line 124
    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error processing session."

    invoke-interface {v2, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_3
    :goto_1
    invoke-direct {p0, v0, p1}, Lio/sentry/cache/EnvelopeCache;->updateCurrentSession(Ljava/io/File;Lio/sentry/SentryEnvelope;)V

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".sentry-native/last_crash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 137
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "last_crash"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 140
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Crash marker file exists, crashedLastRun will return true."

    new-array v3, v3, [Ljava/lang/Object;

    .line 141
    invoke-interface {v0, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 146
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 150
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Failed to delete the crash marker file. %s."

    .line 147
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x1

    .line 155
    :cond_5
    invoke-static {}, Lio/sentry/SentryCrashLastRunState;->getInstance()Lio/sentry/SentryCrashLastRunState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/sentry/SentryCrashLastRunState;->setCrashedLastRun(Z)V

    .line 157
    invoke-virtual {p0}, Lio/sentry/cache/EnvelopeCache;->flushPreviousSession()V

    .line 163
    :cond_6
    invoke-direct {p0, p1}, Lio/sentry/cache/EnvelopeCache;->getEnvelopeFile(Lio/sentry/SentryEnvelope;)Ljava/io/File;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 166
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Not adding Envelope to offline storage because it already exists: %s"

    .line 167
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 173
    :cond_7
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 174
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Adding Envelope to offline storage: %s"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0, v0, p1}, Lio/sentry/cache/EnvelopeCache;->writeEnvelopeToDisk(Ljava/io/File;Lio/sentry/SentryEnvelope;)V

    .line 181
    const-class p1, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, p1}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 182
    invoke-direct {p0}, Lio/sentry/cache/EnvelopeCache;->writeCrashMarkerFile()V

    :cond_8
    return-void
.end method

.method public waitPreviousSessionFlush()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/EnvelopeCache;->previousSessionLatch:Ljava/util/concurrent/CountDownLatch;

    .line 427
    iget-object v1, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    .line 428
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSessionFlushTimeoutMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 427
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 430
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 431
    iget-object p0, p0, Lio/sentry/cache/EnvelopeCache;->options:Lio/sentry/SentryOptions;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Timed out waiting for previous session to flush."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method
