package io.sentry.metrics;

import io.sentry.MeasurementUnit;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class CounterMetric extends Metric {
    private double value;

    @Override // io.sentry.metrics.Metric
    public void add(double d) {
        this.value += d;
    }

    public double getValue() {
        return this.value;
    }

    @Override // io.sentry.metrics.Metric
    public int getWeight() {
        return 1;
    }

    public CounterMetric(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map) {
        super(MetricType.Counter, str, measurementUnit, map);
        this.value = d;
    }

    @Override // io.sentry.metrics.Metric
    public Iterable<?> serialize() {
        return Collections.singletonList(Double.valueOf(this.value));
    }
}
