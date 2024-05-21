package io.sentry;

import io.sentry.backpressure.IBackpressureMonitor;
import io.sentry.backpressure.NoOpBackpressureMonitor;
import io.sentry.cache.IEnvelopeCache;
import io.sentry.clientreport.ClientReportRecorder;
import io.sentry.clientreport.IClientReportRecorder;
import io.sentry.clientreport.NoOpClientReportRecorder;
import io.sentry.internal.debugmeta.IDebugMetaLoader;
import io.sentry.internal.debugmeta.NoOpDebugMetaLoader;
import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.internal.modules.IModulesLoader;
import io.sentry.internal.modules.NoOpModulesLoader;
import io.sentry.internal.viewhierarchy.ViewHierarchyExporter;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryTransaction;
import io.sentry.transport.ITransportGate;
import io.sentry.transport.NoOpEnvelopeCache;
import io.sentry.transport.NoOpTransportGate;
import io.sentry.util.Platform;
import io.sentry.util.SampleRateUtils;
import io.sentry.util.StringUtils;
import io.sentry.util.thread.IMainThreadChecker;
import io.sentry.util.thread.NoOpMainThreadChecker;
import java.io.File;
import java.net.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public class SentryOptions {
    static final SentryLevel DEFAULT_DIAGNOSTIC_LEVEL = SentryLevel.DEBUG;
    private static final String DEFAULT_ENVIRONMENT = "production";
    public static final String DEFAULT_PROPAGATION_TARGETS = ".*";
    private boolean attachServerName;
    private boolean attachStacktrace;
    private boolean attachThreads;
    private IBackpressureMonitor backpressureMonitor;
    private BeforeBreadcrumbCallback beforeBreadcrumb;
    private BeforeEmitMetricCallback beforeEmitMetricCallback;
    private BeforeEnvelopeCallback beforeEnvelopeCallback;
    private BeforeSendCallback beforeSend;
    private BeforeSendTransactionCallback beforeSendTransaction;
    private final Set<String> bundleIds;
    private String cacheDirPath;
    IClientReportRecorder clientReportRecorder;
    private IConnectionStatusProvider connectionStatusProvider;
    private int connectionTimeoutMillis;
    private final List<String> contextTags;
    private Cron cron;
    private SentryDateProvider dateProvider;
    private boolean debug;
    private IDebugMetaLoader debugMetaLoader;
    private final List<String> defaultTracePropagationTargets;
    private SentryLevel diagnosticLevel;
    private String dist;
    private String distinctId;
    private String dsn;
    private String dsnHash;
    private boolean enableAppStartProfiling;
    private boolean enableAutoSessionTracking;
    private boolean enableBackpressureHandling;
    private boolean enableDeduplication;
    private boolean enableDefaultTagsForMetrics;
    private boolean enableExternalConfiguration;
    private boolean enableMetrics;
    private boolean enablePrettySerializationOutput;
    private boolean enableScopePersistence;
    private boolean enableShutdownHook;
    private boolean enableSpanLocalMetricAggregation;
    private boolean enableSpotlight;
    private boolean enableTimeToFullDisplayTracing;
    private Boolean enableTracing;
    private boolean enableUncaughtExceptionHandler;
    private boolean enableUserInteractionBreadcrumbs;
    private boolean enableUserInteractionTracing;
    private boolean enabled;
    private IEnvelopeCache envelopeDiskCache;
    private IEnvelopeReader envelopeReader;
    private String environment;
    private final List<EventProcessor> eventProcessors;
    private ISentryExecutorService executorService;
    private long flushTimeoutMillis;
    private final FullyDisplayedReporter fullyDisplayedReporter;
    private final List<GestureTargetLocator> gestureTargetLocators;
    private Long idleTimeout;
    private List<String> ignoredCheckIns;
    private final Set<Class<? extends Throwable>> ignoredExceptionsForType;
    private final List<String> inAppExcludes;
    private final List<String> inAppIncludes;
    private Instrumenter instrumenter;
    private final List<Integration> integrations;
    private ILogger logger;
    private IMainThreadChecker mainThreadChecker;
    private long maxAttachmentSize;
    private int maxBreadcrumbs;
    private int maxCacheItems;
    private int maxDepth;
    private int maxQueueSize;
    private RequestSize maxRequestBodySize;
    private int maxSpans;
    private long maxTraceFileSize;
    private IModulesLoader modulesLoader;
    private final List<IScopeObserver> observers;
    private final List<IOptionsObserver> optionsObservers;
    private final List<IPerformanceCollector> performanceCollectors;
    private boolean printUncaughtStackTrace;
    private Double profilesSampleRate;
    private ProfilesSamplerCallback profilesSampler;
    private int profilingTracesHz;
    private String proguardUuid;
    private Proxy proxy;
    private int readTimeoutMillis;
    private String release;
    private Double sampleRate;
    private SdkVersion sdkVersion;
    private boolean sendClientReports;
    private boolean sendDefaultPii;
    private boolean sendModules;
    private String sentryClientName;
    private ISerializer serializer;
    private String serverName;
    private long sessionFlushTimeoutMillis;
    private long sessionTrackingIntervalMillis;
    private long shutdownTimeoutMillis;
    private String spotlightConnectionUrl;
    private SSLSocketFactory sslSocketFactory;
    private final Map<String, String> tags;
    private boolean traceOptionsRequests;
    private List<String> tracePropagationTargets;
    private boolean traceSampling;
    private Double tracesSampleRate;
    private TracesSamplerCallback tracesSampler;
    private TransactionPerformanceCollector transactionPerformanceCollector;
    private ITransactionProfiler transactionProfiler;
    private ITransportFactory transportFactory;
    private ITransportGate transportGate;
    private final List<ViewHierarchyExporter> viewHierarchyExporters;

    /* loaded from: classes3.dex */
    public interface BeforeBreadcrumbCallback {
        Breadcrumb execute(Breadcrumb breadcrumb, Hint hint);
    }

    /* loaded from: classes3.dex */
    public interface BeforeEmitMetricCallback {
        boolean execute(String str, Map<String, String> map);
    }

    /* loaded from: classes3.dex */
    public interface BeforeEnvelopeCallback {
        void execute(SentryEnvelope sentryEnvelope, Hint hint);
    }

    /* loaded from: classes3.dex */
    public interface BeforeSendCallback {
        SentryEvent execute(SentryEvent sentryEvent, Hint hint);
    }

    /* loaded from: classes3.dex */
    public interface BeforeSendTransactionCallback {
        SentryTransaction execute(SentryTransaction sentryTransaction, Hint hint);
    }

    /* loaded from: classes3.dex */
    public static final class Cron {
        private Long defaultCheckinMargin;
        private Long defaultFailureIssueThreshold;
        private Long defaultMaxRuntime;
        private Long defaultRecoveryThreshold;
        private String defaultTimezone;

        public Long getDefaultCheckinMargin() {
            return this.defaultCheckinMargin;
        }

        public Long getDefaultFailureIssueThreshold() {
            return this.defaultFailureIssueThreshold;
        }

        public Long getDefaultMaxRuntime() {
            return this.defaultMaxRuntime;
        }

        public Long getDefaultRecoveryThreshold() {
            return this.defaultRecoveryThreshold;
        }

        public String getDefaultTimezone() {
            return this.defaultTimezone;
        }

        public void setDefaultCheckinMargin(Long l) {
            this.defaultCheckinMargin = l;
        }

        public void setDefaultFailureIssueThreshold(Long l) {
            this.defaultFailureIssueThreshold = l;
        }

        public void setDefaultMaxRuntime(Long l) {
            this.defaultMaxRuntime = l;
        }

        public void setDefaultRecoveryThreshold(Long l) {
            this.defaultRecoveryThreshold = l;
        }

        public void setDefaultTimezone(String str) {
            this.defaultTimezone = str;
        }
    }

    /* loaded from: classes3.dex */
    public interface ProfilesSamplerCallback {
        Double sample(SamplingContext samplingContext);
    }

    /* loaded from: classes3.dex */
    public enum RequestSize {
        NONE,
        SMALL,
        MEDIUM,
        ALWAYS
    }

    /* loaded from: classes3.dex */
    public interface TracesSamplerCallback {
        Double sample(SamplingContext samplingContext);
    }

    public IBackpressureMonitor getBackpressureMonitor() {
        return this.backpressureMonitor;
    }

    public BeforeBreadcrumbCallback getBeforeBreadcrumb() {
        return this.beforeBreadcrumb;
    }

    public BeforeEmitMetricCallback getBeforeEmitMetricCallback() {
        return this.beforeEmitMetricCallback;
    }

    public BeforeEnvelopeCallback getBeforeEnvelopeCallback() {
        return this.beforeEnvelopeCallback;
    }

    public BeforeSendCallback getBeforeSend() {
        return this.beforeSend;
    }

    public BeforeSendTransactionCallback getBeforeSendTransaction() {
        return this.beforeSendTransaction;
    }

    public Set<String> getBundleIds() {
        return this.bundleIds;
    }

    public IClientReportRecorder getClientReportRecorder() {
        return this.clientReportRecorder;
    }

    public IConnectionStatusProvider getConnectionStatusProvider() {
        return this.connectionStatusProvider;
    }

    public int getConnectionTimeoutMillis() {
        return this.connectionTimeoutMillis;
    }

    public List<String> getContextTags() {
        return this.contextTags;
    }

    public Cron getCron() {
        return this.cron;
    }

    public SentryDateProvider getDateProvider() {
        return this.dateProvider;
    }

    public IDebugMetaLoader getDebugMetaLoader() {
        return this.debugMetaLoader;
    }

    public SentryLevel getDiagnosticLevel() {
        return this.diagnosticLevel;
    }

    public String getDist() {
        return this.dist;
    }

    public String getDistinctId() {
        return this.distinctId;
    }

    public String getDsn() {
        return this.dsn;
    }

    public Boolean getEnableTracing() {
        return this.enableTracing;
    }

    public IEnvelopeCache getEnvelopeDiskCache() {
        return this.envelopeDiskCache;
    }

    public IEnvelopeReader getEnvelopeReader() {
        return this.envelopeReader;
    }

    public String getEnvironment() {
        String str = this.environment;
        return str != null ? str : DEFAULT_ENVIRONMENT;
    }

    public List<EventProcessor> getEventProcessors() {
        return this.eventProcessors;
    }

    public ISentryExecutorService getExecutorService() {
        return this.executorService;
    }

    public long getFlushTimeoutMillis() {
        return this.flushTimeoutMillis;
    }

    public FullyDisplayedReporter getFullyDisplayedReporter() {
        return this.fullyDisplayedReporter;
    }

    public List<GestureTargetLocator> getGestureTargetLocators() {
        return this.gestureTargetLocators;
    }

    public Long getIdleTimeout() {
        return this.idleTimeout;
    }

    public List<String> getIgnoredCheckIns() {
        return this.ignoredCheckIns;
    }

    public Set<Class<? extends Throwable>> getIgnoredExceptionsForType() {
        return this.ignoredExceptionsForType;
    }

    public List<String> getInAppExcludes() {
        return this.inAppExcludes;
    }

    public List<String> getInAppIncludes() {
        return this.inAppIncludes;
    }

    public Instrumenter getInstrumenter() {
        return this.instrumenter;
    }

    public List<Integration> getIntegrations() {
        return this.integrations;
    }

    public ILogger getLogger() {
        return this.logger;
    }

    public IMainThreadChecker getMainThreadChecker() {
        return this.mainThreadChecker;
    }

    public long getMaxAttachmentSize() {
        return this.maxAttachmentSize;
    }

    public int getMaxBreadcrumbs() {
        return this.maxBreadcrumbs;
    }

    public int getMaxCacheItems() {
        return this.maxCacheItems;
    }

    public int getMaxDepth() {
        return this.maxDepth;
    }

    public int getMaxQueueSize() {
        return this.maxQueueSize;
    }

    public RequestSize getMaxRequestBodySize() {
        return this.maxRequestBodySize;
    }

    public int getMaxSpans() {
        return this.maxSpans;
    }

    public long getMaxTraceFileSize() {
        return this.maxTraceFileSize;
    }

    public IModulesLoader getModulesLoader() {
        return this.modulesLoader;
    }

    public List<IOptionsObserver> getOptionsObservers() {
        return this.optionsObservers;
    }

    public List<IPerformanceCollector> getPerformanceCollectors() {
        return this.performanceCollectors;
    }

    public Double getProfilesSampleRate() {
        return this.profilesSampleRate;
    }

    public ProfilesSamplerCallback getProfilesSampler() {
        return this.profilesSampler;
    }

    public int getProfilingTracesHz() {
        return this.profilingTracesHz;
    }

    public String getProguardUuid() {
        return this.proguardUuid;
    }

    public Proxy getProxy() {
        return this.proxy;
    }

    public int getReadTimeoutMillis() {
        return this.readTimeoutMillis;
    }

    public String getRelease() {
        return this.release;
    }

    public Double getSampleRate() {
        return this.sampleRate;
    }

    public List<IScopeObserver> getScopeObservers() {
        return this.observers;
    }

    public SdkVersion getSdkVersion() {
        return this.sdkVersion;
    }

    public String getSentryClientName() {
        return this.sentryClientName;
    }

    public ISerializer getSerializer() {
        return this.serializer;
    }

    public String getServerName() {
        return this.serverName;
    }

    public long getSessionFlushTimeoutMillis() {
        return this.sessionFlushTimeoutMillis;
    }

    public long getSessionTrackingIntervalMillis() {
        return this.sessionTrackingIntervalMillis;
    }

    @Deprecated
    public long getShutdownTimeout() {
        return this.shutdownTimeoutMillis;
    }

    public long getShutdownTimeoutMillis() {
        return this.shutdownTimeoutMillis;
    }

    public String getSpotlightConnectionUrl() {
        return this.spotlightConnectionUrl;
    }

    public SSLSocketFactory getSslSocketFactory() {
        return this.sslSocketFactory;
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    public List<String> getTracePropagationTargets() {
        List<String> list = this.tracePropagationTargets;
        return list == null ? this.defaultTracePropagationTargets : list;
    }

    public Double getTracesSampleRate() {
        return this.tracesSampleRate;
    }

    public TracesSamplerCallback getTracesSampler() {
        return this.tracesSampler;
    }

    public TransactionPerformanceCollector getTransactionPerformanceCollector() {
        return this.transactionPerformanceCollector;
    }

    public ITransactionProfiler getTransactionProfiler() {
        return this.transactionProfiler;
    }

    public ITransportFactory getTransportFactory() {
        return this.transportFactory;
    }

    public ITransportGate getTransportGate() {
        return this.transportGate;
    }

    public final List<ViewHierarchyExporter> getViewHierarchyExporters() {
        return this.viewHierarchyExporters;
    }

    public boolean isAttachServerName() {
        return this.attachServerName;
    }

    public boolean isAttachStacktrace() {
        return this.attachStacktrace;
    }

    public boolean isAttachThreads() {
        return this.attachThreads;
    }

    public boolean isDebug() {
        return this.debug;
    }

    public boolean isEnableAutoSessionTracking() {
        return this.enableAutoSessionTracking;
    }

    public boolean isEnableBackpressureHandling() {
        return this.enableBackpressureHandling;
    }

    public boolean isEnableDeduplication() {
        return this.enableDeduplication;
    }

    public boolean isEnableExternalConfiguration() {
        return this.enableExternalConfiguration;
    }

    public boolean isEnableMetrics() {
        return this.enableMetrics;
    }

    public boolean isEnablePrettySerializationOutput() {
        return this.enablePrettySerializationOutput;
    }

    public boolean isEnableScopePersistence() {
        return this.enableScopePersistence;
    }

    public boolean isEnableShutdownHook() {
        return this.enableShutdownHook;
    }

    public boolean isEnableSpotlight() {
        return this.enableSpotlight;
    }

    public boolean isEnableTimeToFullDisplayTracing() {
        return this.enableTimeToFullDisplayTracing;
    }

    public boolean isEnableUncaughtExceptionHandler() {
        return this.enableUncaughtExceptionHandler;
    }

    public boolean isEnableUserInteractionBreadcrumbs() {
        return this.enableUserInteractionBreadcrumbs;
    }

    public boolean isEnableUserInteractionTracing() {
        return this.enableUserInteractionTracing;
    }

    public boolean isEnabled() {
        return this.enabled;
    }

    public boolean isPrintUncaughtStackTrace() {
        return this.printUncaughtStackTrace;
    }

    public boolean isSendClientReports() {
        return this.sendClientReports;
    }

    public boolean isSendDefaultPii() {
        return this.sendDefaultPii;
    }

    public boolean isSendModules() {
        return this.sendModules;
    }

    public boolean isTraceOptionsRequests() {
        return this.traceOptionsRequests;
    }

    public boolean isTraceSampling() {
        return this.traceSampling;
    }

    public void setAttachServerName(boolean z) {
        this.attachServerName = z;
    }

    public void setAttachStacktrace(boolean z) {
        this.attachStacktrace = z;
    }

    public void setAttachThreads(boolean z) {
        this.attachThreads = z;
    }

    public void setBackpressureMonitor(IBackpressureMonitor iBackpressureMonitor) {
        this.backpressureMonitor = iBackpressureMonitor;
    }

    public void setBeforeBreadcrumb(BeforeBreadcrumbCallback beforeBreadcrumbCallback) {
        this.beforeBreadcrumb = beforeBreadcrumbCallback;
    }

    public void setBeforeEmitMetricCallback(BeforeEmitMetricCallback beforeEmitMetricCallback) {
        this.beforeEmitMetricCallback = beforeEmitMetricCallback;
    }

    public void setBeforeEnvelopeCallback(BeforeEnvelopeCallback beforeEnvelopeCallback) {
        this.beforeEnvelopeCallback = beforeEnvelopeCallback;
    }

    public void setBeforeSend(BeforeSendCallback beforeSendCallback) {
        this.beforeSend = beforeSendCallback;
    }

    public void setBeforeSendTransaction(BeforeSendTransactionCallback beforeSendTransactionCallback) {
        this.beforeSendTransaction = beforeSendTransactionCallback;
    }

    public void setCacheDirPath(String str) {
        this.cacheDirPath = str;
    }

    public void setConnectionStatusProvider(IConnectionStatusProvider iConnectionStatusProvider) {
        this.connectionStatusProvider = iConnectionStatusProvider;
    }

    public void setConnectionTimeoutMillis(int i) {
        this.connectionTimeoutMillis = i;
    }

    public void setCron(Cron cron) {
        this.cron = cron;
    }

    public void setDateProvider(SentryDateProvider sentryDateProvider) {
        this.dateProvider = sentryDateProvider;
    }

    public void setDebug(boolean z) {
        this.debug = z;
    }

    public void setDiagnosticLevel(SentryLevel sentryLevel) {
        if (sentryLevel == null) {
            sentryLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        }
        this.diagnosticLevel = sentryLevel;
    }

    public void setDist(String str) {
        this.dist = str;
    }

    public void setDistinctId(String str) {
        this.distinctId = str;
    }

    public void setEnableAppStartProfiling(boolean z) {
        this.enableAppStartProfiling = z;
    }

    public void setEnableAutoSessionTracking(boolean z) {
        this.enableAutoSessionTracking = z;
    }

    public void setEnableBackpressureHandling(boolean z) {
        this.enableBackpressureHandling = z;
    }

    public void setEnableDeduplication(boolean z) {
        this.enableDeduplication = z;
    }

    public void setEnableDefaultTagsForMetrics(boolean z) {
        this.enableDefaultTagsForMetrics = z;
    }

    public void setEnableExternalConfiguration(boolean z) {
        this.enableExternalConfiguration = z;
    }

    public void setEnableMetrics(boolean z) {
        this.enableMetrics = z;
    }

    public void setEnablePrettySerializationOutput(boolean z) {
        this.enablePrettySerializationOutput = z;
    }

    public void setEnableScopePersistence(boolean z) {
        this.enableScopePersistence = z;
    }

    public void setEnableShutdownHook(boolean z) {
        this.enableShutdownHook = z;
    }

    public void setEnableSpanLocalMetricAggregation(boolean z) {
        this.enableSpanLocalMetricAggregation = z;
    }

    public void setEnableSpotlight(boolean z) {
        this.enableSpotlight = z;
    }

    public void setEnableTimeToFullDisplayTracing(boolean z) {
        this.enableTimeToFullDisplayTracing = z;
    }

    public void setEnableTracing(Boolean bool) {
        this.enableTracing = bool;
    }

    public void setEnableUncaughtExceptionHandler(boolean z) {
        this.enableUncaughtExceptionHandler = z;
    }

    public void setEnableUserInteractionBreadcrumbs(boolean z) {
        this.enableUserInteractionBreadcrumbs = z;
    }

    public void setEnableUserInteractionTracing(boolean z) {
        this.enableUserInteractionTracing = z;
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }

    public void setEnvironment(String str) {
        this.environment = str;
    }

    public void setExecutorService(ISentryExecutorService iSentryExecutorService) {
        if (iSentryExecutorService != null) {
            this.executorService = iSentryExecutorService;
        }
    }

    public void setFlushTimeoutMillis(long j) {
        this.flushTimeoutMillis = j;
    }

    public void setIdleTimeout(Long l) {
        this.idleTimeout = l;
    }

    public void setInstrumenter(Instrumenter instrumenter) {
        this.instrumenter = instrumenter;
    }

    public void setMainThreadChecker(IMainThreadChecker iMainThreadChecker) {
        this.mainThreadChecker = iMainThreadChecker;
    }

    public void setMaxAttachmentSize(long j) {
        this.maxAttachmentSize = j;
    }

    public void setMaxBreadcrumbs(int i) {
        this.maxBreadcrumbs = i;
    }

    public void setMaxCacheItems(int i) {
        this.maxCacheItems = i;
    }

    public void setMaxDepth(int i) {
        this.maxDepth = i;
    }

    public void setMaxQueueSize(int i) {
        if (i > 0) {
            this.maxQueueSize = i;
        }
    }

    public void setMaxRequestBodySize(RequestSize requestSize) {
        this.maxRequestBodySize = requestSize;
    }

    public void setMaxSpans(int i) {
        this.maxSpans = i;
    }

    public void setMaxTraceFileSize(long j) {
        this.maxTraceFileSize = j;
    }

    public void setPrintUncaughtStackTrace(boolean z) {
        this.printUncaughtStackTrace = z;
    }

    public void setProfilesSampler(ProfilesSamplerCallback profilesSamplerCallback) {
        this.profilesSampler = profilesSamplerCallback;
    }

    public void setProfilingTracesHz(int i) {
        this.profilingTracesHz = i;
    }

    public void setProguardUuid(String str) {
        this.proguardUuid = str;
    }

    public void setProxy(Proxy proxy) {
        this.proxy = proxy;
    }

    public void setReadTimeoutMillis(int i) {
        this.readTimeoutMillis = i;
    }

    public void setRelease(String str) {
        this.release = str;
    }

    public void setSdkVersion(SdkVersion sdkVersion) {
        this.sdkVersion = sdkVersion;
    }

    public void setSendDefaultPii(boolean z) {
        this.sendDefaultPii = z;
    }

    public void setSendModules(boolean z) {
        this.sendModules = z;
    }

    public void setSentryClientName(String str) {
        this.sentryClientName = str;
    }

    public void setServerName(String str) {
        this.serverName = str;
    }

    public void setSessionFlushTimeoutMillis(long j) {
        this.sessionFlushTimeoutMillis = j;
    }

    public void setSessionTrackingIntervalMillis(long j) {
        this.sessionTrackingIntervalMillis = j;
    }

    @Deprecated
    public void setShutdownTimeout(long j) {
        this.shutdownTimeoutMillis = j;
    }

    public void setShutdownTimeoutMillis(long j) {
        this.shutdownTimeoutMillis = j;
    }

    public void setSpotlightConnectionUrl(String str) {
        this.spotlightConnectionUrl = str;
    }

    public void setSslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.sslSocketFactory = sSLSocketFactory;
    }

    public void setTraceOptionsRequests(boolean z) {
        this.traceOptionsRequests = z;
    }

    @Deprecated
    public void setTraceSampling(boolean z) {
        this.traceSampling = z;
    }

    public void setTracesSampler(TracesSamplerCallback tracesSamplerCallback) {
        this.tracesSampler = tracesSamplerCallback;
    }

    public void setTransactionPerformanceCollector(TransactionPerformanceCollector transactionPerformanceCollector) {
        this.transactionPerformanceCollector = transactionPerformanceCollector;
    }

    public void addEventProcessor(EventProcessor eventProcessor) {
        this.eventProcessors.add(eventProcessor);
    }

    public void addIntegration(Integration integration) {
        this.integrations.add(integration);
    }

    public void setDsn(String str) {
        this.dsn = str;
        this.dsnHash = StringUtils.calculateStringHash(str, this.logger);
    }

    public void setLogger(ILogger iLogger) {
        this.logger = iLogger == null ? NoOpLogger.getInstance() : new DiagnosticLogger(this, iLogger);
    }

    public void setSerializer(ISerializer iSerializer) {
        if (iSerializer == null) {
            iSerializer = NoOpSerializer.getInstance();
        }
        this.serializer = iSerializer;
    }

    public void setEnvelopeReader(IEnvelopeReader iEnvelopeReader) {
        if (iEnvelopeReader == null) {
            iEnvelopeReader = NoOpEnvelopeReader.getInstance();
        }
        this.envelopeReader = iEnvelopeReader;
    }

    public String getCacheDirPath() {
        String str = this.cacheDirPath;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return this.dsnHash != null ? new File(this.cacheDirPath, this.dsnHash).getAbsolutePath() : this.cacheDirPath;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getCacheDirPathWithoutDsn() {
        String str = this.cacheDirPath;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return this.cacheDirPath;
    }

    public String getOutboxPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "outbox").getAbsolutePath();
    }

    public void setSampleRate(Double d) {
        if (!SampleRateUtils.isValidSampleRate(d)) {
            throw new IllegalArgumentException("The value " + d + " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
        }
        this.sampleRate = d;
    }

    public void setTracesSampleRate(Double d) {
        if (!SampleRateUtils.isValidTracesSampleRate(d)) {
            throw new IllegalArgumentException("The value " + d + " is not valid. Use null to disable or values between 0.0 and 1.0.");
        }
        this.tracesSampleRate = d;
    }

    public void addInAppExclude(String str) {
        this.inAppExcludes.add(str);
    }

    public void addInAppInclude(String str) {
        this.inAppIncludes.add(str);
    }

    public void setTransportFactory(ITransportFactory iTransportFactory) {
        if (iTransportFactory == null) {
            iTransportFactory = NoOpTransportFactory.getInstance();
        }
        this.transportFactory = iTransportFactory;
    }

    public void setTransportGate(ITransportGate iTransportGate) {
        if (iTransportGate == null) {
            iTransportGate = NoOpTransportGate.getInstance();
        }
        this.transportGate = iTransportGate;
    }

    public void setEnvelopeDiskCache(IEnvelopeCache iEnvelopeCache) {
        if (iEnvelopeCache == null) {
            iEnvelopeCache = NoOpEnvelopeCache.getInstance();
        }
        this.envelopeDiskCache = iEnvelopeCache;
    }

    public void addScopeObserver(IScopeObserver iScopeObserver) {
        this.observers.add(iScopeObserver);
    }

    public void addOptionsObserver(IOptionsObserver iOptionsObserver) {
        this.optionsObservers.add(iOptionsObserver);
    }

    public void setTag(String str, String str2) {
        this.tags.put(str, str2);
    }

    public boolean isTracingEnabled() {
        Boolean bool = this.enableTracing;
        if (bool != null) {
            return bool.booleanValue();
        }
        return (getTracesSampleRate() == null && getTracesSampler() == null) ? false : true;
    }

    public void addIgnoredExceptionForType(Class<? extends Throwable> cls) {
        this.ignoredExceptionsForType.add(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsIgnoredExceptionForType(Throwable th) {
        return this.ignoredExceptionsForType.contains(th.getClass());
    }

    public void setTransactionProfiler(ITransactionProfiler iTransactionProfiler) {
        if (this.transactionProfiler != NoOpTransactionProfiler.getInstance() || iTransactionProfiler == null) {
            return;
        }
        this.transactionProfiler = iTransactionProfiler;
    }

    public boolean isProfilingEnabled() {
        return (getProfilesSampleRate() != null && getProfilesSampleRate().doubleValue() > tech.rabbit.r1launcher.BuildConfig.SENTRY_SAMPLE_RATE) || getProfilesSampler() != null;
    }

    @Deprecated
    public void setProfilingEnabled(boolean z) {
        if (getProfilesSampleRate() == null) {
            setProfilesSampleRate(z ? Double.valueOf(1.0d) : null);
        }
    }

    public void setProfilesSampleRate(Double d) {
        if (!SampleRateUtils.isValidProfilesSampleRate(d)) {
            throw new IllegalArgumentException("The value " + d + " is not valid. Use null to disable or values between 0.0 and 1.0.");
        }
        this.profilesSampleRate = d;
    }

    public String getProfilingTracesDirPath() {
        String cacheDirPath = getCacheDirPath();
        if (cacheDirPath == null) {
            return null;
        }
        return new File(cacheDirPath, "profiling_traces").getAbsolutePath();
    }

    @Deprecated
    public List<String> getTracingOrigins() {
        return getTracePropagationTargets();
    }

    @Deprecated
    public void addTracingOrigin(String str) {
        if (this.tracePropagationTargets == null) {
            this.tracePropagationTargets = new CopyOnWriteArrayList();
        }
        if (str.isEmpty()) {
            return;
        }
        this.tracePropagationTargets.add(str);
    }

    @Deprecated
    public void setTracingOrigins(List<String> list) {
        setTracePropagationTargets(list);
    }

    public void setTracePropagationTargets(List<String> list) {
        if (list == null) {
            this.tracePropagationTargets = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        this.tracePropagationTargets = arrayList;
    }

    public void addBundleId(String str) {
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            this.bundleIds.add(trim);
        }
    }

    public void addContextTag(String str) {
        this.contextTags.add(str);
    }

    public void setSendClientReports(boolean z) {
        this.sendClientReports = z;
        if (z) {
            this.clientReportRecorder = new ClientReportRecorder(this);
        } else {
            this.clientReportRecorder = new NoOpClientReportRecorder();
        }
    }

    public void setModulesLoader(IModulesLoader iModulesLoader) {
        if (iModulesLoader == null) {
            iModulesLoader = NoOpModulesLoader.getInstance();
        }
        this.modulesLoader = iModulesLoader;
    }

    public void setDebugMetaLoader(IDebugMetaLoader iDebugMetaLoader) {
        if (iDebugMetaLoader == null) {
            iDebugMetaLoader = NoOpDebugMetaLoader.getInstance();
        }
        this.debugMetaLoader = iDebugMetaLoader;
    }

    public void setGestureTargetLocators(List<GestureTargetLocator> list) {
        this.gestureTargetLocators.clear();
        this.gestureTargetLocators.addAll(list);
    }

    public void setViewHierarchyExporters(List<ViewHierarchyExporter> list) {
        this.viewHierarchyExporters.clear();
        this.viewHierarchyExporters.addAll(list);
    }

    public boolean isEnableAppStartProfiling() {
        return isProfilingEnabled() && this.enableAppStartProfiling;
    }

    public void setIgnoredCheckIns(List<String> list) {
        if (list == null) {
            this.ignoredCheckIns = null;
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.isEmpty()) {
                arrayList.add(str);
            }
        }
        this.ignoredCheckIns = arrayList;
    }

    public void addPerformanceCollector(IPerformanceCollector iPerformanceCollector) {
        this.performanceCollectors.add(iPerformanceCollector);
    }

    public boolean isEnableSpanLocalMetricAggregation() {
        return isEnableMetrics() && this.enableSpanLocalMetricAggregation;
    }

    public boolean isEnableDefaultTagsForMetrics() {
        return isEnableMetrics() && this.enableDefaultTagsForMetrics;
    }

    public static SentryOptions empty() {
        return new SentryOptions(true);
    }

    public SentryOptions() {
        this(false);
    }

    private SentryOptions(boolean z) {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        this.eventProcessors = copyOnWriteArrayList;
        this.ignoredExceptionsForType = new CopyOnWriteArraySet();
        CopyOnWriteArrayList copyOnWriteArrayList2 = new CopyOnWriteArrayList();
        this.integrations = copyOnWriteArrayList2;
        this.bundleIds = new CopyOnWriteArraySet();
        this.shutdownTimeoutMillis = 2000L;
        this.flushTimeoutMillis = 15000L;
        this.sessionFlushTimeoutMillis = 15000L;
        this.logger = NoOpLogger.getInstance();
        this.diagnosticLevel = DEFAULT_DIAGNOSTIC_LEVEL;
        this.envelopeReader = new EnvelopeReader(new JsonSerializer(this));
        this.serializer = new JsonSerializer(this);
        this.maxDepth = 100;
        this.maxCacheItems = 30;
        this.maxQueueSize = 30;
        this.maxBreadcrumbs = 100;
        this.inAppExcludes = new CopyOnWriteArrayList();
        this.inAppIncludes = new CopyOnWriteArrayList();
        this.transportFactory = NoOpTransportFactory.getInstance();
        this.transportGate = NoOpTransportGate.getInstance();
        this.attachStacktrace = true;
        this.enableAutoSessionTracking = true;
        this.sessionTrackingIntervalMillis = 30000L;
        this.attachServerName = true;
        this.enableUncaughtExceptionHandler = true;
        this.printUncaughtStackTrace = false;
        this.executorService = NoOpSentryExecutorService.getInstance();
        this.connectionTimeoutMillis = 5000;
        this.readTimeoutMillis = 5000;
        this.envelopeDiskCache = NoOpEnvelopeCache.getInstance();
        this.sendDefaultPii = false;
        this.observers = new CopyOnWriteArrayList();
        this.optionsObservers = new CopyOnWriteArrayList();
        this.tags = new ConcurrentHashMap();
        this.maxAttachmentSize = 20971520L;
        this.enableDeduplication = true;
        this.maxSpans = 1000;
        this.enableShutdownHook = true;
        this.maxRequestBodySize = RequestSize.NONE;
        this.traceSampling = true;
        this.maxTraceFileSize = 5242880L;
        this.transactionProfiler = NoOpTransactionProfiler.getInstance();
        this.tracePropagationTargets = null;
        this.defaultTracePropagationTargets = Collections.singletonList(DEFAULT_PROPAGATION_TARGETS);
        this.idleTimeout = 3000L;
        this.contextTags = new CopyOnWriteArrayList();
        this.sendClientReports = true;
        this.clientReportRecorder = new ClientReportRecorder(this);
        this.modulesLoader = NoOpModulesLoader.getInstance();
        this.debugMetaLoader = NoOpDebugMetaLoader.getInstance();
        this.enableUserInteractionTracing = false;
        this.enableUserInteractionBreadcrumbs = true;
        this.instrumenter = Instrumenter.SENTRY;
        this.gestureTargetLocators = new ArrayList();
        this.viewHierarchyExporters = new ArrayList();
        this.mainThreadChecker = NoOpMainThreadChecker.getInstance();
        this.traceOptionsRequests = true;
        this.dateProvider = new SentryAutoDateProvider();
        this.performanceCollectors = new ArrayList();
        this.transactionPerformanceCollector = NoOpTransactionPerformanceCollector.getInstance();
        this.enableTimeToFullDisplayTracing = false;
        this.fullyDisplayedReporter = FullyDisplayedReporter.getInstance();
        this.connectionStatusProvider = new NoOpConnectionStatusProvider();
        this.enabled = true;
        this.enablePrettySerializationOutput = true;
        this.sendModules = true;
        this.enableSpotlight = false;
        this.enableScopePersistence = true;
        this.ignoredCheckIns = null;
        this.backpressureMonitor = NoOpBackpressureMonitor.getInstance();
        this.enableBackpressureHandling = true;
        this.enableAppStartProfiling = false;
        this.enableMetrics = false;
        this.enableDefaultTagsForMetrics = true;
        this.enableSpanLocalMetricAggregation = true;
        this.beforeEmitMetricCallback = null;
        this.profilingTracesHz = 101;
        this.cron = null;
        if (z) {
            return;
        }
        this.executorService = new SentryExecutorService();
        copyOnWriteArrayList2.add(new UncaughtExceptionHandlerIntegration());
        copyOnWriteArrayList2.add(new ShutdownHookIntegration());
        copyOnWriteArrayList2.add(new SpotlightIntegration());
        copyOnWriteArrayList.add(new MainEventProcessor(this));
        copyOnWriteArrayList.add(new DuplicateEventDetectionEventProcessor(this));
        if (Platform.isJvm()) {
            copyOnWriteArrayList.add(new SentryRuntimeEventProcessor());
        }
        setSentryClientName("sentry.java/7.8.0");
        setSdkVersion(createSdkVersion());
        addPackageInfo();
    }

    public void merge(ExternalOptions externalOptions) {
        if (externalOptions.getDsn() != null) {
            setDsn(externalOptions.getDsn());
        }
        if (externalOptions.getEnvironment() != null) {
            setEnvironment(externalOptions.getEnvironment());
        }
        if (externalOptions.getRelease() != null) {
            setRelease(externalOptions.getRelease());
        }
        if (externalOptions.getDist() != null) {
            setDist(externalOptions.getDist());
        }
        if (externalOptions.getServerName() != null) {
            setServerName(externalOptions.getServerName());
        }
        if (externalOptions.getProxy() != null) {
            setProxy(externalOptions.getProxy());
        }
        if (externalOptions.getEnableUncaughtExceptionHandler() != null) {
            setEnableUncaughtExceptionHandler(externalOptions.getEnableUncaughtExceptionHandler().booleanValue());
        }
        if (externalOptions.getPrintUncaughtStackTrace() != null) {
            setPrintUncaughtStackTrace(externalOptions.getPrintUncaughtStackTrace().booleanValue());
        }
        if (externalOptions.getEnableTracing() != null) {
            setEnableTracing(externalOptions.getEnableTracing());
        }
        if (externalOptions.getTracesSampleRate() != null) {
            setTracesSampleRate(externalOptions.getTracesSampleRate());
        }
        if (externalOptions.getProfilesSampleRate() != null) {
            setProfilesSampleRate(externalOptions.getProfilesSampleRate());
        }
        if (externalOptions.getDebug() != null) {
            setDebug(externalOptions.getDebug().booleanValue());
        }
        if (externalOptions.getEnableDeduplication() != null) {
            setEnableDeduplication(externalOptions.getEnableDeduplication().booleanValue());
        }
        if (externalOptions.getSendClientReports() != null) {
            setSendClientReports(externalOptions.getSendClientReports().booleanValue());
        }
        for (Map.Entry entry : new HashMap(externalOptions.getTags()).entrySet()) {
            this.tags.put((String) entry.getKey(), (String) entry.getValue());
        }
        Iterator it = new ArrayList(externalOptions.getInAppIncludes()).iterator();
        while (it.hasNext()) {
            addInAppInclude((String) it.next());
        }
        Iterator it2 = new ArrayList(externalOptions.getInAppExcludes()).iterator();
        while (it2.hasNext()) {
            addInAppExclude((String) it2.next());
        }
        Iterator it3 = new HashSet(externalOptions.getIgnoredExceptionsForType()).iterator();
        while (it3.hasNext()) {
            addIgnoredExceptionForType((Class) it3.next());
        }
        if (externalOptions.getTracePropagationTargets() != null) {
            setTracePropagationTargets(new ArrayList(externalOptions.getTracePropagationTargets()));
        }
        Iterator it4 = new ArrayList(externalOptions.getContextTags()).iterator();
        while (it4.hasNext()) {
            addContextTag((String) it4.next());
        }
        if (externalOptions.getProguardUuid() != null) {
            setProguardUuid(externalOptions.getProguardUuid());
        }
        if (externalOptions.getIdleTimeout() != null) {
            setIdleTimeout(externalOptions.getIdleTimeout());
        }
        Iterator<String> it5 = externalOptions.getBundleIds().iterator();
        while (it5.hasNext()) {
            addBundleId(it5.next());
        }
        if (externalOptions.isEnabled() != null) {
            setEnabled(externalOptions.isEnabled().booleanValue());
        }
        if (externalOptions.isEnablePrettySerializationOutput() != null) {
            setEnablePrettySerializationOutput(externalOptions.isEnablePrettySerializationOutput().booleanValue());
        }
        if (externalOptions.isSendModules() != null) {
            setSendModules(externalOptions.isSendModules().booleanValue());
        }
        if (externalOptions.getIgnoredCheckIns() != null) {
            setIgnoredCheckIns(new ArrayList(externalOptions.getIgnoredCheckIns()));
        }
        if (externalOptions.isEnableBackpressureHandling() != null) {
            setEnableBackpressureHandling(externalOptions.isEnableBackpressureHandling().booleanValue());
        }
        if (externalOptions.getCron() != null) {
            if (getCron() == null) {
                setCron(externalOptions.getCron());
                return;
            }
            if (externalOptions.getCron().getDefaultCheckinMargin() != null) {
                getCron().setDefaultCheckinMargin(externalOptions.getCron().getDefaultCheckinMargin());
            }
            if (externalOptions.getCron().getDefaultMaxRuntime() != null) {
                getCron().setDefaultMaxRuntime(externalOptions.getCron().getDefaultMaxRuntime());
            }
            if (externalOptions.getCron().getDefaultTimezone() != null) {
                getCron().setDefaultTimezone(externalOptions.getCron().getDefaultTimezone());
            }
            if (externalOptions.getCron().getDefaultFailureIssueThreshold() != null) {
                getCron().setDefaultFailureIssueThreshold(externalOptions.getCron().getDefaultFailureIssueThreshold());
            }
            if (externalOptions.getCron().getDefaultRecoveryThreshold() != null) {
                getCron().setDefaultRecoveryThreshold(externalOptions.getCron().getDefaultRecoveryThreshold());
            }
        }
    }

    private SdkVersion createSdkVersion() {
        SdkVersion sdkVersion = new SdkVersion(BuildConfig.SENTRY_JAVA_SDK_NAME, "7.8.0");
        sdkVersion.setVersion("7.8.0");
        return sdkVersion;
    }

    private void addPackageInfo() {
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry", "7.8.0");
    }

    /* loaded from: classes3.dex */
    public static final class Proxy {
        private String host;
        private String pass;
        private String port;
        private Proxy.Type type;
        private String user;

        public String getHost() {
            return this.host;
        }

        public String getPass() {
            return this.pass;
        }

        public String getPort() {
            return this.port;
        }

        public Proxy.Type getType() {
            return this.type;
        }

        public String getUser() {
            return this.user;
        }

        public void setHost(String str) {
            this.host = str;
        }

        public void setPass(String str) {
            this.pass = str;
        }

        public void setPort(String str) {
            this.port = str;
        }

        public void setType(Proxy.Type type) {
            this.type = type;
        }

        public void setUser(String str) {
            this.user = str;
        }

        public Proxy() {
            this(null, null, null, null, null);
        }

        public Proxy(String str, String str2) {
            this(str, str2, null, null, null);
        }

        public Proxy(String str, String str2, Proxy.Type type) {
            this(str, str2, type, null, null);
        }

        public Proxy(String str, String str2, String str3, String str4) {
            this(str, str2, null, str3, str4);
        }

        public Proxy(String str, String str2, Proxy.Type type, String str3, String str4) {
            this.host = str;
            this.port = str2;
            this.type = type;
            this.user = str3;
            this.pass = str4;
        }
    }
}
