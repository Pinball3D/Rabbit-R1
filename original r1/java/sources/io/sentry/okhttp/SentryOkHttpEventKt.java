package io.sentry.okhttp;

import kotlin.Metadata;

/* compiled from: SentryOkHttpEvent.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"ERROR_MESSAGE_KEY", "", "PROTOCOL_KEY", "RESPONSE_BODY_TIMEOUT_MILLIS", "", "TRACE_ORIGIN", "sentry-okhttp"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryOkHttpEventKt {
    private static final String ERROR_MESSAGE_KEY = "error_message";
    private static final String PROTOCOL_KEY = "protocol";
    private static final long RESPONSE_BODY_TIMEOUT_MILLIS = 800;
    public static final String TRACE_ORIGIN = "auto.http.okhttp";
}
