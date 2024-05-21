package io.sentry;

import io.sentry.vendor.gson.stream.JsonToken;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public final class SentryAppStartProfilingOptions implements JsonUnknown, JsonSerializable {
    boolean isProfilingEnabled;
    Double profileSampleRate;
    boolean profileSampled;
    String profilingTracesDirPath;
    int profilingTracesHz;
    Double traceSampleRate;
    boolean traceSampled;
    private Map<String, Object> unknown;

    /* loaded from: classes3.dex */
    public static final class JsonKeys {
        public static final String IS_PROFILING_ENABLED = "is_profiling_enabled";
        public static final String PROFILE_SAMPLED = "profile_sampled";
        public static final String PROFILE_SAMPLE_RATE = "profile_sample_rate";
        public static final String PROFILING_TRACES_DIR_PATH = "profiling_traces_dir_path";
        public static final String PROFILING_TRACES_HZ = "profiling_traces_hz";
        public static final String TRACE_SAMPLED = "trace_sampled";
        public static final String TRACE_SAMPLE_RATE = "trace_sample_rate";
    }

    public Double getProfileSampleRate() {
        return this.profileSampleRate;
    }

    public String getProfilingTracesDirPath() {
        return this.profilingTracesDirPath;
    }

    public int getProfilingTracesHz() {
        return this.profilingTracesHz;
    }

    public Double getTraceSampleRate() {
        return this.traceSampleRate;
    }

    @Override // io.sentry.JsonUnknown
    public Map<String, Object> getUnknown() {
        return this.unknown;
    }

    public boolean isProfileSampled() {
        return this.profileSampled;
    }

    public boolean isProfilingEnabled() {
        return this.isProfilingEnabled;
    }

    public boolean isTraceSampled() {
        return this.traceSampled;
    }

    public void setProfileSampleRate(Double d) {
        this.profileSampleRate = d;
    }

    public void setProfileSampled(boolean z) {
        this.profileSampled = z;
    }

    public void setProfilingEnabled(boolean z) {
        this.isProfilingEnabled = z;
    }

    public void setProfilingTracesDirPath(String str) {
        this.profilingTracesDirPath = str;
    }

    public void setProfilingTracesHz(int i) {
        this.profilingTracesHz = i;
    }

    public void setTraceSampleRate(Double d) {
        this.traceSampleRate = d;
    }

    public void setTraceSampled(boolean z) {
        this.traceSampled = z;
    }

    @Override // io.sentry.JsonUnknown
    public void setUnknown(Map<String, Object> map) {
        this.unknown = map;
    }

    public SentryAppStartProfilingOptions() {
        this.traceSampled = false;
        this.traceSampleRate = null;
        this.profileSampled = false;
        this.profileSampleRate = null;
        this.profilingTracesDirPath = null;
        this.isProfilingEnabled = false;
        this.profilingTracesHz = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SentryAppStartProfilingOptions(SentryOptions sentryOptions, TracesSamplingDecision tracesSamplingDecision) {
        this.traceSampled = tracesSamplingDecision.getSampled().booleanValue();
        this.traceSampleRate = tracesSamplingDecision.getSampleRate();
        this.profileSampled = tracesSamplingDecision.getProfileSampled().booleanValue();
        this.profileSampleRate = tracesSamplingDecision.getProfileSampleRate();
        this.profilingTracesDirPath = sentryOptions.getProfilingTracesDirPath();
        this.isProfilingEnabled = sentryOptions.isProfilingEnabled();
        this.profilingTracesHz = sentryOptions.getProfilingTracesHz();
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.beginObject();
        objectWriter.name(JsonKeys.PROFILE_SAMPLED).value(iLogger, Boolean.valueOf(this.profileSampled));
        objectWriter.name(JsonKeys.PROFILE_SAMPLE_RATE).value(iLogger, this.profileSampleRate);
        objectWriter.name(JsonKeys.TRACE_SAMPLED).value(iLogger, Boolean.valueOf(this.traceSampled));
        objectWriter.name(JsonKeys.TRACE_SAMPLE_RATE).value(iLogger, this.traceSampleRate);
        objectWriter.name(JsonKeys.PROFILING_TRACES_DIR_PATH).value(iLogger, this.profilingTracesDirPath);
        objectWriter.name(JsonKeys.IS_PROFILING_ENABLED).value(iLogger, Boolean.valueOf(this.isProfilingEnabled));
        objectWriter.name(JsonKeys.PROFILING_TRACES_HZ).value(iLogger, Integer.valueOf(this.profilingTracesHz));
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
    public static final class Deserializer implements JsonDeserializer<SentryAppStartProfilingOptions> {
        /* JADX WARN: Can't rename method to resolve collision */
        /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001d. Please report as an issue. */
        @Override // io.sentry.JsonDeserializer
        public SentryAppStartProfilingOptions deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            jsonObjectReader.beginObject();
            SentryAppStartProfilingOptions sentryAppStartProfilingOptions = new SentryAppStartProfilingOptions();
            ConcurrentHashMap concurrentHashMap = null;
            while (jsonObjectReader.peek() == JsonToken.NAME) {
                String nextName = jsonObjectReader.nextName();
                nextName.hashCode();
                char c = 65535;
                switch (nextName.hashCode()) {
                    case -566246656:
                        if (nextName.equals(JsonKeys.TRACE_SAMPLED)) {
                            c = 0;
                            break;
                        }
                        break;
                    case -450071601:
                        if (nextName.equals(JsonKeys.PROFILING_TRACES_DIR_PATH)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -116896685:
                        if (nextName.equals(JsonKeys.IS_PROFILING_ENABLED)) {
                            c = 2;
                            break;
                        }
                        break;
                    case -69617820:
                        if (nextName.equals(JsonKeys.PROFILE_SAMPLED)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1583866442:
                        if (nextName.equals(JsonKeys.PROFILING_TRACES_HZ)) {
                            c = 4;
                            break;
                        }
                        break;
                    case 1653938779:
                        if (nextName.equals(JsonKeys.TRACE_SAMPLE_RATE)) {
                            c = 5;
                            break;
                        }
                        break;
                    case 2140552383:
                        if (nextName.equals(JsonKeys.PROFILE_SAMPLE_RATE)) {
                            c = 6;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        Boolean nextBooleanOrNull = jsonObjectReader.nextBooleanOrNull();
                        if (nextBooleanOrNull == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.traceSampled = nextBooleanOrNull.booleanValue();
                            break;
                        }
                    case 1:
                        String nextStringOrNull = jsonObjectReader.nextStringOrNull();
                        if (nextStringOrNull == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.profilingTracesDirPath = nextStringOrNull;
                            break;
                        }
                    case 2:
                        Boolean nextBooleanOrNull2 = jsonObjectReader.nextBooleanOrNull();
                        if (nextBooleanOrNull2 == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.isProfilingEnabled = nextBooleanOrNull2.booleanValue();
                            break;
                        }
                    case 3:
                        Boolean nextBooleanOrNull3 = jsonObjectReader.nextBooleanOrNull();
                        if (nextBooleanOrNull3 == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.profileSampled = nextBooleanOrNull3.booleanValue();
                            break;
                        }
                    case 4:
                        Integer nextIntegerOrNull = jsonObjectReader.nextIntegerOrNull();
                        if (nextIntegerOrNull == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.profilingTracesHz = nextIntegerOrNull.intValue();
                            break;
                        }
                    case 5:
                        Double nextDoubleOrNull = jsonObjectReader.nextDoubleOrNull();
                        if (nextDoubleOrNull == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.traceSampleRate = nextDoubleOrNull;
                            break;
                        }
                    case 6:
                        Double nextDoubleOrNull2 = jsonObjectReader.nextDoubleOrNull();
                        if (nextDoubleOrNull2 == null) {
                            break;
                        } else {
                            sentryAppStartProfilingOptions.profileSampleRate = nextDoubleOrNull2;
                            break;
                        }
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        jsonObjectReader.nextUnknown(iLogger, concurrentHashMap, nextName);
                        break;
                }
            }
            sentryAppStartProfilingOptions.setUnknown(concurrentHashMap);
            jsonObjectReader.endObject();
            return sentryAppStartProfilingOptions;
        }
    }
}
