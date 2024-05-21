package io.sentry.android.core;

import android.app.Activity;
import android.util.SparseIntArray;
import androidx.core.app.FrameMetricsAggregator;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.AndroidMainThreadChecker;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.SentryId;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class ActivityFramesTracker {
    private final Map<SentryId, Map<String, MeasurementValue>> activityMeasurements;
    private final Map<Activity, FrameCounts> frameCountAtStartSnapshots;
    private FrameMetricsAggregator frameMetricsAggregator;
    private final MainLooperHandler handler;
    private final SentryAndroidOptions options;

    public ActivityFramesTracker(LoadClass loadClass, SentryAndroidOptions sentryAndroidOptions, MainLooperHandler mainLooperHandler) {
        this.frameMetricsAggregator = null;
        this.activityMeasurements = new ConcurrentHashMap();
        this.frameCountAtStartSnapshots = new WeakHashMap();
        if (loadClass.isClassAvailable("androidx.core.app.FrameMetricsAggregator", sentryAndroidOptions.getLogger())) {
            this.frameMetricsAggregator = new FrameMetricsAggregator();
        }
        this.options = sentryAndroidOptions;
        this.handler = mainLooperHandler;
    }

    public ActivityFramesTracker(LoadClass loadClass, SentryAndroidOptions sentryAndroidOptions) {
        this(loadClass, sentryAndroidOptions, new MainLooperHandler());
    }

    ActivityFramesTracker(LoadClass loadClass, SentryAndroidOptions sentryAndroidOptions, MainLooperHandler mainLooperHandler, FrameMetricsAggregator frameMetricsAggregator) {
        this(loadClass, sentryAndroidOptions, mainLooperHandler);
        this.frameMetricsAggregator = frameMetricsAggregator;
    }

    public boolean isFrameMetricsAggregatorAvailable() {
        return (this.frameMetricsAggregator == null || !this.options.isEnableFramesTracking() || this.options.isEnablePerformanceV2()) ? false : true;
    }

    public synchronized void addActivity(final Activity activity) {
        if (isFrameMetricsAggregatorAvailable()) {
            runSafelyOnUiThread(new Runnable() { // from class: io.sentry.android.core.ActivityFramesTracker$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityFramesTracker.this.m5635xd056273f(activity);
                }
            }, "FrameMetricsAggregator.add");
            snapshotFrameCountsAtStart(activity);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$addActivity$0$io-sentry-android-core-ActivityFramesTracker, reason: not valid java name */
    public /* synthetic */ void m5635xd056273f(Activity activity) {
        this.frameMetricsAggregator.add(activity);
    }

    private void snapshotFrameCountsAtStart(Activity activity) {
        FrameCounts calculateCurrentFrameCounts = calculateCurrentFrameCounts();
        if (calculateCurrentFrameCounts != null) {
            this.frameCountAtStartSnapshots.put(activity, calculateCurrentFrameCounts);
        }
    }

    private FrameCounts calculateCurrentFrameCounts() {
        FrameMetricsAggregator frameMetricsAggregator;
        int i;
        int i2;
        SparseIntArray sparseIntArray;
        if (!isFrameMetricsAggregatorAvailable() || (frameMetricsAggregator = this.frameMetricsAggregator) == null) {
            return null;
        }
        SparseIntArray[] metrics = frameMetricsAggregator.getMetrics();
        int i3 = 0;
        if (metrics == null || metrics.length <= 0 || (sparseIntArray = metrics[0]) == null) {
            i = 0;
            i2 = 0;
        } else {
            int i4 = 0;
            i = 0;
            i2 = 0;
            while (i3 < sparseIntArray.size()) {
                int keyAt = sparseIntArray.keyAt(i3);
                int valueAt = sparseIntArray.valueAt(i3);
                i4 += valueAt;
                if (keyAt > 700) {
                    i2 += valueAt;
                } else if (keyAt > 16) {
                    i += valueAt;
                }
                i3++;
            }
            i3 = i4;
        }
        return new FrameCounts(i3, i, i2);
    }

    public synchronized void setMetrics(final Activity activity, SentryId sentryId) {
        if (isFrameMetricsAggregatorAvailable()) {
            runSafelyOnUiThread(new Runnable() { // from class: io.sentry.android.core.ActivityFramesTracker$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityFramesTracker.this.m5637lambda$setMetrics$1$iosentryandroidcoreActivityFramesTracker(activity);
                }
            }, null);
            FrameCounts diffFrameCountsAtEnd = diffFrameCountsAtEnd(activity);
            if (diffFrameCountsAtEnd != null && (diffFrameCountsAtEnd.totalFrames != 0 || diffFrameCountsAtEnd.slowFrames != 0 || diffFrameCountsAtEnd.frozenFrames != 0)) {
                MeasurementValue measurementValue = new MeasurementValue(Integer.valueOf(diffFrameCountsAtEnd.totalFrames), "none");
                MeasurementValue measurementValue2 = new MeasurementValue(Integer.valueOf(diffFrameCountsAtEnd.slowFrames), "none");
                MeasurementValue measurementValue3 = new MeasurementValue(Integer.valueOf(diffFrameCountsAtEnd.frozenFrames), "none");
                HashMap hashMap = new HashMap();
                hashMap.put(MeasurementValue.KEY_FRAMES_TOTAL, measurementValue);
                hashMap.put(MeasurementValue.KEY_FRAMES_SLOW, measurementValue2);
                hashMap.put(MeasurementValue.KEY_FRAMES_FROZEN, measurementValue3);
                this.activityMeasurements.put(sentryId, hashMap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setMetrics$1$io-sentry-android-core-ActivityFramesTracker, reason: not valid java name */
    public /* synthetic */ void m5637lambda$setMetrics$1$iosentryandroidcoreActivityFramesTracker(Activity activity) {
        this.frameMetricsAggregator.remove(activity);
    }

    private FrameCounts diffFrameCountsAtEnd(Activity activity) {
        FrameCounts calculateCurrentFrameCounts;
        FrameCounts remove = this.frameCountAtStartSnapshots.remove(activity);
        if (remove == null || (calculateCurrentFrameCounts = calculateCurrentFrameCounts()) == null) {
            return null;
        }
        return new FrameCounts(calculateCurrentFrameCounts.totalFrames - remove.totalFrames, calculateCurrentFrameCounts.slowFrames - remove.slowFrames, calculateCurrentFrameCounts.frozenFrames - remove.frozenFrames);
    }

    public synchronized Map<String, MeasurementValue> takeMetrics(SentryId sentryId) {
        if (!isFrameMetricsAggregatorAvailable()) {
            return null;
        }
        Map<String, MeasurementValue> map = this.activityMeasurements.get(sentryId);
        this.activityMeasurements.remove(sentryId);
        return map;
    }

    public synchronized void stop() {
        if (isFrameMetricsAggregatorAvailable()) {
            runSafelyOnUiThread(new Runnable() { // from class: io.sentry.android.core.ActivityFramesTracker$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityFramesTracker.this.m5638lambda$stop$2$iosentryandroidcoreActivityFramesTracker();
                }
            }, "FrameMetricsAggregator.stop");
            this.frameMetricsAggregator.reset();
        }
        this.activityMeasurements.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$stop$2$io-sentry-android-core-ActivityFramesTracker, reason: not valid java name */
    public /* synthetic */ void m5638lambda$stop$2$iosentryandroidcoreActivityFramesTracker() {
        this.frameMetricsAggregator.stop();
    }

    private void runSafelyOnUiThread(final Runnable runnable, final String str) {
        try {
            if (AndroidMainThreadChecker.getInstance().isMainThread()) {
                runnable.run();
            } else {
                this.handler.post(new Runnable() { // from class: io.sentry.android.core.ActivityFramesTracker$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        ActivityFramesTracker.this.m5636x49051cca(runnable, str);
                    }
                });
            }
        } catch (Throwable unused) {
            if (str != null) {
                this.options.getLogger().log(SentryLevel.WARNING, "Failed to execute " + str, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$runSafelyOnUiThread$3$io-sentry-android-core-ActivityFramesTracker, reason: not valid java name */
    public /* synthetic */ void m5636x49051cca(Runnable runnable, String str) {
        try {
            runnable.run();
        } catch (Throwable unused) {
            if (str != null) {
                this.options.getLogger().log(SentryLevel.WARNING, "Failed to execute " + str, new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class FrameCounts {
        private final int frozenFrames;
        private final int slowFrames;
        private final int totalFrames;

        private FrameCounts(int i, int i2, int i3) {
            this.totalFrames = i;
            this.slowFrames = i2;
            this.frozenFrames = i3;
        }
    }
}
