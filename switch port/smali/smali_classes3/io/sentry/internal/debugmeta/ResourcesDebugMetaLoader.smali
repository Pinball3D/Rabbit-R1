.class public final Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;
.super Ljava/lang/Object;
.source "ResourcesDebugMetaLoader.java"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    const-class v0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;-><init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 31
    invoke-static {p2}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public loadDebugMeta()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 38
    sget-object v2, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :try_start_2
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 45
    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 47
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v6, "Debug Meta Data Properties loaded from %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    .line 48
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 43
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_5
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v3

    :try_start_6
    iget-object v4, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 49
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v6, "%s file is malformed."

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v5, v3, v6, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v2, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 53
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    sget-object v4, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to load %s"

    invoke-interface {v2, v3, v1, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 57
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    sget-object v1, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "No %s file was found."

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    return-object v0
.end method
