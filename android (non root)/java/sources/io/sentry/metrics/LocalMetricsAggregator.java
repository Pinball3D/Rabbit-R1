package io.sentry.metrics;

import io.sentry.MeasurementUnit;
import io.sentry.protocol.MetricSummary;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes3.dex */
public final class LocalMetricsAggregator {
    private final Map<String, Map<String, GaugeMetric>> buckets = new HashMap();

    public void add(String str, MetricType metricType, String str2, double d, MeasurementUnit measurementUnit, Map<String, String> map, long j) {
        String exportKey = MetricsHelper.getExportKey(metricType, str2, measurementUnit);
        synchronized (this.buckets) {
            Map<String, GaugeMetric> map2 = this.buckets.get(exportKey);
            if (map2 == null) {
                map2 = new HashMap<>();
                this.buckets.put(exportKey, map2);
            }
            GaugeMetric gaugeMetric = map2.get(str);
            if (gaugeMetric == null) {
                map2.put(str, new GaugeMetric(str2, d, measurementUnit, map));
            } else {
                gaugeMetric.add(d);
            }
        }
    }

    public Map<String, List<MetricSummary>> getSummaries() {
        HashMap hashMap = new HashMap();
        synchronized (this.buckets) {
            Iterator<Map.Entry<String, Map<String, GaugeMetric>>> it = this.buckets.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, Map<String, GaugeMetric>> next = it.next();
                String str = (String) Objects.requireNonNull(next.getKey());
                ArrayList arrayList = new ArrayList();
                for (GaugeMetric gaugeMetric : next.getValue().values()) {
                    arrayList.add(new MetricSummary(gaugeMetric.getMin(), gaugeMetric.getMax(), gaugeMetric.getSum(), gaugeMetric.getCount(), gaugeMetric.getTags()));
                    it = it;
                }
                hashMap.put(str, arrayList);
                it = it;
            }
        }
        return hashMap;
    }
}
