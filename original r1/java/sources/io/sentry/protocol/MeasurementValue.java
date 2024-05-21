package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class MeasurementValue implements JsonUnknown, JsonSerializable {
    public static final String KEY_APP_START_COLD = "app_start_cold";
    public static final String KEY_APP_START_WARM = "app_start_warm";
    public static final String KEY_FRAMES_DELAY = "frames_delay";
    public static final String KEY_FRAMES_FROZEN = "frames_frozen";
    public static final String KEY_FRAMES_SLOW = "frames_slow";
    public static final String KEY_FRAMES_TOTAL = "frames_total";
    public static final String KEY_TIME_TO_FULL_DISPLAY = "time_to_full_display";
    public static final String KEY_TIME_TO_INITIAL_DISPLAY = "time_to_initial_display";
    private final String unit;
    private Map<String, Object> unknown;
    private final Number value;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String UNIT = "unit";
        public static final String VALUE = "value";
    }

    public String getUnit() {
        return this.unit;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public Number getValue() {
        return this.value;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public MeasurementValue(Number number, String str) {
        this.value = number;
        this.unit = str;
    }

    public MeasurementValue(Number number, String str, Map<String, Object> map) {
        this.value = number;
        this.unit = str;
        this.unknown = map;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("value").value(this.value);
        if (this.unit != null) {
            objectWriter.name("unit").value(this.unit);
        }
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
    public static final class Deserializer implements JsonDeserializer<MeasurementValue> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public MeasurementValue deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            Number number = null;
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals("unit")) {
                    str = jsonObjectReader.nextStringOrNull();
                } else if (nextName.equals("value")) {
                    number = (Number) jsonObjectReader.nextObjectOrNull();
                } else {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                }
            }
            jsonObjectReader.endObject();
            if (number == null) {
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"value\"");
                iLogger.log(SentryLevel.ERROR, "Missing required field \"value\"", illegalStateException);
                throw illegalStateException;
            }
            MeasurementValue measurementValue = new MeasurementValue(number, str);
            measurementValue.setUnknown(concurrentHashMap);
            return measurementValue;
        }
    }
}
