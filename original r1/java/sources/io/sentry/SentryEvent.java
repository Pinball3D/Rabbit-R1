package io.sentry;

import io.sentry.SentryBaseEvent;
import io.sentry.SentryLevel;
import io.sentry.protocol.Message;
import io.sentry.protocol.SentryException;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryThread;
import io.sentry.util.CollectionUtils;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentryEvent extends SentryBaseEvent implements JsonUnknown, JsonSerializable {
    private SentryValues<SentryException> exception;
    private List<String> fingerprint;
    private SentryLevel level;
    private String logger;
    private Message message;
    private Map<String, String> modules;
    private SentryValues<SentryThread> threads;
    private Date timestamp;
    private String transaction;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String EXCEPTION = "exception";
        public static final String FINGERPRINT = "fingerprint";
        public static final String LEVEL = "level";
        public static final String LOGGER = "logger";
        public static final String MESSAGE = "message";
        public static final String MODULES = "modules";
        public static final String THREADS = "threads";
        public static final String TIMESTAMP = "timestamp";
        public static final String TRANSACTION = "transaction";
    }

    public List<String> getFingerprints() {
        return this.fingerprint;
    }

    public SentryLevel getLevel() {
        return this.level;
    }

    public String getLogger() {
        return this.logger;
    }

    public Message getMessage() {
        return this.message;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> getModules() {
        return this.modules;
    }

    public String getTransaction() {
        return this.transaction;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setLevel(SentryLevel sentryLevel) {
        this.level = sentryLevel;
    }

    public void setLogger(String str) {
        this.logger = str;
    }

    public void setMessage(Message message) {
        this.message = message;
    }

    public void setTimestamp(Date date) {
        this.timestamp = date;
    }

    public void setTransaction(String str) {
        this.transaction = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    SentryEvent(SentryId sentryId, Date date) {
        super(sentryId);
        this.timestamp = date;
    }

    public SentryEvent(Throwable th) {
        this();
        this.throwable = th;
    }

    public SentryEvent() {
        this(new SentryId(), DateUtils.getCurrentDateTime());
    }

    public SentryEvent(Date date) {
        this(new SentryId(), date);
    }

    public Date getTimestamp() {
        return (Date) this.timestamp.clone();
    }

    public List<SentryThread> getThreads() {
        SentryValues<SentryThread> sentryValues = this.threads;
        if (sentryValues != null) {
            return sentryValues.getValues();
        }
        return null;
    }

    public void setThreads(List<SentryThread> list) {
        this.threads = new SentryValues<>(list);
    }

    public List<SentryException> getExceptions() {
        SentryValues<SentryException> sentryValues = this.exception;
        if (sentryValues == null) {
            return null;
        }
        return sentryValues.getValues();
    }

    public void setExceptions(List<SentryException> list) {
        this.exception = new SentryValues<>(list);
    }

    public void setFingerprints(List<String> list) {
        this.fingerprint = list != null ? new ArrayList(list) : null;
    }

    public void setModules(Map<String, String> map) {
        this.modules = CollectionUtils.newHashMap(map);
    }

    public void setModule(String str, String str2) {
        if (this.modules == null) {
            this.modules = new HashMap();
        }
        this.modules.put(str, str2);
    }

    public void removeModule(String str) {
        Map<String, String> map = this.modules;
        if (map != null) {
            map.remove(str);
        }
    }

    public String getModule(String str) {
        Map<String, String> map = this.modules;
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public boolean isCrashed() {
        return getUnhandledException() != null;
    }

    public SentryException getUnhandledException() {
        SentryValues<SentryException> sentryValues = this.exception;
        if (sentryValues == null) {
            return null;
        }
        for (SentryException sentryException : sentryValues.getValues()) {
            if (sentryException.getMechanism() != null && sentryException.getMechanism().isHandled() != null && !sentryException.getMechanism().isHandled().booleanValue()) {
                return sentryException;
            }
        }
        return null;
    }

    public boolean isErrored() {
        SentryValues<SentryException> sentryValues = this.exception;
        return (sentryValues == null || sentryValues.getValues().isEmpty()) ? false : true;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("timestamp").value(iLogger, this.timestamp);
        if (this.message != null) {
            objectWriter.name("message").value(iLogger, this.message);
        }
        if (this.logger != null) {
            objectWriter.name(JsonKeys.LOGGER).value(this.logger);
        }
        SentryValues<SentryThread> sentryValues = this.threads;
        if (sentryValues != null && !sentryValues.getValues().isEmpty()) {
            objectWriter.name(JsonKeys.THREADS);
            objectWriter.beginObject();
            objectWriter.name("values").value(iLogger, this.threads.getValues());
            objectWriter.endObject();
        }
        SentryValues<SentryException> sentryValues2 = this.exception;
        if (sentryValues2 != null && !sentryValues2.getValues().isEmpty()) {
            objectWriter.name(JsonKeys.EXCEPTION);
            objectWriter.beginObject();
            objectWriter.name("values").value(iLogger, this.exception.getValues());
            objectWriter.endObject();
        }
        if (this.level != null) {
            objectWriter.name("level").value(iLogger, this.level);
        }
        if (this.transaction != null) {
            objectWriter.name("transaction").value(this.transaction);
        }
        if (this.fingerprint != null) {
            objectWriter.name(JsonKeys.FINGERPRINT).value(iLogger, this.fingerprint);
        }
        if (this.modules != null) {
            objectWriter.name(JsonKeys.MODULES).value(iLogger, this.modules);
        }
        new SentryBaseEvent.Serializer().serialize(this, objectWriter, iLogger);
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
    public static final class Deserializer implements JsonDeserializer<SentryEvent> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0022. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryEvent deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            SentryEvent sentryEvent = new SentryEvent();
            SentryBaseEvent.Deserializer deserializer = new SentryBaseEvent.Deserializer();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -1375934236:
                        if (nextName.equals(JsonKeys.FINGERPRINT)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1337936983:
                        if (nextName.equals(JsonKeys.THREADS)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1097337456:
                        if (nextName.equals(JsonKeys.LOGGER)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (nextName.equals("timestamp")) {
                            c = 3;
                            break;
                        }
                        break;
                    case 102865796:
                        if (nextName.equals("level")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 954925063:
                        if (nextName.equals("message")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 1227433863:
                        if (nextName.equals(JsonKeys.MODULES)) {
                            c = 6;
                            break;
                        }
                        break;
                    case 1481625679:
                        if (nextName.equals(JsonKeys.EXCEPTION)) {
                            c = 7;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (nextName.equals("transaction")) {
                            c = '\b';
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        List list = (List) jsonObjectReader.nextObjectOrNull();
                        if (list == null) {
                            break;
                        } else {
                            sentryEvent.fingerprint = list;
                            break;
                        }
                    case 1:
                        jsonObjectReader.beginObject();
                        jsonObjectReader.nextName();
                        sentryEvent.threads = new SentryValues(jsonObjectReader.nextListOrNull(iLogger, new SentryThread.Deserializer()));
                        jsonObjectReader.endObject();
                        break;
                    case 2:
                        sentryEvent.logger = jsonObjectReader.nextStringOrNull();
                        break;
                    case 3:
                        Date nextDateOrNull = jsonObjectReader.nextDateOrNull(iLogger);
                        if (nextDateOrNull == null) {
                            break;
                        } else {
                            sentryEvent.timestamp = nextDateOrNull;
                            break;
                        }
                    case 4:
                        sentryEvent.level = (SentryLevel) jsonObjectReader.nextOrNull(iLogger, new SentryLevel.Deserializer());
                        break;
                    case 5:
                        sentryEvent.message = (Message) jsonObjectReader.nextOrNull(iLogger, new Message.Deserializer());
                        break;
                    case 6:
                        sentryEvent.modules = CollectionUtils.newConcurrentHashMap((Map) jsonObjectReader.nextObjectOrNull());
                        break;
                    case 7:
                        jsonObjectReader.beginObject();
                        jsonObjectReader.nextName();
                        sentryEvent.exception = new SentryValues(jsonObjectReader.nextListOrNull(iLogger, new SentryException.Deserializer()));
                        jsonObjectReader.endObject();
                        break;
                    case '\b':
                        sentryEvent.transaction = jsonObjectReader.nextStringOrNull();
                        break;
                    default:
                        if (!deserializer.deserializeValue(sentryEvent, nextName, jsonObjectReader, iLogger)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                            break;
                        } else {
                            break;
                        }
                }
            }
            sentryEvent.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return sentryEvent;
        }
    }
}
