package io.sentry;

import java.io.IOException;
import java.util.Locale;

/* loaded from: classes3.dex */
public enum SentryLevel implements JsonSerializable {
    DEBUG,
    INFO,
    WARNING,
    ERROR,
    FATAL;

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) throws IOException {
        objectWriter.value(name().toLowerCase(Locale.ROOT));
    }

    /* loaded from: classes3.dex */
    static final class Deserializer implements JsonDeserializer<SentryLevel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // io.sentry.JsonDeserializer
        public SentryLevel deserialize(JsonObjectReader jsonObjectReader, ILogger iLogger) throws Exception {
            return SentryLevel.valueOf(jsonObjectReader.nextString().toUpperCase(Locale.ROOT));
        }
    }
}
