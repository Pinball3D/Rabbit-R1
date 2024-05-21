package io.sentry.exception;

/* loaded from: classes3.dex */
public final class InvalidSentryTraceHeaderException extends Exception {
    private static final long serialVersionUID = -8353316997083420940L;
    private final String sentryTraceHeader;

    public String getSentryTraceHeader() {
        return this.sentryTraceHeader;
    }

    public InvalidSentryTraceHeaderException(String str) {
        this(str, null);
    }

    public InvalidSentryTraceHeaderException(String str, Throwable th) {
        super("sentry-trace header does not conform to expected format: " + str, th);
        this.sentryTraceHeader = str;
    }
}
