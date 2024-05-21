.class public final Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;
.super Ljava/lang/Object;
.source "AssetsDebugMetaLoader.java"

# interfaces
.implements Lio/sentry/internal/debugmeta/IDebugMetaLoader;


# instance fields
.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public loadDebugMeta()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    sget-object v2, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 37
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
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
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 47
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    sget-object v2, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s file is malformed."

    invoke-interface {p0, v1, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 45
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting Proguard UUIDs."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;->logger:Lio/sentry/ILogger;

    .line 43
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    sget-object v2, Lio/sentry/util/DebugMetaPropertiesApplier;->DEBUG_META_PROPERTIES_FILENAME:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s file was not found."

    invoke-interface {p0, v1, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
