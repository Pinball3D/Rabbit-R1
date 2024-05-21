package io.sentry;

import io.sentry.protocol.SentryId;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class UserFeedback implements JsonUnknown, JsonSerializable {
    private String comments;
    private String email;
    private final SentryId eventId;
    private String name;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String COMMENTS = "comments";
        public static final String EMAIL = "email";
        public static final String EVENT_ID = "event_id";
        public static final String NAME = "name";
    }

    public String getComments() {
        return this.comments;
    }

    public String getEmail() {
        return this.email;
    }

    public SentryId getEventId() {
        return this.eventId;
    }

    public String getName() {
        return this.name;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setComments(String str) {
        this.comments = str;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public UserFeedback(SentryId sentryId) {
        this(sentryId, null, null, null);
    }

    public UserFeedback(SentryId sentryId, String str, String str2, String str3) {
        this.eventId = sentryId;
        this.name = str;
        this.email = str2;
        this.comments = str3;
    }

    public String toString() {
        return "UserFeedback{eventId=" + this.eventId + ", name='" + this.name + "', email='" + this.email + "', comments='" + this.comments + "'}";
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("event_id");
        this.eventId.serialize(objectWriter, iLogger);
        if (this.name != null) {
            objectWriter.name("name").value(this.name);
        }
        if (this.email != null) {
            objectWriter.name("email").value(this.email);
        }
        if (this.comments != null) {
            objectWriter.name(JsonKeys.COMMENTS).value(this.comments);
        }
        Map<String, Object> map = this.unknown;
        if (map != null) {
            for (String str : map.keySet()) {
                objectWriter.name(str).value(iLogger, this.unknown.get(str));
            }
        }
        objectWriter.endObject();
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<UserFeedback> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0059 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0063 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0068 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x006d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x004e A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.UserFeedback deserialize(io.sentry.JsonObjectReader r8, io.sentry.ILogger r9) throws java.lang.Exception {
            /*
                r7 = this;
                r8.beginObject()
                r7 = 0
                r0 = r7
                r1 = r0
                r2 = r1
                r3 = r2
            L8:
                io.sentry.vendor.gson.stream.JsonToken r4 = r8.peek()
                io.sentry.vendor.gson.stream.JsonToken r5 = io.sentry.vendor.gson.stream.JsonToken.NAME
                if (r4 != r5) goto L72
                java.lang.String r4 = r8.nextName()
                r4.hashCode()
                int r5 = r4.hashCode()
                r6 = -1
                switch(r5) {
                    case -602415628: goto L41;
                    case 3373707: goto L36;
                    case 96619420: goto L2b;
                    case 278118624: goto L20;
                    default: goto L1f;
                }
            L1f:
                goto L4b
            L20:
                java.lang.String r5 = "event_id"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L29
                goto L4b
            L29:
                r6 = 3
                goto L4b
            L2b:
                java.lang.String r5 = "email"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L34
                goto L4b
            L34:
                r6 = 2
                goto L4b
            L36:
                java.lang.String r5 = "name"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L3f
                goto L4b
            L3f:
                r6 = 1
                goto L4b
            L41:
                java.lang.String r5 = "comments"
                boolean r5 = r4.equals(r5)
                if (r5 != 0) goto L4a
                goto L4b
            L4a:
                r6 = 0
            L4b:
                switch(r6) {
                    case 0: goto L6d;
                    case 1: goto L68;
                    case 2: goto L63;
                    case 3: goto L59;
                    default: goto L4e;
                }
            L4e:
                if (r3 != 0) goto L55
                java.util.HashMap r3 = new java.util.HashMap
                r3.<init>()
            L55:
                r8.nextUnknown(r9, r3, r4)
                goto L8
            L59:
                io.sentry.protocol.SentryId$Deserializer r7 = new io.sentry.protocol.SentryId$Deserializer
                r7.<init>()
                io.sentry.protocol.SentryId r7 = r7.deserialize(r8, r9)
                goto L8
            L63:
                java.lang.String r1 = r8.nextStringOrNull()
                goto L8
            L68:
                java.lang.String r0 = r8.nextStringOrNull()
                goto L8
            L6d:
                java.lang.String r2 = r8.nextStringOrNull()
                goto L8
            L72:
                r8.endObject()
                if (r7 == 0) goto L80
                io.sentry.UserFeedback r8 = new io.sentry.UserFeedback
                r8.<init>(r7, r0, r1, r2)
                r8.setUnknown(r3)
                return r8
            L80:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "Missing required field \"event_id\""
                r7.<init>(r8)
                io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                r9.log(r0, r8, r7)
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.UserFeedback.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.UserFeedback");
        }
    }
}
