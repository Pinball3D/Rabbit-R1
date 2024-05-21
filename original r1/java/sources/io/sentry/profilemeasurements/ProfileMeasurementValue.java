package io.sentry.profilemeasurements;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class ProfileMeasurementValue implements JsonUnknown, JsonSerializable {
    private String relativeStartNs;
    private Map<String, Object> unknown;
    private double value;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String START_NS = "elapsed_since_start_ns";
        public static final String VALUE = "value";
    }

    public String getRelativeStartNs() {
        return this.relativeStartNs;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public double getValue() {
        return this.value;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public ProfileMeasurementValue() {
        this(0L, 0);
    }

    public ProfileMeasurementValue(Long l, Number number) {
        this.relativeStartNs = l.toString();
        this.value = number.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProfileMeasurementValue profileMeasurementValue = (ProfileMeasurementValue) obj;
        return Objects.equals(this.unknown, profileMeasurementValue.unknown) && this.relativeStartNs.equals(profileMeasurementValue.relativeStartNs) && this.value == profileMeasurementValue.value;
    }

    public int hashCode() {
        return Objects.hash(this.unknown, this.relativeStartNs, Double.valueOf(this.value));
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("value").value(iLogger, Double.valueOf(this.value));
        objectWriter.name(JsonKeys.START_NS).value(iLogger, this.relativeStartNs);
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
    public static final class Deserializer implements JsonDeserializer<ProfileMeasurementValue> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public ProfileMeasurementValue deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            ProfileMeasurementValue profileMeasurementValue = new ProfileMeasurementValue();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals(JsonKeys.START_NS)) {
                    String nextStringOrNull = jsonObjectReader.nextStringOrNull();
                    if (nextStringOrNull != null) {
                        profileMeasurementValue.relativeStartNs = nextStringOrNull;
                    }
                } else if (nextName.equals("value")) {
                    Double nextDoubleOrNull = jsonObjectReader.nextDoubleOrNull();
                    if (nextDoubleOrNull != null) {
                        profileMeasurementValue.value = nextDoubleOrNull.doubleValue();
                    }
                } else {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                }
            }
            profileMeasurementValue.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return profileMeasurementValue;
        }
    }
}
