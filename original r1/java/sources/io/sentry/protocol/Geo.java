package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class Geo implements JsonUnknown, JsonSerializable {
    private String city;
    private String countryCode;
    private String region;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String CITY = "city";
        public static final String COUNTRY_CODE = "country_code";
        public static final String REGION = "region";
    }

    public String getCity() {
        return this.city;
    }

    public String getCountryCode() {
        return this.countryCode;
    }

    public String getRegion() {
        return this.region;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setCountryCode(String str) {
        this.countryCode = str;
    }

    public void setRegion(String str) {
        this.region = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public Geo() {
    }

    public Geo(Geo geo) {
        this.city = geo.city;
        this.countryCode = geo.countryCode;
        this.region = geo.region;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x002b. Please report as an issue. */
    public static Geo fromMap(Map<String, Object> map) {
        Geo geo = new Geo();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            String key = entry.getKey();
            key.hashCode();
            char c = 65535;
            switch (key.hashCode()) {
                case -934795532:
                    if (key.equals("region")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3053931:
                    if (key.equals(JsonKeys.CITY)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1481071862:
                    if (key.equals(JsonKeys.COUNTRY_CODE)) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    geo.region = value instanceof String ? (String) value : null;
                    break;
                case 1:
                    geo.city = value instanceof String ? (String) value : null;
                    break;
                case 2:
                    geo.countryCode = value instanceof String ? (String) value : null;
                    break;
            }
        }
        return geo;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.city != null) {
            objectWriter.name(JsonKeys.CITY).value(this.city);
        }
        if (this.countryCode != null) {
            objectWriter.name(JsonKeys.COUNTRY_CODE).value(this.countryCode);
        }
        if (this.region != null) {
            objectWriter.name("region").value(this.region);
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
    public static final class Deserializer implements JsonDeserializer<Geo> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public Geo deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            Geo geo = new Geo();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -934795532:
                        if (nextName.equals("region")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 3053931:
                        if (nextName.equals(JsonKeys.CITY)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1481071862:
                        if (nextName.equals(JsonKeys.COUNTRY_CODE)) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        geo.region = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        geo.city = jsonObjectReader.nextStringOrNull();
                        break;
                    case 2:
                        geo.countryCode = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            geo.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return geo;
        }
    }
}
