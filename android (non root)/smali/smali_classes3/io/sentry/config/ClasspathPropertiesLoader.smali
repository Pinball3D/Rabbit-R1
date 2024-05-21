.class final Lio/sentry/config/ClasspathPropertiesLoader;
.super Ljava/lang/Object;
.source "ClasspathPropertiesLoader.java"

# interfaces
.implements Lio/sentry/config/PropertiesLoader;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final fileName:Ljava/lang/String;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 2

    const-class v0, Lio/sentry/config/ClasspathPropertiesLoader;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "sentry.properties"

    invoke-direct {p0, v1, v0, p1}, Lio/sentry/config/ClasspathPropertiesLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lio/sentry/ILogger;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/config/ClasspathPropertiesLoader;->fileName:Ljava/lang/String;

    .line 23
    invoke-static {p2}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/config/ClasspathPropertiesLoader;->classLoader:Ljava/lang/ClassLoader;

    iput-object p3, p0, Lio/sentry/config/ClasspathPropertiesLoader;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public load()Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/config/ClasspathPropertiesLoader;->classLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lio/sentry/config/ClasspathPropertiesLoader;->fileName:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 35
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 36
    :try_start_2
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 37
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_0

    .line 41
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object v3

    :catchall_0
    move-exception v3

    .line 35
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v1, :cond_1

    .line 33
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2

    :cond_2
    if-eqz v1, :cond_3

    .line 41
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/config/ClasspathPropertiesLoader;->logger:Lio/sentry/ILogger;

    .line 42
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    iget-object p0, p0, Lio/sentry/config/ClasspathPropertiesLoader;->fileName:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v4, "Failed to load Sentry configuration from classpath resource: %s"

    invoke-interface {v2, v3, v1, v4, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
