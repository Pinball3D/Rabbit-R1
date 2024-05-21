package io.sentry;

/* loaded from: classes3.dex */
public final class TracesSamplingDecision {
    private final Double profileSampleRate;
    private final Boolean profileSampled;
    private final Double sampleRate;
    private final Boolean sampled;

    public Double getProfileSampleRate() {
        return this.profileSampleRate;
    }

    public Boolean getProfileSampled() {
        return this.profileSampled;
    }

    public Double getSampleRate() {
        return this.sampleRate;
    }

    public Boolean getSampled() {
        return this.sampled;
    }

    public TracesSamplingDecision(Boolean bool) {
        this(bool, null);
    }

    public TracesSamplingDecision(Boolean bool, Double d) {
        this(bool, d, false, null);
    }

    public TracesSamplingDecision(Boolean bool, Double d, Boolean bool2, Double d2) {
        this.sampled = bool;
        this.sampleRate = d;
        this.profileSampled = Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
        this.profileSampleRate = d2;
    }
}
