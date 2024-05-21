package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class SdkInfo implements JsonUnknown, JsonSerializable {
    private String sdkName;
    private Map<String, Object> unknown;
    private Integer versionMajor;
    private Integer versionMinor;
    private Integer versionPatchlevel;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String SDK_NAME = "sdk_name";
        public static final String VERSION_MAJOR = "version_major";
        public static final String VERSION_MINOR = "version_minor";
        public static final String VERSION_PATCHLEVEL = "version_patchlevel";
    }

    public String getSdkName() {
        return this.sdkName;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public Integer getVersionMajor() {
        return this.versionMajor;
    }

    public Integer getVersionMinor() {
        return this.versionMinor;
    }

    public Integer getVersionPatchlevel() {
        return this.versionPatchlevel;
    }

    public void setSdkName(String str) {
        this.sdkName = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setVersionMajor(Integer num) {
        this.versionMajor = num;
    }

    public void setVersionMinor(Integer num) {
        this.versionMinor = num;
    }

    public void setVersionPatchlevel(Integer num) {
        this.versionPatchlevel = num;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.sdkName != null) {
            objectWriter.name(JsonKeys.SDK_NAME).value(this.sdkName);
        }
        if (this.versionMajor != null) {
            objectWriter.name(JsonKeys.VERSION_MAJOR).value(this.versionMajor);
        }
        if (this.versionMinor != null) {
            objectWriter.name(JsonKeys.VERSION_MINOR).value(this.versionMinor);
        }
        if (this.versionPatchlevel != null) {
            objectWriter.name(JsonKeys.VERSION_PATCHLEVEL).value(this.versionPatchlevel);
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
    public static final class Deserializer implements JsonDeserializer<SdkInfo> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SdkInfo deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            SdkInfo sdkInfo = new SdkInfo();
            jsonObjectReader.beginObject();
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case 270207856:
                        if (nextName.equals(JsonKeys.SDK_NAME)) {
                            c = 0;
                            break;
                        }
                        break;
                    case 696101379:
                        if (nextName.equals(JsonKeys.VERSION_PATCHLEVEL)) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1111241618:
                        if (nextName.equals(JsonKeys.VERSION_MAJOR)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1111483790:
                        if (nextName.equals(JsonKeys.VERSION_MINOR)) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sdkInfo.sdkName = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        sdkInfo.versionPatchlevel = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 2:
                        sdkInfo.versionMajor = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 3:
                        sdkInfo.versionMinor = jsonObjectReader.nextIntegerOrNull();
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
            sdkInfo.setUnknown(hashMap);
            return sdkInfo;
        }
    }
}
