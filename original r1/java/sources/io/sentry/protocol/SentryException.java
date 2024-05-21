package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class SentryException implements JsonUnknown, JsonSerializable {
    private Mechanism mechanism;
    private String module;
    private SentryStackTrace stacktrace;
    private Long threadId;
    private String type;
    private Map<String, Object> unknown;
    private String value;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String MECHANISM = "mechanism";
        public static final String MODULE = "module";
        public static final String STACKTRACE = "stacktrace";
        public static final String THREAD_ID = "thread_id";
        public static final String TYPE = "type";
        public static final String VALUE = "value";
    }

    public Mechanism getMechanism() {
        return this.mechanism;
    }

    public String getModule() {
        return this.module;
    }

    public SentryStackTrace getStacktrace() {
        return this.stacktrace;
    }

    public Long getThreadId() {
        return this.threadId;
    }

    public String getType() {
        return this.type;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getValue() {
        return this.value;
    }

    public void setMechanism(Mechanism mechanism) {
        this.mechanism = mechanism;
    }

    public void setModule(String str) {
        this.module = str;
    }

    public void setStacktrace(SentryStackTrace sentryStackTrace) {
        this.stacktrace = sentryStackTrace;
    }

    public void setThreadId(Long l) {
        this.threadId = l;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setValue(String str) {
        this.value = str;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.type != null) {
            objectWriter.name("type").value(this.type);
        }
        if (this.value != null) {
            objectWriter.name("value").value(this.value);
        }
        if (this.module != null) {
            objectWriter.name("module").value(this.module);
        }
        if (this.threadId != null) {
            objectWriter.name("thread_id").value(this.threadId);
        }
        if (this.stacktrace != null) {
            objectWriter.name("stacktrace").value(iLogger, this.stacktrace);
        }
        if (this.mechanism != null) {
            objectWriter.name(JsonKeys.MECHANISM).value(iLogger, this.mechanism);
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
    public static final class Deserializer implements JsonDeserializer<SentryException> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryException deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            SentryException sentryException = new SentryException();
            jsonObjectReader.beginObject();
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1562235024:
                        if (nextName.equals("thread_id")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (nextName.equals("module")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (nextName.equals("type")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 111972721:
                        if (nextName.equals("value")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1225089881:
                        if (nextName.equals(JsonKeys.MECHANISM)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 2055832509:
                        if (nextName.equals("stacktrace")) {
                            c = 5;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sentryException.threadId = jsonObjectReader.nextLongOrNull();
                        break;
                    case 1:
                        sentryException.module = jsonObjectReader.nextStringOrNull();
                        break;
                    case 2:
                        sentryException.type = jsonObjectReader.nextStringOrNull();
                        break;
                    case 3:
                        sentryException.value = jsonObjectReader.nextStringOrNull();
                        break;
                    case 4:
                        sentryException.mechanism = (Mechanism) jsonObjectReader.nextOrNull(iLogger, new Mechanism.Deserializer());
                        break;
                    case 5:
                        sentryException.stacktrace = (SentryStackTrace) jsonObjectReader.nextOrNull(iLogger, new SentryStackTrace.Deserializer());
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, hashMap, nextName);
                        break;
                }
            }
            jsonObjectReader.endObject();
            sentryException.setUnknown(hashMap);
            return sentryException;
        }
    }
}
