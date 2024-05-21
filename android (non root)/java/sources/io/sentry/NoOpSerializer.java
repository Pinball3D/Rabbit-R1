package io.sentry;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.util.Map;

/* loaded from: classes3.dex */
final class NoOpSerializer implements ISerializer {
    private static final NoOpSerializer instance = new NoOpSerializer();

    public static NoOpSerializer getInstance() {
        return instance;
    }

    @Override // io.sentry.ISerializer
    public <T> T deserialize(Reader reader, Class<T> cls) {
        return null;
    }

    @Override // io.sentry.ISerializer
    public <T, R> T deserializeCollection(Reader reader, Class<T> cls, JsonDeserializer<R> jsonDeserializer) {
        return null;
    }

    @Override // io.sentry.ISerializer
    public SentryEnvelope deserializeEnvelope(InputStream inputStream) {
        return null;
    }

    @Override // io.sentry.ISerializer
    public String serialize(Map<String, Object> map) throws Exception {
        return "";
    }

    @Override // io.sentry.ISerializer
    public void serialize(SentryEnvelope sentryEnvelope, OutputStream outputStream) throws Exception {
    }

    @Override // io.sentry.ISerializer
    public <T> void serialize(T t, Writer writer) throws IOException {
    }

    private NoOpSerializer() {
    }
}
