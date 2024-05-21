package io.sentry;

/* loaded from: classes3.dex */
public final class SentryNanotimeDateProvider implements SentryDateProvider {
    @Override // io.sentry.SentryDateProvider
    public SentryDate now() {
        return new SentryNanotimeDate();
    }
}
