.class public final Lio/sentry/android/core/DeviceInfoUtil;
.super Ljava/lang/Object;
.source "DeviceInfoUtil.java"


# static fields
.field private static volatile instance:Lio/sentry/android/core/DeviceInfoUtil;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final isEmulator:Ljava/lang/Boolean;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final os:Lio/sentry/protocol/OperatingSystem;

.field private final sideLoadedInfo:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

.field private final totalMem:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 55
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 58
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    .line 59
    invoke-virtual {p0}, Lio/sentry/android/core/DeviceInfoUtil;->retrieveOperatingSystemInformation()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->os:Lio/sentry/protocol/OperatingSystem;

    .line 60
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->isEmulator:Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lio/sentry/android/core/ContextUtils;->retrieveSideLoadedInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->sideLoadedInfo:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    .line 64
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    invoke-static {p1, p2}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-wide p1, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    :goto_0
    return-void
.end method

.method private getBatteryIntent()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 263
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lio/sentry/android/core/ContextUtils;->registerReceiver(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private getBatteryLevel(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "level"

    const/4 v2, -0x1

    .line 275
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 276
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq v1, v2, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    .line 284
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 286
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting device battery level."

    invoke-interface {p0, v1, v2, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getBatteryTemperature(Landroid/content/Intent;)Ljava/lang/Float;
    .locals 2

    :try_start_0
    const-string v0, "temperature"

    const/4 v1, -0x1

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 313
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 316
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting battery temperature."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBootTime()Ljava/util/Date;
    .locals 4

    .line 254
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 256
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error getting the device\'s boot time."

    invoke-interface {p0, v1, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 474
    invoke-static {v0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 476
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting installationId."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getExternalStorageDep(Ljava/io/File;)Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 404
    :goto_0
    array-length p1, v0

    :goto_1
    if-ge v2, p1, :cond_5

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p0, :cond_3

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    .line 415
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-object v3

    :cond_4
    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 421
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Not possible to read getExternalFilesDirs"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-object v1
.end method

.method private getExternalStorageStat(Ljava/io/File;)Landroid/os/StatFs;
    .locals 3

    .line 384
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->isExternalStorageMounted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 385
    invoke-direct {p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getExternalStorageDep(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 387
    new-instance p0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 389
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Not possible to read external files directory"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_1
    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 392
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "External storage is not mounted or emulated."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 2

    sget-object v0, Lio/sentry/android/core/DeviceInfoUtil;->instance:Lio/sentry/android/core/DeviceInfoUtil;

    if-nez v0, :cond_1

    const-class v0, Lio/sentry/android/core/DeviceInfoUtil;

    .line 76
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/sentry/android/core/DeviceInfoUtil;->instance:Lio/sentry/android/core/DeviceInfoUtil;

    if-nez v1, :cond_0

    .line 78
    new-instance v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    sput-object v1, Lio/sentry/android/core/DeviceInfoUtil;->instance:Lio/sentry/android/core/DeviceInfoUtil;

    .line 80
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lio/sentry/android/core/DeviceInfoUtil;->instance:Lio/sentry/android/core/DeviceInfoUtil;

    return-object p0
.end method

.method private getOrientation()Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 331
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1}, Lio/sentry/android/core/internal/util/DeviceOrientations;->getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 334
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 335
    invoke-interface {v2, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_0
    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 341
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting device orientation."

    invoke-interface {p0, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method private getTimeZone()Ljava/util/TimeZone;
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 238
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 242
    invoke-static {p0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method private getTotalExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 435
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 436
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    mul-long/2addr v2, v0

    .line 437
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 439
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting total external storage amount."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getTotalInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 354
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 355
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v2

    mul-long/2addr v2, v0

    .line 356
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 358
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting total internal storage amount."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getUnusedExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 460
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 461
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v0

    .line 462
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 465
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting unused external storage amount."

    .line 466
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getUnusedInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;
    .locals 4

    .line 371
    :try_start_0
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v0

    .line 372
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v2

    mul-long/2addr v2, v0

    .line 373
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 376
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting unused internal storage amount."

    .line 377
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private isCharging(Landroid/content/Intent;)Ljava/lang/Boolean;
    .locals 2

    :try_start_0
    const-string v0, "plugged"

    const/4 v1, -0x1

    .line 299
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 300
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 303
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting device charging state."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private isExternalStorageMounted()Z
    .locals 1

    .line 445
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mounted"

    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    .line 447
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 448
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resetInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/sentry/android/core/DeviceInfoUtil;->instance:Lio/sentry/android/core/DeviceInfoUtil;

    return-void
.end method

.method private setDeviceIO(Lio/sentry/protocol/Device;Z)V
    .locals 4

    .line 185
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0, v0}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryLevel(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setBatteryLevel(Ljava/lang/Float;)V

    .line 188
    invoke-direct {p0, v0}, Lio/sentry/android/core/DeviceInfoUtil;->isCharging(Landroid/content/Intent;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setCharging(Ljava/lang/Boolean;)V

    .line 189
    invoke-direct {p0, v0}, Lio/sentry/android/core/DeviceInfoUtil;->getBatteryTemperature(Landroid/content/Intent;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->setBatteryTemperature(Ljava/lang/Float;)V

    .line 193
    :cond_0
    sget-object v0, Lio/sentry/android/core/DeviceInfoUtil$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v1

    invoke-interface {v1}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 203
    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->setOnline(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 206
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v0, v2}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 209
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->setFreeMemory(Ljava/lang/Long;)V

    .line 210
    iget-boolean p2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->setLowMemory(Ljava/lang/Boolean;)V

    :cond_3
    iget-object p2, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 216
    invoke-virtual {p2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 218
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, v0}, Lio/sentry/android/core/DeviceInfoUtil;->getTotalInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/protocol/Device;->setStorageSize(Ljava/lang/Long;)V

    .line 220
    invoke-direct {p0, v0}, Lio/sentry/android/core/DeviceInfoUtil;->getUnusedInternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->setFreeStorage(Ljava/lang/Long;)V

    .line 223
    :cond_4
    invoke-direct {p0, p2}, Lio/sentry/android/core/DeviceInfoUtil;->getExternalStorageStat(Ljava/io/File;)Landroid/os/StatFs;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 225
    invoke-direct {p0, p2}, Lio/sentry/android/core/DeviceInfoUtil;->getTotalExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Device;->setExternalStorageSize(Ljava/lang/Long;)V

    .line 226
    invoke-direct {p0, p2}, Lio/sentry/android/core/DeviceInfoUtil;->getUnusedExternalStorage(Landroid/os/StatFs;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/sentry/protocol/Device;->setExternalFreeStorage(Ljava/lang/Long;)V

    .line 229
    :cond_5
    invoke-virtual {p1}, Lio/sentry/protocol/Device;->getConnectionType()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 231
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/IConnectionStatusProvider;->getConnectionType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/protocol/Device;->setConnectionType(Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;
    .locals 4

    .line 96
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 98
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    .line 99
    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setName(Ljava/lang/String;)V

    .line 101
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setManufacturer(Ljava/lang/String;)V

    .line 102
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setBrand(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 103
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getFamily(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setFamily(Ljava/lang/String;)V

    .line 104
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModel(Ljava/lang/String;)V

    .line 105
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModelId(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 106
    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getArchitectures(Lio/sentry/android/core/BuildInfoProvider;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setArchs([Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getOrientation()Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setOrientation(Lio/sentry/protocol/Device$DeviceOrientation;)V

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->isEmulator:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setSimulator(Ljava/lang/Boolean;)V

    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 114
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenWidthPixels(Ljava/lang/Integer;)V

    .line 117
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenHeightPixels(Ljava/lang/Integer;)V

    .line 118
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenDensity(Ljava/lang/Float;)V

    .line 119
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setScreenDpi(Ljava/lang/Integer;)V

    .line 122
    :cond_2
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getBootTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setBootTime(Ljava/util/Date;)V

    .line 123
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setTimezone(Ljava/util/TimeZone;)V

    .line 125
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 126
    invoke-direct {p0}, Lio/sentry/android/core/DeviceInfoUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setId(Ljava/lang/String;)V

    .line 129
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 131
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setLanguage(Ljava/lang/String;)V

    .line 133
    :cond_4
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getLocale()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 134
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setLocale(Ljava/lang/String;)V

    .line 137
    :cond_5
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object v1

    .line 138
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 139
    invoke-static {v1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setProcessorFrequency(Ljava/lang/Double;)V

    .line 140
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setProcessorCount(Ljava/lang/Integer;)V

    :cond_6
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->totalMem:Ljava/lang/Long;

    .line 143
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setMemorySize(Ljava/lang/Long;)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 146
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 147
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/DeviceInfoUtil;->setDeviceIO(Lio/sentry/protocol/Device;Z)V

    :cond_7
    return-object v0
.end method

.method public getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->os:Lio/sentry/protocol/OperatingSystem;

    return-object p0
.end method

.method public getSideLoadedInfo()Lio/sentry/android/core/ContextUtils$SideLoadedInfo;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->sideLoadedInfo:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    return-object p0
.end method

.method protected retrieveOperatingSystemInformation()Lio/sentry/protocol/OperatingSystem;
    .locals 4

    .line 161
    new-instance v0, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {v0}, Lio/sentry/protocol/OperatingSystem;-><init>()V

    const-string v1, "Android"

    .line 162
    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setName(Ljava/lang/String;)V

    .line 163
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setVersion(Ljava/lang/String;)V

    .line 164
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setBuild(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 166
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getKernelVersion(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setKernelVersion(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 171
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    new-instance v1, Lio/sentry/android/core/internal/util/RootChecker;

    iget-object v2, p0, Lio/sentry/android/core/DeviceInfoUtil;->context:Landroid/content/Context;

    iget-object v3, p0, Lio/sentry/android/core/DeviceInfoUtil;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 173
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lio/sentry/android/core/internal/util/RootChecker;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V

    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/RootChecker;->isDeviceRooted()Z

    move-result p0

    .line 174
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/OperatingSystem;->setRooted(Ljava/lang/Boolean;)V

    :cond_1
    return-object v0
.end method
