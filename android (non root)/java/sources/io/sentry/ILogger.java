package io.sentry;

/* loaded from: classes3.dex */
public interface ILogger {
    boolean isEnabled(SentryLevel sentryLevel);

    void log(SentryLevel sentryLevel, String str, Throwable th);

    void log(SentryLevel sentryLevel, String str, Object... objArr);

    void log(SentryLevel sentryLevel, Throwable th, String str, Object... objArr);
}
