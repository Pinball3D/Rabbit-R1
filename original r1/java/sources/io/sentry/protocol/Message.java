package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.util.CollectionUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class Message implements JsonUnknown, JsonSerializable {
    private String formatted;
    private String message;
    private List<String> params;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String FORMATTED = "formatted";
        public static final String MESSAGE = "message";
        public static final String PARAMS = "params";
    }

    public String getFormatted() {
        return this.formatted;
    }

    public String getMessage() {
        return this.message;
    }

    public List<String> getParams() {
        return this.params;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setFormatted(String str) {
        this.formatted = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setParams(List<String> list) {
        this.params = CollectionUtils.newArrayList(list);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.formatted != null) {
            objectWriter.name(JsonKeys.FORMATTED).value(this.formatted);
        }
        if (this.message != null) {
            objectWriter.name("message").value(this.message);
        }
        List<String> list = this.params;
        if (list != null && !list.isEmpty()) {
            objectWriter.name(JsonKeys.PARAMS).value(iLogger, this.params);
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
    public static final class Deserializer implements JsonDeserializer<Message> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public Message deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            Message message = new Message();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -995427962:
                        if (nextName.equals(JsonKeys.PARAMS)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 954925063:
                        if (nextName.equals("message")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1811591356:
                        if (nextName.equals(JsonKeys.FORMATTED)) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        List list = (List) jsonObjectReader.nextObjectOrNull();
                        if (list == null) {
                            break;
                        } else {
                            message.params = list;
                            break;
                        }
                    case 1:
                        message.message = jsonObjectReader.nextStringOrNull();
                        break;
                    case 2:
                        message.formatted = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            message.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return message;
        }
    }
}
