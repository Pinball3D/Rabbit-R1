package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;
import io.sentry.cache.IEnvelopeCache;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class NoOpEnvelopeCache implements IEnvelopeCache {
    private static final NoOpEnvelopeCache instance = new NoOpEnvelopeCache();

    public static NoOpEnvelopeCache getInstance() {
        return instance;
    }

    @Override // io.sentry.cache.IEnvelopeCache
    public void discard(SentryEnvelope sentryEnvelope) {
    }

    @Override // io.sentry.cache.IEnvelopeCache
    public void store(SentryEnvelope sentryEnvelope, Hint hint) {
    }

    @Override // java.lang.Iterable
    public Iterator<SentryEnvelope> iterator() {
        return Collections.emptyIterator();
    }
}
