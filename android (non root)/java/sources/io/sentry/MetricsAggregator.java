package io.sentry;

import com.google.android.exoplayer2.C;
import io.sentry.MeasurementUnit;
import io.sentry.SentryOptions;
import io.sentry.metrics.CounterMetric;
import io.sentry.metrics.DistributionMetric;
import io.sentry.metrics.EncodedMetrics;
import io.sentry.metrics.GaugeMetric;
import io.sentry.metrics.IMetricsClient;
import io.sentry.metrics.LocalMetricsAggregator;
import io.sentry.metrics.Metric;
import io.sentry.metrics.MetricType;
import io.sentry.metrics.MetricsHelper;
import io.sentry.metrics.SetMetric;
import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.CRC32;

/* loaded from: classes3.dex */
public final class MetricsAggregator implements IMetricsAggregator, Runnable, Closeable {
    private static final Charset UTF8 = Charset.forName(C.UTF8_NAME);
    private final SentryOptions.BeforeEmitMetricCallback beforeEmitCallback;
    private final NavigableMap<Long, Map<String, Metric>> buckets;
    private final IMetricsClient client;
    private final SentryDateProvider dateProvider;
    private volatile ISentryExecutorService executorService;
    private volatile boolean flushScheduled;
    private volatile boolean isClosed;
    private final ILogger logger;
    private final int maxWeight;
    private final AtomicInteger totalBucketsWeight;

    public MetricsAggregator(SentryOptions sentryOptions, IMetricsClient iMetricsClient) {
        this(iMetricsClient, sentryOptions.getLogger(), sentryOptions.getDateProvider(), 100000, sentryOptions.getBeforeEmitMetricCallback(), NoOpSentryExecutorService.getInstance());
    }

    public MetricsAggregator(IMetricsClient iMetricsClient, ILogger iLogger, SentryDateProvider sentryDateProvider, int i, SentryOptions.BeforeEmitMetricCallback beforeEmitMetricCallback, ISentryExecutorService iSentryExecutorService) {
        this.isClosed = false;
        this.flushScheduled = false;
        this.buckets = new ConcurrentSkipListMap();
        this.totalBucketsWeight = new AtomicInteger();
        this.client = iMetricsClient;
        this.logger = iLogger;
        this.dateProvider = sentryDateProvider;
        this.maxWeight = i;
        this.beforeEmitCallback = beforeEmitMetricCallback;
        this.executorService = iSentryExecutorService;
    }

    @Override // io.sentry.IMetricsAggregator
    public void increment(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator) {
        add(MetricType.Counter, str, d, measurementUnit, map, j, localMetricsAggregator);
    }

    @Override // io.sentry.IMetricsAggregator
    public void gauge(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator) {
        add(MetricType.Gauge, str, d, measurementUnit, map, j, localMetricsAggregator);
    }

    @Override // io.sentry.IMetricsAggregator
    public void distribution(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator) {
        add(MetricType.Distribution, str, d, measurementUnit, map, j, localMetricsAggregator);
    }

    @Override // io.sentry.IMetricsAggregator
    public void set(String str, int i, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator) {
        add(MetricType.Set, str, i, measurementUnit, map, j, localMetricsAggregator);
    }

    @Override // io.sentry.IMetricsAggregator
    public void set(String str, String str2, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator) {
        byte[] bytes = str2.getBytes(UTF8);
        new CRC32().update(bytes, 0, bytes.length);
        add(MetricType.Set, str, (int) r1.getValue(), measurementUnit, map, j, localMetricsAggregator);
    }

    @Override // io.sentry.IMetricsAggregator
    public void timing(String str, Runnable runnable, MeasurementUnit.Duration duration, Map<String, String> map, LocalMetricsAggregator localMetricsAggregator) {
        long nowMillis = nowMillis();
        long nanoTime = System.nanoTime();
        try {
            runnable.run();
        } finally {
            add(MetricType.Distribution, str, MetricsHelper.convertNanosTo(duration, System.nanoTime() - nanoTime), duration, map, nowMillis, localMetricsAggregator);
        }
    }

    private void add(MetricType metricType, String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator) {
        Metric counterMetric;
        Metric metric;
        int weight;
        if (this.isClosed) {
            return;
        }
        SentryOptions.BeforeEmitMetricCallback beforeEmitMetricCallback = this.beforeEmitCallback;
        if (beforeEmitMetricCallback == null || beforeEmitMetricCallback.execute(str, map)) {
            Map<String, Metric> orAddTimeBucket = getOrAddTimeBucket(MetricsHelper.getTimeBucketKey(j));
            String metricBucketKey = MetricsHelper.getMetricBucketKey(metricType, str, measurementUnit, map);
            synchronized (orAddTimeBucket) {
                Metric metric2 = orAddTimeBucket.get(metricBucketKey);
                if (metric2 != null) {
                    int weight2 = metric2.getWeight();
                    metric2.add(d);
                    weight = metric2.getWeight() - weight2;
                } else {
                    int i = AnonymousClass1.$SwitchMap$io$sentry$metrics$MetricType[metricType.ordinal()];
                    if (i == 1) {
                        counterMetric = new CounterMetric(str, d, measurementUnit, map);
                    } else if (i == 2) {
                        counterMetric = new GaugeMetric(str, d, measurementUnit, map);
                    } else if (i == 3) {
                        counterMetric = new DistributionMetric(str, d, measurementUnit, map);
                    } else if (i == 4) {
                        metric = new SetMetric(str, measurementUnit, map);
                        metric.add((int) d);
                        weight = metric.getWeight();
                        orAddTimeBucket.put(metricBucketKey, metric);
                    } else {
                        throw new IllegalArgumentException("Unknown MetricType: " + metricType.name());
                    }
                    metric = counterMetric;
                    weight = metric.getWeight();
                    orAddTimeBucket.put(metricBucketKey, metric);
                }
                this.totalBucketsWeight.addAndGet(weight);
            }
            if (localMetricsAggregator != null) {
                localMetricsAggregator.add(metricBucketKey, metricType, str, metricType == MetricType.Set ? weight : d, measurementUnit, map, j);
            }
            boolean isOverWeight = isOverWeight();
            if (this.isClosed) {
                return;
            }
            if (isOverWeight || !this.flushScheduled) {
                synchronized (this) {
                    if (!this.isClosed) {
                        if (this.executorService instanceof NoOpSentryExecutorService) {
                            this.executorService = new SentryExecutorService();
                        }
                        this.flushScheduled = true;
                        this.executorService.schedule(this, isOverWeight ? 0L : 5000L);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.MetricsAggregator$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$sentry$metrics$MetricType;

        static {
            int[] iArr = new int[MetricType.values().length];
            $SwitchMap$io$sentry$metrics$MetricType = iArr;
            try {
                iArr[MetricType.Counter.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$sentry$metrics$MetricType[MetricType.Gauge.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$sentry$metrics$MetricType[MetricType.Distribution.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$sentry$metrics$MetricType[MetricType.Set.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // io.sentry.IMetricsAggregator
    public void flush(boolean z) {
        if (!z && isOverWeight()) {
            this.logger.log(SentryLevel.INFO, "Metrics: total weight exceeded, flushing all buckets", new Object[0]);
            z = true;
        }
        Set<Long> flushableBuckets = getFlushableBuckets(z);
        if (flushableBuckets.isEmpty()) {
            this.logger.log(SentryLevel.DEBUG, "Metrics: nothing to flush", new Object[0]);
            return;
        }
        this.logger.log(SentryLevel.DEBUG, "Metrics: flushing " + flushableBuckets.size() + " buckets", new Object[0]);
        HashMap hashMap = new HashMap();
        Iterator<Long> it = flushableBuckets.iterator();
        int i = 0;
        while (it.hasNext()) {
            long longValue = it.next().longValue();
            Map map = (Map) this.buckets.remove(Long.valueOf(longValue));
            if (map != null) {
                synchronized (map) {
                    this.totalBucketsWeight.addAndGet(-getBucketWeight(map));
                    i += map.size();
                    hashMap.put(Long.valueOf(longValue), map);
                }
            }
        }
        if (i == 0) {
            this.logger.log(SentryLevel.DEBUG, "Metrics: only empty buckets found", new Object[0]);
        } else {
            this.logger.log(SentryLevel.DEBUG, "Metrics: capturing metrics", new Object[0]);
            this.client.captureMetrics(new EncodedMetrics(hashMap));
        }
    }

    private boolean isOverWeight() {
        return this.buckets.size() + this.totalBucketsWeight.get() >= this.maxWeight;
    }

    private static int getBucketWeight(Map<String, Metric> map) {
        Iterator<Metric> it = map.values().iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().getWeight();
        }
        return i;
    }

    private Set<Long> getFlushableBuckets(boolean z) {
        if (z) {
            return this.buckets.keySet();
        }
        return this.buckets.headMap(Long.valueOf(MetricsHelper.getTimeBucketKey(MetricsHelper.getCutoffTimestampMs(nowMillis()))), true).keySet();
    }

    private Map<String, Metric> getOrAddTimeBucket(long j) {
        Map<String, Metric> map = (Map) this.buckets.get(Long.valueOf(j));
        if (map == null) {
            synchronized (this.buckets) {
                map = (Map) this.buckets.get(Long.valueOf(j));
                if (map == null) {
                    map = new HashMap<>();
                    this.buckets.put(Long.valueOf(j), map);
                }
            }
        }
        return map;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.isClosed = true;
            this.executorService.close(0L);
        }
        flush(true);
    }

    @Override // java.lang.Runnable
    public void run() {
        flush(false);
        synchronized (this) {
            if (!this.isClosed) {
                this.executorService.schedule(this, 5000L);
            }
        }
    }

    private long nowMillis() {
        return TimeUnit.NANOSECONDS.toMillis(this.dateProvider.now().nanoTimestamp());
    }
}
