.class public final Lio/sentry/internal/modules/ResourcesModulesLoader;
.super Lio/sentry/internal/modules/ModulesLoader;
.source "ResourcesModulesLoader.java"


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;)V
    .locals 1

    const-class v0, Lio/sentry/internal/modules/ResourcesModulesLoader;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/internal/modules/ResourcesModulesLoader;-><init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/ILogger;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lio/sentry/internal/modules/ModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 26
    invoke-static {p2}, Lio/sentry/util/ClassLoaderUtils;->classLoaderOrDefault(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method protected loadModules()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sentry-external-modules.txt"

    .line 31
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    iget-object v2, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->classLoader:Ljava/lang/ClassLoader;

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 36
    :try_start_1
    iget-object v3, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v5, "%s file was not found."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 41
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object v1

    .line 40
    :cond_1
    :try_start_3
    invoke-virtual {p0, v2}, Lio/sentry/internal/modules/ResourcesModulesLoader;->parseStream(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_2

    .line 41
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_3

    .line 32
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    .line 44
    iget-object p0, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Access to resources failed."

    invoke-interface {p0, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 42
    iget-object p0, p0, Lio/sentry/internal/modules/ResourcesModulesLoader;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Access to resources denied."

    invoke-interface {p0, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v1
.end method
