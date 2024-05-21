package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.protocol.ViewHierarchyNode;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ViewHierarchy implements JsonUnknown, JsonSerializable {
    private final String renderingSystem;
    private Map<String, Object> unknown;
    private final List<ViewHierarchyNode> windows;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String RENDERING_SYSTEM = "rendering_system";
        public static final String WINDOWS = "windows";
    }

    public String getRenderingSystem() {
        return this.renderingSystem;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public List<ViewHierarchyNode> getWindows() {
        return this.windows;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public ViewHierarchy(String str, List<ViewHierarchyNode> list) {
        this.renderingSystem = str;
        this.windows = list;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.renderingSystem != null) {
            objectWriter.name("rendering_system").value(this.renderingSystem);
        }
        if (this.windows != null) {
            objectWriter.name(JsonKeys.WINDOWS).value(iLogger, this.windows);
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
    public static final class Deserializer implements JsonDeserializer<ViewHierarchy> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public ViewHierarchy deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            String str = null;
            List list = null;
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals("rendering_system")) {
                    str = jsonObjectReader.nextStringOrNull();
                } else if (nextName.equals(JsonKeys.WINDOWS)) {
                    list = jsonObjectReader.nextListOrNull(iLogger, new ViewHierarchyNode.Deserializer());
                } else {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, hashMap, nextName);
                }
            }
            jsonObjectReader.endObject();
            ViewHierarchy viewHierarchy = new ViewHierarchy(str, list);
            viewHierarchy.setUnknown(hashMap);
            return viewHierarchy;
        }
    }
}
