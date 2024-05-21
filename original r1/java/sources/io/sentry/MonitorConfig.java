package io.sentry;

import io.sentry.SentryOptions;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes3.dex */
public final class MonitorConfig implements JsonUnknown, JsonSerializable {
    private Long checkinMargin;
    private Long failureIssueThreshold;
    private Long maxRuntime;
    private Long recoveryThreshold;
    private MonitorSchedule schedule;
    private String timezone;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String CHECKIN_MARGIN = "checkin_margin";
        public static final String FAILURE_ISSUE_THRESHOLD = "failure_issue_threshold";
        public static final String MAX_RUNTIME = "max_runtime";
        public static final String RECOVERY_THRESHOLD = "recovery_threshold";
        public static final String SCHEDULE = "schedule";
        public static final String TIMEZONE = "timezone";
    }

    public Long getCheckinMargin() {
        return this.checkinMargin;
    }

    public Long getFailureIssueThreshold() {
        return this.failureIssueThreshold;
    }

    public Long getMaxRuntime() {
        return this.maxRuntime;
    }

    public Long getRecoveryThreshold() {
        return this.recoveryThreshold;
    }

    public MonitorSchedule getSchedule() {
        return this.schedule;
    }

    public String getTimezone() {
        return this.timezone;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public void setCheckinMargin(Long l) {
        this.checkinMargin = l;
    }

    public void setFailureIssueThreshold(Long l) {
        this.failureIssueThreshold = l;
    }

    public void setMaxRuntime(Long l) {
        this.maxRuntime = l;
    }

    public void setRecoveryThreshold(Long l) {
        this.recoveryThreshold = l;
    }

    public void setSchedule(MonitorSchedule monitorSchedule) {
        this.schedule = monitorSchedule;
    }

    public void setTimezone(String str) {
        this.timezone = str;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public MonitorConfig(MonitorSchedule monitorSchedule) {
        this.schedule = monitorSchedule;
        SentryOptions.Cron cron = HubAdapter.getInstance().getOptions().getCron();
        if (cron != null) {
            this.checkinMargin = cron.getDefaultCheckinMargin();
            this.maxRuntime = cron.getDefaultMaxRuntime();
            this.timezone = cron.getDefaultTimezone();
            this.failureIssueThreshold = cron.getDefaultFailureIssueThreshold();
            this.recoveryThreshold = cron.getDefaultRecoveryThreshold();
        }
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name(JsonKeys.SCHEDULE);
        this.schedule.serialize(objectWriter, iLogger);
        if (this.checkinMargin != null) {
            objectWriter.name(JsonKeys.CHECKIN_MARGIN).value(this.checkinMargin);
        }
        if (this.maxRuntime != null) {
            objectWriter.name(JsonKeys.MAX_RUNTIME).value(this.maxRuntime);
        }
        if (this.timezone != null) {
            objectWriter.name("timezone").value(this.timezone);
        }
        if (this.failureIssueThreshold != null) {
            objectWriter.name(JsonKeys.FAILURE_ISSUE_THRESHOLD).value(this.failureIssueThreshold);
        }
        if (this.recoveryThreshold != null) {
            objectWriter.name(JsonKeys.RECOVERY_THRESHOLD).value(this.recoveryThreshold);
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
    public static final class Deserializer implements JsonDeserializer<MonitorConfig> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Removed duplicated region for block: B:25:0x0071 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0076 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x007b A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0080 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x008a A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0090 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0066 A[SYNTHETIC] */
        @Override // io.sentry.JsonDeserializer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public io.sentry.MonitorConfig deserialize(io.sentry.JsonObjectReader r10, io.sentry.ILogger r11) throws java.lang.Exception {
            /*
                r9 = this;
                r10.beginObject()
                r9 = 0
                r0 = r9
                r1 = r0
                r2 = r1
                r3 = r2
                r4 = r3
                r5 = r4
            La:
                io.sentry.vendor.gson.stream.JsonToken r6 = r10.peek()
                io.sentry.vendor.gson.stream.JsonToken r7 = io.sentry.vendor.gson.stream.JsonToken.NAME
                if (r6 != r7) goto L96
                java.lang.String r6 = r10.nextName()
                r6.hashCode()
                int r7 = r6.hashCode()
                r8 = -1
                switch(r7) {
                    case -2076227591: goto L59;
                    case -905406976: goto L4e;
                    case -697920873: goto L43;
                    case -607475647: goto L38;
                    case 1581873149: goto L2d;
                    case 2138521552: goto L22;
                    default: goto L21;
                }
            L21:
                goto L63
            L22:
                java.lang.String r7 = "failure_issue_threshold"
                boolean r7 = r6.equals(r7)
                if (r7 != 0) goto L2b
                goto L63
            L2b:
                r8 = 5
                goto L63
            L2d:
                java.lang.String r7 = "max_runtime"
                boolean r7 = r6.equals(r7)
                if (r7 != 0) goto L36
                goto L63
            L36:
                r8 = 4
                goto L63
            L38:
                java.lang.String r7 = "recovery_threshold"
                boolean r7 = r6.equals(r7)
                if (r7 != 0) goto L41
                goto L63
            L41:
                r8 = 3
                goto L63
            L43:
                java.lang.String r7 = "schedule"
                boolean r7 = r6.equals(r7)
                if (r7 != 0) goto L4c
                goto L63
            L4c:
                r8 = 2
                goto L63
            L4e:
                java.lang.String r7 = "checkin_margin"
                boolean r7 = r6.equals(r7)
                if (r7 != 0) goto L57
                goto L63
            L57:
                r8 = 1
                goto L63
            L59:
                java.lang.String r7 = "timezone"
                boolean r7 = r6.equals(r7)
                if (r7 != 0) goto L62
                goto L63
            L62:
                r8 = 0
            L63:
                switch(r8) {
                    case 0: goto L90;
                    case 1: goto L8a;
                    case 2: goto L80;
                    case 3: goto L7b;
                    case 4: goto L76;
                    case 5: goto L71;
                    default: goto L66;
                }
            L66:
                if (r5 != 0) goto L6d
                java.util.HashMap r5 = new java.util.HashMap
                r5.<init>()
            L6d:
                r10.nextUnknown(r11, r5, r6)
                goto La
            L71:
                java.lang.Long r3 = r10.nextLongOrNull()
                goto La
            L76:
                java.lang.Long r1 = r10.nextLongOrNull()
                goto La
            L7b:
                java.lang.Long r4 = r10.nextLongOrNull()
                goto La
            L80:
                io.sentry.MonitorSchedule$Deserializer r9 = new io.sentry.MonitorSchedule$Deserializer
                r9.<init>()
                io.sentry.MonitorSchedule r9 = r9.deserialize(r10, r11)
                goto La
            L8a:
                java.lang.Long r0 = r10.nextLongOrNull()
                goto La
            L90:
                java.lang.String r2 = r10.nextStringOrNull()
                goto La
            L96:
                r10.endObject()
                if (r9 == 0) goto Lb3
                io.sentry.MonitorConfig r10 = new io.sentry.MonitorConfig
                r10.<init>(r9)
                r10.setCheckinMargin(r0)
                r10.setMaxRuntime(r1)
                r10.setTimezone(r2)
                r10.setFailureIssueThreshold(r3)
                r10.setRecoveryThreshold(r4)
                r10.setUnknown(r5)
                return r10
            Lb3:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r10 = "Missing required field \"schedule\""
                r9.<init>(r10)
                io.sentry.SentryLevel r0 = io.sentry.SentryLevel.ERROR
                r11.log(r0, r10, r9)
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: io.sentry.MonitorConfig.Deserializer.deserialize(io.sentry.JsonObjectReader, io.sentry.ILogger):io.sentry.MonitorConfig");
        }
    }
}
