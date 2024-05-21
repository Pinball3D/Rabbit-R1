package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectReader;
import io.sentry.JsonSerializable;
import io.sentry.ObjectWriter;
import io.sentry.util.StringUtils;
import java.io.IOException;
import java.util.UUID;

/* loaded from: classes3.dex */
public final class SentryId implements JsonSerializable {
    public static final SentryId EMPTY_ID = new SentryId(new UUID(0, 0));
    private final UUID uuid;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryId() {
        this((UUID) null);
    }

    public SentryId(UUID uuid) {
        this.uuid = uuid == null ? UUID.randomUUID() : uuid;
    }

    public SentryId(String str) {
        this.uuid = fromStringSentryId(StringUtils.normalizeUUID(str));
    }

    public String toString() {
        return StringUtils.normalizeUUID(this.uuid.toString()).replace("-", "");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.uuid.compareTo(((SentryId) obj).uuid) == 0;
    }

    public int hashCode() {
        return this.uuid.hashCode();
    }

    private UUID fromStringSentryId(String str) {
        if (str.length() == 32) {
            str = new StringBuilder(str).insert(8, "-").insert(13, "-").insert(18, "-").insert(23, "-").toString();
        }
        if (str.length() != 36) {
            throw new IllegalArgumentException("String representation of SentryId has either 32 (UUID no dashes) or 36 characters long (completed UUID). Received: " + str);
        }
        return UUID.fromString(str);
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.value(toString());
    }

    /* loaded from: classes3.dex */
    public static final class Deserializer implements JsonDeserializer<SentryId> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public SentryId deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            return new SentryId(jsonObjectReader.nextString());
        }
    }
}
