package io.sentry;

import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentryLockReason implements JsonUnknown, JsonSerializable {
    public static final int ANY = 15;
    public static final int BLOCKED = 8;
    public static final int LOCKED = 1;
    public static final int SLEEPING = 4;
    public static final int WAITING = 2;
    private String address;
    private String className;
    private String packageName;
    private Long threadId;
    private int type;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ADDRESS = "address";
        public static final String CLASS_NAME = "class_name";
        public static final String PACKAGE_NAME = "package_name";
        public static final String THREAD_ID = "thread_id";
        public static final String TYPE = "type";
    }

    public String getAddress() {
        return this.address;
    }

    public String getClassName() {
        return this.className;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public Long getThreadId() {
        return this.threadId;
    }

    public int getType() {
        return this.type;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setAddress(String str) {
        this.address = str;
    }

    public void setClassName(String str) {
        this.className = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setThreadId(Long l) {
        this.threadId = l;
    }

    public void setType(int i) {
        this.type = i;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SentryLockReason() {
    }

    public SentryLockReason(SentryLockReason sentryLockReason) {
        this.type = sentryLockReason.type;
        this.address = sentryLockReason.address;
        this.packageName = sentryLockReason.packageName;
        this.className = sentryLockReason.className;
        this.threadId = sentryLockReason.threadId;
        this.unknown = CollectionUtils.newConcurrentHashMap(sentryLockReason.unknown);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.address, ((SentryLockReason) obj).address);
    }

    public int hashCode() {
        return Objects.hash(this.address);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("type").value(this.type);
        if (this.address != null) {
            objectWriter.name(JsonKeys.ADDRESS).value(this.address);
        }
        if (this.packageName != null) {
            objectWriter.name(JsonKeys.PACKAGE_NAME).value(this.packageName);
        }
        if (this.className != null) {
            objectWriter.name(JsonKeys.CLASS_NAME).value(this.className);
        }
        if (this.threadId != null) {
            objectWriter.name("thread_id").value(this.threadId);
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
    public static final class Deserializer implements JsonDeserializer<SentryLockReason> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryLockReason deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            SentryLockReason sentryLockReason = new SentryLockReason();
            jsonObjectReader.beginObject();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1877165340:
                        if (nextName.equals(JsonKeys.PACKAGE_NAME)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1562235024:
                        if (nextName.equals("thread_id")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1147692044:
                        if (nextName.equals(JsonKeys.ADDRESS)) {
                            c = 2;
                            break;
                        }
                        break;
                    case -290474766:
                        if (nextName.equals(JsonKeys.CLASS_NAME)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3575610:
                        if (nextName.equals("type")) {
                            c = 4;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sentryLockReason.packageName = jsonObjectReader.nextStringOrNull();
                        break;
                    case 1:
                        sentryLockReason.threadId = jsonObjectReader.nextLongOrNull();
                        break;
                    case 2:
                        sentryLockReason.address = jsonObjectReader.nextStringOrNull();
                        break;
                    case 3:
                        sentryLockReason.className = jsonObjectReader.nextStringOrNull();
                        break;
                    case 4:
                        sentryLockReason.type = jsonObjectReader.nextInt();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            sentryLockReason.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return sentryLockReason;
        }
    }
}
