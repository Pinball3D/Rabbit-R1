.class public final Lio/sentry/android/ndk/DebugImagesLoader;
.super Ljava/lang/Object;
.source "DebugImagesLoader.java"

# interfaces
.implements Lio/sentry/android/core/IDebugImagesLoader;


# static fields
.field private static debugImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end field

.field private static final debugImagesLock:Ljava/lang/Object;


# instance fields
.field private final moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/ndk/NativeModuleListLoader;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The SentryAndroidOptions is required."

    .line 33
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    const-string p1, "The NativeModuleListLoader is required."

    .line 35
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/ndk/NativeModuleListLoader;

    iput-object p1, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

    return-void
.end method


# virtual methods
.method public clearDebugImages()V
    .locals 6

    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    .line 66
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

    .line 68
    invoke-virtual {v2}, Lio/sentry/android/ndk/NativeModuleListLoader;->clearModuleList()V

    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 70
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Debug images cleared."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    iget-object p0, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 72
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to clear debug images."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, v2, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 75
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method getCachedDebugImages()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    sget-object p0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    return-object p0
.end method

.method public loadDebugImages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImagesLock:Ljava/lang/Object;

    .line 45
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->moduleListLoader:Lio/sentry/android/ndk/NativeModuleListLoader;

    .line 48
    invoke-virtual {v2}, Lio/sentry/android/ndk/NativeModuleListLoader;->loadModuleList()[Lio/sentry/protocol/DebugImage;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    iget-object v2, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 52
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Debug images loaded: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    .line 53
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object p0, p0, Lio/sentry/android/ndk/DebugImagesLoader;->options:Lio/sentry/SentryOptions;

    .line 56
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Failed to load debug images."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3, v2, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p0, Lio/sentry/android/ndk/DebugImagesLoader;->debugImages:Ljava/util/List;

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
