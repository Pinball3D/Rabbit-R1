package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.SdkInfo;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class DebugMeta implements JsonUnknown, JsonSerializable {
    private List<DebugImage> images;
    private SdkInfo sdkInfo;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String IMAGES = "images";
        public static final String SDK_INFO = "sdk_info";
    }

    public List<DebugImage> getImages() {
        return this.images;
    }

    public SdkInfo getSdkInfo() {
        return this.sdkInfo;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setSdkInfo(SdkInfo sdkInfo) {
        this.sdkInfo = sdkInfo;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setImages(List<DebugImage> list) {
        this.images = list != null ? new ArrayList(list) : null;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.sdkInfo != null) {
            objectWriter.name(JsonKeys.SDK_INFO).value(iLogger, this.sdkInfo);
        }
        if (this.images != null) {
            objectWriter.name(JsonKeys.IMAGES).value(iLogger, this.images);
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
    public static final class Deserializer implements JsonDeserializer<DebugMeta> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public DebugMeta deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            DebugMeta debugMeta = new DebugMeta();
            jsonObjectReader.beginObject();
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals(JsonKeys.IMAGES)) {
                    debugMeta.images = jsonObjectReader.nextListOrNull(iLogger, new DebugImage.Deserializer());
                } else if (nextName.equals(JsonKeys.SDK_INFO)) {
                    debugMeta.sdkInfo = (SdkInfo) jsonObjectReader.nextOrNull(iLogger, new SdkInfo.Deserializer());
                } else {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, hashMap, nextName);
                }
            }
            jsonObjectReader.endObject();
            debugMeta.setUnknown(hashMap);
            return debugMeta;
        }
    }
}
