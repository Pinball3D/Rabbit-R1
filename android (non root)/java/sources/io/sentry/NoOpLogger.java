package io.sentry;

/* loaded from: classes3.dex */
public final class NoOpLogger implements ILogger {
    private static final NoOpLogger instance = new NoOpLogger();

    public static NoOpLogger getInstance() {
        return instance;
    }

    @Override // io.sentry.ILogger
    public boolean isEnabled(SentryLevel sentryLevel) {
        return false;
    }

    @Override // io.sentry.ILogger
    public void log(SentryLevel sentryLevel, String str, Throwable th) {
    }

    @Override // io.sentry.ILogger
    public void log(SentryLevel sentryLevel, String str, Object... objArr) {
    }

    @Override // io.sentry.ILogger
    public void log(SentryLevel sentryLevel, Throwable th, String str, Object... objArr) {
    }

    private NoOpLogger() {
    }
}
