package io.sentry;

import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class DiagnosticLogger implements ILogger {
    private final ILogger logger;
    private final SentryOptions options;

    public ILogger getLogger() {
        return this.logger;
    }

    public DiagnosticLogger(SentryOptions sentryOptions, ILogger iLogger) {
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "SentryOptions is required.");
        this.logger = iLogger;
    }

    @Override // io.sentry.ILogger
    public boolean isEnabled(SentryLevel sentryLevel) {
        return sentryLevel != null && this.options.isDebug() && sentryLevel.ordinal() >= this.options.getDiagnosticLevel().ordinal();
    }

    @Override // io.sentry.ILogger
    public void log(SentryLevel sentryLevel, String str, Object... objArr) {
        if (this.logger == null || !isEnabled(sentryLevel)) {
            return;
        }
        this.logger.log(sentryLevel, str, objArr);
    }

    @Override // io.sentry.ILogger
    public void log(SentryLevel sentryLevel, String str, Throwable th) {
        if (this.logger == null || !isEnabled(sentryLevel)) {
            return;
        }
        this.logger.log(sentryLevel, str, th);
    }

    @Override // io.sentry.ILogger
    public void log(SentryLevel sentryLevel, Throwable th, String str, Object... objArr) {
        if (this.logger == null || !isEnabled(sentryLevel)) {
            return;
        }
        this.logger.log(sentryLevel, th, str, objArr);
    }
}
