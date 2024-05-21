package io.sentry;

import io.sentry.protocol.SentryId;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class CheckIn implements JsonUnknown, JsonSerializable {
    private final SentryId checkInId;
    private final MonitorContexts contexts;
    private Double duration;
    private String environment;
    private MonitorConfig monitorConfig;
    private String monitorSlug;
    private String release;
    private String status;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String CHECK_IN_ID = "check_in_id";
        public static final String CONTEXTS = "contexts";
        public static final String DURATION = "duration";
        public static final String ENVIRONMENT = "environment";
        public static final String MONITOR_CONFIG = "monitor_config";
        public static final String MONITOR_SLUG = "monitor_slug";
        public static final String RELEASE = "release";
        public static final String STATUS = "status";
    }

    public SentryId getCheckInId() {
        return this.checkInId;
    }

    public MonitorContexts getContexts() {
        return this.contexts;
    }

    public Double getDuration() {
        return this.duration;
    }

    public String getEnvironment() {
        return this.environment;
    }

    public MonitorConfig getMonitorConfig() {
        return this.monitorConfig;
    }

    public String getMonitorSlug() {
        return this.monitorSlug;
    }

    public String getRelease() {
        return this.release;
    }

    public String getStatus() {
        return this.status;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setDuration(Double d) {
        this.duration = d;
    }

    public void setEnvironment(String str) {
        this.environment = str;
    }

    public void setMonitorConfig(MonitorConfig monitorConfig) {
        this.monitorConfig = monitorConfig;
    }

    public void setMonitorSlug(String str) {
        this.monitorSlug = str;
    }

    public void setRelease(String str) {
        this.release = str;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public CheckIn(String str, CheckInStatus checkInStatus) {
        this((SentryId) null, str, checkInStatus.apiName());
    }

    public CheckIn(SentryId sentryId, String str, CheckInStatus checkInStatus) {
        this(sentryId, str, checkInStatus.apiName());
    }

    public CheckIn(SentryId sentryId, String str, String str2) {
        this.contexts = new MonitorContexts();
        this.checkInId = sentryId == null ? new SentryId() : sentryId;
        this.monitorSlug = str;
        this.status = str2;
    }

    public void setStatus(CheckInStatus checkInStatus) {
        this.status = checkInStatus.apiName();
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name(JsonKeys.CHECK_IN_ID);
        this.checkInId.serialize(objectWriter, iLogger);
        objectWriter.name(JsonKeys.MONITOR_SLUG).value(this.monitorSlug);
        objectWriter.name("status").value(this.status);
        if (this.duration != null) {
            objectWriter.name("duration").value(this.duration);
        }
        if (this.release != null) {
            objectWriter.name("release").value(this.release);
        }
        if (this.environment != null) {
            objectWriter.name("environment").value(this.environment);
        }
        if (this.monitorConfig != null) {
            objectWriter.name(JsonKeys.MONITOR_CONFIG);
            this.monitorConfig.serialize(objectWriter, iLogger);
        }
        if (this.contexts != null) {
            objectWriter.name("contexts");
            this.contexts.serialize(objectWriter, iLogger);
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
    public static final class Deserializer implements JsonDeserializer<CheckIn> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0090 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x009b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00a1 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00a7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b2 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00b8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00be A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:56:0x007f A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.CheckIn deserialize(io.sentry.JsonObjectReader r12, io.sentry.ILogger r13) throws java.lang.Exception {
            /*
                Method dump skipped, instructions count: 332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.CheckIn.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.CheckIn");
        }
    }
}
