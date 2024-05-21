package io.sentry;

import io.sentry.IConnectionStatusProvider;
import io.sentry.SendCachedEnvelopeFireAndForgetIntegration;
import io.sentry.transport.RateLimiter;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class SendCachedEnvelopeFireAndForgetIntegration implements Integration, IConnectionStatusProvider.IConnectionStatusObserver, Closeable {
    private IConnectionStatusProvider connectionStatusProvider;
    private final SendFireAndForgetFactory factory;
    private IHub hub;
    private SentryOptions options;
    private SendFireAndForget sender;
    private final AtomicBoolean isInitialized = new AtomicBoolean(false);
    private final AtomicBoolean isClosed = new AtomicBoolean(false);

    /* loaded from: classes3.dex */
    public interface SendFireAndForget {
        void send();
    }

    /* loaded from: classes3.dex */
    public interface SendFireAndForgetDirPath {
        String getDirPath();
    }

    /* loaded from: classes3.dex */
    public interface SendFireAndForgetFactory {
        SendFireAndForget create(IHub iHub, SentryOptions sentryOptions);

        default boolean hasValidPath(String str, ILogger iLogger) {
            if (str != null && !str.isEmpty()) {
                return true;
            }
            iLogger.log(SentryLevel.INFO, "No cached dir path is defined in options.", new Object[0]);
            return false;
        }

        default SendFireAndForget processDir(final DirectoryProcessor directoryProcessor, final String str, final ILogger iLogger) {
            final File file = new File(str);
            return new SendFireAndForget() { // from class: io.sentry.SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0
                @Override // io.sentry.SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForget
                public final void send() {
                    SendCachedEnvelopeFireAndForgetIntegration.SendFireAndForgetFactory.lambda$processDir$0(ILogger.this, str, directoryProcessor, file);
                }
            };
        }

        static /* synthetic */ void lambda$processDir$0(ILogger iLogger, String str, DirectoryProcessor directoryProcessor, File file) {
            iLogger.log(SentryLevel.DEBUG, "Started processing cached files from %s", str);
            directoryProcessor.processDirectory(file);
            iLogger.log(SentryLevel.DEBUG, "Finished processing cached files from %s", str);
        }
    }

    public SendCachedEnvelopeFireAndForgetIntegration(SendFireAndForgetFactory sendFireAndForgetFactory) {
        this.factory = (SendFireAndForgetFactory) Objects.requireNonNull(sendFireAndForgetFactory, "SendFireAndForgetFactory is required");
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "SentryOptions is required");
        if (!this.factory.hasValidPath(sentryOptions.getCacheDirPath(), sentryOptions.getLogger())) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
            return;
        }
        sentryOptions.getLogger().log(SentryLevel.DEBUG, "SendCachedEventFireAndForgetIntegration installed.", new Object[0]);
        IntegrationUtils.addIntegrationToSdkVersion(getClass());
        sendCachedEnvelopes(iHub, sentryOptions);
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
        SentryOptions sentryOptions;
        IHub iHub = this.hub;
        if (iHub == null || (sentryOptions = this.options) == null) {
            return;
        }
        sendCachedEnvelopes(iHub, sentryOptions);
    }

    private synchronized void sendCachedEnvelopes(final IHub iHub, final SentryOptions sentryOptions) {
        try {
            sentryOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.SendCachedEnvelopeFireAndForgetIntegration$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SendCachedEnvelopeFireAndForgetIntegration.this.m5627x2324eba3(sentryOptions, iHub);
                }
            });
        } catch (RejectedExecutionException e) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?", e);
        } catch (Throwable th) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$sendCachedEnvelopes$0$io-sentry-SendCachedEnvelopeFireAndForgetIntegration, reason: not valid java name */
    public /* synthetic */ void m5627x2324eba3(SentryOptions sentryOptions, IHub iHub) {
        try {
            if (this.isClosed.get()) {
                sentryOptions.getLogger().log(SentryLevel.INFO, "SendCachedEnvelopeFireAndForgetIntegration, not trying to send after closing.", new Object[0]);
                return;
            }
            if (!this.isInitialized.getAndSet(true)) {
                IConnectionStatusProvider connectionStatusProvider = sentryOptions.getConnectionStatusProvider();
                this.connectionStatusProvider = connectionStatusProvider;
                connectionStatusProvider.addConnectionStatusObserver(this);
                this.sender = this.factory.create(iHub, sentryOptions);
            }
            IConnectionStatusProvider iConnectionStatusProvider = this.connectionStatusProvider;
            if (iConnectionStatusProvider != null && iConnectionStatusProvider.getConnectionStatus() == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
                sentryOptions.getLogger().log(SentryLevel.INFO, "SendCachedEnvelopeFireAndForgetIntegration, no connection.", new Object[0]);
                return;
            }
            RateLimiter rateLimiter = iHub.getRateLimiter();
            if (rateLimiter != null && rateLimiter.isActiveForCategory(DataCategory.All)) {
                sentryOptions.getLogger().log(SentryLevel.INFO, "SendCachedEnvelopeFireAndForgetIntegration, rate limiting active.", new Object[0]);
                return;
            }
            SendFireAndForget sendFireAndForget = this.sender;
            if (sendFireAndForget == null) {
                sentryOptions.getLogger().log(SentryLevel.ERROR, "SendFireAndForget factory is null.", new Object[0]);
            } else {
                sendFireAndForget.send();
            }
        } catch (Throwable th) {
            sentryOptions.getLogger().log(SentryLevel.ERROR, "Failed trying to send cached events.", th);
        }
    }
}
