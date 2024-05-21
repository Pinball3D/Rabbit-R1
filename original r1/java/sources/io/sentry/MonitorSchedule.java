package io.sentry;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MonitorSchedule implements JsonUnknown, JsonSerializable {
    private String type;
    private String unit;
    private Map<String, Object> unknown;
    private String value;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String TYPE = "type";
        public static final String UNIT = "unit";
        public static final String VALUE = "value";
    }

    public String getType() {
        return this.type;
    }

    public String getUnit() {
        return this.unit;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getValue() {
        return this.value;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUnit(String str) {
        this.unit = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setValue(String str) {
        this.value = str;
    }

    public static MonitorSchedule crontab(String str) {
        return new MonitorSchedule(MonitorScheduleType.CRONTAB.apiName(), str, null);
    }

    public static MonitorSchedule interval(Integer num, MonitorScheduleUnit monitorScheduleUnit) {
        return new MonitorSchedule(MonitorScheduleType.INTERVAL.apiName(), num.toString(), monitorScheduleUnit.apiName());
    }

    public MonitorSchedule(String str, String str2, String str3) {
        this.type = str;
        this.value = str2;
        this.unit = str3;
    }

    public void setValue(Integer num) {
        this.value = num.toString();
    }

    public void setUnit(MonitorScheduleUnit monitorScheduleUnit) {
        this.unit = monitorScheduleUnit == null ? null : monitorScheduleUnit.apiName();
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("type").value(this.type);
        if (MonitorScheduleType.INTERVAL.apiName().equalsIgnoreCase(this.type)) {
            try {
                objectWriter.name("value").value(Integer.valueOf(this.value));
            } catch (Throwable unused) {
                iLogger.log(SentryLevel.ERROR, "Unable to serialize monitor schedule value: %s", this.value);
            }
        } else {
            objectWriter.name("value").value(this.value);
        }
        if (this.unit != null) {
            objectWriter.name("unit").value(this.unit);
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
    public static final class Deserializer implements JsonDeserializer<MonitorSchedule> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0042 A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.MonitorSchedule deserialize(io.sentry.JsonObjectReader r7, io.sentry.ILogger r8) throws java.lang.Exception {
            /*
                r6 = this;
                r7.beginObject()
                r6 = 0
                r0 = r6
                r1 = r0
                r2 = r1
            L7:
                io.sentry.vendor.gson.stream.JsonToken r3 = r7.peek()
                io.sentry.vendor.gson.stream.JsonToken r4 = io.sentry.vendor.gson.stream.JsonToken.NAME
                if (r3 != r4) goto L5c
                java.lang.String r3 = r7.nextName()
                r3.hashCode()
                int r4 = r3.hashCode()
                r5 = -1
                switch(r4) {
                    case 3575610: goto L35;
                    case 3594628: goto L2a;
                    case 111972721: goto L1f;
                    default: goto L1e;
                }
            L1e:
                goto L3f
            L1f:
                java.lang.String r4 = "value"
                boolean r4 = r3.equals(r4)
                if (r4 != 0) goto L28
                goto L3f
            L28:
                r5 = 2
                goto L3f
            L2a:
                java.lang.String r4 = "unit"
                boolean r4 = r3.equals(r4)
                if (r4 != 0) goto L33
                goto L3f
            L33:
                r5 = 1
                goto L3f
            L35:
                java.lang.String r4 = "type"
                boolean r4 = r3.equals(r4)
                if (r4 != 0) goto L3e
                goto L3f
            L3e:
                r5 = 0
            L3f:
                switch(r5) {
                    case 0: goto L57;
                    case 1: goto L52;
                    case 2: goto L4d;
                    default: goto L42;
                }
            L42:
                if (r2 != 0) goto L49
                java.util.HashMap r2 = new java.util.HashMap
                r2.<init>()
            L49:
                r7.nextUnknown(r8, r2, r3)
                goto L7
            L4d:
                java.lang.String r0 = r7.nextStringOrNull()
                goto L7
            L52:
                java.lang.String r1 = r7.nextStringOrNull()
                goto L7
            L57:
                java.lang.String r6 = r7.nextStringOrNull()
                goto L7
            L5c:
                r7.endObject()
                if (r6 == 0) goto L79
                if (r0 == 0) goto L6c
                io.sentry.MonitorSchedule r7 = new io.sentry.MonitorSchedule
                r7.<init>(r6, r0, r1)
                r7.setUnknown(r2)
                return r7
            L6c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "Missing required field \"value\""
                r6.<init>(r7)
                io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                r8.log(r0, r7, r6)
                throw r6
            L79:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "Missing required field \"type\""
                r6.<init>(r7)
                io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                r8.log(r0, r7, r6)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.MonitorSchedule.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.MonitorSchedule");
        }
    }
}
