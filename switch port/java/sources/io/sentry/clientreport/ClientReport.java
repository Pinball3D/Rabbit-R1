package io.sentry.clientreport;

import io.sentry.DateUtils;
import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import io.sentry.clientreport.DiscardedEvent;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ClientReport implements JsonUnknown, JsonSerializable {
    private final List<DiscardedEvent> discardedEvents;
    private final Date timestamp;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String DISCARDED_EVENTS = "discarded_events";
        public static final String TIMESTAMP = "timestamp";
    }

    public List<DiscardedEvent> getDiscardedEvents() {
        return this.discardedEvents;
    }

    public Date getTimestamp() {
        return this.timestamp;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public ClientReport(Date date, List<DiscardedEvent> list) {
        this.timestamp = date;
        this.discardedEvents = list;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("timestamp").value(DateUtils.getTimestamp(this.timestamp));
        objectWriter.name(JsonKeys.DISCARDED_EVENTS).value(iLogger, this.discardedEvents);
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<ClientReport> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public ClientReport deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            ArrayList arrayList = new ArrayList();
            jsonObjectReader.beginObject();
            Date date = null;
            HashMap hashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                if (nextName.equals(JsonKeys.DISCARDED_EVENTS)) {
                    arrayList.addAll(jsonObjectReader.nextListOrNull(iLogger, new DiscardedEvent.Deserializer()));
                } else if (nextName.equals("timestamp")) {
                    date = jsonObjectReader.nextDateOrNull(iLogger);
                } else {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    jsonObjectReader.nextUnknown(iLogger, hashMap, nextName);
                }
            }
            jsonObjectReader.endObject();
            if (date == null) {
                throw missingRequiredFieldException("timestamp", iLogger);
            }
            if (arrayList.isEmpty()) {
                throw missingRequiredFieldException(JsonKeys.DISCARDED_EVENTS, iLogger);
            }
            ClientReport clientReport = new ClientReport(date, arrayList);
            clientReport.setUnknown(hashMap);
            return clientReport;
        }

        private Exception missingRequiredFieldException(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.log(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }
    }
}
