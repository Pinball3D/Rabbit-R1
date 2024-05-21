package io.sentry.android.core;

import io.sentry.DataCategory;
import io.sentry.IConnectionStatusProvider;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SendCachedEnvelopeFireAndForgetIntegration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.transport.RateLimiter;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class SendCachedEnvelopeIntegration implements Integration, IConnectionStatusProvider.IConnectionStatusObserver, Closeable {
    private IConnectionStatusProvider connectionStatusProvider;
    private final SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForgetFactory factory;
    private IHub hub;
    private SentryAndroidOptions options;
    private SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForget sender;
    private final LazyEvaluator<Boolean> startupCrashMarkerEvaluator;
    private final AtomicBoolean startupCrashHandled = new AtomicBoolean(false);
    private final AtomicBoolean isInitialized = new AtomicBoolean(false);
    private final AtomicBoolean isClosed = new AtomicBoolean(false);

    public SendCachedEnvelopeIntegration(SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForgetFactory sendFireAndForgetFactory, LazyEvaluator<Boolean> lazyEvaluator) {
        this.factory = (SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForgetFactory) Objects.requireNonNull(sendFireAndForgetFactory, "SendFireAndForgetFactory is required");
        this.startupCrashMarkerEvaluator = lazyEvaluator;
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
        this.options = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        if (!this.factory.hasValidPath(sentryOptions.getCacheDirPath(), sentryOptions.getLogger())) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
        } else {
            sendCachedEnvelopes(iHub, this.options);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.isClosed.set(true);
        IConnectionStatusProvider iConnectionStatusProvider = this.connectionStatusProvider;
        if (iConnectionStatusProvider != null) {
            iConnectionStatusProvider.removeConnectionStatusObserver(this);
        }
    }

    @Override // io.sentry.IConnectionStatusProvider.IConnectionStatusObserver
    public void onConnectionStatusChanged(IConnectionStatusProvider.ConnectionStatus connectionStatus) {
        SentryAndroidOptions sentryAndroidOptions;
        IHub iHub = this.hub;
        if (iHub == null || (sentryAndroidOptions = this.options) == null) {
            return;
        }
        sendCachedEnvelopes(iHub, sentryAndroidOptions);
    }

    private synchronized void sendCachedEnvelopes(final IHub iHub, final SentryAndroidOptions sentryAndroidOptions) {
        try {
            try {
                Future<?> submit = sentryAndroidOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.SendCachedEnvelopeIntegration$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        SendCachedEnvelopeIntegration.this.m5655xcf3c5fcd(sentryAndroidOptions, iHub);
                    }
                });
                if (this.startupCrashMarkerEvaluator.getValue().booleanValue() && this.startupCrashHandled.compareAndSet(false, true)) {
                    sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "Startup Crash marker exists, blocking flush.", new Object[0]);
                    try {
                        submit.get(sentryAndroidOptions.getStartupCrashFlushTimeoutMillis(), TimeUnit.MILLISECONDS);
                    } catch (TimeoutException unused) {
                        sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "Synchronous send timed out, continuing in the background.", new Object[0]);
                    }
                }
                sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "SendCachedEnvelopeIntegration installed.", new Object[0]);
            } catch (Throwable th) {
                sentryAndroidOptions.getLogger().log(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent", th);
            }
        } catch (RejectedExecutionException e) {
            sentryAndroidOptions.getLogger().log(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$sendCachedEnvelopes$0$io-sentry-android-core-SendCachedEnvelopeIntegration, reason: not valid java name */
    public /* synthetic */ void m5655xcf3c5fcd(SentryAndroidOptions sentryAndroidOptions, IHub iHub) {
        try {
            if (this.isClosed.get()) {
                sentryAndroidOptions.getLogger().log(SentryLevel.INFO, "SendCachedEnvelopeIntegration, not trying to send after closing.", new Object[0]);
                return;
            }
            if (!this.isInitialized.getAndSet(true)) {
                IConnectionStatusProvider connectionStatusProvider = sentryAndroidOptions.getConnectionStatusProvider();
                this.connectionStatusProvider = connectionStatusProvider;
                connectionStatusProvider.addConnectionStatusObserver(this);
                this.sender = this.factory.create(iHub, sentryAndroidOptions);
            }
            IConnectionStatusProvider iConnectionStatusProvider = this.connectionStatusProvider;
            if (iConnectionStatusProvider != null && iConnectionStatusProvider.getConnectionStatus() == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
                sentryAndroidOptions.getLogger().log(SentryLevel.INFO, "SendCachedEnvelopeIntegration, no connection.", new Object[0]);
                return;
            }
            RateLimiter rateLimiter = iHub.getRateLimiter();
            if (rateLimiter != null && rateLimiter.isActiveForCategory(DataCategory.All)) {
                sentryAndroidOptions.getLogger().log(SentryLevel.INFO, "SendCachedEnvelopeIntegration, rate limiting active.", new Object[0]);
                return;
            }
            SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForget sendFireAndForget = this.sender;
            if (sendFireAndForget == null) {
                sentryAndroidOptions.getLogger().log(SentryLevel.ERROR, "SendCachedEnvelopeIntegration factory is null.", new Object[0]);
            } else {
                sendFireAndForget.send();
            }
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().log(SentryLevel.ERROR, "Failed trying to send cached events.", th);
        }
    }
}
