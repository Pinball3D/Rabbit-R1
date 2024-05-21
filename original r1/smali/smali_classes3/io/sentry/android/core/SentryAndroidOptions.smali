.class public final Lio/sentry/android/core/SentryAndroidOptions;
.super Lio/sentry/SentryOptions;
.source "SentryAndroidOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    }
.end annotation


# instance fields
.field private anrEnabled:Z

.field private anrReportInDebug:Z

.field private anrTimeoutIntervalMillis:J

.field private attachAnrThreadDump:Z

.field private attachScreenshot:Z

.field private attachViewHierarchy:Z

.field private beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

.field private beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

.field private collectAdditionalContext:Z

.field private debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

.field private enableActivityLifecycleBreadcrumbs:Z

.field private enableActivityLifecycleTracingAutoFinish:Z

.field private enableAppComponentBreadcrumbs:Z

.field private enableAppLifecycleBreadcrumbs:Z

.field private enableAutoActivityLifecycleTracing:Z

.field private enableFramesTracking:Z

.field private enableNdk:Z

.field private enableNetworkEventBreadcrumbs:Z

.field private enablePerformanceV2:Z

.field private enableRootCheck:Z

.field private enableScopeSync:Z

.field private enableSystemEventBreadcrumbs:Z

.field private frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private nativeSdkName:Ljava/lang/String;

.field private reportHistoricalAnrs:Z

.field private final startupCrashDurationThresholdMillis:J

.field private startupCrashFlushTimeoutMillis:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 213
    invoke-direct {p0}, Lio/sentry/SentryOptions;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    const-wide/16 v1, 0x1388

    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    const/4 v3, 0x0

    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    .line 98
    invoke-static {}, Lio/sentry/android/core/NoOpDebugImagesLoader;->getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;

    move-result-object v4

    iput-object v4, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    const-wide/16 v1, 0x7d0

    iput-wide v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashDurationThresholdMillis:J

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    iput-boolean v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    iput-boolean v3, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    const-string v0, "sentry.java.android/7.8.0"

    .line 214
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSentryClientName(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lio/sentry/android/core/SentryAndroidOptions;->createSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 216
    invoke-virtual {p0, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachServerName(Z)V

    return-void
.end method

.method private createSdkVersion()Lio/sentry/protocol/SdkVersion;
    .locals 2

    .line 220
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    const-string v0, "sentry.java.android"

    const-string v1, "7.8.0"

    .line 224
    invoke-static {p0, v0, v1}, Lio/sentry/protocol/SdkVersion;->updateSdkVersion(Lio/sentry/protocol/SdkVersion;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    const-string v0, "maven:io.sentry:sentry-android-core"

    .line 226
    invoke-virtual {p0, v0, v1}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public enableAllAutoBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    .line 337
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    return-void
.end method

.method public getAnrTimeoutIntervalMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-wide v0
.end method

.method public getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-object p0
.end method

.method public getBeforeViewHierarchyCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-object p0
.end method

.method public getDebugImagesLoader()Lio/sentry/android/core/IDebugImagesLoader;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    return-object p0
.end method

.method public getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    return-object p0
.end method

.method public getNativeSdkName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    return-object p0
.end method

.method public getProfilingTracesIntervalMillis()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getStartupCrashDurationThresholdMillis()J
    .locals 2

    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method getStartupCrashFlushTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-wide v0
.end method

.method public isAnrEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return p0
.end method

.method public isAnrReportInDebug()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return p0
.end method

.method public isAttachAnrThreadDump()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    return p0
.end method

.method public isAttachScreenshot()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return p0
.end method

.method public isAttachViewHierarchy()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return p0
.end method

.method public isCollectAdditionalContext()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return p0
.end method

.method public isEnableActivityLifecycleBreadcrumbs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return p0
.end method

.method public isEnableActivityLifecycleTracingAutoFinish()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return p0
.end method

.method public isEnableAppComponentBreadcrumbs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return p0
.end method

.method public isEnableAppLifecycleBreadcrumbs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return p0
.end method

.method public isEnableAutoActivityLifecycleTracing()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return p0
.end method

.method public isEnableFramesTracking()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return p0
.end method

.method public isEnableNdk()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    return p0
.end method

.method public isEnableNetworkEventBreadcrumbs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    return p0
.end method

.method public isEnablePerformanceV2()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    return p0
.end method

.method public isEnableRootCheck()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    return p0
.end method

.method public isEnableScopeSync()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    return p0
.end method

.method public isEnableSystemEventBreadcrumbs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return p0
.end method

.method public isReportHistoricalAnrs()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    return p0
.end method

.method public setAnrEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrEnabled:Z

    return-void
.end method

.method public setAnrReportInDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrReportInDebug:Z

    return-void
.end method

.method public setAnrTimeoutIntervalMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->anrTimeoutIntervalMillis:J

    return-void
.end method

.method public setAttachAnrThreadDump(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachAnrThreadDump:Z

    return-void
.end method

.method public setAttachScreenshot(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachScreenshot:Z

    return-void
.end method

.method public setAttachViewHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->attachViewHierarchy:Z

    return-void
.end method

.method public setBeforeScreenshotCaptureCallback(Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeScreenshotCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-void
.end method

.method public setBeforeViewHierarchyCaptureCallback(Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->beforeViewHierarchyCaptureCallback:Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    return-void
.end method

.method public setCollectAdditionalContext(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->collectAdditionalContext:Z

    return-void
.end method

.method public setDebugImagesLoader(Lio/sentry/android/core/IDebugImagesLoader;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-static {}, Lio/sentry/android/core/NoOpDebugImagesLoader;->getInstance()Lio/sentry/android/core/NoOpDebugImagesLoader;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->debugImagesLoader:Lio/sentry/android/core/IDebugImagesLoader;

    return-void
.end method

.method public setEnableActivityLifecycleBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleBreadcrumbs:Z

    return-void
.end method

.method public setEnableActivityLifecycleTracingAutoFinish(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableActivityLifecycleTracingAutoFinish:Z

    return-void
.end method

.method public setEnableAppComponentBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppComponentBreadcrumbs:Z

    return-void
.end method

.method public setEnableAppLifecycleBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAppLifecycleBreadcrumbs:Z

    return-void
.end method

.method public setEnableAutoActivityLifecycleTracing(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableAutoActivityLifecycleTracing:Z

    return-void
.end method

.method public setEnableFramesTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableFramesTracking:Z

    return-void
.end method

.method public setEnableNdk(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNdk:Z

    return-void
.end method

.method public setEnableNetworkEventBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableNetworkEventBreadcrumbs:Z

    return-void
.end method

.method public setEnablePerformanceV2(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enablePerformanceV2:Z

    return-void
.end method

.method public setEnableRootCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableRootCheck:Z

    return-void
.end method

.method public setEnableScopeSync(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableScopeSync:Z

    return-void
.end method

.method public setEnableSystemEventBreadcrumbs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->enableSystemEventBreadcrumbs:Z

    return-void
.end method

.method public setFrameMetricsCollector(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    return-void
.end method

.method public setNativeSdkName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->nativeSdkName:Ljava/lang/String;

    return-void
.end method

.method public setProfilingTracesIntervalMillis(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setReportHistoricalAnrs(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->reportHistoricalAnrs:Z

    return-void
.end method

.method setStartupCrashFlushTimeoutMillis(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/android/core/SentryAndroidOptions;->startupCrashFlushTimeoutMillis:J

    return-void
.end method
