package io.sentry.exception;

import io.sentry.protocol.Mechanism;
import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class ExceptionMechanismException extends RuntimeException {
    private static final long serialVersionUID = 142345454265713915L;
    private final Mechanism exceptionMechanism;
    private final boolean snapshot;
    private final Thread thread;
    private final Throwable throwable;

    public Mechanism getExceptionMechanism() {
        return this.exceptionMechanism;
    }

    public Thread getThread() {
        return this.thread;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public boolean isSnapshot() {
        return this.snapshot;
    }

    public ExceptionMechanismException(Mechanism mechanism, Throwable th, Thread thread, boolean z) {
        this.exceptionMechanism = (Mechanism) Objects.requireNonNull(mechanism, "Mechanism is required.");
        this.throwable = (Throwable) Objects.requireNonNull(th, "Throwable is required.");
        this.thread = (Thread) Objects.requireNonNull(thread, "Thread is required.");
        this.snapshot = z;
    }

    public ExceptionMechanismException(Mechanism mechanism, Throwable th, Thread thread) {
        this(mechanism, th, thread, false);
    }
}
