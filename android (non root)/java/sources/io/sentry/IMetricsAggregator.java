package io.sentry;

import io.sentry.MeasurementUnit;
import io.sentry.metrics.LocalMetricsAggregator;
import java.io.Closeable;
import java.util.Map;

/* loaded from: classes3.dex */
public interface IMetricsAggregator extends Closeable {
    void distribution(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator);

    void flush(boolean z);

    void gauge(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator);

    void increment(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator);

    void set(String str, int i, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator);

    void set(String str, String str2, MeasurementUnit measurementUnit, Map<String, String> map, long j, LocalMetricsAggregator localMetricsAggregator);

    void timing(String str, Runnable runnable, MeasurementUnit.Duration duration, Map<String, String> map, LocalMetricsAggregator localMetricsAggregator);
}
