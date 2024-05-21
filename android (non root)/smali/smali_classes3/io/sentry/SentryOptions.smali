.class public Lio/sentry/SentryOptions;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryOptions$BeforeSendCallback;,
        Lio/sentry/SentryOptions$BeforeSendTransactionCallback;,
        Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;,
        Lio/sentry/SentryOptions$Proxy;,
        Lio/sentry/SentryOptions$TracesSamplerCallback;,
        Lio/sentry/SentryOptions$RequestSize;,
        Lio/sentry/SentryOptions$ProfilesSamplerCallback;,
        Lio/sentry/SentryOptions$BeforeEnvelopeCallback;,
        Lio/sentry/SentryOptions$BeforeEmitMetricCallback;,
        Lio/sentry/SentryOptions$Cron;
    }
.end annotation


# static fields
.field static final DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

.field private static final DEFAULT_ENVIRONMENT:Ljava/lang/String; = "production"

.field public static final DEFAULT_PROPAGATION_TARGETS:Ljava/lang/String; = ".*"


# instance fields
.field private attachServerName:Z

.field private attachStacktrace:Z

.field private attachThreads:Z

.field private backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

.field private beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

.field private beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

.field private beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

.field private beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

.field private beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

.field private final bundleIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cacheDirPath:Ljava/lang/String;

.field clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

.field private connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

.field private connectionTimeoutMillis:I

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

.field private dateProvider:Lio/sentry/SentryDateProvider;

.field private debug:Z

.field private debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

.field private final defaultTracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private diagnosticLevel:Lio/sentry/SentryLevel;

.field private dist:Ljava/lang/String;

.field private distinctId:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private dsnHash:Ljava/lang/String;

.field private enableAppStartProfiling:Z

.field private enableAutoSessionTracking:Z

.field private enableBackpressureHandling:Z

.field private enableDeduplication:Z

.field private enableDefaultTagsForMetrics:Z

.field private enableExternalConfiguration:Z

.field private enableMetrics:Z

.field private enablePrettySerializationOutput:Z

.field private enableScopePersistence:Z

.field private enableShutdownHook:Z

.field private enableSpanLocalMetricAggregation:Z

.field private enableSpotlight:Z

.field private enableTimeToFullDisplayTracing:Z

.field private enableTracing:Ljava/lang/Boolean;

.field private enableUncaughtExceptionHandler:Z

.field private enableUserInteractionBreadcrumbs:Z

.field private enableUserInteractionTracing:Z

.field private enabled:Z

.field private envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

.field private envelopeReader:Lio/sentry/IEnvelopeReader;

.field private environment:Ljava/lang/String;

.field private final eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Lio/sentry/ISentryExecutorService;

.field private flushTimeoutMillis:J

.field private final fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

.field private final gestureTargetLocators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation
.end field

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

.field private instrumenter:Lio/sentry/Instrumenter;

.field private final integrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lio/sentry/ILogger;

.field private mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

.field private maxAttachmentSize:J

.field private maxBreadcrumbs:I

.field private maxCacheItems:I

.field private maxDepth:I

.field private maxQueueSize:I

.field private maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

.field private maxSpans:I

.field private maxTraceFileSize:J

.field private modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final optionsObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final performanceCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation
.end field

.field private printUncaughtStackTrace:Z

.field private profilesSampleRate:Ljava/lang/Double;

.field private profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

.field private profilingTracesHz:I

.field private proguardUuid:Ljava/lang/String;

.field private proxy:Lio/sentry/SentryOptions$Proxy;

.field private readTimeoutMillis:I

.field private release:Ljava/lang/String;

.field private sampleRate:Ljava/lang/Double;

.field private sdkVersion:Lio/sentry/protocol/SdkVersion;

.field private sendClientReports:Z

.field private sendDefaultPii:Z

.field private sendModules:Z

.field private sentryClientName:Ljava/lang/String;

.field private serializer:Lio/sentry/ISerializer;

.field private serverName:Ljava/lang/String;

.field private sessionFlushTimeoutMillis:J

.field private sessionTrackingIntervalMillis:J

.field private shutdownTimeoutMillis:J

.field private spotlightConnectionUrl:Ljava/lang/String;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

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

.field private traceOptionsRequests:Z

.field private tracePropagationTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceSampling:Z

.field private tracesSampleRate:Ljava/lang/Double;

.field private tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

.field private transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

.field private transactionProfiler:Lio/sentry/ITransactionProfiler;

.field private transportFactory:Lio/sentry/ITransportFactory;

.field private transportGate:Lio/sentry/transport/ITransportGate;

.field private final viewHierarchyExporters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    sput-object v0, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2500
    invoke-direct {p0, v0}, Lio/sentry/SentryOptions;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 7

    .line 2508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 74
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 77
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    iput-wide v2, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    .line 116
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    sget-object v2, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    iput-object v2, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    .line 122
    new-instance v2, Lio/sentry/EnvelopeReader;

    new-instance v3, Lio/sentry/JsonSerializer;

    invoke-direct {v3, p0}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    invoke-direct {v2, v3}, Lio/sentry/EnvelopeReader;-><init>(Lio/sentry/ISerializer;)V

    iput-object v2, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/IEnvelopeReader;

    .line 125
    new-instance v2, Lio/sentry/JsonSerializer;

    invoke-direct {v2, p0}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v2, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/ISerializer;

    const/16 v2, 0x64

    iput v2, p0, Lio/sentry/SentryOptions;->maxDepth:I

    const/16 v3, 0x1e

    iput v3, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    iput v3, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    iput v2, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    .line 211
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 217
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 223
    invoke-static {}, Lio/sentry/NoOpTransportFactory;->getInstance()Lio/sentry/NoOpTransportFactory;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    .line 229
    invoke-static {}, Lio/sentry/transport/NoOpTransportGate;->getInstance()Lio/sentry/transport/NoOpTransportGate;

    move-result-object v2

    iput-object v2, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    .line 272
    invoke-static {}, Lio/sentry/NoOpSentryExecutorService;->getInstance()Lio/sentry/ISentryExecutorService;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    const/16 v4, 0x1388

    iput v4, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    iput v4, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    .line 281
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    .line 293
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 295
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 304
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    const-wide/32 v4, 0x1400000

    iput-wide v4, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    const/16 v4, 0x3e8

    iput v4, p0, Lio/sentry/SentryOptions;->maxSpans:I

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    .line 326
    sget-object v4, Lio/sentry/SentryOptions$RequestSize;->NONE:Lio/sentry/SentryOptions$RequestSize;

    iput-object v4, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    const-wide/32 v4, 0x500000

    iput-wide v4, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    .line 352
    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    const/4 v4, 0x0

    iput-object v4, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    const-string v5, ".*"

    .line 360
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    const-wide/16 v5, 0xbb8

    .line 373
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    .line 379
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    .line 385
    new-instance v5, Lio/sentry/clientreport/ClientReportRecorder;

    invoke-direct {v5, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    iput-object v5, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    .line 388
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    .line 391
    invoke-static {}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    .line 400
    sget-object v5, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    iput-object v5, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    .line 403
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 409
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 411
    invoke-static {}, Lio/sentry/util/thread/NoOpMainThreadChecker;->getInstance()Lio/sentry/util/thread/NoOpMainThreadChecker;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    .line 418
    new-instance v5, Lio/sentry/SentryAutoDateProvider;

    invoke-direct {v5}, Lio/sentry/SentryAutoDateProvider;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/SentryDateProvider;

    .line 421
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 425
    invoke-static {}, Lio/sentry/NoOpTransactionPerformanceCollector;->getInstance()Lio/sentry/NoOpTransactionPerformanceCollector;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    .line 432
    invoke-static {}, Lio/sentry/FullyDisplayedReporter;->getInstance()Lio/sentry/FullyDisplayedReporter;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    .line 434
    new-instance v5, Lio/sentry/NoOpConnectionStatusProvider;

    invoke-direct {v5}, Lio/sentry/NoOpConnectionStatusProvider;-><init>()V

    iput-object v5, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enabled:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->sendModules:Z

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    iput-object v4, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    .line 458
    invoke-static {}, Lio/sentry/backpressure/NoOpBackpressureMonitor;->getInstance()Lio/sentry/backpressure/NoOpBackpressureMonitor;

    move-result-object v5

    iput-object v5, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    iput-boolean v3, p0, Lio/sentry/SentryOptions;->enableMetrics:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableDefaultTagsForMetrics:Z

    iput-boolean v2, p0, Lio/sentry/SentryOptions;->enableSpanLocalMetricAggregation:Z

    iput-object v4, p0, Lio/sentry/SentryOptions;->beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    const/16 v2, 0x65

    iput v2, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    iput-object v4, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    if-nez p1, :cond_1

    .line 2512
    new-instance p1, Lio/sentry/SentryExecutorService;

    invoke-direct {p1}, Lio/sentry/SentryExecutorService;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    .line 2516
    new-instance p1, Lio/sentry/UncaughtExceptionHandlerIntegration;

    invoke-direct {p1}, Lio/sentry/UncaughtExceptionHandlerIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2518
    new-instance p1, Lio/sentry/ShutdownHookIntegration;

    invoke-direct {p1}, Lio/sentry/ShutdownHookIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2519
    new-instance p1, Lio/sentry/SpotlightIntegration;

    invoke-direct {p1}, Lio/sentry/SpotlightIntegration;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2521
    new-instance p1, Lio/sentry/MainEventProcessor;

    invoke-direct {p1, p0}, Lio/sentry/MainEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2522
    new-instance p1, Lio/sentry/DuplicateEventDetectionEventProcessor;

    invoke-direct {p1, p0}, Lio/sentry/DuplicateEventDetectionEventProcessor;-><init>(Lio/sentry/SentryOptions;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2524
    invoke-static {}, Lio/sentry/util/Platform;->isJvm()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2525
    new-instance p1, Lio/sentry/SentryRuntimeEventProcessor;

    invoke-direct {p1}, Lio/sentry/SentryRuntimeEventProcessor;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "sentry.java/7.8.0"

    .line 2528
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 2529
    invoke-direct {p0}, Lio/sentry/SentryOptions;->createSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 2530
    invoke-direct {p0}, Lio/sentry/SentryOptions;->addPackageInfo()V

    :cond_1
    return-void
.end method

.method private addPackageInfo()V
    .locals 2

    .line 2670
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string v0, "maven:io.sentry:sentry"

    const-string v1, "7.8.0"

    .line 2671
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 2

    .line 2662
    new-instance p0, Lio/sentry/protocol/SdkVersion;

    const-string v0, "sentry.java"

    const-string v1, "7.8.0"

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2664
    invoke-virtual {p0, v1}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    return-object p0
.end method

.method public static empty()Lio/sentry/SentryOptions;
    .locals 2

    .line 2495
    new-instance v0, Lio/sentry/SentryOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/sentry/SentryOptions;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public addBundleId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1835
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1836
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    .line 1837
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addContextTag(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    .line 1866
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    .line 488
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

    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 1519
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInAppExclude(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

    .line 972
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInAppInclude(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    .line 990
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIntegration(Lio/sentry/Integration;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    .line 506
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOptionsObserver(Lio/sentry/IOptionsObserver;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    .line 1399
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    .line 2226
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScopeObserver(Lio/sentry/IScopeObserver;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    .line 1380
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTracingOrigin(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1766
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 1768
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    .line 1769
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method containsIgnoredExceptionForType(Ljava/lang/Throwable;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

    .line 1529
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    return-object p0
.end method

.method public getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    return-object p0
.end method

.method public getBeforeEmitMetricCallback()Lio/sentry/SentryOptions$BeforeEmitMetricCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    return-object p0
.end method

.method public getBeforeEnvelopeCallback()Lio/sentry/SentryOptions$BeforeEnvelopeCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    return-object p0
.end method

.method public getBeforeSend()Lio/sentry/SentryOptions$BeforeSendCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-object p0
.end method

.method public getBeforeSendTransaction()Lio/sentry/SentryOptions$BeforeSendTransactionCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    return-object p0
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

    iget-object p0, p0, Lio/sentry/SentryOptions;->bundleIds:Ljava/util/Set;

    return-object p0
.end method

.method public getCacheDirPath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 758
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 762
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getCacheDirPathWithoutDsn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    return-object p0
.end method

.method public getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    return-object p0
.end method

.method public getConnectionTimeoutMillis()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    return p0
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

    iget-object p0, p0, Lio/sentry/SentryOptions;->contextTags:Ljava/util/List;

    return-object p0
.end method

.method public getCron()Lio/sentry/SentryOptions$Cron;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-object p0
.end method

.method public getDateProvider()Lio/sentry/SentryDateProvider;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/SentryDateProvider;

    return-object p0
.end method

.method public getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    return-object p0
.end method

.method public getDiagnosticLevel()Lio/sentry/SentryLevel;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    return-object p0
.end method

.method public getDist()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    return-object p0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    return-object p0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    return-object p0
.end method

.method public getEnableTracing()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->enableTracing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    return-object p0
.end method

.method public getEnvelopeReader()Lio/sentry/IEnvelopeReader;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/IEnvelopeReader;

    return-object p0
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "production"

    :goto_0
    return-object p0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->eventProcessors:Ljava/util/List;

    return-object p0
.end method

.method public getExecutorService()Lio/sentry/ISentryExecutorService;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    return-object p0
.end method

.method public getFlushTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    return-wide v0
.end method

.method public getFullyDisplayedReporter()Lio/sentry/FullyDisplayedReporter;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->fullyDisplayedReporter:Lio/sentry/FullyDisplayedReporter;

    return-object p0
.end method

.method public getGestureTargetLocators()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    return-object p0
.end method

.method public getIdleTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

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

    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

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

    iget-object p0, p0, Lio/sentry/SentryOptions;->ignoredExceptionsForType:Ljava/util/Set;

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

    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppExcludes:Ljava/util/List;

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

    iget-object p0, p0, Lio/sentry/SentryOptions;->inAppIncludes:Ljava/util/List;

    return-object p0
.end method

.method public getInstrumenter()Lio/sentry/Instrumenter;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    return-object p0
.end method

.method public getIntegrations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Integration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->integrations:Ljava/util/List;

    return-object p0
.end method

.method public getLogger()Lio/sentry/ILogger;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    return-object p0
.end method

.method public getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

    return-object p0
.end method

.method public getMaxAttachmentSize()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    return-wide v0
.end method

.method public getMaxBreadcrumbs()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    return p0
.end method

.method public getMaxCacheItems()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    return p0
.end method

.method public getMaxDepth()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->maxDepth:I

    return p0
.end method

.method public getMaxQueueSize()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    return p0
.end method

.method public getMaxRequestBodySize()Lio/sentry/SentryOptions$RequestSize;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-object p0
.end method

.method public getMaxSpans()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->maxSpans:I

    return p0
.end method

.method public getMaxTraceFileSize()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    return-wide v0
.end method

.method public getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    return-object p0
.end method

.method public getOptionsObservers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IOptionsObserver;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->optionsObservers:Ljava/util/List;

    return-object p0
.end method

.method public getOutboxPath()Ljava/lang/String;
    .locals 2

    .line 785
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 789
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "outbox"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPerformanceCollectors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IPerformanceCollector;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->performanceCollectors:Ljava/util/List;

    return-object p0
.end method

.method public getProfilesSampleRate()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    return-object p0
.end method

.method public getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    return-object p0
.end method

.method public getProfilingTracesDirPath()Ljava/lang/String;
    .locals 2

    .line 1737
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1741
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "profiling_traces"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProfilingTracesHz()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    return p0
.end method

.method public getProguardUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getProxy()Lio/sentry/SentryOptions$Proxy;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-object p0
.end method

.method public getReadTimeoutMillis()I
    .locals 0

    iget p0, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    return p0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    return-object p0
.end method

.method public getSampleRate()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    return-object p0
.end method

.method public getScopeObservers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/IScopeObserver;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->observers:Ljava/util/List;

    return-object p0
.end method

.method public getSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-object p0
.end method

.method public getSentryClientName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    return-object p0
.end method

.method public getSerializer()Lio/sentry/ISerializer;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/ISerializer;

    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionFlushTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    return-wide v0
.end method

.method public getSessionTrackingIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    return-wide v0
.end method

.method public getShutdownTimeout()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getShutdownTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-wide v0
.end method

.method public getSpotlightConnectionUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

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

    iget-object p0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public getTracePropagationTargets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryOptions;->defaultTracePropagationTargets:Ljava/util/List;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getTracesSampleRate()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    return-object p0
.end method

.method public getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

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

    .line 1753
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTransactionPerformanceCollector()Lio/sentry/TransactionPerformanceCollector;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    return-object p0
.end method

.method public getTransactionProfiler()Lio/sentry/ITransactionProfiler;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    return-object p0
.end method

.method public getTransportFactory()Lio/sentry/ITransportFactory;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    return-object p0
.end method

.method public getTransportGate()Lio/sentry/transport/ITransportGate;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    return-object p0
.end method

.method public final getViewHierarchyExporters()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    return-object p0
.end method

.method public isAttachServerName()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    return p0
.end method

.method public isAttachStacktrace()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    return p0
.end method

.method public isAttachThreads()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    return p0
.end method

.method public isDebug()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->debug:Z

    return p0
.end method

.method public isEnableAppStartProfiling()Z
    .locals 1

    .line 2160
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableAutoSessionTracking()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    return p0
.end method

.method public isEnableBackpressureHandling()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    return p0
.end method

.method public isEnableDeduplication()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    return p0
.end method

.method public isEnableDefaultTagsForMetrics()Z
    .locals 1

    .line 2359
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableDefaultTagsForMetrics:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableExternalConfiguration()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    return p0
.end method

.method public isEnableMetrics()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableMetrics:Z

    return p0
.end method

.method public isEnablePrettySerializationOutput()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    return p0
.end method

.method public isEnableScopePersistence()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    return p0
.end method

.method public isEnableShutdownHook()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    return p0
.end method

.method public isEnableSpanLocalMetricAggregation()Z
    .locals 1

    .line 2349
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableMetrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableSpanLocalMetricAggregation:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnableSpotlight()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    return p0
.end method

.method public isEnableTimeToFullDisplayTracing()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    return p0
.end method

.method public isEnableUncaughtExceptionHandler()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    return p0
.end method

.method public isEnableUserInteractionBreadcrumbs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    return p0
.end method

.method public isEnableUserInteractionTracing()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->enabled:Z

    return p0
.end method

.method public isPrintUncaughtStackTrace()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    return p0
.end method

.method public isProfilingEnabled()Z
    .locals 4

    .line 1670
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    .line 1671
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampler()Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    move-result-object p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSendClientReports()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    return p0
.end method

.method public isSendDefaultPii()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    return p0
.end method

.method public isSendModules()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->sendModules:Z

    return p0
.end method

.method public isTraceOptionsRequests()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    return p0
.end method

.method public isTraceSampling()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    return p0
.end method

.method public isTracingEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryOptions;->enableTracing:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1496
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 1499
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTracesSampler()Lio/sentry/SentryOptions$TracesSamplerCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public merge(Lio/sentry/ExternalOptions;)V
    .locals 4

    .line 2541
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2542
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDsn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    .line 2544
    :cond_0
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2545
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    .line 2547
    :cond_1
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2548
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getRelease()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 2550
    :cond_2
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2551
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDist(Ljava/lang/String;)V

    .line 2553
    :cond_3
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2554
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setServerName(Ljava/lang/String;)V

    .line 2556
    :cond_4
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2557
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProxy()Lio/sentry/SentryOptions$Proxy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProxy(Lio/sentry/SentryOptions$Proxy;)V

    .line 2559
    :cond_5
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2560
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableUncaughtExceptionHandler()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 2562
    :cond_6
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getPrintUncaughtStackTrace()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2563
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getPrintUncaughtStackTrace()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setPrintUncaughtStackTrace(Z)V

    .line 2565
    :cond_7
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2566
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableTracing(Ljava/lang/Boolean;)V

    .line 2568
    :cond_8
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 2569
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 2571
    :cond_9
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2572
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 2574
    :cond_a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2575
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getDebug()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 2577
    :cond_b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableDeduplication()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2578
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getEnableDeduplication()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableDeduplication(Z)V

    .line 2580
    :cond_c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSendClientReports()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2581
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getSendClientReports()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendClientReports(Z)V

    .line 2583
    :cond_d
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTags()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2584
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 2585
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2587
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getInAppIncludes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2589
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    goto :goto_1

    .line 2591
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getInAppExcludes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2592
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2593
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addInAppExclude(Ljava/lang/String;)V

    goto :goto_2

    .line 2596
    :cond_10
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredExceptionsForType()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2597
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addIgnoredExceptionForType(Ljava/lang/Class;)V

    goto :goto_3

    .line 2599
    :cond_11
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2600
    new-instance v0, Ljava/util/ArrayList;

    .line 2601
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2602
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 2604
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getContextTags()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2605
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2606
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addContextTag(Ljava/lang/String;)V

    goto :goto_4

    .line 2608
    :cond_13
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2609
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 2611
    :cond_14
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2612
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 2614
    :cond_15
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getBundleIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2615
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    goto :goto_5

    .line 2618
    :cond_16
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2619
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnabled(Z)V

    .line 2621
    :cond_17
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnablePrettySerializationOutput()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2622
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnablePrettySerializationOutput()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnablePrettySerializationOutput(Z)V

    .line 2625
    :cond_18
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendModules()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2626
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isSendModules()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setSendModules(Z)V

    .line 2628
    :cond_19
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2629
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getIgnoredCheckIns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2630
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setIgnoredCheckIns(Ljava/util/List;)V

    .line 2632
    :cond_1a
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableBackpressureHandling()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2633
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->isEnableBackpressureHandling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnableBackpressureHandling(Z)V

    .line 2636
    :cond_1b
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2637
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 2638
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setCron(Lio/sentry/SentryOptions$Cron;)V

    goto/16 :goto_6

    .line 2640
    :cond_1c
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2641
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultCheckinMargin()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultCheckinMargin(Ljava/lang/Long;)V

    .line 2643
    :cond_1d
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2644
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultMaxRuntime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultMaxRuntime(Ljava/lang/Long;)V

    .line 2646
    :cond_1e
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2647
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultTimezone(Ljava/lang/String;)V

    .line 2649
    :cond_1f
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2650
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    .line 2651
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions$Cron;->getDefaultFailureIssueThreshold()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryOptions$Cron;->setDefaultFailureIssueThreshold(Ljava/lang/Long;)V

    .line 2653
    :cond_20
    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2654
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object p0

    invoke-virtual {p1}, Lio/sentry/ExternalOptions;->getCron()Lio/sentry/SentryOptions$Cron;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions$Cron;->getDefaultRecoveryThreshold()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions$Cron;->setDefaultRecoveryThreshold(Ljava/lang/Long;)V

    :cond_21
    :goto_6
    return-void
.end method

.method public setAttachServerName(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachServerName:Z

    return-void
.end method

.method public setAttachStacktrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachStacktrace:Z

    return-void
.end method

.method public setAttachThreads(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->attachThreads:Z

    return-void
.end method

.method public setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->backpressureMonitor:Lio/sentry/backpressure/IBackpressureMonitor;

    return-void
.end method

.method public setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeBreadcrumb:Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    return-void
.end method

.method public setBeforeEmitMetricCallback(Lio/sentry/SentryOptions$BeforeEmitMetricCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeEmitMetricCallback:Lio/sentry/SentryOptions$BeforeEmitMetricCallback;

    return-void
.end method

.method public setBeforeEnvelopeCallback(Lio/sentry/SentryOptions$BeforeEnvelopeCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeEnvelopeCallback:Lio/sentry/SentryOptions$BeforeEnvelopeCallback;

    return-void
.end method

.method public setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSend:Lio/sentry/SentryOptions$BeforeSendCallback;

    return-void
.end method

.method public setBeforeSendTransaction(Lio/sentry/SentryOptions$BeforeSendTransactionCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->beforeSendTransaction:Lio/sentry/SentryOptions$BeforeSendTransactionCallback;

    return-void
.end method

.method public setCacheDirPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->cacheDirPath:Ljava/lang/String;

    return-void
.end method

.method public setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->connectionStatusProvider:Lio/sentry/IConnectionStatusProvider;

    return-void
.end method

.method public setConnectionTimeoutMillis(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->connectionTimeoutMillis:I

    return-void
.end method

.method public setCron(Lio/sentry/SentryOptions$Cron;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->cron:Lio/sentry/SentryOptions$Cron;

    return-void
.end method

.method public setDateProvider(Lio/sentry/SentryDateProvider;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->dateProvider:Lio/sentry/SentryDateProvider;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->debug:Z

    return-void
.end method

.method public setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1988
    :cond_0
    invoke-static {}, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;->getInstance()Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->debugMetaLoader:Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    return-void
.end method

.method public setDiagnosticLevel(Lio/sentry/SentryLevel;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lio/sentry/SentryOptions;->DEFAULT_DIAGNOSTIC_LEVEL:Lio/sentry/SentryLevel;

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->diagnosticLevel:Lio/sentry/SentryLevel;

    return-void
.end method

.method public setDist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->dist:Ljava/lang/String;

    return-void
.end method

.method public setDistinctId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->distinctId:Ljava/lang/String;

    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/SentryOptions;->dsn:Ljava/lang/String;

    iget-object v0, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    .line 535
    invoke-static {p1, v0}, Lio/sentry/util/StringUtils;->calculateStringHash(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryOptions;->dsnHash:Ljava/lang/String;

    return-void
.end method

.method public setEnableAppStartProfiling(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAppStartProfiling:Z

    return-void
.end method

.method public setEnableAutoSessionTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableAutoSessionTracking:Z

    return-void
.end method

.method public setEnableBackpressureHandling(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableBackpressureHandling:Z

    return-void
.end method

.method public setEnableDeduplication(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDeduplication:Z

    return-void
.end method

.method public setEnableDefaultTagsForMetrics(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableDefaultTagsForMetrics:Z

    return-void
.end method

.method public setEnableExternalConfiguration(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableExternalConfiguration:Z

    return-void
.end method

.method public setEnableMetrics(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableMetrics:Z

    return-void
.end method

.method public setEnablePrettySerializationOutput(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enablePrettySerializationOutput:Z

    return-void
.end method

.method public setEnableScopePersistence(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableScopePersistence:Z

    return-void
.end method

.method public setEnableShutdownHook(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableShutdownHook:Z

    return-void
.end method

.method public setEnableSpanLocalMetricAggregation(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableSpanLocalMetricAggregation:Z

    return-void
.end method

.method public setEnableSpotlight(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableSpotlight:Z

    return-void
.end method

.method public setEnableTimeToFullDisplayTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableTimeToFullDisplayTracing:Z

    return-void
.end method

.method public setEnableTracing(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->enableTracing:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnableUncaughtExceptionHandler(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUncaughtExceptionHandler:Z

    return-void
.end method

.method public setEnableUserInteractionBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionBreadcrumbs:Z

    return-void
.end method

.method public setEnableUserInteractionTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enableUserInteractionTracing:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->enabled:Z

    return-void
.end method

.method public setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1306
    :cond_0
    invoke-static {}, Lio/sentry/transport/NoOpEnvelopeCache;->getInstance()Lio/sentry/transport/NoOpEnvelopeCache;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->envelopeDiskCache:Lio/sentry/cache/IEnvelopeCache;

    return-void
.end method

.method public setEnvelopeReader(Lio/sentry/IEnvelopeReader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    invoke-static {}, Lio/sentry/NoOpEnvelopeReader;->getInstance()Lio/sentry/NoOpEnvelopeReader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->envelopeReader:Lio/sentry/IEnvelopeReader;

    return-void
.end method

.method public setEnvironment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->environment:Ljava/lang/String;

    return-void
.end method

.method public setExecutorService(Lio/sentry/ISentryExecutorService;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/sentry/SentryOptions;->executorService:Lio/sentry/ISentryExecutorService;

    :cond_0
    return-void
.end method

.method public setFlushTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/SentryOptions;->flushTimeoutMillis:J

    return-void
.end method

.method public setGestureTargetLocators(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/gestures/GestureTargetLocator;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 2008
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lio/sentry/SentryOptions;->gestureTargetLocators:Ljava/util/List;

    .line 2009
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setIdleTimeout(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->idleTimeout:Ljava/lang/Long;

    return-void
.end method

.method public setIgnoredCheckIns(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    goto :goto_1

    .line 2186
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2188
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->ignoredCheckIns:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public setInstrumenter(Lio/sentry/Instrumenter;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->instrumenter:Lio/sentry/Instrumenter;

    return-void
.end method

.method public setLogger(Lio/sentry/ILogger;)V
    .locals 1

    if-nez p1, :cond_0

    .line 571
    invoke-static {}, Lio/sentry/NoOpLogger;->getInstance()Lio/sentry/NoOpLogger;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lio/sentry/DiagnosticLogger;

    invoke-direct {v0, p0, p1}, Lio/sentry/DiagnosticLogger;-><init>(Lio/sentry/SentryOptions;Lio/sentry/ILogger;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->logger:Lio/sentry/ILogger;

    return-void
.end method

.method public setMainThreadChecker(Lio/sentry/util/thread/IMainThreadChecker;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->mainThreadChecker:Lio/sentry/util/thread/IMainThreadChecker;

    return-void
.end method

.method public setMaxAttachmentSize(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxAttachmentSize:J

    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->maxBreadcrumbs:I

    return-void
.end method

.method public setMaxCacheItems(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->maxCacheItems:I

    return-void
.end method

.method public setMaxDepth(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->maxDepth:I

    return-void
.end method

.method public setMaxQueueSize(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lio/sentry/SentryOptions;->maxQueueSize:I

    :cond_0
    return-void
.end method

.method public setMaxRequestBodySize(Lio/sentry/SentryOptions$RequestSize;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->maxRequestBodySize:Lio/sentry/SentryOptions$RequestSize;

    return-void
.end method

.method public setMaxSpans(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->maxSpans:I

    return-void
.end method

.method public setMaxTraceFileSize(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/SentryOptions;->maxTraceFileSize:J

    return-void
.end method

.method public setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1971
    :cond_0
    invoke-static {}, Lio/sentry/internal/modules/NoOpModulesLoader;->getInstance()Lio/sentry/internal/modules/NoOpModulesLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->modulesLoader:Lio/sentry/internal/modules/IModulesLoader;

    return-void
.end method

.method public setPrintUncaughtStackTrace(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->printUncaughtStackTrace:Z

    return-void
.end method

.method public setProfilesSampleRate(Ljava/lang/Double;)V
    .locals 2

    .line 1722
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidProfilesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampleRate:Ljava/lang/Double;

    return-void

    .line 1723
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not valid. Use null to disable or values between 0.0 and 1.0."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProfilesSampler(Lio/sentry/SentryOptions$ProfilesSamplerCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->profilesSampler:Lio/sentry/SentryOptions$ProfilesSamplerCallback;

    return-void
.end method

.method public setProfilingEnabled(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1682
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1683
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    :cond_1
    return-void
.end method

.method public setProfilingTracesHz(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->profilingTracesHz:I

    return-void
.end method

.method public setProguardUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->proguardUuid:Ljava/lang/String;

    return-void
.end method

.method public setProxy(Lio/sentry/SentryOptions$Proxy;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->proxy:Lio/sentry/SentryOptions$Proxy;

    return-void
.end method

.method public setReadTimeoutMillis(I)V
    .locals 0

    iput p1, p0, Lio/sentry/SentryOptions;->readTimeoutMillis:I

    return-void
.end method

.method public setRelease(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->release:Ljava/lang/String;

    return-void
.end method

.method public setSampleRate(Ljava/lang/Double;)V
    .locals 2

    .line 888
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/sentry/SentryOptions;->sampleRate:Ljava/lang/Double;

    return-void

    .line 889
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not valid. Use null to disable or values >= 0.0 and <= 1.0."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSdkVersion(Lio/sentry/protocol/SdkVersion;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-void
.end method

.method public setSendClientReports(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendClientReports:Z

    if-eqz p1, :cond_0

    .line 1905
    new-instance p1, Lio/sentry/clientreport/ClientReportRecorder;

    invoke-direct {p1, p0}, Lio/sentry/clientreport/ClientReportRecorder;-><init>(Lio/sentry/SentryOptions;)V

    iput-object p1, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    goto :goto_0

    .line 1907
    :cond_0
    new-instance p1, Lio/sentry/clientreport/NoOpClientReportRecorder;

    invoke-direct {p1}, Lio/sentry/clientreport/NoOpClientReportRecorder;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryOptions;->clientReportRecorder:Lio/sentry/clientreport/IClientReportRecorder;

    :goto_0
    return-void
.end method

.method public setSendDefaultPii(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendDefaultPii:Z

    return-void
.end method

.method public setSendModules(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->sendModules:Z

    return-void
.end method

.method public setSentryClientName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->sentryClientName:Ljava/lang/String;

    return-void
.end method

.method public setSerializer(Lio/sentry/ISerializer;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-static {}, Lio/sentry/NoOpSerializer;->getInstance()Lio/sentry/NoOpSerializer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->serializer:Lio/sentry/ISerializer;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->serverName:Ljava/lang/String;

    return-void
.end method

.method public setSessionFlushTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionFlushTimeoutMillis:J

    return-void
.end method

.method public setSessionTrackingIntervalMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/SentryOptions;->sessionTrackingIntervalMillis:J

    return-void
.end method

.method public setShutdownTimeout(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-void
.end method

.method public setShutdownTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/SentryOptions;->shutdownTimeoutMillis:J

    return-void
.end method

.method public setSpotlightConnectionUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->spotlightConnectionUrl:Ljava/lang/String;

    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryOptions;->tags:Ljava/util/Map;

    .line 1447
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTraceOptionsRequests(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceOptionsRequests:Z

    return-void
.end method

.method public setTracePropagationTargets(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    goto :goto_1

    .line 1797
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1799
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1800
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lio/sentry/SentryOptions;->tracePropagationTargets:Ljava/util/List;

    :goto_1
    return-void
.end method

.method public setTraceSampling(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lio/sentry/SentryOptions;->traceSampling:Z

    return-void
.end method

.method public setTracesSampleRate(Ljava/lang/Double;)V
    .locals 2

    .line 930
    invoke-static {p1}, Lio/sentry/util/SampleRateUtils;->isValidTracesSampleRate(Ljava/lang/Double;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampleRate:Ljava/lang/Double;

    return-void

    .line 931
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not valid. Use null to disable or values between 0.0 and 1.0."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTracesSampler(Lio/sentry/SentryOptions$TracesSamplerCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->tracesSampler:Lio/sentry/SentryOptions$TracesSamplerCallback;

    return-void
.end method

.method public setTracingOrigins(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1777
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    return-void
.end method

.method public setTransactionPerformanceCollector(Lio/sentry/TransactionPerformanceCollector;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/SentryOptions;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    return-void
.end method

.method public setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    .line 1658
    invoke-static {}, Lio/sentry/NoOpTransactionProfiler;->getInstance()Lio/sentry/NoOpTransactionProfiler;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/sentry/SentryOptions;->transactionProfiler:Lio/sentry/ITransactionProfiler;

    :cond_0
    return-void
.end method

.method public setTransportFactory(Lio/sentry/ITransportFactory;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    invoke-static {}, Lio/sentry/NoOpTransportFactory;->getInstance()Lio/sentry/NoOpTransportFactory;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->transportFactory:Lio/sentry/ITransportFactory;

    return-void
.end method

.method public setTransportGate(Lio/sentry/transport/ITransportGate;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1045
    :cond_0
    invoke-static {}, Lio/sentry/transport/NoOpTransportGate;->getInstance()Lio/sentry/transport/NoOpTransportGate;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/SentryOptions;->transportGate:Lio/sentry/transport/ITransportGate;

    return-void
.end method

.method public setViewHierarchyExporters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 2029
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lio/sentry/SentryOptions;->viewHierarchyExporters:Ljava/util/List;

    .line 2030
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
