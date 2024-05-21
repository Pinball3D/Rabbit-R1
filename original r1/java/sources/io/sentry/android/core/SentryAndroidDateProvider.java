package io.sentry.android.core;

import io.sentry.SentryDate;
import io.sentry.SentryDateProvider;
import io.sentry.SentryNanotimeDateProvider;

/* loaded from: classes3.dex */
public final class SentryAndroidDateProvider implements SentryDateProvider {
    private SentryDateProvider dateProvider = new SentryNanotimeDateProvider();

    @Override // io.sentry.SentryDateProvider
    public SentryDate now() {
        return this.dateProvider.now();
    }
}
