package io.sentry;

import io.sentry.vendor.gson.stream.JsonReader;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public final class JsonObjectReader extends JsonReader {
    public JsonObjectReader(Reader reader) {
        super(reader);
    }

    public String nextStringOrNull() throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return nextString();
    }

    public Double nextDoubleOrNull() throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return Double.valueOf(nextDouble());
    }

    public Float nextFloatOrNull() throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return nextFloat();
    }

    public Float nextFloat() throws IOException {
        return Float.valueOf((float) nextDouble());
    }

    public Long nextLongOrNull() throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return Long.valueOf(nextLong());
    }

    public Integer nextIntegerOrNull() throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return Integer.valueOf(nextInt());
    }

    public Boolean nextBooleanOrNull() throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return Boolean.valueOf(nextBoolean());
    }

    public void nextUnknown(ILogger iLogger, Map<String, Object> map, String str) {
        try {
            map.put(str, nextObjectOrNull());
        } catch (Exception e) {
            iLogger.log(SentryLevel.ERROR, e, "Error deserializing unknown key: %s", str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        r0.add(r6.deserialize(r4, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
    
        r5.log(io.sentry.SentryLevel.WARNING, "Failed to deserialize object in list.", r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
    
        if (hasNext() != false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.util.List<T> nextListOrNull(io.sentry.ILogger r5, io.sentry.JsonDeserializer<T> r6) throws java.io.IOException {
        /*
            r4 = this;
            io.sentry.vendor.gson.stream.JsonToken r0 = r4.peek()
            io.sentry.vendor.gson.stream.JsonToken r1 = io.sentry.vendor.gson.stream.JsonToken.NULL
            if (r0 != r1) goto Ld
            r4.nextNull()
            r4 = 0
            return r4
        Ld:
            r4.beginArray()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L33
        L1b:
            java.lang.Object r1 = r6.deserialize(r4, r5)     // Catch: java.lang.Exception -> L23
            r0.add(r1)     // Catch: java.lang.Exception -> L23
            goto L2b
        L23:
            r1 = move-exception
            io.sentry.SentryLevel r2 = io.sentry.SentryLevel.WARNING
            java.lang.String r3 = "Failed to deserialize object in list."
            r5.log(r2, r3, r1)
        L2b:
            io.sentry.vendor.gson.stream.JsonToken r1 = r4.peek()
            io.sentry.vendor.gson.stream.JsonToken r2 = io.sentry.vendor.gson.stream.JsonToken.BEGIN_OBJECT
            if (r1 == r2) goto L1b
        L33:
            r4.endArray()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.JsonObjectReader.nextListOrNull(io.sentry.ILogger, io.sentry.JsonDeserializer):java.util.List");
    }

    public <T> Map<String, T> nextMapOrNull(ILogger iLogger, JsonDeserializer<T> jsonDeserializer) throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        beginObject();
        HashMap hashMap = new HashMap();
        if (hasNext()) {
            while (true) {
                try {
                    hashMap.put(nextName(), jsonDeserializer.deserialize(this, iLogger));
                } catch (Exception e) {
                    iLogger.log(SentryLevel.WARNING, "Failed to deserialize object in map.", e);
                }
                if (peek() != JsonToken.BEGIN_OBJECT && peek() != JsonToken.NAME) {
                    break;
                }
            }
        }
        endObject();
        return hashMap;
    }

    public <T> Map<String, List<T>> nextMapOfListOrNull(ILogger iLogger, JsonDeserializer<T> jsonDeserializer) throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        HashMap hashMap = new HashMap();
        beginObject();
        if (hasNext()) {
            while (true) {
                String nextName = nextName();
                List<T> nextListOrNull = nextListOrNull(iLogger, jsonDeserializer);
                if (nextListOrNull != null) {
                    hashMap.put(nextName, nextListOrNull);
                }
                if (peek() != JsonToken.BEGIN_OBJECT && peek() != JsonToken.NAME) {
                    break;
                }
            }
        }
        endObject();
        return hashMap;
    }

    public <T> T nextOrNull(ILogger iLogger, JsonDeserializer<T> jsonDeserializer) throws Exception {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return jsonDeserializer.deserialize(this, iLogger);
    }

    public Date nextDateOrNull(ILogger iLogger) throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        return dateOrNull(nextString(), iLogger);
    }

    public static Date dateOrNull(String str, ILogger iLogger) {
        if (str == null) {
            return null;
        }
        try {
            try {
                return DateUtils.getDateTime(str);
            } catch (Exception e) {
                iLogger.log(SentryLevel.ERROR, "Error when deserializing millis timestamp format.", e);
                return null;
            }
        } catch (Exception unused) {
            return DateUtils.getDateTimeWithMillisPrecision(str);
        }
    }

    public TimeZone nextTimeZoneOrNull(ILogger iLogger) throws IOException {
        if (peek() == JsonToken.NULL) {
            nextNull();
            return null;
        }
        try {
            return TimeZone.getTimeZone(nextString());
        } catch (Exception e) {
            iLogger.log(SentryLevel.ERROR, "Error when deserializing TimeZone", e);
            return null;
        }
    }

    public Object nextObjectOrNull() throws IOException {
        return new JsonObjectDeserializer().deserialize(this);
    }
}
