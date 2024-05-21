package io.sentry;

import io.sentry.UncaughtExceptionHandler;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.hints.BlockingFlushHint;
import io.sentry.hints.EventDropReason;
import io.sentry.hints.SessionEnd;
import io.sentry.hints.TransactionEnd;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.SentryId;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class UncaughtExceptionHandlerIntegration implements Integration, Thread.UncaughtExceptionHandler, Closeable {
    private Thread.UncaughtExceptionHandler defaultExceptionHandler;
    private IHub hub;
    private SentryOptions options;
    private boolean registered;
    private final UncaughtExceptionHandler threadAdapter;

    public UncaughtExceptionHandlerIntegration() {
        this(UncaughtExceptionHandler.Adapter.getInstance());
    }

    UncaughtExceptionHandlerIntegration(UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.registered = false;
        this.threadAdapter = (UncaughtExceptionHandler) Objects.requireNonNull(uncaughtExceptionHandler, "threadAdapter is required.");
    }

    @Override // io.sentry.Integration
    public final void register(IHub iHub, SentryOptions sentryOptions) {
        if (this.registered) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, "Attempt to register a UncaughtExceptionHandlerIntegration twice.", new Object[0]);
            return;
        }
        this.registered = true;
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
        SentryOptions sentryOptions2 = (SentryOptions) Objects.requireNonNull(sentryOptions, "SentryOptions is required");
        this.options = sentryOptions2;
        sentryOptions2.getLogger().log(SentryLevel.DEBUG, "UncaughtExceptionHandlerIntegration enabled: %s", Boolean.valueOf(this.options.isEnableUncaughtExceptionHandler()));
        if (this.options.isEnableUncaughtExceptionHandler()) {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = this.threadAdapter.getDefaultUncaughtExceptionHandler();
            if (defaultUncaughtExceptionHandler != null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "default UncaughtExceptionHandler class='" + defaultUncaughtExceptionHandler.getClass().getName() + "'", new Object[0]);
                this.defaultExceptionHandler = defaultUncaughtExceptionHandler;
            }
            this.threadAdapter.setDefaultUncaughtExceptionHandler(this);
            this.options.getLogger().log(SentryLevel.DEBUG, "UncaughtExceptionHandlerIntegration installed.", new Object[0]);
            IntegrationUtils.addIntegrationToSdkVersion(getClass());
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        SentryOptions sentryOptions = this.options;
        if (sentryOptions == null || this.hub == null) {
            return;
        }
        sentryOptions.getLogger().log(SentryLevel.INFO, "Uncaught exception received.", new Object[0]);
        try {
            UncaughtExceptionHint uncaughtExceptionHint = new UncaughtExceptionHint(this.options.getFlushTimeoutMillis(), this.options.getLogger());
            SentryEvent sentryEvent = new SentryEvent(getUnhandledThrowable(thread, th));
            sentryEvent.setLevel(SentryLevel.FATAL);
            if (this.hub.getTransaction() == null && sentryEvent.getEventId() != null) {
                uncaughtExceptionHint.setFlushable(sentryEvent.getEventId());
            }
            Hint createWithTypeCheckHint = HintUtils.createWithTypeCheckHint(uncaughtExceptionHint);
            boolean equals = this.hub.captureEvent(sentryEvent, createWithTypeCheckHint).equals(SentryId.EMPTY_ID);
            EventDropReason eventDropReason = HintUtils.getEventDropReason(createWithTypeCheckHint);
            if ((!equals || EventDropReason.MULTITHREADED_DEDUPLICATION.equals(eventDropReason)) && !uncaughtExceptionHint.waitFlush()) {
                this.options.getLogger().log(SentryLevel.WARNING, "Timed out waiting to flush event to disk before crashing. Event: %s", sentryEvent.getEventId());
            }
        } catch (Throwable th2) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error sending uncaught exception to Sentry.", th2);
        }
        if (this.defaultExceptionHandler != null) {
            this.options.getLogger().log(SentryLevel.INFO, "Invoking inner uncaught exception handler.", new Object[0]);
            this.defaultExceptionHandler.uncaughtException(thread, th);
        } else if (this.options.isPrintUncaughtStackTrace()) {
            th.printStackTrace();
        }
    }

    static Throwable getUnhandledThrowable(Thread thread, Throwable th) {
        Mechanism mechanism = new Mechanism();
        mechanism.setHandled(false);
        mechanism.setType("UncaughtExceptionHandler");
        return new ExceptionMechanismException(mechanism, th, thread);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this == this.threadAdapter.getDefaultUncaughtExceptionHandler()) {
            this.threadAdapter.setDefaultUncaughtExceptionHandler(this.defaultExceptionHandler);
            SentryOptions sentryOptions = this.options;
            if (sentryOptions != null) {
                sentryOptions.getLogger().log(SentryLevel.DEBUG, "UncaughtExceptionHandlerIntegration removed.", new Object[0]);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class UncaughtExceptionHint extends BlockingFlushHint implements SessionEnd, TransactionEnd {
        private final AtomicReference<SentryId> flushableEventId;

        public UncaughtExceptionHint(long j, ILogger iLogger) {
            super(j, iLogger);
            this.flushableEventId = new AtomicReference<>();
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public boolean isFlushable(SentryId sentryId) {
            SentryId sentryId2 = this.flushableEventId.get();
            return sentryId2 != null && sentryId2.equals(sentryId);
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public void setFlushable(SentryId sentryId) {
            this.flushableEventId.set(sentryId);
        }
    }
}
