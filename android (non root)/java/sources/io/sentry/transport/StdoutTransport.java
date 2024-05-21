package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.ISerializer;
import io.sentry.SentryEnvelope;
import io.sentry.util.Objects;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class StdoutTransport implements ITransport {
    private final ISerializer serializer;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // io.sentry.transport.ITransport
    public void close(boolean z) {
    }

    @Override // io.sentry.transport.ITransport
    public RateLimiter getRateLimiter() {
        return null;
    }

    public StdoutTransport(ISerializer iSerializer) {
        this.serializer = (ISerializer) Objects.requireNonNull(iSerializer, "Serializer is required");
    }

    @Override // io.sentry.transport.ITransport
    public void send(SentryEnvelope sentryEnvelope, Hint hint) throws IOException {
        Objects.requireNonNull(sentryEnvelope, "SentryEnvelope is required");
        try {
            this.serializer.serialize(sentryEnvelope, System.out);
        } catch (Throwable unused) {
        }
    }

    @Override // io.sentry.transport.ITransport
    public void flush(long j) {
        System.out.println("Flushing");
    }
}
