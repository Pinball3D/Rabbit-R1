package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class SentryPackage implements JsonUnknown, JsonSerializable {
    private String name;
    private Map<String, Object> unknown;
    private String version;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String NAME = "name";
        public static final String VERSION = "version";
    }

    public String getName() {
        return this.name;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getVersion() {
        return this.version;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SentryPackage(String str, String str2) {
        this.name = (String) Objects.requireNonNull(str, "name is required.");
        this.version = (String) Objects.requireNonNull(str2, "version is required.");
    }

    public void setName(String str) {
        this.name = (String) Objects.requireNonNull(str, "name is required.");
    }

    public void setVersion(String str) {
        this.version = (String) Objects.requireNonNull(str, "version is required.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SentryPackage sentryPackage = (SentryPackage) obj;
        return java.util.Objects.equals(this.name, sentryPackage.name) && java.util.Objects.equals(this.version, sentryPackage.version);
    }

    public int hashCode() {
        return java.util.Objects.hash(this.name, this.version);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("name").value(this.name);
        objectWriter.name("version").value(this.version);
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SentryPackage> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public SentryPackage deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals("name")) {
                    str = jsonObjectReader.nextString();
                } else if (nextName.equals("version")) {
                    str2 = jsonObjectReader.nextString();
                } else {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, hashMap, nextName);
                }
            }
            jsonObjectReader.endObject();
            if (str == null) {
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"name\"");
                iLogger.log(SentryLevel.ERROR, "Missing required field \"name\"", illegalStateException);
                throw illegalStateException;
            }
            if (str2 == null) {
                IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"version\"");
                iLogger.log(SentryLevel.ERROR, "Missing required field \"version\"", illegalStateException2);
                throw illegalStateException2;
            }
            SentryPackage sentryPackage = new SentryPackage(str, str2);
            sentryPackage.setUnknown(hashMap);
            return sentryPackage;
        }
    }
}
