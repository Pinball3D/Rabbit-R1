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
public final class Browser implements JsonUnknown, JsonSerializable {
    public static final String TYPE = "browser";
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

    public void setName(String str) {
        this.name = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public Browser() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Browser(Browser browser) {
        this.name = browser.name;
        this.version = browser.version;
        this.unknown = CollectionUtils.newConcurrentHashMap(browser.unknown);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Browser browser = (Browser) obj;
        return Objects.equals(this.name, browser.name) && Objects.equals(this.version, browser.version);
    }

    public int hashCode() {
        return Objects.hash(this.name, this.version);
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
    public static final class Deserializer implements JsonDeserializer<Browser> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public Browser deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            Browser browser = new Browser();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals("name")) {
                    browser.name = jsonObjectReader.nextStringOrNull();
                } else if (nextName.equals("version")) {
                    browser.version = jsonObjectReader.nextStringOrNull();
                } else {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                }
            }
            browser.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return browser;
        }
    }
}
