.class public final Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "TempSensorBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private hub:Lio/sentry/IHub;

.field private isClosed:Z

.field private options:Lio/sentry/android/core/SentryAndroidOptions;

.field sensorManager:Landroid/hardware/SensorManager;

.field private final startLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->isClosed:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    const-string v0, "Context is required"

    .line 37
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->context:Landroid/content/Context;

    return-void
.end method

.method private startSensorListener(Lio/sentry/SentryOptions;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string v2, "sensor"

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_1

    const/16 v2, 0xd

    .line 84
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    .line 86
    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 88
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v3, "TempSensorBreadcrumbsIntegration installed."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "TYPE_AMBIENT_TEMPERATURE is not available."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v2, "SENSOR_SERVICE is not available."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 97
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to init. the SENSOR_SERVICE."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1, p0, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

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

    iget-object v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    .line 103
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->isClosed:Z

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->sensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "TempSensorBreadcrumbsIntegration removed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 105
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method synthetic lambda$register$0$io-sentry-android-core-TempSensorBreadcrumbsIntegration(Lio/sentry/SentryOptions;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->startLock:Ljava/lang/Object;

    .line 62
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->isClosed:Z

    if-nez v1, :cond_0

    .line 64
    invoke-direct {p0, p1}, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->startSensorListener(Lio/sentry/SentryOptions;)V

    .line 66
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

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 118
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_1

    .line 120
    array-length v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v2, "system"

    .line 126
    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v2, "device.event"

    .line 127
    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    const-string v2, "action"

    const-string v3, "TYPE_AMBIENT_TEMPERATURE"

    .line 128
    invoke-virtual {v0, v2, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget v2, p1, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "accuracy"

    invoke-virtual {v0, v3, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, v2}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 132
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "degree"

    invoke-virtual {v0, v2, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    new-instance v1, Lio/sentry/Hint;

    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    const-string v2, "android:sensorEvent"

    .line 135
    invoke-virtual {v1, v2, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    .line 137
    invoke-interface {p0, v0, v1}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 3

    const-string v0, "Hub is required"

    .line 42
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    .line 45
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 44
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 49
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 53
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "enableSystemEventsBreadcrumbs enabled: %s"

    .line 50
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 55
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object p1

    new-instance v0, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lio/sentry/android/core/TempSensorBreadcrumbsIntegration$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/TempSensorBreadcrumbsIntegration;Lio/sentry/SentryOptions;)V

    .line 60
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 70
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Failed to start TempSensorBreadcrumbsIntegration on executor thread."

    .line 71
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
