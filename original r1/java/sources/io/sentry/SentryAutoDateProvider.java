package io.sentry;

import io.sentry.util.Platform;

/* loaded from: classes3.dex */
public final class SentryAutoDateProvider implements SentryDateProvider {
    private final SentryDateProvider dateProvider;

    public SentryAutoDateProvider() {
        if (checkInstantAvailabilityAndPrecision()) {
            this.dateProvider = new SentryInstantDateProvider();
        } else {
            this.dateProvider = new SentryNanotimeDateProvider();
        }
    }

    @Override // io.sentry.SentryDateProvider
    public SentryDate now() {
        return this.dateProvider.now();
    }

    private static boolean checkInstantAvailabilityAndPrecision() {
        return Platform.isJvm() && Platform.isJavaNinePlus();
    }
}
