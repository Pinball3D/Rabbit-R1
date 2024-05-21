.class public final Lio/sentry/android/core/AnrV2EventProcessor;
.super Ljava/lang/Object;
.source "AnrV2EventProcessor.java"

# interfaces
.implements Lio/sentry/BackfillingEventProcessor;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p3, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 89
    new-instance p1, Lio/sentry/SentryStackTraceFactory;

    invoke-direct {p1, p2}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 92
    new-instance p2, Lio/sentry/SentryExceptionFactory;

    invoke-direct {p2, p1}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    iput-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    return-void
.end method

.method private backfillOptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 0

    .line 293
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setRelease(Lio/sentry/SentryBaseEvent;)V

    .line 294
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setEnvironment(Lio/sentry/SentryBaseEvent;)V

    .line 295
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setDist(Lio/sentry/SentryBaseEvent;)V

    .line 296
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setDebugMeta(Lio/sentry/SentryBaseEvent;)V

    .line 297
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setSdk(Lio/sentry/SentryBaseEvent;)V

    .line 298
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->setApp(Lio/sentry/SentryBaseEvent;Ljava/lang/Object;)V

    .line 299
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setOptionsTags(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private backfillScope(Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setRequest(Lio/sentry/SentryBaseEvent;)V

    .line 145
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setUser(Lio/sentry/SentryBaseEvent;)V

    .line 146
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setScopeTags(Lio/sentry/SentryBaseEvent;)V

    .line 147
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setBreadcrumbs(Lio/sentry/SentryBaseEvent;)V

    .line 148
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setExtras(Lio/sentry/SentryBaseEvent;)V

    .line 149
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setContexts(Lio/sentry/SentryBaseEvent;)V

    .line 150
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setTransaction(Lio/sentry/SentryEvent;)V

    .line 151
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->setFingerprints(Lio/sentry/SentryEvent;Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setLevel(Lio/sentry/SentryEvent;)V

    .line 153
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setTrace(Lio/sentry/SentryEvent;)V

    return-void
.end method

.method private findMainThread(Ljava/util/List;)Lio/sentry/protocol/SentryThread;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;)",
            "Lio/sentry/protocol/SentryThread;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 448
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/SentryThread;

    .line 449
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "main"

    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDevice()Lio/sentry/protocol/Device;
    .locals 3

    .line 548
    new-instance v0, Lio/sentry/protocol/Device;

    invoke-direct {v0}, Lio/sentry/protocol/Device;-><init>()V

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 549
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    .line 550
    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setName(Ljava/lang/String;)V

    .line 552
    :cond_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setManufacturer(Ljava/lang/String;)V

    .line 553
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setBrand(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 554
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getFamily(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setFamily(Ljava/lang/String;)V

    .line 555
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModel(Ljava/lang/String;)V

    .line 556
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setModelId(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 557
    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getArchitectures(Lio/sentry/android/core/BuildInfoProvider;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setArchs([Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 560
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getMemInfo(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 563
    invoke-direct {p0, v1}, Lio/sentry/android/core/AnrV2EventProcessor;->getMemorySize(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setMemorySize(Ljava/lang/Long;)V

    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 566
    invoke-virtual {v1}, Lio/sentry/android/core/BuildInfoProvider;->isEmulator()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setSimulator(Ljava/lang/Boolean;)V

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 568
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getDisplayMetrics(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 570
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenWidthPixels(Ljava/lang/Integer;)V

    .line 571
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenHeightPixels(Ljava/lang/Integer;)V

    .line 572
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/Device;->setScreenDensity(Ljava/lang/Float;)V

    .line 573
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setScreenDpi(Ljava/lang/Integer;)V

    .line 576
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/Device;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 577
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/Device;->setId(Ljava/lang/String;)V

    .line 580
    :cond_3
    invoke-static {}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->getInstance()Lio/sentry/android/core/internal/util/CpuInfoUtils;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->readMaxFrequencies()Ljava/util/List;

    move-result-object p0

    .line 581
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 582
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Device;->setProcessorFrequency(Ljava/lang/Double;)V

    .line 583
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/Device;->setProcessorCount(Ljava/lang/Integer;)V

    :cond_4
    return-object v0
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    .line 515
    invoke-static {v0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 517
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Error getting installationId."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getMemorySize(Landroid/app/ActivityManager$MemoryInfo;)Ljava/lang/Long;
    .locals 0

    .line 590
    iget-wide p0, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 4

    .line 613
    new-instance v0, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {v0}, Lio/sentry/protocol/OperatingSystem;-><init>()V

    const-string v1, "Android"

    .line 614
    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setName(Ljava/lang/String;)V

    .line 615
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setVersion(Ljava/lang/String;)V

    .line 616
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setBuild(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 619
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/android/core/ContextUtils;->getKernelVersion(Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/OperatingSystem;->setKernelVersion(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 621
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error getting OperatingSystem."

    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private isBackgroundAnr(Ljava/lang/Object;)Z
    .locals 0

    .line 460
    instance-of p0, p1, Lio/sentry/hints/AbnormalExit;

    if-eqz p0, :cond_0

    .line 461
    check-cast p1, Lio/sentry/hints/AbnormalExit;

    invoke-interface {p1}, Lio/sentry/hints/AbnormalExit;->mechanism()Ljava/lang/String;

    move-result-object p0

    const-string p1, "anr_background"

    .line 462
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private mergeOS(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 594
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    .line 595
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object p0

    .line 598
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v1, p0}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {v0}, Lio/sentry/protocol/OperatingSystem;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 603
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "os_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "os_1"

    .line 608
    :goto_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 498
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 500
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 501
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 505
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 506
    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 508
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "{{auto}}"

    .line 509
    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setApp(Lio/sentry/SentryBaseEvent;Ljava/lang/Object;)V
    .locals 4

    .line 303
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 307
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {v1, v2}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 311
    invoke-direct {p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/App;->setInForeground(Ljava/lang/Boolean;)V

    iget-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 314
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {p2, v1, v2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 316
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lio/sentry/protocol/App;->setAppIdentifier(Ljava/lang/String;)V

    .line 321
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 322
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "release.json"

    .line 323
    const-class v2, Ljava/lang/String;

    invoke-static {p2, v1, v2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_3

    const/16 v1, 0x40

    .line 327
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v0, v1}, Lio/sentry/protocol/App;->setAppVersion(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v2}, Lio/sentry/protocol/App;->setAppBuild(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 333
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Failed to parse release from scope cache: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 334
    invoke-interface {p0, v1, v2, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    return-void
.end method

.method private setBreadcrumbs(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 241
    const-class v0, Ljava/util/List;

    new-instance v1, Lio/sentry/Breadcrumb$Deserializer;

    invoke-direct {v1}, Lio/sentry/Breadcrumb$Deserializer;-><init>()V

    const-string v2, "breadcrumbs.json"

    .line 243
    invoke-static {p0, v2, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setBreadcrumbs(Ljava/util/List;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getBreadcrumbs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method private setContexts(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "contexts.json"

    .line 203
    const-class v1, Lio/sentry/protocol/Contexts;

    .line 204
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Contexts;

    if-nez p0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    .line 209
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0, p0}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "trace"

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v1, Lio/sentry/SpanContext;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 215
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/sentry/protocol/Contexts;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setDebugMeta(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 358
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDebugMeta()Lio/sentry/protocol/DebugMeta;

    move-result-object v0

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Lio/sentry/protocol/DebugMeta;

    invoke-direct {v0}, Lio/sentry/protocol/DebugMeta;-><init>()V

    .line 363
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/protocol/DebugMeta;->setImages(Ljava/util/List;)V

    .line 366
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/DebugMeta;->getImages()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v2, "proguard-uuid.json"

    .line 368
    const-class v3, Ljava/lang/String;

    .line 369
    invoke-static {p0, v2, v3}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 372
    new-instance v2, Lio/sentry/protocol/DebugImage;

    invoke-direct {v2}, Lio/sentry/protocol/DebugImage;-><init>()V

    const-string v3, "proguard"

    .line 373
    invoke-virtual {v2, v3}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v2, p0}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 375
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDebugMeta(Lio/sentry/protocol/DebugMeta;)V

    :cond_3
    return-void
.end method

.method private setDevice(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 539
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-direct {p0}, Lio/sentry/android/core/AnrV2EventProcessor;->getDevice()Lio/sentry/protocol/Device;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    :cond_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 382
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "dist.json"

    .line 383
    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 384
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    .line 387
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "release.json"

    .line 388
    const-class v2, Ljava/lang/String;

    .line 389
    invoke-static {v0, v1, v2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x2b

    .line 392
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 396
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v1, "Failed to parse release from scope cache: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 397
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setEnvironment(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    .line 350
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "environment.json"

    .line 351
    const-class v2, Ljava/lang/String;

    .line 352
    invoke-static {v0, v1, v2}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 353
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setEnvironment(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setExceptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 3

    .line 470
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    .line 471
    move-object v1, p2

    check-cast v1, Lio/sentry/hints/Backfillable;

    invoke-interface {v1}, Lio/sentry/hints/Backfillable;->shouldEnrich()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HistoricalAppExitInfo"

    .line 473
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "AppExitInfo"

    .line 475
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 478
    :goto_0
    invoke-direct {p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Background ANR"

    goto :goto_1

    :cond_1
    const-string p2, "ANR"

    .line 483
    :goto_1
    new-instance v1, Lio/sentry/android/core/ApplicationNotResponding;

    .line 484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 486
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->findMainThread(Ljava/util/List;)Lio/sentry/protocol/SentryThread;

    move-result-object p2

    if-nez p2, :cond_2

    .line 490
    new-instance p2, Lio/sentry/protocol/SentryThread;

    invoke-direct {p2}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 491
    new-instance v2, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v2}, Lio/sentry/protocol/SentryStackTrace;-><init>()V

    invoke-virtual {p2, v2}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    :cond_2
    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->sentryExceptionFactory:Lio/sentry/SentryExceptionFactory;

    .line 494
    invoke-virtual {p0, p2, v0, v1}, Lio/sentry/SentryExceptionFactory;->getSentryExceptionsFromThread(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 493
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setExceptions(Ljava/util/List;)V

    return-void
.end method

.method private setExtras(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "extras.json"

    .line 223
    const-class v1, Ljava/util/Map;

    .line 224
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setExtras(Ljava/util/Map;)V

    goto :goto_1

    .line 231
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 232
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getExtras()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setFingerprints(Lio/sentry/SentryEvent;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v1, "fingerprint.json"

    .line 178
    const-class v2, Ljava/util/List;

    .line 179
    invoke-static {v0, v1, v2}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 180
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    .line 187
    :cond_0
    invoke-direct {p0, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->isBackgroundAnr(Ljava/lang/Object;)Z

    move-result p0

    .line 188
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getFingerprints()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "{{ default }}"

    aput-object v1, p2, v0

    if-eqz p0, :cond_1

    const-string p0, "background-anr"

    goto :goto_0

    :cond_1
    const-string p0, "foreground-anr"

    :goto_0
    const/4 v0, 0x1

    aput-object p0, p2, v0

    .line 190
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 189
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setFingerprints(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private setLevel(Lio/sentry/SentryEvent;)V
    .locals 2

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "level.json"

    .line 169
    const-class v1, Lio/sentry/SentryLevel;

    .line 170
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryLevel;

    .line 171
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setLevel(Lio/sentry/SentryLevel;)V

    :cond_0
    return-void
.end method

.method private setOptionsTags(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "tags.json"

    .line 413
    const-class v1, Ljava/util/Map;

    .line 415
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 423
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 424
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 425
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setPlatform(Lio/sentry/SentryBaseEvent;)V
    .locals 0

    .line 439
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getPlatform()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "java"

    .line 441
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setPlatform(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRelease(Lio/sentry/SentryBaseEvent;)V
    .locals 2

    .line 342
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "release.json"

    .line 343
    const-class v1, Ljava/lang/String;

    .line 344
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 345
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setRelease(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setRequest(Lio/sentry/SentryBaseEvent;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "request.json"

    .line 283
    const-class v1, Lio/sentry/protocol/Request;

    .line 284
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/Request;

    .line 285
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setRequest(Lio/sentry/protocol/Request;)V

    :cond_0
    return-void
.end method

.method private setScopeTags(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "tags.json"

    .line 257
    const-class v1, Ljava/util/Map;

    .line 259
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setTags(Ljava/util/Map;)V

    goto :goto_1

    .line 266
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 267
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setSdk(Lio/sentry/SentryBaseEvent;)V
    .locals 2

    .line 404
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "sdk-version.json"

    .line 405
    const-class v1, Lio/sentry/protocol/SdkVersion;

    .line 406
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingOptionsObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/SdkVersion;

    .line 407
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setSdk(Lio/sentry/protocol/SdkVersion;)V

    :cond_0
    return-void
.end method

.method private setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 525
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/AnrV2EventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    invoke-static {v0, v1, v2}, Lio/sentry/android/core/ContextUtils;->retrieveSideLoadedInfo(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->asTags()Ljava/util/Map;

    move-result-object v0

    .line 529
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 530
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/sentry/SentryBaseEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 534
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting side loaded info."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private setStaticValues(Lio/sentry/SentryEvent;)V
    .locals 0

    .line 434
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 435
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private setTrace(Lio/sentry/SentryEvent;)V
    .locals 2

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "trace.json"

    .line 157
    const-class v1, Lio/sentry/SpanContext;

    .line 158
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SpanContext;

    .line 159
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 161
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, p0}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    :cond_0
    return-void
.end method

.method private setTransaction(Lio/sentry/SentryEvent;)V
    .locals 2

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "transaction.json"

    .line 195
    const-class v1, Ljava/lang/String;

    .line 196
    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setUser(Lio/sentry/SentryBaseEvent;)V
    .locals 2

    .line 275
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    const-string v0, "user.json"

    .line 276
    const-class v1, Lio/sentry/protocol/User;

    invoke-static {p0, v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/User;

    .line 277
    invoke-virtual {p1, p0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 2

    .line 106
    invoke-static {p2}, Lio/sentry/util/HintUtils;->getSentrySdkHint(Lio/sentry/Hint;)Ljava/lang/Object;

    move-result-object p2

    .line 107
    instance-of v0, p2, Lio/sentry/hints/Backfillable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 109
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v0, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping."

    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 119
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->setExceptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V

    .line 120
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setPlatform(Lio/sentry/SentryBaseEvent;)V

    .line 121
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->mergeOS(Lio/sentry/SentryBaseEvent;)V

    .line 122
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setDevice(Lio/sentry/SentryBaseEvent;)V

    .line 124
    move-object v0, p2

    check-cast v0, Lio/sentry/hints/Backfillable;

    invoke-interface {v0}, Lio/sentry/hints/Backfillable;->shouldEnrich()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/AnrV2EventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 126
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "The event is Backfillable, but should not be enriched, skipping."

    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 133
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->backfillScope(Lio/sentry/SentryEvent;Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/AnrV2EventProcessor;->backfillOptions(Lio/sentry/SentryEvent;Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, p1}, Lio/sentry/android/core/AnrV2EventProcessor;->setStaticValues(Lio/sentry/SentryEvent;)V

    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0

    return-object p1
.end method
