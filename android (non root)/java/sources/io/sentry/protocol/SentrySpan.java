package io.sentry.protocol;

import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.Span;
import io.sentry.SpanId;
import io.sentry.SpanStatus;
import io.sentry.metrics.LocalMetricsAggregator;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentrySpan implements JsonUnknown, JsonSerializable {
    private final Map<String, Object> data;
    private final String description;
    private final Map<String, MeasurementValue> measurements;
    private final Map<String, List<MetricSummary>> metricsSummaries;
    private final String op;
    private final String origin;
    private final SpanId parentSpanId;
    private final SpanId spanId;
    private final Double startTimestamp;
    private final SpanStatus status;
    private final Map<String, String> tags;
    private final Double timestamp;
    private final SentryId traceId;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String DATA = "data";
        public static final String DESCRIPTION = "description";
        public static final String MEASUREMENTS = "measurements";
        public static final String METRICS_SUMMARY = "_metrics_summary";
        public static final String OP = "op";
        public static final String ORIGIN = "origin";
        public static final String PARENT_SPAN_ID = "parent_span_id";
        public static final String SPAN_ID = "span_id";
        public static final String START_TIMESTAMP = "start_timestamp";
        public static final String STATUS = "status";
        public static final String TAGS = "tags";
        public static final String TIMESTAMP = "timestamp";
        public static final String TRACE_ID = "trace_id";
    }

    public Map<String, Object> getData() {
        return this.data;
    }

    public String getDescription() {
        return this.description;
    }

    public Map<String, MeasurementValue> getMeasurements() {
        return this.measurements;
    }

    public Map<String, List<MetricSummary>> getMetricsSummaries() {
        return this.metricsSummaries;
    }

    public String getOp() {
        return this.op;
    }

    public String getOrigin() {
        return this.origin;
    }

    public SpanId getParentSpanId() {
        return this.parentSpanId;
    }

    public SpanId getSpanId() {
        return this.spanId;
    }

    public Double getStartTimestamp() {
        return this.startTimestamp;
    }

    public SpanStatus getStatus() {
        return this.status;
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    public Double getTimestamp() {
        return this.timestamp;
    }

    public SentryId getTraceId() {
        return this.traceId;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public boolean isFinished() {
        return this.timestamp != null;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SentrySpan(Span span) {
        this(span, span.getData());
    }

    public SentrySpan(Span span, Map<String, Object> map) {
        Objects.requireNonNull(span, "span is required");
        this.description = span.getDescription();
        this.op = span.getOperation();
        this.spanId = span.getSpanId();
        this.parentSpanId = span.getParentSpanId();
        this.traceId = span.getTraceId();
        this.status = span.getStatus();
        this.origin = span.getSpanContext().getOrigin();
        Map<String, String> newConcurrentHashMap = CollectionUtils.newConcurrentHashMap(span.getTags());
        this.tags = newConcurrentHashMap == null ? new ConcurrentHashMap<>() : newConcurrentHashMap;
        Map<String, MeasurementValue> newConcurrentHashMap2 = CollectionUtils.newConcurrentHashMap(span.getMeasurements());
        this.measurements = newConcurrentHashMap2 == null ? new ConcurrentHashMap<>() : newConcurrentHashMap2;
        this.timestamp = span.getFinishDate() == null ? null : Double.valueOf(DateUtils.nanosToSeconds(span.getStartDate().laterDateNanosTimestampByDiff(span.getFinishDate())));
        this.startTimestamp = Double.valueOf(DateUtils.nanosToSeconds(span.getStartDate().nanoTimestamp()));
        this.data = map;
        LocalMetricsAggregator localMetricsAggregator = span.getLocalMetricsAggregator();
        if (localMetricsAggregator != null) {
            this.metricsSummaries = localMetricsAggregator.getSummaries();
        } else {
            this.metricsSummaries = null;
        }
    }

    public SentrySpan(Double d, Double d2, SentryId sentryId, SpanId spanId, SpanId spanId2, String str, String str2, SpanStatus spanStatus, String str3, Map<String, String> map, Map<String, MeasurementValue> map2, Map<String, List<MetricSummary>> map3, Map<String, Object> map4) {
        this.startTimestamp = d;
        this.timestamp = d2;
        this.traceId = sentryId;
        this.spanId = spanId;
        this.parentSpanId = spanId2;
        this.op = str;
        this.description = str2;
        this.status = spanStatus;
        this.origin = str3;
        this.tags = map;
        this.measurements = map2;
        this.metricsSummaries = map3;
        this.data = map4;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("start_timestamp").value(iLogger, doubleToBigDecimal(this.startTimestamp));
        if (this.timestamp != null) {
            objectWriter.name("timestamp").value(iLogger, doubleToBigDecimal(this.timestamp));
        }
        objectWriter.name("trace_id").value(iLogger, this.traceId);
        objectWriter.name("span_id").value(iLogger, this.spanId);
        if (this.parentSpanId != null) {
            objectWriter.name("parent_span_id").value(iLogger, this.parentSpanId);
        }
        objectWriter.name("op").value(this.op);
        if (this.description != null) {
            objectWriter.name("description").value(this.description);
        }
        if (this.status != null) {
            objectWriter.name("status").value(iLogger, this.status);
        }
        if (this.origin != null) {
            objectWriter.name("origin").value(iLogger, this.origin);
        }
        if (!this.tags.isEmpty()) {
            objectWriter.name("tags").value(iLogger, this.tags);
        }
        if (this.data != null) {
            objectWriter.name("data").value(iLogger, this.data);
        }
        if (!this.measurements.isEmpty()) {
            objectWriter.name("measurements").value(iLogger, this.measurements);
        }
        Map<String, List<MetricSummary>> map = this.metricsSummaries;
        if (map != null && !map.isEmpty()) {
            objectWriter.name("_metrics_summary").value(iLogger, this.metricsSummaries);
        }
        Map<String, Object> map2 = this.unknown;
        if (map2 != null) {
            for (String str : map2.keySet()) {
                Object obj = this.unknown.get(str);
                objectWriter.name(str);
                objectWriter.value(iLogger, obj);
            }
        }
        objectWriter.endObject();
    }

    private BigDecimal doubleToBigDecimal(Double d) {
        return BigDecimal.valueOf(d.doubleValue()).setScale(6, RoundingMode.DOWN);
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SentrySpan> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:45:0x00e0. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ee  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0120  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0138  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0142  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x0151  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x016d  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x0176  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x0189  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0101 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0156 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.protocol.SentrySpan deserialize(io.sentry.JsonObjectReader r24, io.sentry.ILogger r25) throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 570
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.protocol.SentrySpan.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.protocol.SentrySpan");
        }

        private Exception missingRequiredFieldException(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.log(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }
    }
}
