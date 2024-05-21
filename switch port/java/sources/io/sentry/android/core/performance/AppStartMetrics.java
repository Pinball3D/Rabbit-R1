package io.sentry.android.core.performance;

import android.app.Application;
import android.content.ContentProvider;
import android.os.SystemClock;
import io.sentry.ITransactionProfiler;
import io.sentry.TracesSamplingDecision;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.SentryAndroidOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class AppStartMetrics {
    private static long CLASS_LOADED_UPTIME_MS = SystemClock.uptimeMillis();
    private static volatile AppStartMetrics instance;
    private AppStartType appStartType = AppStartType.UNKNOWN;
    private boolean appLaunchedInForeground = false;
    private ITransactionProfiler appStartProfiler = null;
    private TracesSamplingDecision appStartSamplingDecision = null;
    private final TimeSpan appStartSpan = new TimeSpan();
    private final TimeSpan sdkInitTimeSpan = new TimeSpan();
    private final TimeSpan applicationOnCreate = new TimeSpan();
    private final Map<ContentProvider, TimeSpan> contentProviderOnCreates = new HashMap();
    private final List<ActivityLifecycleTimeSpan> activityLifecycles = new ArrayList();

    /* loaded from: classes3.dex */
    public enum AppStartType {
        UNKNOWN,
        COLD,
        WARM
    }

    public ITransactionProfiler getAppStartProfiler() {
        return this.appStartProfiler;
    }

    public TracesSamplingDecision getAppStartSamplingDecision() {
        return this.appStartSamplingDecision;
    }

    public TimeSpan getAppStartTimeSpan() {
        return this.appStartSpan;
    }

    public AppStartType getAppStartType() {
        return this.appStartType;
    }

    public TimeSpan getApplicationOnCreateTimeSpan() {
        return this.applicationOnCreate;
    }

    public long getClassLoadedUptimeMs() {
        return CLASS_LOADED_UPTIME_MS;
    }

    public TimeSpan getSdkInitTimeSpan() {
        return this.sdkInitTimeSpan;
    }

    public boolean isAppLaunchedInForeground() {
        return this.appLaunchedInForeground;
    }

    public void setAppStartProfiler(ITransactionProfiler iTransactionProfiler) {
        this.appStartProfiler = iTransactionProfiler;
    }

    public void setAppStartSamplingDecision(TracesSamplingDecision tracesSamplingDecision) {
        this.appStartSamplingDecision = tracesSamplingDecision;
    }

    public void setAppStartType(AppStartType appStartType) {
        this.appStartType = appStartType;
    }

    public void setClassLoadedUptimeMs(long j) {
        CLASS_LOADED_UPTIME_MS = j;
    }

    public static AppStartMetrics getInstance() {
        if (instance == null) {
            synchronized (AppStartMetrics.class) {
                if (instance == null) {
                    instance = new AppStartMetrics();
                }
            }
        }
        return instance;
    }

    public List<TimeSpan> getContentProviderOnCreateTimeSpans() {
        ArrayList arrayList = new ArrayList(this.contentProviderOnCreates.values());
        Collections.sort(arrayList);
        return arrayList;
    }

    public List<ActivityLifecycleTimeSpan> getActivityLifecycleTimeSpans() {
        ArrayList arrayList = new ArrayList(this.activityLifecycles);
        Collections.sort(arrayList);
        return arrayList;
    }

    public void addActivityLifecycleTimeSpans(ActivityLifecycleTimeSpan activityLifecycleTimeSpan) {
        this.activityLifecycles.add(activityLifecycleTimeSpan);
    }

    public TimeSpan getAppStartTimeSpanWithFallback(SentryAndroidOptions sentryAndroidOptions) {
        if (sentryAndroidOptions.isEnablePerformanceV2()) {
            TimeSpan appStartTimeSpan = getAppStartTimeSpan();
            if (appStartTimeSpan.hasStarted()) {
                return appStartTimeSpan;
            }
        }
        return getSdkInitTimeSpan();
    }

    public void clear() {
        this.appStartType = AppStartType.UNKNOWN;
        this.appStartSpan.reset();
        this.sdkInitTimeSpan.reset();
        this.applicationOnCreate.reset();
        this.contentProviderOnCreates.clear();
        this.activityLifecycles.clear();
        ITransactionProfiler iTransactionProfiler = this.appStartProfiler;
        if (iTransactionProfiler != null) {
            iTransactionProfiler.close();
        }
        this.appStartProfiler = null;
        this.appStartSamplingDecision = null;
    }

    public static void onApplicationCreate(Application application) {
        long uptimeMillis = SystemClock.uptimeMillis();
        AppStartMetrics appStartMetrics = getInstance();
        if (appStartMetrics.applicationOnCreate.hasNotStarted()) {
            appStartMetrics.applicationOnCreate.setStartedAt(uptimeMillis);
            appStartMetrics.appLaunchedInForeground = ContextUtils.isForegroundImportance();
        }
    }

    public static void onApplicationPostCreate(Application application) {
        long uptimeMillis = SystemClock.uptimeMillis();
        AppStartMetrics appStartMetrics = getInstance();
        if (appStartMetrics.applicationOnCreate.hasNotStopped()) {
            appStartMetrics.applicationOnCreate.setDescription(application.getClass().getName() + ".onCreate");
            appStartMetrics.applicationOnCreate.setStoppedAt(uptimeMillis);
        }
    }

    public static void onContentProviderCreate(ContentProvider contentProvider) {
        long uptimeMillis = SystemClock.uptimeMillis();
        TimeSpan timeSpan = new TimeSpan();
        timeSpan.setStartedAt(uptimeMillis);
        getInstance().contentProviderOnCreates.put(contentProvider, timeSpan);
    }

    public static void onContentProviderPostCreate(ContentProvider contentProvider) {
        long uptimeMillis = SystemClock.uptimeMillis();
        TimeSpan timeSpan = getInstance().contentProviderOnCreates.get(contentProvider);
        if (timeSpan == null || !timeSpan.hasNotStopped()) {
            return;
        }
        timeSpan.setDescription(contentProvider.getClass().getName() + ".onCreate");
        timeSpan.setStoppedAt(uptimeMillis);
    }
}
