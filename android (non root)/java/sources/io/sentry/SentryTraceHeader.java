package io.sentry;

import io.sentry.exception.InvalidSentryTraceHeaderException;
import io.sentry.protocol.SentryId;

/* loaded from: classes3.dex */
public final class SentryTraceHeader {
    public static final String SENTRY_TRACE_HEADER = "sentry-trace";
    private final Boolean sampled;
    private final SpanId spanId;
    private final SentryId traceId;

    public String getName() {
        return SENTRY_TRACE_HEADER;
    }

    public SpanId getSpanId() {
        return this.spanId;
    }

    public SentryId getTraceId() {
        return this.traceId;
    }

    public Boolean isSampled() {
        return this.sampled;
    }

    public SentryTraceHeader(SentryId sentryId, SpanId spanId, Boolean bool) {
        this.traceId = sentryId;
        this.spanId = spanId;
        this.sampled = bool;
    }

    public SentryTraceHeader(String str) throws InvalidSentryTraceHeaderException {
        String[] split = str.split("-", -1);
        if (split.length < 2) {
            throw new InvalidSentryTraceHeaderException(str);
        }
        if (split.length == 3) {
            this.sampled = Boolean.valueOf("1".equals(split[2]));
        } else {
            this.sampled = null;
        }
        try {
            this.traceId = new SentryId(split[0]);
            this.spanId = new SpanId(split[1]);
        } catch (Throwable th) {
            throw new InvalidSentryTraceHeaderException(str, th);
        }
    }

    public String getValue() {
        Boolean bool = this.sampled;
        if (bool != null) {
            Object[] objArr = new Object[3];
            objArr[0] = this.traceId;
            objArr[1] = this.spanId;
            objArr[2] = bool.booleanValue() ? "1" : "0";
            return String.format("%s-%s-%s", objArr);
        }
        return String.format("%s-%s", this.traceId, this.spanId);
    }
}
