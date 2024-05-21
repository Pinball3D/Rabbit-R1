package io.sentry.hints;

/* loaded from: classes3.dex */
public interface AbnormalExit {
    boolean ignoreCurrentThread();

    String mechanism();

    Long timestamp();
}
