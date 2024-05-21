.class final Lio/sentry/android/core/ManifestMetadataReader;
.super Ljava/lang/Object;
.source "ManifestMetadataReader.java"


# static fields
.field static final ANR_ENABLE:Ljava/lang/String; = "io.sentry.anr.enable"

.field static final ANR_REPORT_DEBUG:Ljava/lang/String; = "io.sentry.anr.report-debug"

.field static final ANR_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.anr.timeout-interval-millis"

.field static final ATTACH_SCREENSHOT:Ljava/lang/String; = "io.sentry.attach-screenshot"

.field static final ATTACH_THREADS:Ljava/lang/String; = "io.sentry.attach-threads"

.field static final ATTACH_VIEW_HIERARCHY:Ljava/lang/String; = "io.sentry.attach-view-hierarchy"

.field static final AUTO_INIT:Ljava/lang/String; = "io.sentry.auto-init"

.field static final AUTO_SESSION_TRACKING_ENABLE:Ljava/lang/String; = "io.sentry.auto-session-tracking.enable"

.field static final BREADCRUMBS_ACTIVITY_LIFECYCLE_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.activity-lifecycle"

.field static final BREADCRUMBS_APP_COMPONENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.app-components"

.field static final BREADCRUMBS_APP_LIFECYCLE_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.app-lifecycle"

.field static final BREADCRUMBS_NETWORK_EVENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.network-events"

.field static final BREADCRUMBS_SYSTEM_EVENTS_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.system-events"

.field static final BREADCRUMBS_USER_INTERACTION_ENABLE:Ljava/lang/String; = "io.sentry.breadcrumbs.user-interaction"

.field static final CLIENT_REPORTS_ENABLE:Ljava/lang/String; = "io.sentry.send-client-reports"

.field static final COLLECT_ADDITIONAL_CONTEXT:Ljava/lang/String; = "io.sentry.additional-context"

.field static final DEBUG:Ljava/lang/String; = "io.sentry.debug"

.field static final DEBUG_LEVEL:Ljava/lang/String; = "io.sentry.debug.level"

.field static final DSN:Ljava/lang/String; = "io.sentry.dsn"

.field static final ENABLE_APP_START_PROFILING:Ljava/lang/String; = "io.sentry.profiling.enable-app-start"

.field static final ENABLE_METRICS:Ljava/lang/String; = "io.sentry.enable-metrics"

.field static final ENABLE_PERFORMANCE_V2:Ljava/lang/String; = "io.sentry.performance-v2.enable"

.field static final ENABLE_ROOT_CHECK:Ljava/lang/String; = "io.sentry.enable-root-check"

.field static final ENABLE_SCOPE_PERSISTENCE:Ljava/lang/String; = "io.sentry.enable-scope-persistence"

.field static final ENABLE_SENTRY:Ljava/lang/String; = "io.sentry.enabled"

.field static final ENVIRONMENT:Ljava/lang/String; = "io.sentry.environment"

.field static final IDLE_TIMEOUT:Ljava/lang/String; = "io.sentry.traces.idle-timeout"

.field static final NDK_ENABLE:Ljava/lang/String; = "io.sentry.ndk.enable"

.field static final NDK_SCOPE_SYNC_ENABLE:Ljava/lang/String; = "io.sentry.ndk.scope-sync.enable"

.field static final PERFORM_FRAMES_TRACKING:Ljava/lang/String; = "io.sentry.traces.frames-tracking"

.field static final PROFILES_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.profiling.sample-rate"

.field static final PROGUARD_UUID:Ljava/lang/String; = "io.sentry.proguard-uuid"

.field static final RELEASE:Ljava/lang/String; = "io.sentry.release"

.field static final SAMPLE_RATE:Ljava/lang/String; = "io.sentry.sample-rate"

.field static final SDK_NAME:Ljava/lang/String; = "io.sentry.sdk.name"

.field static final SDK_VERSION:Ljava/lang/String; = "io.sentry.sdk.version"

.field static final SEND_DEFAULT_PII:Ljava/lang/String; = "io.sentry.send-default-pii"

.field static final SEND_MODULES:Ljava/lang/String; = "io.sentry.send-modules"

.field static final SENTRY_GRADLE_PLUGIN_INTEGRATIONS:Ljava/lang/String; = "io.sentry.gradle-plugin-integrations"

.field static final SESSION_TRACKING_ENABLE:Ljava/lang/String; = "io.sentry.session-tracking.enable"

.field static final SESSION_TRACKING_TIMEOUT_INTERVAL_MILLIS:Ljava/lang/String; = "io.sentry.session-tracking.timeout-interval-millis"

.field static final TRACES_ACTIVITY_AUTO_FINISH_ENABLE:Ljava/lang/String; = "io.sentry.traces.activity.auto-finish.enable"

.field static final TRACES_ACTIVITY_ENABLE:Ljava/lang/String; = "io.sentry.traces.activity.enable"

.field static final TRACES_PROFILING_ENABLE:Ljava/lang/String; = "io.sentry.traces.profiling.enable"

.field static final TRACES_SAMPLE_RATE:Ljava/lang/String; = "io.sentry.traces.sample-rate"

.field static final TRACES_UI_ENABLE:Ljava/lang/String; = "io.sentry.traces.user-interaction.enable"

.field static final TRACE_PROPAGATION_TARGETS:Ljava/lang/String; = "io.sentry.traces.trace-propagation-targets"

.field static final TRACE_SAMPLING:Ljava/lang/String; = "io.sentry.traces.trace-sampling"

.field static final TRACING_ENABLE:Ljava/lang/String; = "io.sentry.traces.enable"

.field static final TRACING_ORIGINS:Ljava/lang/String; = "io.sentry.traces.tracing-origins"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final TTFD_ENABLE:Ljava/lang/String; = "io.sentry.traces.time-to-full-display.enable"

.field static final UNCAUGHT_EXCEPTION_HANDLER_ENABLE:Ljava/lang/String; = "io.sentry.uncaught-exception-handler.enable"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMetadata(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 11

    const-string v0, ""

    const-string v1, "io.sentry.traces.trace-propagation-targets"

    const-string v2, "The application context is required."

    .line 121
    invoke-static {p0, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "The options object is required."

    .line 122
    invoke-static {p1, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lio/sentry/android/core/ManifestMetadataReader;->getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p0, :cond_10

    const-string v3, "io.sentry.debug"

    .line 129
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setDebug(Z)V

    .line 131
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "io.sentry.debug.level"

    .line 137
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryLevel;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 139
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    :cond_0
    const-string v3, "io.sentry.anr.enable"

    .line 143
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    const-string v3, "io.sentry.session-tracking.enable"

    .line 148
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoSessionTracking()Z

    move-result v4

    .line 147
    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "io.sentry.auto-session-tracking.enable"

    .line 152
    invoke-static {p0, p2, v4, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 151
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoSessionTracking(Z)V

    .line 154
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSampleRate()Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-nez v3, :cond_1

    const-string v3, "io.sentry.sample-rate"

    .line 155
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_1

    .line 157
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setSampleRate(Ljava/lang/Double;)V

    :cond_1
    const-string v3, "io.sentry.anr.report-debug"

    .line 162
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 161
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    const-string v3, "io.sentry.anr.timeout-interval-millis"

    .line 169
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    move-result-wide v6

    .line 165
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v6

    .line 164
    invoke-virtual {p1, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    const-string v3, "io.sentry.dsn"

    .line 171
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getDsn()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "io.sentry.enabled"

    .line 172
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnabled()Z

    move-result v7

    invoke-static {p0, p2, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_2

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_4

    .line 182
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v9, "DSN is required. Use empty string to disable SDK."

    new-array v10, v2, [Ljava/lang/Object;

    .line 183
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v7

    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v9, "Sentry enabled flag set to false or DSN is empty: disabling sentry-android"

    new-array v10, v2, [Ljava/lang/Object;

    .line 177
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_4
    :goto_1
    invoke-virtual {p1, v6}, Lio/sentry/android/core/SentryAndroidOptions;->setEnabled(Z)V

    .line 187
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setDsn(Ljava/lang/String;)V

    const-string v3, "io.sentry.ndk.enable"

    .line 189
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    const-string v3, "io.sentry.ndk.scope-sync.enable"

    .line 192
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopeSync()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 191
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    const-string v3, "io.sentry.release"

    .line 194
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getRelease()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setRelease(Ljava/lang/String;)V

    const-string v3, "io.sentry.environment"

    .line 196
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnvironment(Ljava/lang/String;)V

    const-string v3, "io.sentry.session-tracking.timeout-interval-millis"

    .line 203
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSessionTrackingIntervalMillis()J

    move-result-wide v6

    .line 199
    invoke-static {p0, p2, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v6

    .line 198
    invoke-virtual {p1, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setSessionTrackingIntervalMillis(J)V

    const-string v3, "io.sentry.breadcrumbs.activity-lifecycle"

    .line 210
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    move-result v6

    .line 206
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 205
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.app-lifecycle"

    .line 217
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    move-result v6

    .line 213
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 212
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.system-events"

    .line 224
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    move-result v6

    .line 220
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 219
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.app-components"

    .line 231
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v6

    .line 227
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 226
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.user-interaction"

    .line 238
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v6

    .line 234
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 233
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    const-string v3, "io.sentry.breadcrumbs.network-events"

    .line 245
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v6

    .line 241
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 240
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNetworkEventBreadcrumbs(Z)V

    const-string v3, "io.sentry.uncaught-exception-handler.enable"

    .line 252
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUncaughtExceptionHandler()Z

    move-result v6

    .line 248
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 247
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUncaughtExceptionHandler(Z)V

    const-string v3, "io.sentry.attach-threads"

    .line 255
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachThreads()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 254
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachThreads(Z)V

    const-string v3, "io.sentry.attach-screenshot"

    .line 258
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 257
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    const-string v3, "io.sentry.attach-view-hierarchy"

    .line 261
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 260
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    const-string v3, "io.sentry.send-client-reports"

    .line 264
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendClientReports()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 263
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setSendClientReports(Z)V

    const-string v3, "io.sentry.additional-context"

    .line 271
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    move-result v6

    .line 267
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 266
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectAdditionalContext(Z)V

    .line 273
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getEnableTracing()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, "io.sentry.traces.enable"

    const/4 v6, 0x0

    .line 274
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBoolNullable(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableTracing(Ljava/lang/Boolean;)V

    .line 277
    :cond_5
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getTracesSampleRate()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "io.sentry.traces.sample-rate"

    .line 278
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 279
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_6

    .line 280
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    :cond_6
    const-string v3, "io.sentry.traces.trace-sampling"

    .line 285
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isTraceSampling()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 284
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTraceSampling(Z)V

    const-string v3, "io.sentry.traces.activity.enable"

    .line 292
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    move-result v6

    .line 288
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 287
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoActivityLifecycleTracing(Z)V

    const-string v3, "io.sentry.traces.activity.auto-finish.enable"

    .line 299
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    move-result v6

    .line 295
    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 294
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleTracingAutoFinish(Z)V

    const-string v3, "io.sentry.traces.profiling.enable"

    .line 302
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isProfilingEnabled()Z

    move-result v6

    invoke-static {p0, p2, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 301
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setProfilingEnabled(Z)V

    .line 304
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getProfilesSampleRate()Ljava/lang/Double;

    move-result-object v3

    if-nez v3, :cond_7

    const-string v3, "io.sentry.traces.profiling.sample-rate"

    .line 305
    invoke-static {p0, p2, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    .line 306
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v6, v4

    if-eqz v4, :cond_7

    .line 307
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    :cond_7
    const-string v3, "io.sentry.traces.user-interaction.enable"

    .line 312
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 311
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUserInteractionTracing(Z)V

    const-string v3, "io.sentry.traces.time-to-full-display.enable"

    .line 315
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableTimeToFullDisplayTracing()Z

    move-result v4

    invoke-static {p0, p2, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v3

    .line 314
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableTimeToFullDisplayTracing(Z)V

    const-string v3, "io.sentry.traces.idle-timeout"

    const-wide/16 v4, -0x1

    .line 317
    invoke-static {p0, p2, v3, v4, v5}, Lio/sentry/android/core/ManifestMetadataReader;->readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-eqz v3, :cond_8

    .line 319
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 324
    :cond_8
    invoke-static {p0, p2, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 327
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "io.sentry.traces.tracing-origins"

    if-nez v4, :cond_a

    if-eqz v3, :cond_9

    .line 328
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 329
    :cond_9
    invoke-static {p0, p2, v5}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 332
    :cond_a
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 333
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    if-nez v3, :cond_c

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setTracePropagationTargets(Ljava/util/List;)V

    goto :goto_2

    :cond_c
    if-eqz v3, :cond_d

    .line 337
    invoke-virtual {p1, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTracePropagationTargets(Ljava/util/List;)V

    :cond_d
    :goto_2
    const-string v1, "io.sentry.traces.frames-tracking"

    const/4 v3, 0x1

    .line 340
    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableFramesTracking(Z)V

    const-string v1, "io.sentry.proguard-uuid"

    .line 343
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getProguardUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v1

    if-nez v1, :cond_e

    .line 348
    new-instance v1, Lio/sentry/protocol/SdkVersion;

    invoke-direct {v1, v0, v0}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v0, "io.sentry.sdk.name"

    .line 350
    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readStringNotNull(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    const-string v0, "io.sentry.sdk.version"

    .line 351
    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p2, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->readStringNotNull(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/sentry/protocol/SdkVersion;->setVersion(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    const-string v0, "io.sentry.send-default-pii"

    .line 355
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendDefaultPii()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 354
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSendDefaultPii(Z)V

    const-string v0, "io.sentry.gradle-plugin-integrations"

    .line 360
    invoke-static {p0, p2, v0}, Lio/sentry/android/core/ManifestMetadataReader;->readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const-string v0, "io.sentry.enable-root-check"

    .line 368
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 367
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableRootCheck(Z)V

    const-string v0, "io.sentry.send-modules"

    .line 370
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isSendModules()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSendModules(Z)V

    const-string v0, "io.sentry.performance-v2.enable"

    .line 373
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 372
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnablePerformanceV2(Z)V

    const-string v0, "io.sentry.profiling.enable-app-start"

    .line 377
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppStartProfiling()Z

    move-result v1

    .line 376
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppStartProfiling(Z)V

    const-string v0, "io.sentry.enable-scope-persistence"

    .line 381
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopePersistence()Z

    move-result v1

    .line 380
    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v0

    .line 379
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopePersistence(Z)V

    const-string v0, "io.sentry.enable-metrics"

    .line 384
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableMetrics()Z

    move-result v1

    invoke-static {p0, p2, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result p0

    .line 383
    invoke-virtual {p1, p0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableMetrics(Z)V

    .line 388
    :cond_10
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Retrieving configuration from AndroidManifest.xml"

    new-array v1, v2, [Ljava/lang/Object;

    .line 389
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p0

    .line 392
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "Failed to read configuration from android manifest metadata."

    .line 393
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private static getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance p2, Lio/sentry/android/core/BuildInfoProvider;

    invoke-direct {p2, p1}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    :goto_0
    const-wide/16 v0, 0x80

    .line 511
    invoke-static {p0, v0, v1, p2}, Lio/sentry/android/core/ContextUtils;->getApplicationInfo(Landroid/content/Context;JLio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 515
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method static isAutoInit(Landroid/content/Context;Lio/sentry/ILogger;)Z
    .locals 3

    const-string v0, "The application context is required."

    .line 483
    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 487
    :try_start_0
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->getMetadata(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "io.sentry.auto-init"

    .line 489
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    move-result v1

    .line 491
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v0, "Retrieving auto-init from AndroidManifest.xml"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, p0, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 493
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to read auto-init from android manifest metadata."

    invoke-interface {p1, v0, v2, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method private static readBool(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z
    .locals 1

    .line 403
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 404
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s read: %s"

    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method private static readBoolNullable(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    .line 414
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 416
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 417
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s read: %s"

    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 420
    :cond_1
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "%s used default %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p0, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3
.end method

.method private static readDouble(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 459
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 460
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "%s read: %s"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static readList(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 448
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "%s read: %s"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    const-string p1, ","

    const/4 p2, -0x1

    .line 450
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static readLong(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J
    .locals 1

    long-to-int p3, p3

    .line 470
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long p3, p0

    .line 471
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s read: %s"

    invoke-interface {p1, p0, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-wide p3
.end method

.method private static readString(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 430
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 431
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "%s read: %s"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static readStringNotNull(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 440
    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 441
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "%s read: %s"

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p3, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
