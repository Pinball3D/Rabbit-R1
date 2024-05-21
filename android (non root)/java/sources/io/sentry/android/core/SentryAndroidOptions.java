package io.sentry.android.core;

import io.sentry.Hint;
import io.sentry.SentryEvent;
import io.sentry.SentryOptions;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.protocol.SdkVersion;

/* loaded from: classes3.dex */
public final class SentryAndroidOptions extends SentryOptions {
    private boolean attachScreenshot;
    private boolean attachViewHierarchy;
    private BeforeCaptureCallback beforeScreenshotCaptureCallback;
    private BeforeCaptureCallback beforeViewHierarchyCaptureCallback;
    private SentryFrameMetricsCollector frameMetricsCollector;
    private boolean anrEnabled = true;
    private long anrTimeoutIntervalMillis = 5000;
    private boolean anrReportInDebug = false;
    private boolean enableActivityLifecycleBreadcrumbs = true;
    private boolean enableAppLifecycleBreadcrumbs = true;
    private boolean enableSystemEventBreadcrumbs = true;
    private boolean enableAppComponentBreadcrumbs = true;
    private boolean enableNetworkEventBreadcrumbs = true;
    private boolean enableAutoActivityLifecycleTracing = true;
    private boolean enableActivityLifecycleTracingAutoFinish = true;
    private IDebugImagesLoader debugImagesLoader = NoOpDebugImagesLoader.getInstance();
    private boolean collectAdditionalContext = true;
    private long startupCrashFlushTimeoutMillis = 5000;
    private final long startupCrashDurationThresholdMillis = 2000;
    private boolean enableFramesTracking = true;
    private String nativeSdkName = null;
    private boolean enableRootCheck = true;
    private boolean enableNdk = true;
    private boolean enableScopeSync = true;
    private boolean reportHistoricalAnrs = false;
    private boolean attachAnrThreadDump = false;
    private boolean enablePerformanceV2 = false;

    /* loaded from: classes3.dex */
    public interface BeforeCaptureCallback {
        boolean execute(SentryEvent sentryEvent, Hint hint, boolean z);
    }

    public long getAnrTimeoutIntervalMillis() {
        return this.anrTimeoutIntervalMillis;
    }

    public BeforeCaptureCallback getBeforeScreenshotCaptureCallback() {
        return this.beforeScreenshotCaptureCallback;
    }

    public BeforeCaptureCallback getBeforeViewHierarchyCaptureCallback() {
        return this.beforeViewHierarchyCaptureCallback;
    }

    public IDebugImagesLoader getDebugImagesLoader() {
        return this.debugImagesLoader;
    }

    public SentryFrameMetricsCollector getFrameMetricsCollector() {
        return this.frameMetricsCollector;
    }

    public String getNativeSdkName() {
        return this.nativeSdkName;
    }

    @Deprecated
    public int getProfilingTracesIntervalMillis() {
        return 0;
    }

    public long getStartupCrashDurationThresholdMillis() {
        return 2000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getStartupCrashFlushTimeoutMillis() {
        return this.startupCrashFlushTimeoutMillis;
    }

    public boolean isAnrEnabled() {
        return this.anrEnabled;
    }

    public boolean isAnrReportInDebug() {
        return this.anrReportInDebug;
    }

    public boolean isAttachAnrThreadDump() {
        return this.attachAnrThreadDump;
    }

    public boolean isAttachScreenshot() {
        return this.attachScreenshot;
    }

    public boolean isAttachViewHierarchy() {
        return this.attachViewHierarchy;
    }

    public boolean isCollectAdditionalContext() {
        return this.collectAdditionalContext;
    }

    public boolean isEnableActivityLifecycleBreadcrumbs() {
        return this.enableActivityLifecycleBreadcrumbs;
    }

    public boolean isEnableActivityLifecycleTracingAutoFinish() {
        return this.enableActivityLifecycleTracingAutoFinish;
    }

    public boolean isEnableAppComponentBreadcrumbs() {
        return this.enableAppComponentBreadcrumbs;
    }

    public boolean isEnableAppLifecycleBreadcrumbs() {
        return this.enableAppLifecycleBreadcrumbs;
    }

    public boolean isEnableAutoActivityLifecycleTracing() {
        return this.enableAutoActivityLifecycleTracing;
    }

    public boolean isEnableFramesTracking() {
        return this.enableFramesTracking;
    }

    public boolean isEnableNdk() {
        return this.enableNdk;
    }

    public boolean isEnableNetworkEventBreadcrumbs() {
        return this.enableNetworkEventBreadcrumbs;
    }

    public boolean isEnablePerformanceV2() {
        return this.enablePerformanceV2;
    }

    public boolean isEnableRootCheck() {
        return this.enableRootCheck;
    }

    public boolean isEnableScopeSync() {
        return this.enableScopeSync;
    }

    public boolean isEnableSystemEventBreadcrumbs() {
        return this.enableSystemEventBreadcrumbs;
    }

    public boolean isReportHistoricalAnrs() {
        return this.reportHistoricalAnrs;
    }

    public void setAnrEnabled(boolean z) {
        this.anrEnabled = z;
    }

    public void setAnrReportInDebug(boolean z) {
        this.anrReportInDebug = z;
    }

    public void setAnrTimeoutIntervalMillis(long j) {
        this.anrTimeoutIntervalMillis = j;
    }

    public void setAttachAnrThreadDump(boolean z) {
        this.attachAnrThreadDump = z;
    }

    public void setAttachScreenshot(boolean z) {
        this.attachScreenshot = z;
    }

    public void setAttachViewHierarchy(boolean z) {
        this.attachViewHierarchy = z;
    }

    public void setBeforeScreenshotCaptureCallback(BeforeCaptureCallback beforeCaptureCallback) {
        this.beforeScreenshotCaptureCallback = beforeCaptureCallback;
    }

    public void setBeforeViewHierarchyCaptureCallback(BeforeCaptureCallback beforeCaptureCallback) {
        this.beforeViewHierarchyCaptureCallback = beforeCaptureCallback;
    }

    public void setCollectAdditionalContext(boolean z) {
        this.collectAdditionalContext = z;
    }

    public void setEnableActivityLifecycleBreadcrumbs(boolean z) {
        this.enableActivityLifecycleBreadcrumbs = z;
    }

    public void setEnableActivityLifecycleTracingAutoFinish(boolean z) {
        this.enableActivityLifecycleTracingAutoFinish = z;
    }

    public void setEnableAppComponentBreadcrumbs(boolean z) {
        this.enableAppComponentBreadcrumbs = z;
    }

    public void setEnableAppLifecycleBreadcrumbs(boolean z) {
        this.enableAppLifecycleBreadcrumbs = z;
    }

    public void setEnableAutoActivityLifecycleTracing(boolean z) {
        this.enableAutoActivityLifecycleTracing = z;
    }

    public void setEnableFramesTracking(boolean z) {
        this.enableFramesTracking = z;
    }

    public void setEnableNdk(boolean z) {
        this.enableNdk = z;
    }

    public void setEnableNetworkEventBreadcrumbs(boolean z) {
        this.enableNetworkEventBreadcrumbs = z;
    }

    public void setEnablePerformanceV2(boolean z) {
        this.enablePerformanceV2 = z;
    }

    public void setEnableRootCheck(boolean z) {
        this.enableRootCheck = z;
    }

    public void setEnableScopeSync(boolean z) {
        this.enableScopeSync = z;
    }

    public void setEnableSystemEventBreadcrumbs(boolean z) {
        this.enableSystemEventBreadcrumbs = z;
    }

    public void setFrameMetricsCollector(SentryFrameMetricsCollector sentryFrameMetricsCollector) {
        this.frameMetricsCollector = sentryFrameMetricsCollector;
    }

    public void setNativeSdkName(String str) {
        this.nativeSdkName = str;
    }

    @Deprecated
    public void setProfilingTracesIntervalMillis(int i) {
    }

    public void setReportHistoricalAnrs(boolean z) {
        this.reportHistoricalAnrs = z;
    }

    void setStartupCrashFlushTimeoutMillis(long j) {
        this.startupCrashFlushTimeoutMillis = j;
    }

    public SentryAndroidOptions() {
        setSentryClientName("sentry.java.android/7.8.0");
        setSdkVersion(createSdkVersion());
        setAttachServerName(false);
    }

    private SdkVersion createSdkVersion() {
        SdkVersion updateSdkVersion = SdkVersion.updateSdkVersion(getSdkVersion(), BuildConfig.SENTRY_ANDROID_SDK_NAME, "7.8.0");
        updateSdkVersion.addPackage("maven:io.sentry:sentry-android-core", "7.8.0");
        return updateSdkVersion;
    }

    public void enableAllAutoBreadcrumbs(boolean z) {
        this.enableActivityLifecycleBreadcrumbs = z;
        this.enableAppComponentBreadcrumbs = z;
        this.enableSystemEventBreadcrumbs = z;
        this.enableAppLifecycleBreadcrumbs = z;
        this.enableNetworkEventBreadcrumbs = z;
        setEnableUserInteractionBreadcrumbs(z);
    }

    public void setDebugImagesLoader(IDebugImagesLoader iDebugImagesLoader) {
        if (iDebugImagesLoader == null) {
            iDebugImagesLoader = NoOpDebugImagesLoader.getInstance();
        }
        this.debugImagesLoader = iDebugImagesLoader;
    }
}
