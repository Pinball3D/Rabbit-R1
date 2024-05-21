package io.sentry.transport;

/* loaded from: classes3.dex */
public final class CurrentDateProvider implements ICurrentDateProvider {
    private static final ICurrentDateProvider instance = new CurrentDateProvider();

    public static ICurrentDateProvider getInstance() {
        return instance;
    }

    private CurrentDateProvider() {
    }

    @Override // io.sentry.transport.ICurrentDateProvider
    public final long getCurrentTimeMillis() {
        return System.currentTimeMillis();
    }
}
