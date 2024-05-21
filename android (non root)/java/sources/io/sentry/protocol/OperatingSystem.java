package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class OperatingSystem implements JsonUnknown, JsonSerializable {
    public static final String TYPE = "os";
    private String build;
    private String kernelVersion;
    private String name;
    private String rawDescription;
    private Boolean rooted;
    private Map<String, Object> unknown;
    private String version;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String BUILD = "build";
        public static final String KERNEL_VERSION = "kernel_version";
        public static final String NAME = "name";
        public static final String RAW_DESCRIPTION = "raw_description";
        public static final String ROOTED = "rooted";
        public static final String VERSION = "version";
    }

    public String getBuild() {
        return this.build;
    }

    public String getKernelVersion() {
        return this.kernelVersion;
    }

    public String getName() {
        return this.name;
    }

    public String getRawDescription() {
        return this.rawDescription;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getVersion() {
        return this.version;
    }

    public Boolean isRooted() {
        return this.rooted;
    }

    public void setBuild(String str) {
        this.build = str;
    }

    public void setKernelVersion(String str) {
        this.kernelVersion = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setRawDescription(String str) {
        this.rawDescription = str;
    }

    public void setRooted(Boolean bool) {
        this.rooted = bool;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public OperatingSystem() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OperatingSystem(OperatingSystem operatingSystem) {
        this.name = operatingSystem.name;
        this.version = operatingSystem.version;
        this.rawDescription = operatingSystem.rawDescription;
        this.build = operatingSystem.build;
        this.kernelVersion = operatingSystem.kernelVersion;
        this.rooted = operatingSystem.rooted;
        this.unknown = CollectionUtils.newConcurrentHashMap(operatingSystem.unknown);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OperatingSystem operatingSystem = (OperatingSystem) obj;
        return Objects.equals(this.name, operatingSystem.name) && Objects.equals(this.version, operatingSystem.version) && Objects.equals(this.rawDescription, operatingSystem.rawDescription) && Objects.equals(this.build, operatingSystem.build) && Objects.equals(this.kernelVersion, operatingSystem.kernelVersion) && Objects.equals(this.rooted, operatingSystem.rooted);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.version, this.rawDescription, this.build, this.kernelVersion, this.rooted);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.name != null) {
            objectWriter.name("name").value(this.name);
        }
        if (this.version != null) {
            objectWriter.name("version").value(this.version);
        }
        if (this.rawDescription != null) {
            objectWriter.name("raw_description").value(this.rawDescription);
        }
        if (this.build != null) {
            objectWriter.name(JsonKeys.BUILD).value(this.build);
        }
        if (this.kernelVersion != null) {
            objectWriter.name(JsonKeys.KERNEL_VERSION).value(this.kernelVersion);
        }
        if (this.rooted != null) {
            objectWriter.name(JsonKeys.ROOTED).value(this.rooted);
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
    public static final class Deserializer implements JsonDeserializer<OperatingSystem> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public OperatingSystem deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            OperatingSystem operatingSystem = new OperatingSystem();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -925311743:
                        if (nextName.equals(JsonKeys.ROOTED)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -339173787:
                        if (nextName.equals("raw_description")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3373707:
                        if (nextName.equals("name")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 94094958:
                        if (nextName.equals(JsonKeys.BUILD)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 351608024:
                        if (nextName.equals("version")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 2015527638:
                        if (nextName.equals(JsonKeys.KERNEL_VERSION)) {
                            c = 5;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        operatingSystem.rooted = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 1:
                        operatingSystem.rawDescription = jsonObjectReader.nextStringOrNull();
                        break;
                    case 2:
                        operatingSystem.name = jsonObjectReader.nextStringOrNull();
                        break;
                    case 3:
                        operatingSystem.build = jsonObjectReader.nextStringOrNull();
                        break;
                    case 4:
                        operatingSystem.version = jsonObjectReader.nextStringOrNull();
                        break;
                    case 5:
                        operatingSystem.kernelVersion = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            operatingSystem.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return operatingSystem;
        }
    }
}
