package io.sentry;

import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class ShutdownHookIntegration implements Integration, Closeable {
    private final Runtime runtime;
    private Thread thread;

    Thread getHook() {
        return this.thread;
    }

    public ShutdownHookIntegration(Runtime runtime) {
        this.runtime = (Runtime) Objects.requireNonNull(runtime, "Runtime is required");
    }

    public ShutdownHookIntegration() {
        this(Runtime.getRuntime());
    }

    @Override // io.sentry.Integration
    public void register(final IHub iHub, final SentryOptions sentryOptions) {
        Objects.requireNonNull(iHub, "Hub is required");
        Objects.requireNonNull(sentryOptions, "SentryOptions is required");
        if (sentryOptions.isEnableShutdownHook()) {
            Thread thread = new Thread(new Runnable() { // from class: io.sentry.ShutdownHookIntegration$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    IHub.this.flush(sentryOptions.getFlushTimeoutMillis());
                }
            });
            this.thread = thread;
            this.runtime.addShutdownHook(thread);
            sentryOptions.getLogger().log(SentryLevel.DEBUG, "ShutdownHookIntegration installed.", new Object[0]);
            IntegrationUtils.addIntegrationToSdkVersion(getClass());
            return;
        }
        sentryOptions.getLogger().log(SentryLevel.INFO, "enableShutdownHook is disabled.", new Object[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Thread thread = this.thread;
        if (thread != null) {
            try {
                this.runtime.removeShutdownHook(thread);
            } catch (IllegalStateException e) {
                String message = e.getMessage();
                if (message == null || !message.equals("Shutdown in progress")) {
                    throw e;
                }
            }
        }
    }
}
