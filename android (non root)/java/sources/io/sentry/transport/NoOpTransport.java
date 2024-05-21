package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class NoOpTransport implements ITransport {
    private static final NoOpTransport instance = new NoOpTransport();

    public static NoOpTransport getInstance() {
        return instance;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // io.sentry.transport.ITransport
    public void close(boolean z) throws IOException {
    }

    @Override // io.sentry.transport.ITransport
    public void flush(long j) {
    }

    @Override // io.sentry.transport.ITransport
    public RateLimiter getRateLimiter() {
        return null;
    }

    @Override // io.sentry.transport.ITransport
    public void send(SentryEnvelope sentryEnvelope, Hint hint) throws IOException {
    }

    private NoOpTransport() {
    }
}
