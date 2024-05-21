package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public interface ITransport extends Closeable {
    void close(boolean z) throws IOException;

    void flush(long j);

    RateLimiter getRateLimiter();

    default boolean isHealthy() {
        return true;
    }

    void send(SentryEnvelope sentryEnvelope, Hint hint) throws IOException;

    default void send(SentryEnvelope sentryEnvelope) throws IOException {
        send(sentryEnvelope, new Hint());
    }
}
