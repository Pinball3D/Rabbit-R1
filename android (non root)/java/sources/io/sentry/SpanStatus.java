package io.sentry;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes3.dex */
public enum SpanStatus implements JsonSerializable {
    OK(200, 299),
    CANCELLED(499),
    INTERNAL_ERROR(HttpStatusCodeRange.DEFAULT_MIN),
    UNKNOWN(HttpStatusCodeRange.DEFAULT_MIN),
    UNKNOWN_ERROR(HttpStatusCodeRange.DEFAULT_MIN),
    INVALID_ARGUMENT(400),
    DEADLINE_EXCEEDED(504),
    NOT_FOUND(404),
    ALREADY_EXISTS(409),
    PERMISSION_DENIED(403),
    RESOURCE_EXHAUSTED(429),
    FAILED_PRECONDITION(400),
    ABORTED(409),
    OUT_OF_RANGE(400),
    UNIMPLEMENTED(501),
    UNAVAILABLE(503),
    DATA_LOSS(HttpStatusCodeRange.DEFAULT_MIN),
    UNAUTHENTICATED(401);

    private final int maxHttpStatusCode;
    private final int minHttpStatusCode;

    private boolean matches(int i) {
        return i >= this.minHttpStatusCode && i <= this.maxHttpStatusCode;
    }

    SpanStatus(int i) {
        this.minHttpStatusCode = i;
        this.maxHttpStatusCode = i;
    }

    SpanStatus(int i, int i2) {
        this.minHttpStatusCode = i;
        this.maxHttpStatusCode = i2;
    }

    public static SpanStatus fromHttpStatusCode(int i) {
        for (SpanStatus spanStatus : values()) {
            if (spanStatus.matches(i)) {
                return spanStatus;
            }
        }
        return null;
    }

    public static SpanStatus fromHttpStatusCode(Integer num, SpanStatus spanStatus) {
        SpanStatus fromHttpStatusCode = num != null ? fromHttpStatusCode(num.intValue()) : spanStatus;
        return fromHttpStatusCode != null ? fromHttpStatusCode : spanStatus;
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.value(name().toLowerCase(Locale.ROOT));
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SpanStatus> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public SpanStatus deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            return SpanStatus.valueOf(jsonObjectReader.nextString().toUpperCase(Locale.ROOT));
        }
    }
}
