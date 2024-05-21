package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.ITransactionProfiler;
import io.sentry.JsonSerializer;
import io.sentry.NoOpLogger;
import io.sentry.Sentry;
import io.sentry.SentryAppStartProfilingOptions;
import io.sentry.SentryExecutorService;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.TracesSamplingDecision;
import io.sentry.android.core.SentryPerformanceProvider;
import io.sentry.android.core.internal.util.FirstDrawDoneListener;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.android.core.performance.ActivityLifecycleCallbacksAdapter;
import io.sentry.android.core.performance.ActivityLifecycleTimeSpan;
import io.sentry.android.core.performance.AppStartMetrics;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class SentryPerformanceProvider extends EmptySecureContentProvider {
    private static final long sdkInitMillis = SystemClock.uptimeMillis();
    private Application.ActivityLifecycleCallbacks activityCallback;
    private Application app;
    private final BuildInfoProvider buildInfoProvider;
    private final ILogger logger;

    Application.ActivityLifecycleCallbacks getActivityCallback() {
        return this.activityCallback;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    SentryPerformanceProvider(ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        this.logger = iLogger;
        this.buildInfoProvider = buildInfoProvider;
    }

    public SentryPerformanceProvider() {
        AndroidLogger androidLogger = new AndroidLogger();
        this.logger = androidLogger;
        this.buildInfoProvider = new BuildInfoProvider(androidLogger);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        AppStartMetrics appStartMetrics = AppStartMetrics.getInstance();
        onAppLaunched(getContext(), appStartMetrics);
        launchAppStartProfiler(appStartMetrics);
        return true;
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (SentryPerformanceProvider.class.getName().equals(providerInfo.authority)) {
            throw new IllegalStateException("An applicationId is required to fulfill the manifest placeholder.");
        }
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        synchronized (AppStartMetrics.getInstance()) {
            ITransactionProfiler appStartProfiler = AppStartMetrics.getInstance().getAppStartProfiler();
            if (appStartProfiler != null) {
                appStartProfiler.close();
            }
        }
    }

    private void launchAppStartProfiler(AppStartMetrics appStartMetrics) {
        Context context = getContext();
        if (context == null) {
            this.logger.log(SentryLevel.FATAL, "App. Context from ContentProvider is null", new Object[0]);
            return;
        }
        if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
            return;
        }
        File file = new File(AndroidOptionsInitializer.getCacheDir(context), Sentry.APP_START_PROFILING_CONFIG_FILE_NAME);
        if (!file.exists() || !file.canRead()) {
            return;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            try {
                SentryAppStartProfilingOptions sentryAppStartProfilingOptions = (SentryAppStartProfilingOptions) new JsonSerializer(SentryOptions.empty()).deserialize(bufferedReader, SentryAppStartProfilingOptions.class);
                if (sentryAppStartProfilingOptions == null) {
                    this.logger.log(SentryLevel.WARNING, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start.", new Object[0]);
                    bufferedReader.close();
                    return;
                }
                if (!sentryAppStartProfilingOptions.isProfilingEnabled()) {
                    this.logger.log(SentryLevel.INFO, "Profiling is not enabled. App start profiling will not start.", new Object[0]);
                    bufferedReader.close();
                    return;
                }
                TracesSamplingDecision tracesSamplingDecision = new TracesSamplingDecision(Boolean.valueOf(sentryAppStartProfilingOptions.isTraceSampled()), sentryAppStartProfilingOptions.getTraceSampleRate(), Boolean.valueOf(sentryAppStartProfilingOptions.isProfileSampled()), sentryAppStartProfilingOptions.getProfileSampleRate());
                appStartMetrics.setAppStartSamplingDecision(tracesSamplingDecision);
                if (tracesSamplingDecision.getProfileSampled().booleanValue() && tracesSamplingDecision.getSampled().booleanValue()) {
                    this.logger.log(SentryLevel.DEBUG, "App start profiling started.", new Object[0]);
                    AndroidTransactionProfiler androidTransactionProfiler = new AndroidTransactionProfiler(context.getApplicationContext(), this.buildInfoProvider, new SentryFrameMetricsCollector(context.getApplicationContext(), this.logger, this.buildInfoProvider), this.logger, sentryAppStartProfilingOptions.getProfilingTracesDirPath(), sentryAppStartProfilingOptions.isProfilingEnabled(), sentryAppStartProfilingOptions.getProfilingTracesHz(), new SentryExecutorService());
                    appStartMetrics.setAppStartProfiler(androidTransactionProfiler);
                    androidTransactionProfiler.start();
                    bufferedReader.close();
                    return;
                }
                this.logger.log(SentryLevel.DEBUG, "App start profiling was not sampled. It will not start.", new Object[0]);
                bufferedReader.close();
            } finally {
            }
        } catch (FileNotFoundException e) {
            this.logger.log(SentryLevel.ERROR, "App start profiling config file not found. ", e);
        } catch (Throwable th) {
            this.logger.log(SentryLevel.ERROR, "Error reading app start profiling config file. ", th);
        }
    }

    private void onAppLaunched(Context context, AppStartMetrics appStartMetrics) {
        appStartMetrics.getSdkInitTimeSpan().setStartedAt(sdkInitMillis);
        if (this.buildInfoProvider.getSdkInfoVersion() < 24) {
            return;
        }
        if (context instanceof Application) {
            this.app = (Application) context;
        }
        if (this.app == null) {
            return;
        }
        appStartMetrics.getAppStartTimeSpan().setStartedAt(Process.getStartUptimeMillis());
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(appStartMetrics, new AtomicBoolean(false));
        this.activityCallback = anonymousClass1;
        this.app.registerActivityLifecycleCallbacks(anonymousClass1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.android.core.SentryPerformanceProvider$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends ActivityLifecycleCallbacksAdapter {
        final WeakHashMap<Activity, ActivityLifecycleTimeSpan> activityLifecycleMap = new WeakHashMap<>();
        final /* synthetic */ AppStartMetrics val$appStartMetrics;
        final /* synthetic */ AtomicBoolean val$firstDrawDone;

        AnonymousClass1(AppStartMetrics appStartMetrics, AtomicBoolean atomicBoolean) {
            this.val$appStartMetrics = appStartMetrics;
            this.val$firstDrawDone = atomicBoolean;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.val$appStartMetrics.getAppStartTimeSpan().hasStopped()) {
                return;
            }
            ActivityLifecycleTimeSpan activityLifecycleTimeSpan = new ActivityLifecycleTimeSpan();
            activityLifecycleTimeSpan.getOnCreate().setStartedAt(uptimeMillis);
            this.activityLifecycleMap.put(activity, activityLifecycleTimeSpan);
        }

        @Override // io.sentry.android.core.performance.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            AppStartMetrics.AppStartType appStartType;
            if (this.val$appStartMetrics.getAppStartType() == AppStartMetrics.AppStartType.UNKNOWN) {
                AppStartMetrics appStartMetrics = this.val$appStartMetrics;
                if (bundle == null) {
                    appStartType = AppStartMetrics.AppStartType.COLD;
                } else {
                    appStartType = AppStartMetrics.AppStartType.WARM;
                }
                appStartMetrics.setAppStartType(appStartType);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            ActivityLifecycleTimeSpan activityLifecycleTimeSpan;
            if (this.val$appStartMetrics.getAppStartTimeSpan().hasStopped() || (activityLifecycleTimeSpan = this.activityLifecycleMap.get(activity)) == null) {
                return;
            }
            activityLifecycleTimeSpan.getOnCreate().stop();
            activityLifecycleTimeSpan.getOnCreate().setDescription(activity.getClass().getName() + ".onCreate");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStarted(Activity activity) {
            ActivityLifecycleTimeSpan activityLifecycleTimeSpan;
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.val$appStartMetrics.getAppStartTimeSpan().hasStopped() || (activityLifecycleTimeSpan = this.activityLifecycleMap.get(activity)) == null) {
                return;
            }
            activityLifecycleTimeSpan.getOnStart().setStartedAt(uptimeMillis);
        }

        @Override // io.sentry.android.core.performance.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.val$firstDrawDone.get()) {
                return;
            }
            final AtomicBoolean atomicBoolean = this.val$firstDrawDone;
            FirstDrawDoneListener.registerForNextDraw(activity, new Runnable() { // from class: io.sentry.android.core.SentryPerformanceProvider$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SentryPerformanceProvider.AnonymousClass1.this.m5656x609c87a8(atomicBoolean);
                }
            }, new BuildInfoProvider(NoOpLogger.getInstance()));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onActivityStarted$0$io-sentry-android-core-SentryPerformanceProvider$1, reason: not valid java name */
        public /* synthetic */ void m5656x609c87a8(AtomicBoolean atomicBoolean) {
            if (atomicBoolean.compareAndSet(false, true)) {
                SentryPerformanceProvider.this.onAppStartDone();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            ActivityLifecycleTimeSpan remove = this.activityLifecycleMap.remove(activity);
            if (this.val$appStartMetrics.getAppStartTimeSpan().hasStopped() || remove == null) {
                return;
            }
            remove.getOnStart().stop();
            remove.getOnStart().setDescription(activity.getClass().getName() + ".onStart");
            this.val$appStartMetrics.addActivityLifecycleTimeSpans(remove);
        }

        @Override // io.sentry.android.core.performance.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            this.activityLifecycleMap.remove(activity);
        }
    }

    synchronized void onAppStartDone() {
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks;
        AppStartMetrics appStartMetrics = AppStartMetrics.getInstance();
        appStartMetrics.getSdkInitTimeSpan().stop();
        appStartMetrics.getAppStartTimeSpan().stop();
        Application application = this.app;
        if (application != null && (activityLifecycleCallbacks = this.activityCallback) != null) {
            application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
    }
}
