package io.sentry.metrics;

import io.sentry.IMetricsAggregator;
import io.sentry.ISpan;
import io.sentry.MeasurementUnit;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MetricsApi {
    private final IMetricsInterface aggregator;

    /* loaded from: classes3.dex */
    public interface IMetricsInterface {
        Map<String, String> getDefaultTagsForMetrics();

        LocalMetricsAggregator getLocalMetricsAggregator();

        IMetricsAggregator getMetricsAggregator();

        ISpan startSpanForMetric(String str, String str2);
    }

    public MetricsApi(IMetricsInterface iMetricsInterface) {
        this.aggregator = iMetricsInterface;
    }

    public void increment(String str) {
        increment(str, 1.0d, null, null, null);
    }

    public void increment(String str, double d) {
        increment(str, d, null, null, null);
    }

    public void increment(String str, double d, MeasurementUnit measurementUnit) {
        increment(str, d, measurementUnit, null, null);
    }

    public void increment(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map) {
        increment(str, d, measurementUnit, map, null);
    }

    public void increment(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, Long l) {
        this.aggregator.getMetricsAggregator().increment(str, d, measurementUnit, MetricsHelper.mergeTags(map, this.aggregator.getDefaultTagsForMetrics()), l != null ? l.longValue() : System.currentTimeMillis(), this.aggregator.getLocalMetricsAggregator());
    }

    public void gauge(String str, double d) {
        gauge(str, d, null, null, null);
    }

    public void gauge(String str, double d, MeasurementUnit measurementUnit) {
        gauge(str, d, measurementUnit, null, null);
    }

    public void gauge(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map) {
        gauge(str, d, measurementUnit, map, null);
    }

    public void gauge(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, Long l) {
        this.aggregator.getMetricsAggregator().gauge(str, d, measurementUnit, MetricsHelper.mergeTags(map, this.aggregator.getDefaultTagsForMetrics()), l != null ? l.longValue() : System.currentTimeMillis(), this.aggregator.getLocalMetricsAggregator());
    }

    public void distribution(String str, double d) {
        distribution(str, d, null, null, null);
    }

    public void distribution(String str, double d, MeasurementUnit measurementUnit) {
        distribution(str, d, measurementUnit, null, null);
    }

    public void distribution(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map) {
        distribution(str, d, measurementUnit, map, null);
    }

    public void distribution(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, Long l) {
        this.aggregator.getMetricsAggregator().distribution(str, d, measurementUnit, MetricsHelper.mergeTags(map, this.aggregator.getDefaultTagsForMetrics()), l != null ? l.longValue() : System.currentTimeMillis(), this.aggregator.getLocalMetricsAggregator());
    }

    public void set(String str, int i) {
        set(str, i, (MeasurementUnit) null, (Map<String, String>) null, (Long) null);
    }

    public void set(String str, int i, MeasurementUnit measurementUnit) {
        set(str, i, measurementUnit, (Map<String, String>) null, (Long) null);
    }

    public void set(String str, int i, MeasurementUnit measurementUnit, Map<String, String> map) {
        set(str, i, measurementUnit, map, (Long) null);
    }

    public void set(String str, int i, MeasurementUnit measurementUnit, Map<String, String> map, Long l) {
        long longValue = l != null ? l.longValue() : System.currentTimeMillis();
        this.aggregator.getMetricsAggregator().set(str, i, measurementUnit, MetricsHelper.mergeTags(map, this.aggregator.getDefaultTagsForMetrics()), longValue, this.aggregator.getLocalMetricsAggregator());
    }

    public void set(String str, String str2) {
        set(str, str2, (MeasurementUnit) null, (Map<String, String>) null, (Long) null);
    }

    public void set(String str, String str2, MeasurementUnit measurementUnit) {
        set(str, str2, measurementUnit, (Map<String, String>) null, (Long) null);
    }

    public void set(String str, String str2, MeasurementUnit measurementUnit, Map<String, String> map) {
        set(str, str2, measurementUnit, map, (Long) null);
    }

    public void set(String str, String str2, MeasurementUnit measurementUnit, Map<String, String> map, Long l) {
        long longValue = l != null ? l.longValue() : System.currentTimeMillis();
        this.aggregator.getMetricsAggregator().set(str, str2, measurementUnit, MetricsHelper.mergeTags(map, this.aggregator.getDefaultTagsForMetrics()), longValue, this.aggregator.getLocalMetricsAggregator());
    }

    public void timing(String str, Runnable runnable) {
        timing(str, runnable, null, null);
    }

    public void timing(String str, Runnable runnable, MeasurementUnit.Duration duration) {
        timing(str, runnable, duration, null);
    }

    public void timing(String str, Runnable runnable, MeasurementUnit.Duration duration, Map<String, String> map) {
        if (duration == null) {
            duration = MeasurementUnit.Duration.SECOND;
        }
        MeasurementUnit.Duration duration2 = duration;
        Map<String, String> mergeTags = MetricsHelper.mergeTags(map, this.aggregator.getDefaultTagsForMetrics());
        LocalMetricsAggregator localMetricsAggregator = this.aggregator.getLocalMetricsAggregator();
        ISpan startSpanForMetric = this.aggregator.startSpanForMetric("metric.timing", str);
        if (startSpanForMetric != null && map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                startSpanForMetric.setTag(entry.getKey(), entry.getValue());
            }
        }
        try {
            this.aggregator.getMetricsAggregator().timing(str, runnable, duration2, mergeTags, localMetricsAggregator);
        } finally {
            if (startSpanForMetric != null) {
                startSpanForMetric.finish();
            }
        }
    }
}
