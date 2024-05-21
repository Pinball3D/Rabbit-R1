package io.sentry.android.core;

import android.os.Looper;
import io.sentry.EventProcessor;
import io.sentry.Hint;
import io.sentry.MeasurementUnit;
import io.sentry.SentryEvent;
import io.sentry.SpanContext;
import io.sentry.SpanDataConvention;
import io.sentry.SpanId;
import io.sentry.SpanStatus;
import io.sentry.android.core.performance.ActivityLifecycleTimeSpan;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.android.fragment.SentryFragmentLifecycleCallbacks;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentrySpan;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import io.sentry.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class PerformanceAndroidEventProcessor implements EventProcessor {
    private static final String APP_METRICS_ACTIVITIES_OP = "activity.load";
    private static final String APP_METRICS_APPLICATION_OP = "application.load";
    private static final String APP_METRICS_CONTENT_PROVIDER_OP = "contentprovider.load";
    private static final String APP_METRICS_ORIGIN = "auto.ui";
    private static final String APP_METRICS_PROCESS_INIT_OP = "process.load";
    private static final long MAX_PROCESS_INIT_APP_START_DIFF_MS = 10000;
    private final ActivityFramesTracker activityFramesTracker;
    private final SentryAndroidOptions options;
    private boolean sentStartMeasurement = false;

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        return sentryEvent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PerformanceAndroidEventProcessor(SentryAndroidOptions sentryAndroidOptions, ActivityFramesTracker activityFramesTracker) {
        this.options = (SentryAndroidOptions) Objects.requireNonNull(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.activityFramesTracker = (ActivityFramesTracker) Objects.requireNonNull(activityFramesTracker, "ActivityFramesTracker is required");
    }

    @Override // io.sentry.EventProcessor
    public synchronized SentryTransaction process(SentryTransaction sentryTransaction, Hint hint) {
        Map<String, MeasurementValue> takeMetrics;
        if (!this.options.isTracingEnabled()) {
            return sentryTransaction;
        }
        if (!this.sentStartMeasurement && hasAppStartSpan(sentryTransaction)) {
            long durationMs = AppStartMetrics.getInstance().getAppStartTimeSpanWithFallback(this.options).getDurationMs();
            if (durationMs != 0) {
                sentryTransaction.getMeasurements().put(AppStartMetrics.getInstance().getAppStartType() == AppStartMetrics.AppStartType.COLD ? MeasurementValue.KEY_APP_START_COLD : MeasurementValue.KEY_APP_START_WARM, new MeasurementValue(Float.valueOf((float) durationMs), MeasurementUnit.Duration.MILLISECOND.apiName()));
                attachColdAppStartSpans(AppStartMetrics.getInstance(), sentryTransaction);
                this.sentStartMeasurement = true;
            }
        }
        SentryId eventId = sentryTransaction.getEventId();
        SpanContext trace = sentryTransaction.getContexts().getTrace();
        if (eventId != null && trace != null && trace.getOperation().contentEquals(SentryFragmentLifecycleCallbacks.FRAGMENT_LOAD_OP) && (takeMetrics = this.activityFramesTracker.takeMetrics(eventId)) != null) {
            sentryTransaction.getMeasurements().putAll(takeMetrics);
        }
        return sentryTransaction;
    }

    private boolean hasAppStartSpan(SentryTransaction sentryTransaction) {
        for (SentrySpan sentrySpan : sentryTransaction.getSpans()) {
            if (sentrySpan.getOp().contentEquals("app.start.cold") || sentrySpan.getOp().contentEquals("app.start.warm")) {
                return true;
            }
        }
        SpanContext trace = sentryTransaction.getContexts().getTrace();
        return trace != null && (trace.getOperation().equals("app.start.cold") || trace.getOperation().equals("app.start.warm"));
    }

    private void attachColdAppStartSpans(AppStartMetrics appStartMetrics, SentryTransaction sentryTransaction) {
        SpanContext trace;
        SpanId spanId;
        if (appStartMetrics.getAppStartType() == AppStartMetrics.AppStartType.COLD && (trace = sentryTransaction.getContexts().getTrace()) != null) {
            SentryId traceId = trace.getTraceId();
            Iterator<SentrySpan> it = sentryTransaction.getSpans().iterator();
            while (true) {
                if (!it.hasNext()) {
                    spanId = null;
                    break;
                }
                SentrySpan next = it.next();
                if (next.getOp().contentEquals("app.start.cold")) {
                    spanId = next.getSpanId();
                    break;
                }
            }
            long classLoadedUptimeMs = appStartMetrics.getClassLoadedUptimeMs();
            TimeSpan appStartTimeSpan = appStartMetrics.getAppStartTimeSpan();
            if (appStartTimeSpan.hasStarted() && Math.abs(classLoadedUptimeMs - appStartTimeSpan.getStartUptimeMs()) <= 10000) {
                TimeSpan timeSpan = new TimeSpan();
                timeSpan.setStartedAt(appStartTimeSpan.getStartUptimeMs());
                timeSpan.setStartUnixTimeMs(appStartTimeSpan.getStartTimestampMs());
                timeSpan.setStoppedAt(classLoadedUptimeMs);
                timeSpan.setDescription("Process Initialization");
                sentryTransaction.getSpans().add(timeSpanToSentrySpan(timeSpan, spanId, traceId, APP_METRICS_PROCESS_INIT_OP));
            }
            List<TimeSpan> contentProviderOnCreateTimeSpans = appStartMetrics.getContentProviderOnCreateTimeSpans();
            if (!contentProviderOnCreateTimeSpans.isEmpty()) {
                Iterator<TimeSpan> it2 = contentProviderOnCreateTimeSpans.iterator();
                while (it2.hasNext()) {
                    sentryTransaction.getSpans().add(timeSpanToSentrySpan(it2.next(), spanId, traceId, APP_METRICS_CONTENT_PROVIDER_OP));
                }
            }
            TimeSpan applicationOnCreateTimeSpan = appStartMetrics.getApplicationOnCreateTimeSpan();
            if (applicationOnCreateTimeSpan.hasStopped()) {
                sentryTransaction.getSpans().add(timeSpanToSentrySpan(applicationOnCreateTimeSpan, spanId, traceId, APP_METRICS_APPLICATION_OP));
            }
            List<ActivityLifecycleTimeSpan> activityLifecycleTimeSpans = appStartMetrics.getActivityLifecycleTimeSpans();
            if (activityLifecycleTimeSpans.isEmpty()) {
                return;
            }
            for (ActivityLifecycleTimeSpan activityLifecycleTimeSpan : activityLifecycleTimeSpans) {
                if (activityLifecycleTimeSpan.getOnCreate().hasStarted() && activityLifecycleTimeSpan.getOnCreate().hasStopped()) {
                    sentryTransaction.getSpans().add(timeSpanToSentrySpan(activityLifecycleTimeSpan.getOnCreate(), spanId, traceId, APP_METRICS_ACTIVITIES_OP));
                }
                if (activityLifecycleTimeSpan.getOnStart().hasStarted() && activityLifecycleTimeSpan.getOnStart().hasStopped()) {
                    sentryTransaction.getSpans().add(timeSpanToSentrySpan(activityLifecycleTimeSpan.getOnStart(), spanId, traceId, APP_METRICS_ACTIVITIES_OP));
                }
            }
        }
    }

    private static SentrySpan timeSpanToSentrySpan(TimeSpan timeSpan, SpanId spanId, SentryId sentryId, String str) {
        HashMap hashMap = new HashMap(2);
        hashMap.put(SpanDataConvention.THREAD_ID, Long.valueOf(Looper.getMainLooper().getThread().getId()));
        hashMap.put(SpanDataConvention.THREAD_NAME, SentryThread.JsonKeys.MAIN);
        return new SentrySpan(Double.valueOf(timeSpan.getStartTimestampSecs()), Double.valueOf(timeSpan.getProjectedStopTimestampSecs()), sentryId, new SpanId(), spanId, str, timeSpan.getDescription(), SpanStatus.OK, APP_METRICS_ORIGIN, new ConcurrentHashMap(), new ConcurrentHashMap(), null, hashMap);
    }
}
