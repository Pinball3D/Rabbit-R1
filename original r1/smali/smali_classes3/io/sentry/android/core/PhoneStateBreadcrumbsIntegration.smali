.class public final Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "PhoneStateBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private isClosed:Z

.field listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final startLock:Ljava/lang/Object;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->isClosed:Z

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    const-string v0, "Context is required"

    .line 31
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->context:Landroid/content/Context;

    return-void
.end method

.method private startTelephonyListener(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string v1, "phone"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    new-instance v0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    invoke-direct {v0, p1}, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;-><init>(Lio/sentry/IHub;)V

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    iget-object p1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x20

    .line 80
    invoke-virtual {p1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 82
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "PhoneStateBreadcrumbsIntegration installed."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 86
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "TelephonyManager is not available or ready to use."

    new-array v1, v1, [Ljava/lang/Object;

    .line 87
    invoke-interface {p1, p2, p0, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p2, "TelephonyManager is not available"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
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

    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    .line 97
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->isClosed:Z

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->listener:Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$PhoneStateChangeListener;

    iget-object p0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "PhoneStateBreadcrumbsIntegration removed."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 99
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method synthetic lambda$register$0$io-sentry-android-core-PhoneStateBreadcrumbsIntegration(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    .line 56
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->isClosed:Z

    if-nez v1, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->startTelephonyListener(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    .line 60
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    const-string v0, "Hub is required"

    .line 36
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 38
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 43
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v2, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 47
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "enableSystemEventBreadcrumbs enabled: %s"

    .line 44
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 50
    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/Permissions;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/PhoneStateBreadcrumbsIntegration;Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    .line 54
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 64
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Failed to start PhoneStateBreadcrumbsIntegration on executor thread."

    .line 65
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
