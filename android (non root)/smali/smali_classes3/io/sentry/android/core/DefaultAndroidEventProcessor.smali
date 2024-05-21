.class final Lio/sentry/android/core/DefaultAndroidEventProcessor;
.super Ljava/lang/Object;
.source "DefaultAndroidEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field final context:Landroid/content/Context;

.field private final deviceInfoUtil:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lio/sentry/android/core/DeviceInfoUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The application context is required."

    .line 49
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    const-string v0, "The BuildInfoProvider is required."

    .line 51
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string p2, "The options object is required."

    .line 52
    invoke-static {p3, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    .line 58
    new-instance v0, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Lio/sentry/android/core/DefaultAndroidEventProcessor$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 59
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 60
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private static fixExceptionOrder(Lio/sentry/SentryEvent;)V
    .locals 3

    .line 96
    invoke-virtual {p0}, Lio/sentry/SentryEvent;->getExceptions()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 98
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryException;

    const-string v1, "java.lang"

    .line 99
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getModule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/SentryStackFrame;

    const-string v2, "com.android.internal.os.RuntimeInit$MethodAndArgsCaller"

    .line 106
    invoke-virtual {v1}, Lio/sentry/protocol/SentryStackFrame;->getModule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;->getInstance(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    move-result-object p0

    return-object p0
.end method

.method private mergeOS(Lio/sentry/SentryBaseEvent;)V
    .locals 4

    .line 178
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 180
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v1}, Lio/sentry/android/core/DeviceInfoUtil;->getOperatingSystem()Lio/sentry/protocol/OperatingSystem;

    move-result-object v1

    .line 182
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 184
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to retrieve os system"

    invoke-interface {p0, v2, v3, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lio/sentry/protocol/OperatingSystem;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
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

    goto :goto_1

    :cond_0
    const-string p0, "os_1"

    .line 195
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private mergeUser(Lio/sentry/SentryBaseEvent;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lio/sentry/protocol/User;

    invoke-direct {v0}, Lio/sentry/protocol/User;-><init>()V

    .line 149
    invoke-virtual {p1, v0}, Lio/sentry/SentryBaseEvent;->setUser(Lio/sentry/protocol/User;)V

    .line 153
    :cond_0
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    .line 154
    invoke-static {p0}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getIpAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "{{auto}}"

    .line 157
    invoke-virtual {v0, p0}, Lio/sentry/protocol/User;->setIpAddress(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V
    .locals 1

    .line 202
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lio/sentry/protocol/App;

    invoke-direct {v0}, Lio/sentry/protocol/App;-><init>()V

    .line 206
    :cond_0
    invoke-direct {p0, v0, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setAppExtras(Lio/sentry/protocol/App;Lio/sentry/Hint;)V

    .line 207
    invoke-direct {p0, p1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setPackageInfo(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/App;)V

    .line 208
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    return-void
.end method

.method private setAppExtras(Lio/sentry/protocol/App;Lio/sentry/Hint;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 250
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-static {v0, v1}, Lio/sentry/android/core/ContextUtils;->getApplicationName(Landroid/content/Context;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/protocol/App;->setAppName(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v0

    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpanWithFallback(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/DateUtils;->toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/protocol/App;->setAppStartTime(Ljava/util/Date;)V

    .line 258
    :cond_0
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lio/sentry/protocol/App;->getInForeground()Ljava/lang/Boolean;

    move-result-object p0

    if-nez p0, :cond_1

    .line 261
    invoke-static {}, Lio/sentry/android/core/AppState;->getInstance()Lio/sentry/android/core/AppState;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/AppState;->isInBackground()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 263
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/sentry/protocol/App;->setInForeground(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method private setCommons(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->mergeUser(Lio/sentry/SentryBaseEvent;)V

    .line 126
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDevice(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 127
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V

    return-void
.end method

.method private setDevice(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 2

    .line 165
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getDevice()Lio/sentry/protocol/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 169
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v1, p2, p3}, Lio/sentry/android/core/DeviceInfoUtil;->collectDeviceInformation(ZZ)Lio/sentry/protocol/Device;

    move-result-object p2

    invoke-virtual {v0, p2}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object p3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 171
    invoke-virtual {p3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to retrieve device info"

    invoke-interface {p3, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :goto_0
    invoke-direct {p0, p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->mergeOS(Lio/sentry/SentryBaseEvent;)V

    :cond_0
    return-void
.end method

.method private setDist(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)V
    .locals 0

    .line 244
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getDist()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 245
    invoke-virtual {p1, p2}, Lio/sentry/SentryBaseEvent;->setDist(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPackageInfo(Lio/sentry/SentryBaseEvent;Lio/sentry/protocol/App;)V
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 234
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const/16 v3, 0x1000

    .line 233
    invoke-static {v0, v3, v1, v2}, Lio/sentry/android/core/ContextUtils;->getPackageInfo(Landroid/content/Context;ILio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 236
    invoke-static {v0, v1}, Lio/sentry/android/core/ContextUtils;->getVersionCode(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-direct {p0, p1, v1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setDist(Lio/sentry/SentryBaseEvent;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 239
    invoke-static {v0, p0, p2}, Lio/sentry/android/core/ContextUtils;->setAppPackageInfo(Landroid/content/pm/PackageInfo;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/protocol/App;)V

    :cond_0
    return-void
.end method

.method private setSideLoadedInfo(Lio/sentry/SentryBaseEvent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->deviceInfoUtil:Ljava/util/concurrent/Future;

    .line 281
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/DeviceInfoUtil;

    invoke-virtual {v0}, Lio/sentry/android/core/DeviceInfoUtil;->getSideLoadedInfo()Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->asTags()Ljava/util/Map;

    move-result-object v0

    .line 284
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

    .line 285
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

    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 289
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Error getting side loaded info."

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 213
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result p0

    .line 215
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThreads()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/protocol/SentryThread;

    .line 216
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/sentry/android/core/internal/util/AndroidMainThreadChecker;->isMainThread(Lio/sentry/protocol/SentryThread;)Z

    move-result v0

    .line 219
    invoke-virtual {p2}, Lio/sentry/protocol/SentryThread;->isCurrent()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_1

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/sentry/protocol/SentryThread;->setCurrent(Ljava/lang/Boolean;)V

    :cond_1
    if-nez p0, :cond_0

    .line 224
    invoke-virtual {p2}, Lio/sentry/protocol/SentryThread;->isMain()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/sentry/protocol/SentryThread;->setMain(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 1

    .line 132
    invoke-static {p2}, Lio/sentry/util/HintUtils;->shouldApplyScopeData(Lio/sentry/Hint;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 140
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Event was cached so not applying data relevant to the current app execution/version: %s"

    .line 137
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDefaultUser(Landroid/content/Context;)Lio/sentry/protocol/User;
    .locals 0

    .line 274
    new-instance p0, Lio/sentry/protocol/User;

    invoke-direct {p0}, Lio/sentry/protocol/User;-><init>()V

    .line 275
    invoke-static {p1}, Lio/sentry/android/core/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/protocol/User;->setId(Ljava/lang/String;)V

    return-object p0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1

    .line 65
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setThreads(Lio/sentry/SentryEvent;Lio/sentry/Hint;)V

    :cond_0
    const/4 p2, 0x1

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 76
    invoke-static {p1}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->fixExceptionOrder(Lio/sentry/SentryEvent;)V

    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 1

    .line 296
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->shouldApplyScopeData(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->processNonCachedEvent(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    :cond_0
    const/4 p2, 0x0

    .line 302
    invoke-direct {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->setCommons(Lio/sentry/SentryBaseEvent;ZZ)V

    return-object p1
.end method
