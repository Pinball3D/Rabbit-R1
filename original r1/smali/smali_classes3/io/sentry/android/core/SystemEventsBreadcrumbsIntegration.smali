.class public final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "SystemEventsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private isClosed:Z

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

.field private final startLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-static {}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->getDefaultActions()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    const-string v0, "Context is required"

    .line 78
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string p1, "Actions list is required"

    .line 79
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->actions:Ljava/util/List;

    return-void
.end method

.method private static getDefaultActions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.appwidget.action.APPWIDGET_DELETED"

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_DISABLED"

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    .line 146
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_RESTORED"

    .line 148
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BATTERY_OKAY"

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.CAMERA_BUTTON"

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.CONTENT_CHANGED"

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    .line 163
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DOCK_EVENT"

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DREAMING_STARTED"

    .line 165
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.INPUT_METHOD_CHANGED"

    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.REBOOT"

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.TIME_SET"

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.APP_ERROR"

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.BUG_REPORT"

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 182
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 183
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 184
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private startSystemEventsReceiver(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 4

    .line 123
    new-instance v0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;-><init>(Lio/sentry/IHub;Lio/sentry/ILogger;)V

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 124
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->actions:Ljava/util/List;

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    .line 130
    invoke-static {v1, p2, v2, p1}, Lio/sentry/android/core/ContextUtils;->registerReceiver(Landroid/content/Context;Lio/sentry/SentryOptions;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "SystemEventsBreadcrumbsIntegration installed."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 134
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 136
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to initialize SystemEventsBreadcrumbsIntegration."

    .line 137
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
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

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    .line 192
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 196
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->receiver:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;

    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_0

    .line 200
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "SystemEventsBreadcrumbsIntegration remove."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 194
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method synthetic lambda$register$0$io-sentry-android-core-SystemEventsBreadcrumbsIntegration(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    .line 104
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->isClosed:Z

    if-nez v1, :cond_0

    .line 106
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->startSystemEventsReceiver(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 108
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

    .line 84
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SentryAndroidOptions is required"

    .line 86
    invoke-static {v0, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 91
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 95
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SystemEventsBreadcrumbsIntegration enabled: %s"

    .line 92
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 97
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    .line 102
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 112
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Failed to start SystemEventsBreadcrumbsIntegration on executor thread."

    .line 113
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
