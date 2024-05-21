package io.sentry.metrics;

import io.sentry.MeasurementUnit;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes3.dex */
public final class GaugeMetric extends Metric {
    private int count;
    private double last;
    private double max;
    private double min;
    private double sum;

    public int getCount() {
        return this.count;
    }

    public double getLast() {
        return this.last;
    }

    public double getMax() {
        return this.max;
    }

    public double getMin() {
        return this.min;
    }

    public double getSum() {
        return this.sum;
    }

    @Override // io.sentry.metrics.Metric
    public int getWeight() {
        return 5;
    }

    public GaugeMetric(String str, double d, MeasurementUnit measurementUnit, Map<String, String> map) {
        super(MetricType.Gauge, str, measurementUnit, map);
        this.last = d;
        this.min = d;
        this.max = d;
        this.sum = d;
        this.count = 1;
    }

    @Override // io.sentry.metrics.Metric
    public void add(double d) {
        this.last = d;
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
        this.sum += d;
        this.count++;
    }

    @Override // io.sentry.metrics.Metric
    public Iterable<?> serialize() {
        return Arrays.asList(Double.valueOf(this.last), Double.valueOf(this.min), Double.valueOf(this.max), Double.valueOf(this.sum), Integer.valueOf(this.count));
    }
}
