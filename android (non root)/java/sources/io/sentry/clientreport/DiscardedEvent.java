package io.sentry.clientreport;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonSerializable;
import io.sentry.JsonUnknown;
import io.sentry.ObjectWriter;
import io.sentry.SentryLevel;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class DiscardedEvent implements JsonUnknown, JsonSerializable {
    private final String category;
    private final Long quantity;
    private final String reason;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String CATEGORY = "category";
        public static final String QUANTITY = "quantity";
        public static final String REASON = "reason";
    }

    public String getCategory() {
        return this.category;
    }

    public Long getQuantity() {
        return this.quantity;
    }

    public String getReason() {
        return this.reason;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public DiscardedEvent(String str, String str2, Long l) {
        this.reason = str;
        this.category = str2;
        this.quantity = l;
    }

    public String toString() {
        return "DiscardedEvent{reason='" + this.reason + "', category='" + this.category + "', quantity=" + this.quantity + '}';
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name(JsonKeys.REASON).value(this.reason);
        objectWriter.name("category").value(this.category);
        objectWriter.name(JsonKeys.QUANTITY).value(this.quantity);
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<DiscardedEvent> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:16:0x004d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0052 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0057 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0042 A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.clientreport.DiscardedEvent deserialize(io.sentry.JsonObjectReader r11, io.sentry.ILogger r12) throws java.lang.Exception {
            /*
                r10 = this;
                r11.beginObject()
                r0 = 0
                r1 = r0
                r2 = r1
                r3 = r2
            L7:
                io.sentry.vendor.gson.stream.JsonToken r4 = r11.peek()
                io.sentry.vendor.gson.stream.JsonToken r5 = io.sentry.vendor.gson.stream.JsonToken.NAME
                java.lang.String r6 = "category"
                java.lang.String r7 = "reason"
                java.lang.String r8 = "quantity"
                if (r4 != r5) goto L5c
                java.lang.String r4 = r11.nextName()
                r4.hashCode()
                int r5 = r4.hashCode()
                r9 = -1
                switch(r5) {
                    case -1285004149: goto L37;
                    case -934964668: goto L2e;
                    case 50511102: goto L25;
                    default: goto L24;
                }
            L24:
                goto L3f
            L25:
                boolean r5 = r4.equals(r6)
                if (r5 != 0) goto L2c
                goto L3f
            L2c:
                r9 = 2
                goto L3f
            L2e:
                boolean r5 = r4.equals(r7)
                if (r5 != 0) goto L35
                goto L3f
            L35:
                r9 = 1
                goto L3f
            L37:
                boolean r5 = r4.equals(r8)
                if (r5 != 0) goto L3e
                goto L3f
            L3e:
                r9 = 0
            L3f:
                switch(r9) {
                    case 0: goto L57;
                    case 1: goto L52;
                    case 2: goto L4d;
                    default: goto L42;
                }
            L42:
                if (r3 != 0) goto L49
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
            L49:
                r11.nextUnknown(r12, r3, r4)
                goto L7
            L4d:
                java.lang.String r1 = r11.nextStringOrNull()
                goto L7
            L52:
                java.lang.String r0 = r11.nextStringOrNull()
                goto L7
            L57:
                java.lang.Long r2 = r11.nextLongOrNull()
                goto L7
            L5c:
                r11.endObject()
                if (r0 == 0) goto L78
                if (r1 == 0) goto L73
                if (r2 == 0) goto L6e
                io.sentry.clientreport.DiscardedEvent r10 = new io.sentry.clientreport.DiscardedEvent
                r10.<init>(r0, r1, r2)
                r10.setUnknown(r3)
                return r10
            L6e:
                java.lang.Exception r10 = r10.missingRequiredFieldException(r8, r12)
                throw r10
            L73:
                java.lang.Exception r10 = r10.missingRequiredFieldException(r6, r12)
                throw r10
            L78:
                java.lang.Exception r10 = r10.missingRequiredFieldException(r7, r12)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.clientreport.DiscardedEvent.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.clientreport.DiscardedEvent");
        }

        private Exception missingRequiredFieldException(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.log(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }
    }
}
