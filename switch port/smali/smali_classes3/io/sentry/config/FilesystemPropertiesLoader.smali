.class final Lio/sentry/config/FilesystemPropertiesLoader;
.super Ljava/lang/Object;
.source "FilesystemPropertiesLoader.java"

# interfaces
.implements Lio/sentry/config/PropertiesLoader;


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/sentry/ILogger;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public load()Ljava/util/Properties;
    .locals 5

    const/4 v0, 0x0

    .line 27
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 29
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
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
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/config/FilesystemPropertiesLoader;->logger:Lio/sentry/ILogger;

    .line 36
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    iget-object p0, p0, Lio/sentry/config/FilesystemPropertiesLoader;->filePath:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v4, "Failed to load Sentry configuration from file: %s"

    invoke-interface {v2, v3, v1, v4, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
