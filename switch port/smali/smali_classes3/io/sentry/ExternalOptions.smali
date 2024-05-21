.class public final Lio/sentry/ExternalOptions;
.super Ljava/lang/Object;
.source "ExternalOptions.java"


# static fields
.field private static final PROXY_PORT_DEFAULT:Ljava/lang/String; = "80"


# instance fields
.field private bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final contextTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cron:Lio/sentry/SentryOptions$Cron;

.field private debug:Ljava/lang/Boolean;

.field private dist:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private enableBackpressureHandling:Ljava/lang/Boolean;

.field private enableDeduplication:Ljava/lang/Boolean;

.field private enablePrettySerializationOutput:Ljava/lang/Boolean;

.field private enableTracing:Ljava/lang/Boolean;

.field private enableUncaughtExceptionHandler:Ljava/lang/Boolean;

.field private enabled:Ljava/lang/Boolean;

.field private environment:Ljava/lang/String;

.field private idleTimeout:Ljava/lang/Long;

.field private ignoredCheckIns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredExceptionsForType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inAppExcludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppIncludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

.field private printUncaughtStackTrace:Ljava/lang/Boolean;

.field private profilesSampleRate:Ljava/lang/Double;

.field private proguardUuid:Ljava/lang/String;

.field private proxy:Lio/sentry/SentryOptions$Proxy;

.field private release:Ljava/lang/String;

.field private sendClientReports:Ljava/lang/Boolean;

.field private sendModules:Ljava/lang/Boolean;

.field private serverName:Ljava/lang/String;

.field private final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tracesSampleRate:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->tags:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->inAppExcludes:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->inAppIncludes:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->contextTags:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->bundleIds:Ljava/util/Set;

    return-void
.end method

.method public static from(Lio/sentry/config/PropertiesProvider;Lio/sentry/ILogger;)Lio/sentry/ExternalOptions;
    .locals 6

    .line 59
    new-instance v0, Lio/sentry/ExternalOptions;

    invoke-direct {v0}, Lio/sentry/ExternalOptions;-><init>()V

    const-string v1, "dsn"

    .line 60
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setDsn(Ljava/lang/String;)V

    const-string v1, "environment"

    .line 61
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnvironment(Ljava/lang/String;)V

    const-string v1, "release"

    .line 62
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setRelease(Ljava/lang/String;)V

    const-string v1, "dist"

    .line 63
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setDist(Ljava/lang/String;)V

    const-string v1, "servername"

    .line 64
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setServerName(Ljava/lang/String;)V

    const-string v1, "uncaught.handler.enabled"

    .line 66
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnableUncaughtExceptionHandler(Ljava/lang/Boolean;)V

    const-string v1, "uncaught.handler.print-stacktrace"

    .line 68
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setPrintUncaughtStackTrace(Ljava/lang/Boolean;)V

    const-string v1, "enable-tracing"

    .line 69
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnableTracing(Ljava/lang/Boolean;)V

    const-string v1, "traces-sample-rate"

    .line 70
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    const-string v1, "profiles-sample-rate"

    .line 71
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    const-string v1, "debug"

    .line 72
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setDebug(Ljava/lang/Boolean;)V

    const-string v1, "enable-deduplication"

    .line 73
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnableDeduplication(Ljava/lang/Boolean;)V

    const-string v1, "send-client-reports"

    .line 74
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setSendClientReports(Ljava/lang/Boolean;)V

    const-string v1, "max-request-body-size"

    .line 75
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/SentryOptions$RequestSize;->valueOf(Ljava/lang/String;)Lio/sentry/SentryOptions$RequestSize;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V

    :cond_0
    const-string v1, "tags"

    .line 80
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lio/sentry/ExternalOptions;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "proxy.host"

    .line 85
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxy.user"

    .line 86
    invoke-interface {p0, v2}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy.pass"

    .line 87
    invoke-interface {p0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "proxy.port"

    const-string v5, "80"

    .line 88
    invoke-interface {p0, v4, v5}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_2

    .line 91
    new-instance v5, Lio/sentry/SentryOptions$Proxy;

    invoke-direct {v5, v1, v4, v2, v3}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lio/sentry/ExternalOptions;->setProxy(Lio/sentry/SentryOptions$Proxy;)V

    :cond_2
    const-string v1, "in-app-includes"

    .line 94
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v2}, Lio/sentry/ExternalOptions;->addInAppInclude(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "in-app-excludes"

    .line 97
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 98
    invoke-virtual {v0, v2}, Lio/sentry/ExternalOptions;->addInAppExclude(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "trace-propagation-targets"

    .line 103
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 104
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_6

    const-string v2, "tracing-origins"

    .line 109
    invoke-interface {p0, v2}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 110
    invoke-interface {p0, v2}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    :cond_6
    if-eqz v1, :cond_7

    .line 114
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v2}, Lio/sentry/ExternalOptions;->addTracePropagationTarget(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string v1, "context-tags"

    .line 119
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v2}, Lio/sentry/ExternalOptions;->addContextTag(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v1, "proguard-uuid"

    .line 122
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setProguardUuid(Ljava/lang/String;)V

    const-string v1, "bundle-ids"

    .line 123
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-virtual {v0, v2}, Lio/sentry/ExternalOptions;->addBundleId(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v1, "idle-timeout"

    .line 126
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setIdleTimeout(Ljava/lang/Long;)V

    const-string v1, "enabled"

    .line 128
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnabled(Ljava/lang/Boolean;)V

    const-string v1, "enable-pretty-serialization-output"

    .line 131
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnablePrettySerializationOutput(Ljava/lang/Boolean;)V

    const-string v1, "send-modules"

    .line 133
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setSendModules(Ljava/lang/Boolean;)V

    const-string v1, "ignored-checkins"

    .line 135
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setIgnoredCheckIns(Ljava/util/List;)V

    const-string v1, "enable-backpressure-handling"

    .line 138
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lio/sentry/ExternalOptions;->setEnableBackpressureHandling(Ljava/lang/Boolean;)V

    const-string v1, "ignored-exceptions-for-type"

    .line 141
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 144
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 145
    invoke-virtual {v0, v3}, Lio/sentry/ExternalOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    goto :goto_7

    .line 147
    :cond_a
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable"

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 154
    :catch_0
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found"

    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v3, v4, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    const-string p1, "cron.default-checkin-margin"

    .line 163
    invoke-interface {p0, p1}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "cron.default-max-runtime"

    .line 165
    invoke-interface {p0, v1}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "cron.default-timezone"

    .line 166
    invoke-interface {p0, v2}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cron.default-failure-issue-threshold"

    .line 168
    invoke-interface {p0, v3}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "cron.default-recovery-threshold"

    .line 170
    invoke-interface {p0, v4}, Lio/sentry/config/PropertiesProvider;->getLongProperty(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p1, :cond_c

    if-nez v1, :cond_c

    if-nez v2, :cond_c

    if-nez v3, :cond_c

    if-eqz p0, :cond_d

    .line 177
    :cond_c
    new-instance v4, Lio/sentry/SentryOptions$Cron;

    invoke-direct {v4}, Lio/sentry/SentryOptions$Cron;-><init>()V

    .line 178
    invoke-virtual {v4, p1}, Lio/sentry/SentryOptions$Cron;->setDefaultCheckinMargin(Ljava/lang/Long;)V

    .line 179
    invoke-virtual {v4, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultMaxRuntime(Ljava/lang/Long;)V

    .line 180
    invoke-virtual {v4, v2}, Lio/sentry/SentryOptions$Cron;->setDefaultTimezone(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4, v3}, Lio/sentry/SentryOptions$Cron;->setDefaultFailureIssueThreshold(Ljava/lang/Long;)V

    .line 182
    invoke-virtual {v4, p0}, Lio/sentry/SentryOptions$Cron;->setDefaultRecoveryThreshold(Ljava/lang/Long;)V

    .line 184
    invoke-virtual {v0, v4}, Lio/sentry/ExternalOptions;->setCron(Lio/sentry/SentryOptions$Cron;)V

    :cond_d
    return-object v0
.end method


# virtual methods
.method public addBundleId(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->bundleIds:Ljava/util/Set;

    .line 396
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->contextTags:Ljava/util/List;

    .line 356
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIgnoredExceptionForType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 360
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->inAppExcludes:Ljava/util/List;

    .line 337
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->inAppIncludes:Ljava/util/List;

    .line 333
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTracePropagationTarget(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    .line 351
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addTracingOrigin(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    invoke-virtual {p0, p1}, Lio/sentry/ExternalOptions;->addTracePropagationTarget(Ljava/lang/String;)V

    return-void
.end method

.method public getBundleIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->bundleIds:Ljava/util/Set;

    return-object p0
.end method

.method public getContextTags()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->contextTags:Ljava/util/List;

    return-object p0
.end method

.method public getCron()Lio/sentry/SentryOptions$Cron;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-object p0
.end method

.method public getDebug()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->debug:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getDist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->dist:Ljava/lang/String;

    return-object p0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->dsn:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableDeduplication()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->enableDeduplication:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getEnableTracing()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->enableTracing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->enableUncaughtExceptionHandler:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->environment:Ljava/lang/String;

    return-object p0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->idleTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public getIgnoredCheckIns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->ignoredCheckIns:Ljava/util/List;

    return-object p0
.end method

.method public getIgnoredExceptionsForType()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->ignoredExceptionsForType:Ljava/util/Set;

    return-object p0
.end method

.method public getInAppExcludes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->inAppExcludes:Ljava/util/List;

    return-object p0
.end method

.method public getInAppIncludes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->inAppIncludes:Ljava/util/List;

    return-object p0
.end method

.method public getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-object p0
.end method

.method public getPrintUncaughtStackTrace()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->printUncaughtStackTrace:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->profilesSampleRate:Ljava/lang/Double;

    return-object p0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->proguardUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getProxy()Lio/sentry/SentryOptions$Proxy;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-object p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getSendClientReports()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->sendClientReports:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method public getTags()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public getTracePropagationTargets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    return-object p0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->tracesSampleRate:Ljava/lang/Double;

    return-object p0
.end method

.method public getTracingOrigins()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/sentry/ExternalOptions;->tracePropagationTargets:Ljava/util/List;

    return-object p0
.end method

.method public isEnableBackpressureHandling()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->enableBackpressureHandling:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isEnablePrettySerializationOutput()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->enablePrettySerializationOutput:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isEnabled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->enabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isSendModules()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->sendModules:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setCron(Lio/sentry/SentryOptions$Cron;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-void
.end method

.method public setDebug(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->debug:Ljava/lang/Boolean;

    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->dist:Ljava/lang/String;

    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->dsn:Ljava/lang/String;

    return-void
.end method

.method public setEnableBackpressureHandling(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableBackpressureHandling:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableDeduplication(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableDeduplication:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnablePrettySerializationOutput(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->enablePrettySerializationOutput:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableTracing(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableTracing:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->enableUncaughtExceptionHandler:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->environment:Ljava/lang/String;

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->idleTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/ExternalOptions;->ignoredCheckIns:Ljava/util/List;

    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-void
.end method

.method public setPrintUncaughtStackTrace(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->printUncaughtStackTrace:Ljava/lang/Boolean;

    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->profilesSampleRate:Ljava/lang/Double;

    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->proguardUuid:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Lio/sentry/SentryOptions$Proxy;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->release:Ljava/lang/String;

    return-void
.end method

.method public setSendClientReports(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->sendClientReports:Ljava/lang/Boolean;

    return-void
.end method

.method public setSendModules(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->sendModules:Ljava/lang/Boolean;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/ExternalOptions;->tags:Ljava/util/Map;

    .line 364
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/ExternalOptions;->tracesSampleRate:Ljava/lang/Double;

    return-void
.end method
