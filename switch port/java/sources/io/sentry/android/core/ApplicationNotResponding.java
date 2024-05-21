package io.sentry.android.core;

import io.sentry.util.Objects;

/* loaded from: classes3.dex */
final class ApplicationNotResponding extends RuntimeException {
    private static final long serialVersionUID = 252541144579117016L;
    private final Thread thread;

    public Thread getThread() {
        return this.thread;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ApplicationNotResponding(String str, Thread thread) {
        super(str);
        Thread thread2 = (Thread) Objects.requireNonNull(thread, "Thread must be provided.");
        this.thread = thread2;
        setStackTrace(thread2.getStackTrace());
    }
}
