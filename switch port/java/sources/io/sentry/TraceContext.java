package io.sentry;

import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class TraceContext implements JsonUnknown, JsonSerializable {
    private final String environment;
    private final String publicKey;
    private final String release;
    private final String sampleRate;
    private final String sampled;
    private final SentryId traceId;
    private final String transaction;
    private Map<String, Object> unknown;
    private final String userId;
    private final String userSegment;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String ENVIRONMENT = "environment";
        public static final String PUBLIC_KEY = "public_key";
        public static final String RELEASE = "release";
        public static final String SAMPLED = "sampled";
        public static final String SAMPLE_RATE = "sample_rate";
        public static final String TRACE_ID = "trace_id";
        public static final String TRANSACTION = "transaction";
        public static final String USER = "user";
        public static final String USER_ID = "user_id";
        public static final String USER_SEGMENT = "user_segment";
    }

    public String getEnvironment() {
        return this.environment;
    }

    public String getPublicKey() {
        return this.publicKey;
    }

    public String getRelease() {
        return this.release;
    }

    public String getSampleRate() {
        return this.sampleRate;
    }

    public String getSampled() {
        return this.sampled;
    }

    public SentryId getTraceId() {
        return this.traceId;
    }

    public String getTransaction() {
        return this.transaction;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public String getUserId() {
        return this.userId;
    }

    public String getUserSegment() {
        return this.userSegment;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TraceContext(SentryId sentryId, String str) {
        this(sentryId, str, null, null, null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TraceContext(SentryId sentryId, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.traceId = sentryId;
        this.publicKey = str;
        this.release = str2;
        this.environment = str3;
        this.userId = str4;
        this.userSegment = str5;
        this.transaction = str6;
        this.sampleRate = str7;
        this.sampled = str8;
    }

    private static String getUserId(SentryOptions sentryOptions, User user) {
        if (!sentryOptions.isSendDefaultPii() || user == null) {
            return null;
        }
        return user.getId();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Deprecated
    /* loaded from: classes3.dex */
    public static final class TraceContextUser implements JsonUnknown {
        private String id;
        private String segment;
        private Map<String, Object> unknown;

        /* loaded from: classes3.dex */
        public static final class JsonKeys {
            public static final String ID = "id";
            public static final String SEGMENT = "segment";
        }

        public String getId() {
            return this.id;
        }

        public String getSegment() {
            return this.segment;
        }

        @Override // io.sentry.JsonUnknown
        public Map<String, Object> getUnknown() {
            return this.unknown;
        }

        @Override // io.sentry.JsonUnknown
        public void setUnknown(Map<String, Object> map) {
            this.unknown = map;
        }

        private TraceContextUser(String str, String str2) {
            this.id = str;
            this.segment = str2;
        }

        /* loaded from: classes3.dex */
        public static final class Deserializer implements JsonDeserializer<TraceContextUser> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.sentry.JsonDeserializer
            public TraceContextUser deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
                jsonObjectReader.beginObject();
                String str = null;
                String str2 = null;
                ConcurrentHashMap concurrentHashMap = null;
                while (jsonObjectReader.peek() == JsonToken.NAME) {
                    String nextName = jsonObjectReader.nextName();
                    nextName.hashCode();
                    if (nextName.equals("id")) {
                        str = jsonObjectReader.nextStringOrNull();
                    } else if (nextName.equals("segment")) {
                        str2 = jsonObjectReader.nextStringOrNull();
                    } else {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                    }
                }
                TraceContextUser traceContextUser = new TraceContextUser(str, str2);
                traceContextUser.setUnknown(concurrentHashMap);
                jsonObjectReader.endObject();
                return traceContextUser;
            }
        }
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name("trace_id").value(iLogger, this.traceId);
        objectWriter.name(JsonKeys.PUBLIC_KEY).value(this.publicKey);
        if (this.release != null) {
            objectWriter.name("release").value(this.release);
        }
        if (this.environment != null) {
            objectWriter.name("environment").value(this.environment);
        }
        if (this.userId != null) {
            objectWriter.name(JsonKeys.USER_ID).value(this.userId);
        }
        if (this.userSegment != null) {
            objectWriter.name(JsonKeys.USER_SEGMENT).value(this.userSegment);
        }
        if (this.transaction != null) {
            objectWriter.name("transaction").value(this.transaction);
        }
        if (this.sampleRate != null) {
            objectWriter.name(JsonKeys.SAMPLE_RATE).value(this.sampleRate);
        }
        if (this.sampled != null) {
            objectWriter.name(JsonKeys.SAMPLED).value(this.sampled);
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
    public static final class Deserializer implements JsonDeserializer<TraceContext> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00b9  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00bf  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00cb  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00de  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00e4  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00f7  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00fd  */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.TraceContext deserialize(io.sentry.JsonObjectReader r19, io.sentry.ILogger r20) throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 386
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.TraceContext.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.TraceContext");
        }

        private Exception missingRequiredFieldException(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.log(SentryLevel.ERROR, str2, illegalStateException);
            return illegalStateException;
        }
    }
}
