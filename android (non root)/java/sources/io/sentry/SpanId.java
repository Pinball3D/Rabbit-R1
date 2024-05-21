package io.sentry;

import io.sentry.util.Objects;
import io.sentry.util.StringUtils;
import java.io.IOException;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class SpanId implements JsonSerializable {
    public static final SpanId EMPTY_ID = new SpanId(new UUID(0, 0));
    private final String value;

    public String toString() {
        return this.value;
    }

    public SpanId(String str) {
        this.value = (String) Objects.requireNonNull(str, "value is required");
    }

    public SpanId() {
        this(UUID.randomUUID());
    }

    private SpanId(UUID uuid) {
        this(StringUtils.normalizeUUID(uuid.toString()).replace("-", "").substring(0, 16));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.value.equals(((SpanId) obj).value);
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.value(this.value);
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SpanId> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public SpanId deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            return new SpanId(jsonObjectReader.nextString());
        }
    }
}
