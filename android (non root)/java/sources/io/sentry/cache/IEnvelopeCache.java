package io.sentry.cache;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;

/* loaded from: classes3.dex */
public interface IEnvelopeCache extends Iterable<SentryEnvelope> {
    void discard(SentryEnvelope sentryEnvelope);

    void store(SentryEnvelope sentryEnvelope, Hint hint);

    default void store(SentryEnvelope sentryEnvelope) {
        store(sentryEnvelope, new Hint());
    }
}
