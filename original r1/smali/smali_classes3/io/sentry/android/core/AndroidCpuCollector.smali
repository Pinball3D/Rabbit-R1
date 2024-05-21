.class public final Lio/sentry/android/core/AndroidCpuCollector;
.super Ljava/lang/Object;
.source "AndroidCpuCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceSnapshotCollector;


# instance fields
.field private final NANOSECOND_PER_SECOND:J

.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private clockSpeedHz:J

.field private isEnabled:Z

.field private lastCpuNanos:J

.field private lastRealtimeNanos:J

.field private final logger:Lio/sentry/ILogger;

.field private nanosecondsPerClockTick:D

.field private final newLinePattern:Ljava/util/regex/Pattern;

.field private numCores:J

.field private final selfStat:Ljava/io/File;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->clockSpeedHz:J

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    const-wide/32 v2, 0x3b9aca00

    iput-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->NANOSECOND_PER_SECOND:J

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    long-to-double v0, v0

    div-double/2addr v2, v0

    iput-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->nanosecondsPerClockTick:D

    .line 41
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/stat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->selfStat:Ljava/io/File;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    const-string v0, "[\n\t\r ]"

    .line 46
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->newLinePattern:Ljava/util/regex/Pattern;

    const-string v0, "Logger is required."

    .line 50
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/AndroidCpuCollector;->logger:Lio/sentry/ILogger;

    const-string p1, "BuildInfoProvider is required."

    .line 52
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/AndroidCpuCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method

.method private readTotalCpuNanos()J
    .locals 11

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->selfStat:Ljava/io/File;

    .line 97
    invoke-static {v0}, Lio/sentry/util/FileUtils;->readText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    iget-object v1, p0, Lio/sentry/android/core/AndroidCpuCollector;->logger:Lio/sentry/ILogger;

    .line 102
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v3, "Unable to read /proc/self/stat file. Disabling cpu collection."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lio/sentry/android/core/AndroidCpuCollector;->newLinePattern:Ljava/util/regex/Pattern;

    .line 107
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    .line 110
    :try_start_1
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/16 v5, 0xe

    .line 112
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0xf

    .line 114
    aget-object v7, v0, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/16 v9, 0x10

    .line 116
    aget-object v0, v0, v9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    add-long/2addr v3, v5

    add-long/2addr v3, v7

    add-long/2addr v3, v9

    long-to-double v3, v3

    iget-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->nanosecondsPerClockTick:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    mul-double/2addr v3, v0

    double-to-long v0, v3

    return-wide v0

    :catch_1
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/AndroidCpuCollector;->logger:Lio/sentry/ILogger;

    .line 119
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error parsing /proc/self/stat file."

    invoke-interface {p0, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v1
.end method


# virtual methods
.method public collect(Lio/sentry/PerformanceCollectionData;)V
    .locals 7

    iget-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 72
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastRealtimeNanos:J

    .line 78
    invoke-direct {p0}, Lio/sentry/android/core/AndroidCpuCollector;->readTotalCpuNanos()J

    move-result-wide v0

    iget-wide v4, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    sub-long v4, v0, v4

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    long-to-double v0, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 86
    new-instance v2, Lio/sentry/CpuCollectionData;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    long-to-double v5, v5

    div-double/2addr v0, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v5

    invoke-direct {v2, v3, v4, v0, v1}, Lio/sentry/CpuCollectionData;-><init>(JD)V

    .line 90
    invoke-virtual {p1, v2}, Lio/sentry/PerformanceCollectionData;->addCpuData(Lio/sentry/CpuCollectionData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 58
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->isEnabled:Z

    .line 63
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->clockSpeedHz:J

    .line 64
    sget v0, Landroid/system/OsConstants;->_SC_NPROCESSORS_CONF:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->numCores:J

    iget-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->clockSpeedHz:J

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v0

    iput-wide v2, p0, Lio/sentry/android/core/AndroidCpuCollector;->nanosecondsPerClockTick:D

    .line 66
    invoke-direct {p0}, Lio/sentry/android/core/AndroidCpuCollector;->readTotalCpuNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/AndroidCpuCollector;->lastCpuNanos:J

    return-void
.end method
