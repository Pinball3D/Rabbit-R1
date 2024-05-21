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
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class App implements JsonUnknown, JsonSerializable {
    public static final String TYPE = "app";
    private String appBuild;
    private String appIdentifier;
    private String appName;
    private Date appStartTime;
    private String appVersion;
    private String buildType;
    private String deviceAppHash;
    private Boolean inForeground;
    private Map<String, String> permissions;
    private Map<String, Object> unknown;
    private List<String> viewNames;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String APP_BUILD = "app_build";
        public static final String APP_IDENTIFIER = "app_identifier";
        public static final String APP_NAME = "app_name";
        public static final String APP_PERMISSIONS = "permissions";
        public static final String APP_START_TIME = "app_start_time";
        public static final String APP_VERSION = "app_version";
        public static final String BUILD_TYPE = "build_type";
        public static final String DEVICE_APP_HASH = "device_app_hash";
        public static final String IN_FOREGROUND = "in_foreground";
        public static final String VIEW_NAMES = "view_names";
    }

    public String getAppBuild() {
        return this.appBuild;
    }

    public String getAppIdentifier() {
        return this.appIdentifier;
    }

    public String getAppName() {
        return this.appName;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public String getBuildType() {
        return this.buildType;
    }

    public String getDeviceAppHash() {
        return this.deviceAppHash;
    }

    public Boolean getInForeground() {
        return this.inForeground;
    }

    public Map<String, String> getPermissions() {
        return this.permissions;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public List<String> getViewNames() {
        return this.viewNames;
    }

    public void setAppBuild(String str) {
        this.appBuild = str;
    }

    public void setAppIdentifier(String str) {
        this.appIdentifier = str;
    }

    public void setAppName(String str) {
        this.appName = str;
    }

    public void setAppStartTime(Date date) {
        this.appStartTime = date;
    }

    public void setAppVersion(String str) {
        this.appVersion = str;
    }

    public void setBuildType(String str) {
        this.buildType = str;
    }

    public void setDeviceAppHash(String str) {
        this.deviceAppHash = str;
    }

    public void setInForeground(Boolean bool) {
        this.inForeground = bool;
    }

    public void setPermissions(Map<String, String> map) {
        this.permissions = map;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public void setViewNames(List<String> list) {
        this.viewNames = list;
    }

    public App() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public App(App app) {
        this.appBuild = app.appBuild;
        this.appIdentifier = app.appIdentifier;
        this.appName = app.appName;
        this.appStartTime = app.appStartTime;
        this.appVersion = app.appVersion;
        this.buildType = app.buildType;
        this.deviceAppHash = app.deviceAppHash;
        this.permissions = CollectionUtils.newConcurrentHashMap(app.permissions);
        this.inForeground = app.inForeground;
        this.viewNames = CollectionUtils.newArrayList(app.viewNames);
        this.unknown = CollectionUtils.newConcurrentHashMap(app.unknown);
    }

    public Date getAppStartTime() {
        Date date = this.appStartTime;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        App app = (App) obj;
        return Objects.equals(this.appIdentifier, app.appIdentifier) && Objects.equals(this.appStartTime, app.appStartTime) && Objects.equals(this.deviceAppHash, app.deviceAppHash) && Objects.equals(this.buildType, app.buildType) && Objects.equals(this.appName, app.appName) && Objects.equals(this.appVersion, app.appVersion) && Objects.equals(this.appBuild, app.appBuild) && Objects.equals(this.permissions, app.permissions) && Objects.equals(this.inForeground, app.inForeground) && Objects.equals(this.viewNames, app.viewNames);
    }

    public int hashCode() {
        return Objects.hash(this.appIdentifier, this.appStartTime, this.deviceAppHash, this.buildType, this.appName, this.appVersion, this.appBuild, this.permissions, this.inForeground, this.viewNames);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.appIdentifier != null) {
            objectWriter.name(JsonKeys.APP_IDENTIFIER).value(this.appIdentifier);
        }
        if (this.appStartTime != null) {
            objectWriter.name(JsonKeys.APP_START_TIME).value(iLogger, this.appStartTime);
        }
        if (this.deviceAppHash != null) {
            objectWriter.name(JsonKeys.DEVICE_APP_HASH).value(this.deviceAppHash);
        }
        if (this.buildType != null) {
            objectWriter.name(JsonKeys.BUILD_TYPE).value(this.buildType);
        }
        if (this.appName != null) {
            objectWriter.name(JsonKeys.APP_NAME).value(this.appName);
        }
        if (this.appVersion != null) {
            objectWriter.name(JsonKeys.APP_VERSION).value(this.appVersion);
        }
        if (this.appBuild != null) {
            objectWriter.name(JsonKeys.APP_BUILD).value(this.appBuild);
        }
        Map<String, String> map = this.permissions;
        if (map != null && !map.isEmpty()) {
            objectWriter.name(JsonKeys.APP_PERMISSIONS).value(iLogger, this.permissions);
        }
        if (this.inForeground != null) {
            objectWriter.name(JsonKeys.IN_FOREGROUND).value(this.inForeground);
        }
        if (this.viewNames != null) {
            objectWriter.name(JsonKeys.VIEW_NAMES).value(iLogger, this.viewNames);
        }
        Map<String, Object> map2 = this.unknown;
        if (map2 != null) {
            for (String str : map2.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<App> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public App deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            App app = new App();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1898053579:
                        if (nextName.equals(JsonKeys.DEVICE_APP_HASH)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1524619986:
                        if (nextName.equals(JsonKeys.VIEW_NAMES)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -901870406:
                        if (nextName.equals(JsonKeys.APP_VERSION)) {
                            c = 2;
                            break;
                        }
                        break;
                    case -650544995:
                        if (nextName.equals(JsonKeys.IN_FOREGROUND)) {
                            c = 3;
                            break;
                        }
                        break;
                    case -470395285:
                        if (nextName.equals(JsonKeys.BUILD_TYPE)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 746297735:
                        if (nextName.equals(JsonKeys.APP_IDENTIFIER)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 791585128:
                        if (nextName.equals(JsonKeys.APP_START_TIME)) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1133704324:
                        if (nextName.equals(JsonKeys.APP_PERMISSIONS)) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1167648233:
                        if (nextName.equals(JsonKeys.APP_NAME)) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1826866896:
                        if (nextName.equals(JsonKeys.APP_BUILD)) {
                            c = '\t';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        app.deviceAppHash = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        List<String> list = (List) jsonObjectReader.nextObjectOrNull();
                        if (list == null) {
                            break;
                        } else {
                            app.setViewNames(list);
                            break;
                        }
                    case 2:
                        app.appVersion = jsonObjectReader.nextStringOrNull();
                        break;
                    case 3:
                        app.inForeground = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 4:
                        app.buildType = jsonObjectReader.nextStringOrNull();
                        break;
                    case 5:
                        app.appIdentifier = jsonObjectReader.nextStringOrNull();
                        break;
                    case 6:
                        app.appStartTime = jsonObjectReader.nextDateOrNull(iLogger);
                        break;
                    case 7:
                        app.permissions = CollectionUtils.newConcurrentHashMap((Map) jsonObjectReader.nextObjectOrNull());
                        break;
                    case '\b':
                        app.appName = jsonObjectReader.nextStringOrNull();
                        break;
                    case '\t':
                        app.appBuild = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            app.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return app;
        }
    }
}
