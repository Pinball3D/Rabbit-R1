package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLockReason;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentryThread implements JsonUnknown, JsonSerializable {
    private Boolean crashed;
    private Boolean current;
    private Boolean daemon;
    private Map<String, SentryLockReason> heldLocks;
    private Long id;
    private Boolean main;
    private String name;
    private Integer priority;
    private SentryStackTrace stacktrace;
    private String state;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String CRASHED = "crashed";
        public static final String CURRENT = "current";
        public static final String DAEMON = "daemon";
        public static final String HELD_LOCKS = "held_locks";
        public static final String ID = "id";
        public static final String MAIN = "main";
        public static final String NAME = "name";
        public static final String PRIORITY = "priority";
        public static final String STACKTRACE = "stacktrace";
        public static final String STATE = "state";
    }

    public Map<String, SentryLockReason> getHeldLocks() {
        return this.heldLocks;
    }

    public Long getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public Integer getPriority() {
        return this.priority;
    }

    public SentryStackTrace getStacktrace() {
        return this.stacktrace;
    }

    public String getState() {
        return this.state;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public Boolean isCrashed() {
        return this.crashed;
    }

    public Boolean isCurrent() {
        return this.current;
    }

    public Boolean isDaemon() {
        return this.daemon;
    }

    public Boolean isMain() {
        return this.main;
    }

    public void setCrashed(Boolean bool) {
        this.crashed = bool;
    }

    public void setCurrent(Boolean bool) {
        this.current = bool;
    }

    public void setDaemon(Boolean bool) {
        this.daemon = bool;
    }

    public void setHeldLocks(Map<String, SentryLockReason> map) {
        this.heldLocks = map;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public void setMain(Boolean bool) {
        this.main = bool;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPriority(Integer num) {
        this.priority = num;
    }

    public void setStacktrace(SentryStackTrace sentryStackTrace) {
        this.stacktrace = sentryStackTrace;
    }

    public void setState(String str) {
        this.state = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.id != null) {
            objectWriter.name("id").value(this.id);
        }
        if (this.priority != null) {
            objectWriter.name(JsonKeys.PRIORITY).value(this.priority);
        }
        if (this.name != null) {
            objectWriter.name("name").value(this.name);
        }
        if (this.state != null) {
            objectWriter.name(JsonKeys.STATE).value(this.state);
        }
        if (this.crashed != null) {
            objectWriter.name(JsonKeys.CRASHED).value(this.crashed);
        }
        if (this.current != null) {
            objectWriter.name(JsonKeys.CURRENT).value(this.current);
        }
        if (this.daemon != null) {
            objectWriter.name(JsonKeys.DAEMON).value(this.daemon);
        }
        if (this.main != null) {
            objectWriter.name(JsonKeys.MAIN).value(this.main);
        }
        if (this.stacktrace != null) {
            objectWriter.name("stacktrace").value(iLogger, this.stacktrace);
        }
        if (this.heldLocks != null) {
            objectWriter.name(JsonKeys.HELD_LOCKS).value(iLogger, this.heldLocks);
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
    public static final class Deserializer implements JsonDeserializer<SentryThread> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryThread deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            SentryThread sentryThread = new SentryThread();
            jsonObjectReader.beginObject();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1339353468:
                        if (nextName.equals(JsonKeys.DAEMON)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1165461084:
                        if (nextName.equals(JsonKeys.PRIORITY)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -502917346:
                        if (nextName.equals(JsonKeys.HELD_LOCKS)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 3355:
                        if (nextName.equals("id")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 3343801:
                        if (nextName.equals(JsonKeys.MAIN)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 3373707:
                        if (nextName.equals("name")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 109757585:
                        if (nextName.equals(JsonKeys.STATE)) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1025385094:
                        if (nextName.equals(JsonKeys.CRASHED)) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1126940025:
                        if (nextName.equals(JsonKeys.CURRENT)) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 2055832509:
                        if (nextName.equals("stacktrace")) {
                            c = '\t';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        sentryThread.daemon = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 1:
                        sentryThread.priority = jsonObjectReader.nextIntegerOrNull();
                        break;
                    case 2:
                        Map nextMapOrNull = jsonObjectReader.nextMapOrNull(iLogger, new SentryLockReason.Deserializer());
                        if (nextMapOrNull == null) {
                            break;
                        } else {
                            sentryThread.heldLocks = new HashMap(nextMapOrNull);
                            break;
                        }
                    case 3:
                        sentryThread.id = jsonObjectReader.nextLongOrNull();
                        break;
                    case 4:
                        sentryThread.main = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case 5:
                        sentryThread.name = jsonObjectReader.nextStringOrNull();
                        break;
                    case 6:
                        sentryThread.state = jsonObjectReader.nextStringOrNull();
                        break;
                    case 7:
                        sentryThread.crashed = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case '\b':
                        sentryThread.current = jsonObjectReader.nextBooleanOrNull();
                        break;
                    case '\t':
                        sentryThread.stacktrace = (SentryStackTrace) jsonObjectReader.nextOrNull(iLogger, new SentryStackTrace.Deserializer());
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            sentryThread.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return sentryThread;
        }
    }
}
