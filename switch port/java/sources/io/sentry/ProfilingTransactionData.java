package io.sentry;

import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class ProfilingTransactionData implements JsonUnknown, JsonSerializable {
    private String id;
    private String name;
    private Long relativeEndCpuMs;
    private Long relativeEndNs;
    private Long relativeStartCpuMs;
    private Long relativeStartNs;
    private String traceId;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String END_CPU_MS = "relative_cpu_end_ms";
        public static final String END_NS = "relative_end_ns";
        public static final String ID = "id";
        public static final String NAME = "name";
        public static final String START_CPU_MS = "relative_cpu_start_ms";
        public static final String START_NS = "relative_start_ns";
        public static final String TRACE_ID = "trace_id";
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Long getRelativeEndCpuMs() {
        return this.relativeEndCpuMs;
    }

    public Long getRelativeEndNs() {
        return this.relativeEndNs;
    }

    public Long getRelativeStartCpuMs() {
        return this.relativeStartCpuMs;
    }

    public Long getRelativeStartNs() {
        return this.relativeStartNs;
    }

    public String getTraceId() {
        return this.traceId;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRelativeEndNs(Long l) {
        this.relativeEndNs = l;
    }

    public void setRelativeStartNs(Long l) {
        this.relativeStartNs = l;
    }

    public void setTraceId(String str) {
        this.traceId = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public ProfilingTransactionData() {
        this(NoOpTransaction.getInstance(), 0L, 0L);
    }

    public ProfilingTransactionData(ITransaction iTransaction, Long l, Long l2) {
        this.id = iTransaction.getEventId().toString();
        this.traceId = iTransaction.getSpanContext().getTraceId().toString();
        this.name = iTransaction.getName();
        this.relativeStartNs = l;
        this.relativeStartCpuMs = l2;
    }

    public void notifyFinish(Long l, Long l2, Long l3, Long l4) {
        if (this.relativeEndNs == null) {
            this.relativeEndNs = Long.valueOf(l.longValue() - l2.longValue());
            this.relativeStartNs = Long.valueOf(this.relativeStartNs.longValue() - l2.longValue());
            this.relativeEndCpuMs = Long.valueOf(l3.longValue() - l4.longValue());
            this.relativeStartCpuMs = Long.valueOf(this.relativeStartCpuMs.longValue() - l4.longValue());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProfilingTransactionData profilingTransactionData = (ProfilingTransactionData) obj;
        return this.id.equals(profilingTransactionData.id) && this.traceId.equals(profilingTransactionData.traceId) && this.name.equals(profilingTransactionData.name) && this.relativeStartNs.equals(profilingTransactionData.relativeStartNs) && this.relativeStartCpuMs.equals(profilingTransactionData.relativeStartCpuMs) && Objects.equals(this.relativeEndCpuMs, profilingTransactionData.relativeEndCpuMs) && Objects.equals(this.relativeEndNs, profilingTransactionData.relativeEndNs) && Objects.equals(this.unknown, profilingTransactionData.unknown);
    }

    public int hashCode() {
        return Objects.hash(this.id, this.traceId, this.name, this.relativeStartNs, this.relativeEndNs, this.relativeStartCpuMs, this.relativeEndCpuMs, this.unknown);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("id").value(iLogger, this.id);
        objectWriter.name("trace_id").value(iLogger, this.traceId);
        objectWriter.name("name").value(iLogger, this.name);
        objectWriter.name(JsonKeys.START_NS).value(iLogger, this.relativeStartNs);
        objectWriter.name(JsonKeys.END_NS).value(iLogger, this.relativeEndNs);
        objectWriter.name(JsonKeys.START_CPU_MS).value(iLogger, this.relativeStartCpuMs);
        objectWriter.name(JsonKeys.END_CPU_MS).value(iLogger, this.relativeEndCpuMs);
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.unknown.get(str);
                objectWriter.name(str);
                objectWriter.value(iLogger, obj);
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<ProfilingTransactionData> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public ProfilingTransactionData deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            ProfilingTransactionData profilingTransactionData = new ProfilingTransactionData();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -112372011:
                        if (nextName.equals(JsonKeys.START_NS)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -84607876:
                        if (nextName.equals(JsonKeys.END_NS)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3355:
                        if (nextName.equals("id")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3373707:
                        if (nextName.equals("name")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (nextName.equals("trace_id")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1566648660:
                        if (nextName.equals(JsonKeys.END_CPU_MS)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1902256621:
                        if (nextName.equals(JsonKeys.START_CPU_MS)) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Long nextLongOrNull = jsonObjectReader.nextLongOrNull();
                        if (nextLongOrNull == null) {
                            break;
                        } else {
                            profilingTransactionData.relativeStartNs = nextLongOrNull;
                            break;
                        }
                    case 1:
                        Long nextLongOrNull2 = jsonObjectReader.nextLongOrNull();
                        if (nextLongOrNull2 == null) {
                            break;
                        } else {
                            profilingTransactionData.relativeEndNs = nextLongOrNull2;
                            break;
                        }
                    case 2:
                        String nextStringOrNull = jsonObjectReader.nextStringOrNull();
                        if (nextStringOrNull == null) {
                            break;
                        } else {
                            profilingTransactionData.id = nextStringOrNull;
                            break;
                        }
                    case 3:
                        String nextStringOrNull2 = jsonObjectReader.nextStringOrNull();
                        if (nextStringOrNull2 == null) {
                            break;
                        } else {
                            profilingTransactionData.name = nextStringOrNull2;
                            break;
                        }
                    case 4:
                        String nextStringOrNull3 = jsonObjectReader.nextStringOrNull();
                        if (nextStringOrNull3 == null) {
                            break;
                        } else {
                            profilingTransactionData.traceId = nextStringOrNull3;
                            break;
                        }
                    case 5:
                        Long nextLongOrNull3 = jsonObjectReader.nextLongOrNull();
                        if (nextLongOrNull3 == null) {
                            break;
                        } else {
                            profilingTransactionData.relativeEndCpuMs = nextLongOrNull3;
                            break;
                        }
                    case 6:
                        Long nextLongOrNull4 = jsonObjectReader.nextLongOrNull();
                        if (nextLongOrNull4 == null) {
                            break;
                        } else {
                            profilingTransactionData.relativeStartCpuMs = nextLongOrNull4;
                            break;
                        }
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            profilingTransactionData.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return profilingTransactionData;
        }
    }
}
