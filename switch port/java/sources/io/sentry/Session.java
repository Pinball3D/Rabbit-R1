package io.sentry;

import io.sentry.protocol.User;
import io.sentry.util.StringUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class Session implements JsonUnknown, JsonSerializable {
    private String abnormalMechanism;
    private final String distinctId;
    private Double duration;
    private final String environment;
    private final AtomicInteger errorCount;
    private Boolean init;
    private final String ipAddress;
    private final String release;
    private Long sequence;
    private final UUID sessionId;
    private final Object sessionLock;
    private final Date started;
    private State status;
    private Date timestamp;
    private Map<String, Object> unknown;
    private String userAgent;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ABNORMAL_MECHANISM = "abnormal_mechanism";
        public static final String ATTRS = "attrs";
        public static final String DID = "did";
        public static final String DURATION = "duration";
        public static final String ENVIRONMENT = "environment";
        public static final String ERRORS = "errors";
        public static final String INIT = "init";
        public static final String IP_ADDRESS = "ip_address";
        public static final String RELEASE = "release";
        public static final String SEQ = "seq";
        public static final String SID = "sid";
        public static final String STARTED = "started";
        public static final String STATUS = "status";
        public static final String TIMESTAMP = "timestamp";
        public static final String USER_AGENT = "user_agent";
    }

    /* loaded from: classes3.dex */
    public enum State {
        Ok,
        Exited,
        Crashed,
        Abnormal
    }

    public String getAbnormalMechanism() {
        return this.abnormalMechanism;
    }

    public String getDistinctId() {
        return this.distinctId;
    }

    public Double getDuration() {
        return this.duration;
    }

    public String getEnvironment() {
        return this.environment;
    }

    public Boolean getInit() {
        return this.init;
    }

    public String getIpAddress() {
        return this.ipAddress;
    }

    public String getRelease() {
        return this.release;
    }

    public Long getSequence() {
        return this.sequence;
    }

    public UUID getSessionId() {
        return this.sessionId;
    }

    public State getStatus() {
        return this.status;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public Session(State state, Date date, Date date2, int i, String str, UUID uuid, Boolean bool, Long l, Double d, String str2, String str3, String str4, String str5, String str6) {
        this.sessionLock = new Object();
        this.status = state;
        this.started = date;
        this.timestamp = date2;
        this.errorCount = new AtomicInteger(i);
        this.distinctId = str;
        this.sessionId = uuid;
        this.init = bool;
        this.sequence = l;
        this.duration = d;
        this.ipAddress = str2;
        this.userAgent = str3;
        this.environment = str4;
        this.release = str5;
        this.abnormalMechanism = str6;
    }

    public Session(String str, User user, String str2, String str3) {
        this(State.Ok, DateUtils.getCurrentDateTime(), DateUtils.getCurrentDateTime(), 0, str, UUID.randomUUID(), true, null, null, user != null ? user.getIpAddress() : null, null, str2, str3, null);
    }

    public boolean isTerminated() {
        return this.status != State.Ok;
    }

    public Date getStarted() {
        Date date = this.started;
        if (date == null) {
            return null;
        }
        return (Date) date.clone();
    }

    public void setInitAsTrue() {
        this.init = true;
    }

    public int errorCount() {
        return this.errorCount.get();
    }

    public Date getTimestamp() {
        Date date = this.timestamp;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void end() {
        end(DateUtils.getCurrentDateTime());
    }

    public void end(Date date) {
        synchronized (this.sessionLock) {
            this.init = null;
            if (this.status == State.Ok) {
                this.status = State.Exited;
            }
            if (date != null) {
                this.timestamp = date;
            } else {
                this.timestamp = DateUtils.getCurrentDateTime();
            }
            Date date2 = this.timestamp;
            if (date2 != null) {
                this.duration = Double.valueOf(calculateDurationTime(date2));
                this.sequence = Long.valueOf(getSequenceTimestamp(this.timestamp));
            }
        }
    }

    private double calculateDurationTime(Date date) {
        return Math.abs(date.getTime() - this.started.getTime()) / 1000.0d;
    }

    public boolean update(State state, String str, boolean z) {
        return update(state, str, z, null);
    }

    public boolean update(State state, String str, boolean z, String str2) {
        boolean z2;
        boolean z3;
        synchronized (this.sessionLock) {
            z2 = true;
            if (state != null) {
                try {
                    this.status = state;
                    z3 = true;
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                z3 = false;
            }
            if (str != null) {
                this.userAgent = str;
                z3 = true;
            }
            if (z) {
                this.errorCount.addAndGet(1);
                z3 = true;
            }
            if (str2 != null) {
                this.abnormalMechanism = str2;
            } else {
                z2 = z3;
            }
            if (z2) {
                this.init = null;
                Date currentDateTime = DateUtils.getCurrentDateTime();
                this.timestamp = currentDateTime;
                if (currentDateTime != null) {
                    this.sequence = Long.valueOf(getSequenceTimestamp(currentDateTime));
                }
            }
        }
        return z2;
    }

    private long getSequenceTimestamp(Date date) {
        long time = date.getTime();
        return time < 0 ? Math.abs(time) : time;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Session m5632clone() {
        return new Session(this.status, this.started, this.timestamp, this.errorCount.get(), this.distinctId, this.sessionId, this.init, this.sequence, this.duration, this.ipAddress, this.userAgent, this.environment, this.release, this.abnormalMechanism);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        if (this.sessionId != null) {
            objectWriter.name("sid").value(this.sessionId.toString());
        }
        if (this.distinctId != null) {
            objectWriter.name(JsonKeys.DID).value(this.distinctId);
        }
        if (this.init != null) {
            objectWriter.name(JsonKeys.INIT).value(this.init);
        }
        objectWriter.name(JsonKeys.STARTED).value(iLogger, this.started);
        objectWriter.name("status").value(iLogger, this.status.name().toLowerCase(Locale.ROOT));
        if (this.sequence != null) {
            objectWriter.name(JsonKeys.SEQ).value(this.sequence);
        }
        objectWriter.name(JsonKeys.ERRORS).value(this.errorCount.intValue());
        if (this.duration != null) {
            objectWriter.name("duration").value(this.duration);
        }
        if (this.timestamp != null) {
            objectWriter.name("timestamp").value(iLogger, this.timestamp);
        }
        if (this.abnormalMechanism != null) {
            objectWriter.name(JsonKeys.ABNORMAL_MECHANISM).value(iLogger, this.abnormalMechanism);
        }
        objectWriter.name(JsonKeys.ATTRS);
        objectWriter.beginObject();
        objectWriter.name("release").value(iLogger, this.release);
        if (this.environment != null) {
            objectWriter.name("environment").value(iLogger, this.environment);
        }
        if (this.ipAddress != null) {
            objectWriter.name("ip_address").value(iLogger, this.ipAddress);
        }
        if (this.userAgent != null) {
            objectWriter.name(JsonKeys.USER_AGENT).value(iLogger, this.userAgent);
        }
        objectWriter.endObject();
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
    public static final class Deserializer implements JsonDeserializer<Session> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:7:0x00c8. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public Session deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            char c;
            String str;
            boolean z;
            jsonObjectReader.beginObject();
            Integer num = null;
            State state = null;
            Date date = null;
            Date date2 = null;
            ConcurrentHashMap concurrentHashMap = null;
            String str2 = null;
            UUID uuid = null;
            Boolean bool = null;
            Long l = null;
            Double d = null;
            String str3 = null;
            String str4 = null;
            String str5 = null;
            String str6 = null;
            String str7 = null;
            while (true) {
                String str8 = str5;
                String str9 = str4;
                String str10 = str3;
                Double d2 = d;
                if (jsonObjectReader.peek() != JsonToken.NAME) {
                    if (state == null) {
                        throw missingRequiredFieldException("status", iLogger);
                    }
                    if (date == null) {
                        throw missingRequiredFieldException(JsonKeys.STARTED, iLogger);
                    }
                    if (num == null) {
                        throw missingRequiredFieldException(JsonKeys.ERRORS, iLogger);
                    }
                    if (str6 == null) {
                        throw missingRequiredFieldException("release", iLogger);
                    }
                    Session session = new Session(state, date, date2, num.intValue(), str2, uuid, bool, l, d2, str10, str9, str8, str6, str7);
                    session.setUnknown(concurrentHashMap);
                    jsonObjectReader.endObject();
                    return session;
                }
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                switch (nextName.hashCode()) {
                    case -1992012396:
                        if (nextName.equals("duration")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1897185151:
                        if (nextName.equals(JsonKeys.STARTED)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1294635157:
                        if (nextName.equals(JsonKeys.ERRORS)) {
                            c = 2;
                            break;
                        }
                        break;
                    case -892481550:
                        if (nextName.equals("status")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 99455:
                        if (nextName.equals(JsonKeys.DID)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 113759:
                        if (nextName.equals(JsonKeys.SEQ)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 113870:
                        if (nextName.equals("sid")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 3237136:
                        if (nextName.equals(JsonKeys.INIT)) {
                            c = 7;
                            break;
                        }
                        break;
                    case 55126294:
                        if (nextName.equals("timestamp")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 93152418:
                        if (nextName.equals(JsonKeys.ATTRS)) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 213717026:
                        if (nextName.equals(JsonKeys.ABNORMAL_MECHANISM)) {
                            c = '\n';
                            break;
                        }
                        break;
                }
                c = 65535;
                switch (c) {
                    case 0:
                        d = jsonObjectReader.nextDoubleOrNull();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        break;
                    case 1:
                        date = jsonObjectReader.nextDateOrNull(iLogger);
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case 2:
                        num = jsonObjectReader.nextIntegerOrNull();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case 3:
                        String capitalize = StringUtils.capitalize(jsonObjectReader.nextStringOrNull());
                        if (capitalize != null) {
                            state = State.valueOf(capitalize);
                        }
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case 4:
                        str2 = jsonObjectReader.nextStringOrNull();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case 5:
                        l = jsonObjectReader.nextLongOrNull();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case 6:
                        try {
                            str = jsonObjectReader.nextStringOrNull();
                        } catch (IllegalArgumentException unused) {
                            str = null;
                        }
                        try {
                            uuid = UUID.fromString(str);
                        } catch (IllegalArgumentException unused2) {
                            iLogger.log(SentryLevel.ERROR, "%s sid is not valid.", str);
                            str5 = str8;
                            str4 = str9;
                            str3 = str10;
                            d = d2;
                        }
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                    case 7:
                        bool = jsonObjectReader.nextBooleanOrNull();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case '\b':
                        date2 = jsonObjectReader.nextDateOrNull(iLogger);
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    case '\t':
                        jsonObjectReader.beginObject();
                        str4 = str9;
                        str3 = str10;
                        while (jsonObjectReader.peek() == JsonToken.NAME) {
                            String nextName2 = jsonObjectReader.nextName();
                            nextName2.hashCode();
                            switch (nextName2.hashCode()) {
                                case -85904877:
                                    if (nextName2.equals("environment")) {
                                        z = false;
                                        break;
                                    }
                                    break;
                                case 1090594823:
                                    if (nextName2.equals("release")) {
                                        z = true;
                                        break;
                                    }
                                    break;
                                case 1480014044:
                                    if (nextName2.equals("ip_address")) {
                                        z = 2;
                                        break;
                                    }
                                    break;
                                case 1917799825:
                                    if (nextName2.equals(JsonKeys.USER_AGENT)) {
                                        z = 3;
                                        break;
                                    }
                                    break;
                            }
                            z = -1;
                            switch (z) {
                                case false:
                                    str8 = jsonObjectReader.nextStringOrNull();
                                    break;
                                case true:
                                    str6 = jsonObjectReader.nextStringOrNull();
                                    break;
                                case true:
                                    str3 = jsonObjectReader.nextStringOrNull();
                                    break;
                                case true:
                                    str4 = jsonObjectReader.nextStringOrNull();
                                    break;
                                default:
                                    jsonObjectReader.skipValue();
                                    break;
                            }
                        }
                        jsonObjectReader.endObject();
                        str5 = str8;
                        d = d2;
                        break;
                    case '\n':
                        str7 = jsonObjectReader.nextStringOrNull();
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        str5 = str8;
                        str4 = str9;
                        str3 = str10;
                        d = d2;
                        break;
                }
            }
        }

        private Exception missingRequiredFieldException(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.log(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }
    }
}
