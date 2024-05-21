package io.sentry;

import io.sentry.protocol.SentryId;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class SpanContext implements JsonUnknown, JsonSerializable {
    public static final String TYPE = "trace";
    protected String description;
    protected String op;
    protected String origin;
    private final SpanId parentSpanId;
    private transient TracesSamplingDecision samplingDecision;
    private final SpanId spanId;
    protected SpanStatus status;
    protected Map<String, String> tags;
    private final SentryId traceId;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String DESCRIPTION = "description";
        public static final String OP = "op";
        public static final String ORIGIN = "origin";
        public static final String PARENT_SPAN_ID = "parent_span_id";
        public static final String SPAN_ID = "span_id";
        public static final String STATUS = "status";
        public static final String TAGS = "tags";
        public static final String TRACE_ID = "trace_id";
    }

    public String getDescription() {
        return this.description;
    }

    public String getOperation() {
        return this.op;
    }

    public String getOrigin() {
        return this.origin;
    }

    public SpanId getParentSpanId() {
        return this.parentSpanId;
    }

    public TracesSamplingDecision getSamplingDecision() {
        return this.samplingDecision;
    }

    public SpanId getSpanId() {
        return this.spanId;
    }

    public SpanStatus getStatus() {
        return this.status;
    }

    public Map<String, String> getTags() {
        return this.tags;
    }

    public SentryId getTraceId() {
        return this.traceId;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setOrigin(String str) {
        this.origin = str;
    }

    public void setSamplingDecision(TracesSamplingDecision tracesSamplingDecision) {
        this.samplingDecision = tracesSamplingDecision;
    }

    public void setStatus(SpanStatus spanStatus) {
        this.status = spanStatus;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SpanContext(String str, TracesSamplingDecision tracesSamplingDecision) {
        this(new SentryId(), new SpanId(), str, null, tracesSamplingDecision);
    }

    public SpanContext(String str) {
        this(new SentryId(), new SpanId(), str, null, null);
    }

    public SpanContext(SentryId sentryId, SpanId spanId, String str, SpanId spanId2, TracesSamplingDecision tracesSamplingDecision) {
        this(sentryId, spanId, spanId2, str, null, tracesSamplingDecision, null, "manual");
    }

    public SpanContext(SentryId sentryId, SpanId spanId, SpanId spanId2, String str, String str2, TracesSamplingDecision tracesSamplingDecision, SpanStatus spanStatus, String str3) {
        this.tags = new ConcurrentHashMap();
        this.origin = "manual";
        this.traceId = (SentryId) Objects.requireNonNull(sentryId, "traceId is required");
        this.spanId = (SpanId) Objects.requireNonNull(spanId, "spanId is required");
        this.op = (String) Objects.requireNonNull(str, "operation is required");
        this.parentSpanId = spanId2;
        this.samplingDecision = tracesSamplingDecision;
        this.description = str2;
        this.status = spanStatus;
        this.origin = str3;
    }

    public SpanContext(SpanContext spanContext) {
        this.tags = new ConcurrentHashMap();
        this.origin = "manual";
        this.traceId = spanContext.traceId;
        this.spanId = spanContext.spanId;
        this.parentSpanId = spanContext.parentSpanId;
        this.samplingDecision = spanContext.samplingDecision;
        this.op = spanContext.op;
        this.description = spanContext.description;
        this.status = spanContext.status;
        Map<String, String> newConcurrentHashMap = CollectionUtils.newConcurrentHashMap(spanContext.tags);
        if (newConcurrentHashMap != null) {
            this.tags = newConcurrentHashMap;
        }
    }

    public void setOperation(String str) {
        this.op = (String) Objects.requireNonNull(str, "operation is required");
    }

    public void setTag(String str, String str2) {
        Objects.requireNonNull(str, "name is required");
        Objects.requireNonNull(str2, "value is required");
        this.tags.put(str, str2);
    }

    public Boolean getSampled() {
        TracesSamplingDecision tracesSamplingDecision = this.samplingDecision;
        if (tracesSamplingDecision == null) {
            return null;
        }
        return tracesSamplingDecision.getSampled();
    }

    public Boolean getProfileSampled() {
        TracesSamplingDecision tracesSamplingDecision = this.samplingDecision;
        if (tracesSamplingDecision == null) {
            return null;
        }
        return tracesSamplingDecision.getProfileSampled();
    }

    public void setSampled(Boolean bool) {
        if (bool == null) {
            setSamplingDecision(null);
        } else {
            setSamplingDecision(new TracesSamplingDecision(bool));
        }
    }

    public void setSampled(Boolean bool, Boolean bool2) {
        if (bool == null) {
            setSamplingDecision(null);
        } else if (bool2 == null) {
            setSamplingDecision(new TracesSamplingDecision(bool));
        } else {
            setSamplingDecision(new TracesSamplingDecision(bool, null, bool2, null));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanContext)) {
            return false;
        }
        SpanContext spanContext = (SpanContext) obj;
        return this.traceId.equals(spanContext.traceId) && this.spanId.equals(spanContext.spanId) && Objects.equals(this.parentSpanId, spanContext.parentSpanId) && this.op.equals(spanContext.op) && Objects.equals(this.description, spanContext.description) && this.status == spanContext.status;
    }

    public int hashCode() {
        return Objects.hash(this.traceId, this.spanId, this.parentSpanId, this.op, this.description, this.status);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("trace_id");
        this.traceId.serialize(objectWriter, iLogger);
        objectWriter.name("span_id");
        this.spanId.serialize(objectWriter, iLogger);
        if (this.parentSpanId != null) {
            objectWriter.name("parent_span_id");
            this.parentSpanId.serialize(objectWriter, iLogger);
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
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SpanContext> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a9 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00b7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00be A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00c5 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00d3 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x007f A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.SpanContext deserialize(io.sentry.JsonObjectReader r12, io.sentry.ILogger r13) throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 340
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.SpanContext.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.SpanContext");
        }
    }
}
