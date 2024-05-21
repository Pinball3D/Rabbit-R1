.class public final Lio/sentry/android/core/SentryAndroid;
.super Ljava/lang/Object;
.source "SentryAndroid.java"


# static fields
.field private static final FRAGMENT_CLASS_NAME:Ljava/lang/String; = "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

.field static final SENTRY_FRAGMENT_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.fragment.FragmentLifecycleIntegration"

.field static final SENTRY_TIMBER_INTEGRATION_CLASS_NAME:Ljava/lang/String; = "io.sentry.android.timber.SentryTimberIntegration"

.field private static final TIMBER_CLASS_NAME:Ljava/lang/String; = "timber.log.Timber"

.field private static final sdkInitMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SentryAndroid;->sdkInitMillis:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deduplicateIntegrations(Lio/sentry/SentryOptions;ZZ)V
    .locals 5

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Integration;

    if-eqz p1, :cond_1

    .line 190
    instance-of v4, v3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    if-eqz v4, :cond_1

    .line 191
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p2, :cond_0

    .line 195
    instance-of v4, v3, Lio/sentry/android/timber/SentryTimberIntegration;

    if-eqz v4, :cond_0

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    move p1, p2

    .line 202
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_3

    .line 203
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/Integration;

    .line 204
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 208
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_4

    .line 209
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    if-ge p2, p1, :cond_4

    .line 210
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/Integration;

    .line 211
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 48
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Lio/sentry/ILogger;)V
    .locals 1

    .line 58
    new-instance v0, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, p1, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/ILogger;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lio/sentry/android/core/SentryAndroid;

    monitor-enter v0

    .line 87
    :try_start_0
    const-class v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 88
    invoke-static {v1}, Lio/sentry/OptionsContainer;->create(Ljava/lang/Class;)Lio/sentry/OptionsContainer;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, p2}, Lio/sentry/android/core/SentryAndroid$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    const/4 p0, 0x1

    .line 87
    invoke-static {v1, v2, p0}, Lio/sentry/Sentry;->init(Lio/sentry/OptionsContainer;Lio/sentry/Sentry$OptionsConfiguration;Z)V

    .line 147
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object p0

    .line 148
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lio/sentry/android/core/ContextUtils;->isForegroundImportance()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "session.start"

    .line 149
    invoke-static {p2}, Lio/sentry/android/core/internal/util/BreadcrumbFactory;->forSession(Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object p2

    invoke-interface {p0, p2}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 150
    invoke-interface {p0}, Lio/sentry/IHub;->startSession()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    :try_start_1
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 163
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 159
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 153
    sget-object p2, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "Fatal error during SentryAndroid.init(...)"

    invoke-interface {p1, p2, v1, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to initialize Sentry\'s SDK"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/sentry/Sentry$OptionsConfiguration<",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    invoke-static {p0, v0, p1}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/Sentry$OptionsConfiguration;)V

    return-void
.end method

.method static synthetic lambda$init$0(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$init$1(Lio/sentry/ILogger;Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 12

    .line 90
    new-instance v0, Lio/sentry/android/core/LoadClass;

    invoke-direct {v0}, Lio/sentry/android/core/LoadClass;-><init>()V

    const-string v1, "timber.log.Timber"

    .line 92
    invoke-virtual {v0, v1, p3}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v1

    const-string v2, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

    .line 94
    invoke-virtual {v0, v2, p3}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string v2, "io.sentry.android.fragment.FragmentLifecycleIntegration"

    .line 97
    invoke-virtual {v0, v2, p3}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v1, :cond_1

    const-string v1, "io.sentry.android.timber.SentryTimberIntegration"

    .line 101
    invoke-virtual {v0, v1, p3}, Lio/sentry/android/core/LoadClass;->isClassAvailable(Ljava/lang/String;Lio/sentry/SentryOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 103
    :goto_1
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {v0, p0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 104
    new-instance v1, Lio/sentry/android/core/LoadClass;

    invoke-direct {v1}, Lio/sentry/android/core/LoadClass;-><init>()V

    .line 105
    new-instance v4, Lio/sentry/android/core/ActivityFramesTracker;

    invoke-direct {v4, v1, p3}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 108
    invoke-static {p3, p1, p0, v0}, Lio/sentry/android/core/AndroidOptionsInitializer;->loadDefaultAndMetadataOptions(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    move-object v5, p1

    move-object v6, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v4

    move v10, v2

    move v11, v3

    .line 114
    invoke-static/range {v5 .. v11}, Lio/sentry/android/core/AndroidOptionsInitializer;->installDefaultIntegrations(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZ)V

    .line 123
    invoke-interface {p2, p3}, Lio/sentry/Sentry$OptionsConfiguration;->configure(Lio/sentry/SentryOptions;)V

    .line 127
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p0

    .line 128
    invoke-virtual {p3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 129
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p2

    const/16 v5, 0x18

    if-lt p2, v5, :cond_2

    .line 130
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p2

    .line 131
    invoke-virtual {p2}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 132
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 135
    :cond_2
    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getSdkInitTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasNotStarted()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-wide v5, Lio/sentry/android/core/SentryAndroid;->sdkInitMillis:J

    .line 137
    invoke-virtual {p0, v5, v6}, Lio/sentry/android/core/performance/TimeSpan;->setStartedAt(J)V

    .line 140
    :cond_3
    invoke-static {p3, p1, v0, v1, v4}, Lio/sentry/android/core/AndroidOptionsInitializer;->initializeIntegrationsAndProcessors(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;)V

    .line 143
    invoke-static {p3, v2, v3}, Lio/sentry/android/core/SentryAndroid;->deduplicateIntegrations(Lio/sentry/SentryOptions;ZZ)V

    return-void
.end method
