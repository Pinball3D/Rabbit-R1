package io.sentry.protocol;

import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryTracer;
import io.sentry.Span;
import io.sentry.SpanContext;
import io.sentry.SpanStatus;
import io.sentry.TracesSamplingDecision;
import io.sentry.metrics.LocalMetricsAggregator;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.MetricSummary;
import io.sentry.protocol.SentrySpan;
import io.sentry.protocol.TransactionInfo;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes3.dex */
public final class SentryTransaction extends SentryBaseEvent implements JsonUnknown, JsonSerializable {
    private final Map<String, MeasurementValue> measurements;
    private Map<String, List<MetricSummary>> metricSummaries;
    private final List<SentrySpan> spans;
    private Double startTimestamp;
    private Double timestamp;
    private String transaction;
    private TransactionInfo transactionInfo;
    private final String type;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String MEASUREMENTS = "measurements";
        public static final String METRICS_SUMMARY = "_metrics_summary";
        public static final String SPANS = "spans";
        public static final String START_TIMESTAMP = "start_timestamp";
        public static final String TIMESTAMP = "timestamp";
        public static final String TRANSACTION = "transaction";
        public static final String TRANSACTION_INFO = "transaction_info";
        public static final String TYPE = "type";
    }

    public Map<String, MeasurementValue> getMeasurements() {
        return this.measurements;
    }

    public Map<String, List<MetricSummary>> getMetricSummaries() {
        return this.metricSummaries;
    }

    public List<SentrySpan> getSpans() {
        return this.spans;
    }

    public Double getStartTimestamp() {
        return this.startTimestamp;
    }

    public Double getTimestamp() {
        return this.timestamp;
    }

    public String getTransaction() {
        return this.transaction;
    }

    public String getType() {
        return "transaction";
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public boolean isFinished() {
        return this.timestamp != null;
    }

    public void setMetricSummaries(Map<String, List<MetricSummary>> map) {
        this.metricSummaries = map;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SentryTransaction(SentryTracer sentryTracer) {
        super(sentryTracer.getEventId());
        this.spans = new ArrayList();
        this.type = "transaction";
        this.measurements = new HashMap();
        Objects.requireNonNull(sentryTracer, "sentryTracer is required");
        this.startTimestamp = Double.valueOf(DateUtils.nanosToSeconds(sentryTracer.getStartDate().nanoTimestamp()));
        this.timestamp = Double.valueOf(DateUtils.nanosToSeconds(sentryTracer.getStartDate().laterDateNanosTimestampByDiff(sentryTracer.getFinishDate())));
        this.transaction = sentryTracer.getName();
        for (Span span : sentryTracer.getChildren()) {
            if (Boolean.TRUE.equals(span.isSampled())) {
                this.spans.add(new SentrySpan(span));
            }
        }
        Contexts contexts = getContexts();
        contexts.putAll(sentryTracer.getContexts());
        SpanContext spanContext = sentryTracer.getSpanContext();
        contexts.setTrace(new SpanContext(spanContext.getTraceId(), spanContext.getSpanId(), spanContext.getParentSpanId(), spanContext.getOperation(), spanContext.getDescription(), spanContext.getSamplingDecision(), spanContext.getStatus(), spanContext.getOrigin()));
        for (Map.Entry<String, String> entry : spanContext.getTags().entrySet()) {
            setTag(entry.getKey(), entry.getValue());
        }
        Map<String, Object> data = sentryTracer.getData();
        if (data != null) {
            for (Map.Entry<String, Object> entry2 : data.entrySet()) {
                setExtra(entry2.getKey(), entry2.getValue());
            }
        }
        this.transactionInfo = new TransactionInfo(sentryTracer.getTransactionNameSource().apiName());
        LocalMetricsAggregator localMetricsAggregator = sentryTracer.getLocalMetricsAggregator();
        if (localMetricsAggregator != null) {
            this.metricSummaries = localMetricsAggregator.getSummaries();
        } else {
            this.metricSummaries = null;
        }
    }

    public SentryTransaction(String str, Double d, Double d2, List<SentrySpan> list, Map<String, MeasurementValue> map, Map<String, List<MetricSummary>> map2, TransactionInfo transactionInfo) {
        ArrayList arrayList = new ArrayList();
        this.spans = arrayList;
        this.type = "transaction";
        HashMap hashMap = new HashMap();
        this.measurements = hashMap;
        this.transaction = str;
        this.startTimestamp = d;
        this.timestamp = d2;
        arrayList.addAll(list);
        hashMap.putAll(map);
        Iterator<SentrySpan> it = list.iterator();
        while (it.hasNext()) {
            this.measurements.putAll(it.next().getMeasurements());
        }
        this.transactionInfo = transactionInfo;
        this.metricSummaries = map2;
    }

    public SpanStatus getStatus() {
        SpanContext trace = getContexts().getTrace();
        if (trace != null) {
            return trace.getStatus();
        }
        return null;
    }

    public boolean isSampled() {
        TracesSamplingDecision samplingDecision = getSamplingDecision();
        if (samplingDecision == null) {
            return false;
        }
        return samplingDecision.getSampled().booleanValue();
    }

    public TracesSamplingDecision getSamplingDecision() {
        SpanContext trace = getContexts().getTrace();
        if (trace == null) {
            return null;
        }
        return trace.getSamplingDecision();
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.transaction != null) {
            objectWriter.name("transaction").value(this.transaction);
        }
        objectWriter.name("start_timestamp").value(iLogger, doubleToBigDecimal(this.startTimestamp));
        if (this.timestamp != null) {
            objectWriter.name("timestamp").value(iLogger, doubleToBigDecimal(this.timestamp));
        }
        if (!this.spans.isEmpty()) {
            objectWriter.name(JsonKeys.SPANS).value(iLogger, this.spans);
        }
        objectWriter.name("type").value("transaction");
        if (!this.measurements.isEmpty()) {
            objectWriter.name("measurements").value(iLogger, this.measurements);
        }
        Map<String, List<MetricSummary>> map = this.metricSummaries;
        if (map != null && !map.isEmpty()) {
            objectWriter.name("_metrics_summary").value(iLogger, this.metricSummaries);
        }
        objectWriter.name(JsonKeys.TRANSACTION_INFO).value(iLogger, this.transactionInfo);
        new SentryBaseEvent.Serializer().serialize(this, objectWriter, iLogger);
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
    public static final class Deserializer implements JsonDeserializer<SentryTransaction> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0042. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryTransaction deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            SentryTransaction sentryTransaction = new SentryTransaction("", Double.valueOf(BuildConfig.SENTRY_SAMPLE_RATE), null, new ArrayList(), new HashMap(), null, new TransactionInfo(TransactionNameSource.CUSTOM.apiName()));
            SentryBaseEvent.Deserializer deserializer = new SentryBaseEvent.Deserializer();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1526966919:
                        if (nextName.equals("start_timestamp")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -682561045:
                        if (nextName.equals("_metrics_summary")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -362243017:
                        if (nextName.equals("measurements")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (nextName.equals("type")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 55126294:
                        if (nextName.equals("timestamp")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 109638249:
                        if (nextName.equals(JsonKeys.SPANS)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 508716399:
                        if (nextName.equals(JsonKeys.TRANSACTION_INFO)) {
                            c = 6;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (nextName.equals("transaction")) {
                            c = 7;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        try {
                            Double nextDoubleOrNull = jsonObjectReader.nextDoubleOrNull();
                            if (nextDoubleOrNull == null) {
                                break;
                            } else {
                                sentryTransaction.startTimestamp = nextDoubleOrNull;
                                break;
                            }
                        } catch (NumberFormatException unused) {
                            Date nextDateOrNull = jsonObjectReader.nextDateOrNull(iLogger);
                            if (nextDateOrNull == null) {
                                break;
                            } else {
                                sentryTransaction.startTimestamp = Double.valueOf(DateUtils.dateToSeconds(nextDateOrNull));
                                break;
                            }
                        }
                    case 1:
                        sentryTransaction.metricSummaries = jsonObjectReader.nextMapOfListOrNull(iLogger, new MetricSummary.Deserializer());
                        break;
                    case 2:
                        Map nextMapOrNull = jsonObjectReader.nextMapOrNull(iLogger, new MeasurementValue.Deserializer());
                        if (nextMapOrNull == null) {
                            break;
                        } else {
                            sentryTransaction.measurements.putAll(nextMapOrNull);
                            break;
                        }
                    case 3:
                        jsonObjectReader.nextString();
                        break;
                    case 4:
                        try {
                            Double nextDoubleOrNull2 = jsonObjectReader.nextDoubleOrNull();
                            if (nextDoubleOrNull2 == null) {
                                break;
                            } else {
                                sentryTransaction.timestamp = nextDoubleOrNull2;
                                break;
                            }
                        } catch (NumberFormatException unused2) {
                            Date nextDateOrNull2 = jsonObjectReader.nextDateOrNull(iLogger);
                            if (nextDateOrNull2 == null) {
                                break;
                            } else {
                                sentryTransaction.timestamp = Double.valueOf(DateUtils.dateToSeconds(nextDateOrNull2));
                                break;
                            }
                        }
                    case 5:
                        List nextListOrNull = jsonObjectReader.nextListOrNull(iLogger, new SentrySpan.Deserializer());
                        if (nextListOrNull == null) {
                            break;
                        } else {
                            sentryTransaction.spans.addAll(nextListOrNull);
                            break;
                        }
                    case 6:
                        sentryTransaction.transactionInfo = new TransactionInfo.Deserializer().deserialize(jsonObjectReader, iLogger);
                        break;
                    case 7:
                        sentryTransaction.transaction = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (!deserializer.deserializeValue(sentryTransaction, nextName, jsonObjectReader, iLogger)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                            break;
                        } else {
                            break;
                        }
                }
            }
            sentryTransaction.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return sentryTransaction;
        }
    }
}
