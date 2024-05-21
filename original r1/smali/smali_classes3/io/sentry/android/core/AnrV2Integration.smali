.class public Lio/sentry/android/core/AnrV2Integration;
.super Ljava/lang/Object;
.source "AnrV2Integration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AnrV2Integration$AnrProcessor;,
        Lio/sentry/android/core/AnrV2Integration$ParseResult;,
        Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;
    }
.end annotation


# static fields
.field static final NINETY_DAYS_THRESHOLD:J


# instance fields
.field private final context:Landroid/content/Context;

.field private final dateProvider:Lio/sentry/transport/ICurrentDateProvider;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5b

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/AnrV2Integration;->NINETY_DAYS_THRESHOLD:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-static {}, Lio/sentry/transport/CurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/AnrV2Integration;-><init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lio/sentry/transport/ICurrentDateProvider;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrV2Integration;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/AnrV2Integration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AnrV2Integration removed."

    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 6

    .line 75
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 74
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 79
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 80
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AnrIntegration enabled: %s"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 82
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 84
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "Cache dir is not set, unable to process ANRs"

    new-array v0, v1, [Ljava/lang/Object;

    .line 85
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 89
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v2, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;

    iget-object v3, p0, Lio/sentry/android/core/AnrV2Integration;->context:Landroid/content/Context;

    iget-object v4, p0, Lio/sentry/android/core/AnrV2Integration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    iget-object v5, p0, Lio/sentry/android/core/AnrV2Integration;->dateProvider:Lio/sentry/transport/ICurrentDateProvider;

    invoke-direct {v2, v3, p1, v4, v5}, Lio/sentry/android/core/AnrV2Integration$AnrProcessor;-><init>(Landroid/content/Context;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/ICurrentDateProvider;)V

    .line 93
    invoke-interface {v0, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 95
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "Failed to start AnrProcessor."

    invoke-interface {v0, v2, v3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    :goto_1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "AnrV2Integration installed."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    :cond_2
    return-void
.end method
