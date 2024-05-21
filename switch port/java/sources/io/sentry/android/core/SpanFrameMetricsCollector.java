package io.sentry.android.core;

import io.sentry.IPerformanceContinuousCollector;
import io.sentry.ISpan;
import io.sentry.ITransaction;
import io.sentry.NoOpSpan;
import io.sentry.NoOpTransaction;
import io.sentry.SentryDate;
import io.sentry.SentryNanotimeDate;
import io.sentry.SpanDataConvention;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.protocol.MeasurementValue;
import java.util.Comparator;
import java.util.Date;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class SpanFrameMetricsCollector implements IPerformanceContinuousCollector, SentryFrameMetricsCollector.FrameMetricsCollectorListener {
    private static final int MAX_FRAMES_COUNT = 3600;
    private static final long ONE_SECOND_NANOS = TimeUnit.SECONDS.toNanos(1);
    private static final SentryNanotimeDate UNIX_START_DATE = new SentryNanotimeDate(new Date(0), 0);
    private final boolean enabled;
    private final SentryFrameMetricsCollector frameMetricsCollector;
    private volatile String listenerId;
    private final Object lock = new Object();
    private final SortedSet<ISpan> runningSpans = new TreeSet(new Comparator() { // from class: io.sentry.android.core.SpanFrameMetricsCollector$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return SpanFrameMetricsCollector.lambda$new$0((ISpan) obj, (ISpan) obj2);
        }
    });
    private final ConcurrentSkipListSet<Frame> frames = new ConcurrentSkipListSet<>();
    private long lastKnownFrameDurationNanos = 16666666;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$new$0(ISpan iSpan, ISpan iSpan2) {
        int compareTo = iSpan.getStartDate().compareTo(iSpan2.getStartDate());
        return compareTo != 0 ? compareTo : iSpan.getSpanContext().getSpanId().toString().compareTo(iSpan2.getSpanContext().getSpanId().toString());
    }

    public SpanFrameMetricsCollector(SentryAndroidOptions sentryAndroidOptions, SentryFrameMetricsCollector sentryFrameMetricsCollector) {
        this.frameMetricsCollector = sentryFrameMetricsCollector;
        this.enabled = sentryAndroidOptions.isEnablePerformanceV2() && sentryAndroidOptions.isEnableFramesTracking();
    }

    @Override // io.sentry.IPerformanceContinuousCollector
    public void onSpanStarted(ISpan iSpan) {
        if (!this.enabled || (iSpan instanceof NoOpSpan) || (iSpan instanceof NoOpTransaction)) {
            return;
        }
        synchronized (this.lock) {
            this.runningSpans.add(iSpan);
            if (this.listenerId == null) {
                this.listenerId = this.frameMetricsCollector.startCollection(this);
            }
        }
    }

    @Override // io.sentry.IPerformanceContinuousCollector
    public void onSpanFinished(ISpan iSpan) {
        if (!this.enabled || (iSpan instanceof NoOpSpan) || (iSpan instanceof NoOpTransaction)) {
            return;
        }
        synchronized (this.lock) {
            if (this.runningSpans.contains(iSpan)) {
                captureFrameMetrics(iSpan);
                synchronized (this.lock) {
                    if (this.runningSpans.isEmpty()) {
                        clear();
                    } else {
                        this.frames.headSet((ConcurrentSkipListSet<Frame>) new Frame(realNanos(this.runningSpans.first().getStartDate()))).clear();
                    }
                }
            }
        }
    }

    private void captureFrameMetrics(ISpan iSpan) {
        Object obj;
        long j;
        Object obj2 = this.lock;
        synchronized (obj2) {
            try {
                try {
                    if (this.runningSpans.remove(iSpan)) {
                        SentryDate finishDate = iSpan.getFinishDate();
                        if (finishDate == null) {
                            return;
                        }
                        long realNanos = realNanos(finishDate);
                        SentryFrameMetrics sentryFrameMetrics = new SentryFrameMetrics();
                        long realNanos2 = realNanos(iSpan.getStartDate());
                        if (realNanos2 >= realNanos) {
                            return;
                        }
                        long j2 = realNanos - realNanos2;
                        long j3 = this.lastKnownFrameDurationNanos;
                        if (!this.frames.isEmpty()) {
                            for (Frame frame : this.frames.tailSet((ConcurrentSkipListSet<Frame>) new Frame(realNanos2))) {
                                if (frame.startNanos > realNanos) {
                                    break;
                                }
                                if (frame.startNanos < realNanos2 || frame.endNanos > realNanos) {
                                    obj = obj2;
                                    j = j2;
                                    if ((realNanos2 > frame.startNanos && realNanos2 < frame.endNanos) || (realNanos > frame.startNanos && realNanos < frame.endNanos)) {
                                        long min = Math.min(frame.delayNanos - Math.max(0L, Math.max(0L, realNanos2 - frame.startNanos) - frame.expectedDurationNanos), j);
                                        long min2 = Math.min(realNanos, frame.endNanos) - Math.max(realNanos2, frame.startNanos);
                                        sentryFrameMetrics.addFrame(min2, min, SentryFrameMetricsCollector.isSlow(min2, frame.expectedDurationNanos), SentryFrameMetricsCollector.isFrozen(min2));
                                    }
                                } else {
                                    obj = obj2;
                                    j = j2;
                                    sentryFrameMetrics.addFrame(frame.durationNanos, frame.delayNanos, frame.isSlow, frame.isFrozen);
                                }
                                j3 = frame.expectedDurationNanos;
                                j2 = j;
                                obj2 = obj;
                            }
                        }
                        Object obj3 = obj2;
                        long j4 = j3;
                        int totalFrameCount = sentryFrameMetrics.getTotalFrameCount() + addPendingFrameDelay(sentryFrameMetrics, j4, realNanos, this.frameMetricsCollector.getLastKnownFrameStartTimeNanos()) + interpolateFrameCount(sentryFrameMetrics, j4, j2);
                        double slowFrameDelayNanos = (sentryFrameMetrics.getSlowFrameDelayNanos() + sentryFrameMetrics.getFrozenFrameDelayNanos()) / 1.0E9d;
                        iSpan.setData(SpanDataConvention.FRAMES_TOTAL, Integer.valueOf(totalFrameCount));
                        iSpan.setData(SpanDataConvention.FRAMES_SLOW, Integer.valueOf(sentryFrameMetrics.getSlowFrameCount()));
                        iSpan.setData(SpanDataConvention.FRAMES_FROZEN, Integer.valueOf(sentryFrameMetrics.getFrozenFrameCount()));
                        iSpan.setData(SpanDataConvention.FRAMES_DELAY, Double.valueOf(slowFrameDelayNanos));
                        if (iSpan instanceof ITransaction) {
                            iSpan.setMeasurement(MeasurementValue.KEY_FRAMES_TOTAL, Integer.valueOf(totalFrameCount));
                            iSpan.setMeasurement(MeasurementValue.KEY_FRAMES_SLOW, Integer.valueOf(sentryFrameMetrics.getSlowFrameCount()));
                            iSpan.setMeasurement(MeasurementValue.KEY_FRAMES_FROZEN, Integer.valueOf(sentryFrameMetrics.getFrozenFrameCount()));
                            iSpan.setMeasurement(MeasurementValue.KEY_FRAMES_DELAY, Double.valueOf(slowFrameDelayNanos));
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // io.sentry.IPerformanceContinuousCollector
    public void clear() {
        synchronized (this.lock) {
            if (this.listenerId != null) {
                this.frameMetricsCollector.stopCollection(this.listenerId);
                this.listenerId = null;
            }
            this.frames.clear();
            this.runningSpans.clear();
        }
    }

    @Override // io.sentry.android.core.internal.util.SentryFrameMetricsCollector.FrameMetricsCollectorListener
    public void onFrameMetricCollected(long j, long j2, long j3, long j4, boolean z, boolean z2, float f) {
        if (this.frames.size() > MAX_FRAMES_COUNT) {
            return;
        }
        long j5 = (long) (ONE_SECOND_NANOS / f);
        this.lastKnownFrameDurationNanos = j5;
        this.frames.add(new Frame(j, j2, j3, j4, z, z2, j5));
    }

    private static int interpolateFrameCount(SentryFrameMetrics sentryFrameMetrics, long j, long j2) {
        long totalDurationNanos = j2 - sentryFrameMetrics.getTotalDurationNanos();
        if (totalDurationNanos > 0) {
            return (int) (totalDurationNanos / j);
        }
        return 0;
    }

    private static int addPendingFrameDelay(SentryFrameMetrics sentryFrameMetrics, long j, long j2, long j3) {
        long max = Math.max(0L, j2 - j3);
        if (!SentryFrameMetricsCollector.isSlow(max, j)) {
            return 0;
        }
        sentryFrameMetrics.addFrame(max, Math.max(0L, max - j), true, SentryFrameMetricsCollector.isFrozen(max));
        return 1;
    }

    private static long realNanos(SentryDate sentryDate) {
        return sentryDate.diff(UNIX_START_DATE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class Frame implements Comparable<Frame> {
        private final long delayNanos;
        private final long durationNanos;
        private final long endNanos;
        private final long expectedDurationNanos;
        private final boolean isFrozen;
        private final boolean isSlow;
        private final long startNanos;

        Frame(long j) {
            this(j, j, 0L, 0L, false, false, 0L);
        }

        Frame(long j, long j2, long j3, long j4, boolean z, boolean z2, long j5) {
            this.startNanos = j;
            this.endNanos = j2;
            this.durationNanos = j3;
            this.delayNanos = j4;
            this.isSlow = z;
            this.isFrozen = z2;
            this.expectedDurationNanos = j5;
        }

        @Override // java.lang.Comparable
        public int compareTo(Frame frame) {
            return Long.compare(this.endNanos, frame.endNanos);
        }
    }
}
