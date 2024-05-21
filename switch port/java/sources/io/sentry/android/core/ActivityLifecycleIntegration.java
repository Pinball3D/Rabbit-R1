package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import io.sentry.FullyDisplayedReporter;
import io.sentry.IHub;
import io.sentry.IScope;
import io.sentry.ISpan;
import io.sentry.ITransaction;
import io.sentry.Instrumenter;
import io.sentry.Integration;
import io.sentry.MeasurementUnit;
import io.sentry.NoOpTransaction;
import io.sentry.Scope;
import io.sentry.ScopeCallback;
import io.sentry.SentryDate;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.SpanStatus;
import io.sentry.TracesSamplingDecision;
import io.sentry.TransactionContext;
import io.sentry.TransactionFinishedCallback;
import io.sentry.TransactionOptions;
import io.sentry.android.core.internal.util.ClassUtil;
import io.sentry.android.core.internal.util.FirstDrawDoneListener;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import io.sentry.util.TracingUtils;
import java.io.Closeable;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class ActivityLifecycleIntegration implements Integration, Closeable, Application.ActivityLifecycleCallbacks {
    static final String APP_START_COLD = "app.start.cold";
    static final String APP_START_WARM = "app.start.warm";
    private static final String TRACE_ORIGIN = "auto.ui.activity";
    static final String TTFD_OP = "ui.load.full_display";
    static final long TTFD_TIMEOUT_MILLIS = 30000;
    static final String TTID_OP = "ui.load.initial_display";
    static final String UI_LOAD_OP = "ui.load";
    private final ActivityFramesTracker activityFramesTracker;
    private ISpan appStartSpan;
    private final Application application;
    private final BuildInfoProvider buildInfoProvider;
    private IHub hub;
    private boolean isAllActivityCallbacksAvailable;
    private SentryAndroidOptions options;
    private boolean performanceEnabled = false;
    private boolean timeToFullDisplaySpanEnabled = false;
    private boolean firstActivityCreated = false;
    private FullyDisplayedReporter fullyDisplayedReporter = null;
    private final WeakHashMap<Activity, ISpan> ttidSpanMap = new WeakHashMap<>();
    private final WeakHashMap<Activity, ISpan> ttfdSpanMap = new WeakHashMap<>();
    private SentryDate lastPausedTime = AndroidDateUtils.getCurrentSentryDateTime();
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private Future<?> ttfdAutoCloseFuture = null;
    private final WeakHashMap<Activity, ITransaction> activitiesWithOngoingTransactions = new WeakHashMap<>();

    private String getAppStartDesc(boolean z) {
        return z ? "Cold Start" : "Warm Start";
    }

    private String getAppStartOp(boolean z) {
        return z ? APP_START_COLD : APP_START_WARM;
    }

    WeakHashMap<Activity, ITransaction> getActivitiesWithOngoingTransactions() {
        return this.activitiesWithOngoingTransactions;
    }

    ActivityFramesTracker getActivityFramesTracker() {
        return this.activityFramesTracker;
    }

    ISpan getAppStartSpan() {
        return this.appStartSpan;
    }

    WeakHashMap<Activity, ISpan> getTtfdSpanMap() {
        return this.ttfdSpanMap;
    }

    WeakHashMap<Activity, ISpan> getTtidSpanMap() {
        return this.ttidSpanMap;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
    }

    public ActivityLifecycleIntegration(Application application, BuildInfoProvider buildInfoProvider, ActivityFramesTracker activityFramesTracker) {
        this.application = (Application) Objects.requireNonNull(application, "Application is required");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required");
        this.activityFramesTracker = (ActivityFramesTracker) Objects.requireNonNull(activityFramesTracker, "ActivityFramesTracker is required");
        if (buildInfoProvider.getSdkInfoVersion() >= 29) {
            this.isAllActivityCallbacksAvailable = true;
        }
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        this.options = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
        this.performanceEnabled = isPerformanceEnabled(this.options);
        this.fullyDisplayedReporter = this.options.getFullyDisplayedReporter();
        this.timeToFullDisplaySpanEnabled = this.options.isEnableTimeToFullDisplayTracing();
        this.application.registerActivityLifecycleCallbacks(this);
        this.options.getLogger().log(SentryLevel.DEBUG, "ActivityLifecycleIntegration installed.", new Object[0]);
        IntegrationUtils.addIntegrationToSdkVersion(getClass());
    }

    private boolean isPerformanceEnabled(SentryAndroidOptions sentryAndroidOptions) {
        return sentryAndroidOptions.isTracingEnabled() && sentryAndroidOptions.isEnableAutoActivityLifecycleTracing();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.application.unregisterActivityLifecycleCallbacks(this);
        SentryAndroidOptions sentryAndroidOptions = this.options;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "ActivityLifecycleIntegration removed.", new Object[0]);
        }
        this.activityFramesTracker.stop();
    }

    private String getActivityName(Activity activity) {
        return activity.getClass().getSimpleName();
    }

    private void stopPreviousTransactions() {
        for (Map.Entry<Activity, ITransaction> entry : this.activitiesWithOngoingTransactions.entrySet()) {
            finishTransaction(entry.getValue(), this.ttidSpanMap.get(entry.getKey()), this.ttfdSpanMap.get(entry.getKey()));
        }
    }

    private void startTracing(Activity activity) {
        SentryDate sentryDate;
        Boolean bool;
        SentryDate sentryDate2;
        final WeakReference weakReference = new WeakReference(activity);
        if (this.hub == null || isRunningTransactionOrTrace(activity)) {
            return;
        }
        if (!this.performanceEnabled) {
            this.activitiesWithOngoingTransactions.put(activity, NoOpTransaction.getInstance());
            TracingUtils.startNewTrace(this.hub);
            return;
        }
        stopPreviousTransactions();
        final String activityName = getActivityName(activity);
        TimeSpan appStartTimeSpanWithFallback = AppStartMetrics.getInstance().getAppStartTimeSpanWithFallback(this.options);
        TracesSamplingDecision tracesSamplingDecision = null;
        if (ContextUtils.isForegroundImportance() && appStartTimeSpanWithFallback.hasStarted()) {
            sentryDate = appStartTimeSpanWithFallback.getStartTimestamp();
            bool = Boolean.valueOf(AppStartMetrics.getInstance().getAppStartType() == AppStartMetrics.AppStartType.COLD);
        } else {
            sentryDate = null;
            bool = null;
        }
        TransactionOptions transactionOptions = new TransactionOptions();
        transactionOptions.setDeadlineTimeout(30000L);
        if (this.options.isEnableActivityLifecycleTracingAutoFinish()) {
            transactionOptions.setIdleTimeout(this.options.getIdleTimeout());
            transactionOptions.setTrimEnd(true);
        }
        transactionOptions.setWaitForChildren(true);
        transactionOptions.setTransactionFinishedCallback(new TransactionFinishedCallback() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda4
            @Override // io.sentry.TransactionFinishedCallback
            public final void execute(ITransaction iTransaction) {
                ActivityLifecycleIntegration.this.m5644x4339eaa7(weakReference, activityName, iTransaction);
            }
        });
        if (this.firstActivityCreated || sentryDate == null || bool == null) {
            sentryDate2 = this.lastPausedTime;
        } else {
            TracesSamplingDecision appStartSamplingDecision = AppStartMetrics.getInstance().getAppStartSamplingDecision();
            AppStartMetrics.getInstance().setAppStartSamplingDecision(null);
            tracesSamplingDecision = appStartSamplingDecision;
            sentryDate2 = sentryDate;
        }
        transactionOptions.setStartTimestamp(sentryDate2);
        transactionOptions.setAppStartTransaction(tracesSamplingDecision != null);
        final ITransaction startTransaction = this.hub.startTransaction(new TransactionContext(activityName, TransactionNameSource.COMPONENT, "ui.load", tracesSamplingDecision), transactionOptions);
        setSpanOrigin(startTransaction);
        if (!this.firstActivityCreated && sentryDate != null && bool != null) {
            ISpan startChild = startTransaction.startChild(getAppStartOp(bool.booleanValue()), getAppStartDesc(bool.booleanValue()), sentryDate, Instrumenter.SENTRY);
            this.appStartSpan = startChild;
            setSpanOrigin(startChild);
            finishAppStartSpan();
        }
        final ISpan startChild2 = startTransaction.startChild(TTID_OP, getTtidDesc(activityName), sentryDate2, Instrumenter.SENTRY);
        this.ttidSpanMap.put(activity, startChild2);
        setSpanOrigin(startChild2);
        if (this.timeToFullDisplaySpanEnabled && this.fullyDisplayedReporter != null && this.options != null) {
            final ISpan startChild3 = startTransaction.startChild(TTFD_OP, getTtfdDesc(activityName), sentryDate2, Instrumenter.SENTRY);
            setSpanOrigin(startChild3);
            try {
                this.ttfdSpanMap.put(activity, startChild3);
                this.ttfdAutoCloseFuture = this.options.getExecutorService().schedule(new Runnable() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityLifecycleIntegration.this.m5645xd0749c28(startChild3, startChild2);
                    }
                }, 30000L);
            } catch (RejectedExecutionException e) {
                this.options.getLogger().log(SentryLevel.ERROR, "Failed to call the executor. Time to full display span will not be finished automatically. Did you call Sentry.close()?", e);
            }
        }
        this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda6
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                ActivityLifecycleIntegration.this.m5646x5daf4da9(startTransaction, iScope);
            }
        });
        this.activitiesWithOngoingTransactions.put(activity, startTransaction);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$startTracing$0$io-sentry-android-core-ActivityLifecycleIntegration, reason: not valid java name */
    public /* synthetic */ void m5644x4339eaa7(WeakReference weakReference, String str, ITransaction iTransaction) {
        Activity activity = (Activity) weakReference.get();
        if (activity != null) {
            this.activityFramesTracker.setMetrics(activity, iTransaction.getEventId());
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = this.options;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().log(SentryLevel.WARNING, "Unable to track activity frames as the Activity %s has been destroyed.", str);
        }
    }

    private void setSpanOrigin(ISpan iSpan) {
        if (iSpan != null) {
            iSpan.getSpanContext().setOrigin(TRACE_ORIGIN);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: applyScope, reason: merged with bridge method [inline-methods] */
    public void m5646x5daf4da9(final IScope iScope, final ITransaction iTransaction) {
        iScope.withTransaction(new Scope.IWithTransaction() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda9
            @Override // io.sentry.Scope.IWithTransaction
            public final void accept(ITransaction iTransaction2) {
                ActivityLifecycleIntegration.this.m5639xd15ba770(iScope, iTransaction, iTransaction2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$applyScope$3$io-sentry-android-core-ActivityLifecycleIntegration, reason: not valid java name */
    public /* synthetic */ void m5639xd15ba770(IScope iScope, ITransaction iTransaction, ITransaction iTransaction2) {
        if (iTransaction2 == null) {
            iScope.setTransaction(iTransaction);
            return;
        }
        SentryAndroidOptions sentryAndroidOptions = this.options;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", iTransaction.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: clearScope, reason: merged with bridge method [inline-methods] */
    public void m5640x44f2e05d(final IScope iScope, final ITransaction iTransaction) {
        iScope.withTransaction(new Scope.IWithTransaction() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda0
            @Override // io.sentry.Scope.IWithTransaction
            public final void accept(ITransaction iTransaction2) {
                ActivityLifecycleIntegration.lambda$clearScope$4(ITransaction.this, iScope, iTransaction2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$clearScope$4(ITransaction iTransaction, IScope iScope, ITransaction iTransaction2) {
        if (iTransaction2 == iTransaction) {
            iScope.clearTransaction();
        }
    }

    private boolean isRunningTransactionOrTrace(Activity activity) {
        return this.activitiesWithOngoingTransactions.containsKey(activity);
    }

    private void stopTracing(Activity activity, boolean z) {
        if (this.performanceEnabled && z) {
            finishTransaction(this.activitiesWithOngoingTransactions.get(activity), null, null);
        }
    }

    private void finishTransaction(final ITransaction iTransaction, ISpan iSpan, ISpan iSpan2) {
        if (iTransaction == null || iTransaction.isFinished()) {
            return;
        }
        finishSpan(iSpan, SpanStatus.DEADLINE_EXCEEDED);
        m5645xd0749c28(iSpan2, iSpan);
        cancelTtfdAutoClose();
        SpanStatus status = iTransaction.getStatus();
        if (status == null) {
            status = SpanStatus.OK;
        }
        iTransaction.finish(status);
        IHub iHub = this.hub;
        if (iHub != null) {
            iHub.configureScope(new ScopeCallback() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda3
                @Override // io.sentry.ScopeCallback
                public final void run(IScope iScope) {
                    ActivityLifecycleIntegration.this.m5640x44f2e05d(iTransaction, iScope);
                }
            });
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        setColdStart(bundle);
        if (this.hub != null) {
            final String className = ClassUtil.getClassName(activity);
            this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda7
                @Override // io.sentry.ScopeCallback
                public final void run(IScope iScope) {
                    iScope.setScreen(className);
                }
            });
        }
        startTracing(activity);
        final ISpan iSpan = this.ttfdSpanMap.get(activity);
        this.firstActivityCreated = true;
        FullyDisplayedReporter fullyDisplayedReporter = this.fullyDisplayedReporter;
        if (fullyDisplayedReporter != null) {
            fullyDisplayedReporter.registerFullyDrawnListener(new FullyDisplayedReporter.FullyDisplayedReporterListener() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda8
                @Override // io.sentry.FullyDisplayedReporter.FullyDisplayedReporterListener
                public final void onFullyDrawn() {
                    ActivityLifecycleIntegration.this.m5641xcabdace(iSpan);
                }
            });
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        if (this.performanceEnabled) {
            this.activityFramesTracker.addActivity(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        if (this.performanceEnabled) {
            final ISpan iSpan = this.ttidSpanMap.get(activity);
            final ISpan iSpan2 = this.ttfdSpanMap.get(activity);
            View findViewById = activity.findViewById(android.R.id.content);
            if (findViewById != null) {
                FirstDrawDoneListener.registerForNextDraw(findViewById, new Runnable() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityLifecycleIntegration.this.m5642x1e0461fe(iSpan2, iSpan);
                    }
                }, this.buildInfoProvider);
            } else {
                this.mainHandler.post(new Runnable() { // from class: io.sentry.android.core.ActivityLifecycleIntegration$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityLifecycleIntegration.this.m5643xab3f137f(iSpan2, iSpan);
                    }
                });
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
        if (this.isAllActivityCallbacksAvailable) {
            this.firstActivityCreated = true;
            IHub iHub = this.hub;
            if (iHub == null) {
                this.lastPausedTime = AndroidDateUtils.getCurrentSentryDateTime();
            } else {
                this.lastPausedTime = iHub.getOptions().getDateProvider().now();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(Activity activity) {
        if (!this.isAllActivityCallbacksAvailable) {
            this.firstActivityCreated = true;
            IHub iHub = this.hub;
            if (iHub == null) {
                this.lastPausedTime = AndroidDateUtils.getCurrentSentryDateTime();
            } else {
                this.lastPausedTime = iHub.getOptions().getDateProvider().now();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityDestroyed(Activity activity) {
        if (this.performanceEnabled) {
            finishSpan(this.appStartSpan, SpanStatus.CANCELLED);
            ISpan iSpan = this.ttidSpanMap.get(activity);
            ISpan iSpan2 = this.ttfdSpanMap.get(activity);
            finishSpan(iSpan, SpanStatus.DEADLINE_EXCEEDED);
            m5645xd0749c28(iSpan2, iSpan);
            cancelTtfdAutoClose();
            stopTracing(activity, true);
            this.appStartSpan = null;
            this.ttidSpanMap.remove(activity);
            this.ttfdSpanMap.remove(activity);
        }
        this.activitiesWithOngoingTransactions.remove(activity);
    }

    private void finishSpan(ISpan iSpan) {
        if (iSpan == null || iSpan.isFinished()) {
            return;
        }
        iSpan.finish();
    }

    private void finishSpan(ISpan iSpan, SentryDate sentryDate) {
        finishSpan(iSpan, sentryDate, null);
    }

    private void finishSpan(ISpan iSpan, SentryDate sentryDate, SpanStatus spanStatus) {
        if (iSpan == null || iSpan.isFinished()) {
            return;
        }
        if (spanStatus == null) {
            spanStatus = iSpan.getStatus() != null ? iSpan.getStatus() : SpanStatus.OK;
        }
        iSpan.finish(spanStatus, sentryDate);
    }

    private void finishSpan(ISpan iSpan, SpanStatus spanStatus) {
        if (iSpan == null || iSpan.isFinished()) {
            return;
        }
        iSpan.finish(spanStatus);
    }

    private void cancelTtfdAutoClose() {
        Future<?> future = this.ttfdAutoCloseFuture;
        if (future != null) {
            future.cancel(false);
            this.ttfdAutoCloseFuture = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onFirstFrameDrawn, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void m5643xab3f137f(ISpan iSpan, ISpan iSpan2) {
        AppStartMetrics appStartMetrics = AppStartMetrics.getInstance();
        TimeSpan appStartTimeSpan = appStartMetrics.getAppStartTimeSpan();
        TimeSpan sdkInitTimeSpan = appStartMetrics.getSdkInitTimeSpan();
        if (appStartTimeSpan.hasStarted() && appStartTimeSpan.hasNotStopped()) {
            appStartTimeSpan.stop();
        }
        if (sdkInitTimeSpan.hasStarted() && sdkInitTimeSpan.hasNotStopped()) {
            sdkInitTimeSpan.stop();
        }
        finishAppStartSpan();
        SentryAndroidOptions sentryAndroidOptions = this.options;
        if (sentryAndroidOptions != null && iSpan2 != null) {
            SentryDate now = sentryAndroidOptions.getDateProvider().now();
            long millis = TimeUnit.NANOSECONDS.toMillis(now.diff(iSpan2.getStartDate()));
            iSpan2.setMeasurement(MeasurementValue.KEY_TIME_TO_INITIAL_DISPLAY, Long.valueOf(millis), MeasurementUnit.Duration.MILLISECOND);
            if (iSpan != null && iSpan.isFinished()) {
                iSpan.updateEndDate(now);
                iSpan2.setMeasurement(MeasurementValue.KEY_TIME_TO_FULL_DISPLAY, Long.valueOf(millis), MeasurementUnit.Duration.MILLISECOND);
            }
            finishSpan(iSpan2, now);
            return;
        }
        finishSpan(iSpan2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onFullFrameDrawn, reason: merged with bridge method [inline-methods] */
    public void m5641xcabdace(ISpan iSpan) {
        SentryAndroidOptions sentryAndroidOptions = this.options;
        if (sentryAndroidOptions != null && iSpan != null) {
            SentryDate now = sentryAndroidOptions.getDateProvider().now();
            iSpan.setMeasurement(MeasurementValue.KEY_TIME_TO_FULL_DISPLAY, Long.valueOf(TimeUnit.NANOSECONDS.toMillis(now.diff(iSpan.getStartDate()))), MeasurementUnit.Duration.MILLISECOND);
            finishSpan(iSpan, now);
        } else {
            finishSpan(iSpan);
        }
        cancelTtfdAutoClose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finishExceededTtfdSpan, reason: merged with bridge method [inline-methods] */
    public void m5645xd0749c28(ISpan iSpan, ISpan iSpan2) {
        if (iSpan == null || iSpan.isFinished()) {
            return;
        }
        iSpan.setDescription(getExceededTtfdDesc(iSpan));
        SentryDate finishDate = iSpan2 != null ? iSpan2.getFinishDate() : null;
        if (finishDate == null) {
            finishDate = iSpan.getStartDate();
        }
        finishSpan(iSpan, finishDate, SpanStatus.DEADLINE_EXCEEDED);
    }

    private void setColdStart(Bundle bundle) {
        SentryAndroidOptions sentryAndroidOptions;
        AppStartMetrics.AppStartType appStartType;
        if (this.firstActivityCreated || (sentryAndroidOptions = this.options) == null || sentryAndroidOptions.isEnablePerformanceV2()) {
            return;
        }
        AppStartMetrics appStartMetrics = AppStartMetrics.getInstance();
        if (bundle == null) {
            appStartType = AppStartMetrics.AppStartType.COLD;
        } else {
            appStartType = AppStartMetrics.AppStartType.WARM;
        }
        appStartMetrics.setAppStartType(appStartType);
    }

    private String getTtidDesc(String str) {
        return str + " initial display";
    }

    private String getTtfdDesc(String str) {
        return str + " full display";
    }

    private String getExceededTtfdDesc(ISpan iSpan) {
        String description = iSpan.getDescription();
        return (description == null || !description.endsWith(" - Deadline Exceeded")) ? iSpan.getDescription() + " - Deadline Exceeded" : description;
    }

    private void finishAppStartSpan() {
        SentryDate projectedStopTimestamp = AppStartMetrics.getInstance().getAppStartTimeSpanWithFallback(this.options).getProjectedStopTimestamp();
        if (!this.performanceEnabled || projectedStopTimestamp == null) {
            return;
        }
        finishSpan(this.appStartSpan, projectedStopTimestamp);
    }
}
