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
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class Mechanism implements JsonUnknown, JsonSerializable {
    private Map<String, Object> data;
    private String description;
    private Boolean handled;
    private String helpLink;
    private Map<String, Object> meta;
    private Boolean synthetic;
    private final transient Thread thread;
    private String type;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String DATA = "data";
        public static final String DESCRIPTION = "description";
        public static final String HANDLED = "handled";
        public static final String HELP_LINK = "help_link";
        public static final String META = "meta";
        public static final String SYNTHETIC = "synthetic";
        public static final String TYPE = "type";
    }

    public Map<String, Object> getData() {
        return this.data;
    }

    public String getDescription() {
        return this.description;
    }

    public String getHelpLink() {
        return this.helpLink;
    }

    public Map<String, Object> getMeta() {
        return this.meta;
    }

    public Boolean getSynthetic() {
        return this.synthetic;
    }

    Thread getThread() {
        return this.thread;
    }

    public String getType() {
        return this.type;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public Boolean isHandled() {
        return this.handled;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public void setHandled(Boolean bool) {
        this.handled = bool;
    }

    public void setHelpLink(String str) {
        this.helpLink = str;
    }

    public void setSynthetic(Boolean bool) {
        this.synthetic = bool;
    }

    public void setType(String str) {
        this.type = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public Mechanism() {
        this(null);
    }

    public Mechanism(Thread thread) {
        this.thread = thread;
    }

    public void setMeta(Map<String, Object> map) {
        this.meta = CollectionUtils.newHashMap(map);
    }

    public void setData(Map<String, Object> map) {
        this.data = CollectionUtils.newHashMap(map);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.type != null) {
            objectWriter.name("type").value(this.type);
        }
        if (this.description != null) {
            objectWriter.name("description").value(this.description);
        }
        if (this.helpLink != null) {
            objectWriter.name(JsonKeys.HELP_LINK).value(this.helpLink);
        }
        if (this.handled != null) {
            objectWriter.name(JsonKeys.HANDLED).value(this.handled);
        }
        if (this.meta != null) {
            objectWriter.name(JsonKeys.META).value(iLogger, this.meta);
        }
        if (this.data != null) {
            objectWriter.name("data").value(iLogger, this.data);
        }
        if (this.synthetic != null) {
            objectWriter.name(JsonKeys.SYNTHETIC).value(this.synthetic);
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
    public static final class Deserializer implements JsonDeserializer<Mechanism> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public Mechanism deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            Mechanism mechanism = new Mechanism();
            jsonObjectReader.beginObject();
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1724546052:
                        if (nextName.equals("description")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 3076010:
                        if (nextName.equals("data")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3347973:
                        if (nextName.equals(JsonKeys.META)) {
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
                    case 692803388:
                        if (nextName.equals(JsonKeys.HANDLED)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 989128517:
                        if (nextName.equals(JsonKeys.SYNTHETIC)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1297152568:
                        if (nextName.equals(JsonKeys.HELP_LINK)) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        mechanism.description = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        mechanism.data = CollectionUtils.newConcurrentHashMap((Map) jsonObjectReader.nextObjectOrNull());
                        break;
                    case 2:
                        mechanism.meta = CollectionUtils.newConcurrentHashMap((Map) jsonObjectReader.nextObjectOrNull());
                        break;
                    case 3:
                        mechanism.type = jsonObjectReader.nextStringOrNull();
                        break;
                    case 4:
                        mechanism.handled = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 5:
                        mechanism.synthetic = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 6:
                        mechanism.helpLink = jsonObjectReader.nextStringOrNull();
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
            mechanism.setUnknown(hashMap);
            return mechanism;
        }
    }
}
