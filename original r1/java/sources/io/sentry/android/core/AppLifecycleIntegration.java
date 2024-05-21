package io.sentry.android.core;

import androidx.lifecycle.ProcessLifecycleOwner;
import io.sentry.IHub;
import io.sentry.ILogger;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.internal.util.AndroidMainThreadChecker;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class AppLifecycleIntegration implements Integration, Closeable {
    private final MainLooperHandler handler;
    private SentryAndroidOptions options;
    volatile LifecycleWatcher watcher;

    public AppLifecycleIntegration() {
        this(new MainLooperHandler());
    }

    AppLifecycleIntegration(MainLooperHandler mainLooperHandler) {
        this.handler = mainLooperHandler;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x008d -> B:14:0x0098). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0080 -> B:14:0x0098). Please report as a decompilation issue!!! */
    @Override // io.sentry.Integration
    public void register(final IHub iHub, SentryOptions sentryOptions) {
        Objects.requireNonNull(iHub, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.options = sentryAndroidOptions;
        sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "enableSessionTracking enabled: %s", Boolean.valueOf(this.options.isEnableAutoSessionTracking()));
        this.options.getLogger().log(SentryLevel.DEBUG, "enableAppLifecycleBreadcrumbs enabled: %s", Boolean.valueOf(this.options.isEnableAppLifecycleBreadcrumbs()));
        if (this.options.isEnableAutoSessionTracking() || this.options.isEnableAppLifecycleBreadcrumbs()) {
            try {
                Class.forName("androidx.lifecycle.DefaultLifecycleObserver");
                Class.forName("androidx.lifecycle.ProcessLifecycleOwner");
                if (AndroidMainThreadChecker.getInstance().isMainThread()) {
                    m5651lambda$register$0$iosentryandroidcoreAppLifecycleIntegration(iHub);
                    sentryOptions = sentryOptions;
                } else {
                    this.handler.post(new Runnable() { // from class: io.sentry.android.core.AppLifecycleIntegration$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AppLifecycleIntegration.this.m5651lambda$register$0$iosentryandroidcoreAppLifecycleIntegration(iHub);
                        }
                    });
                    sentryOptions = sentryOptions;
                }
            } catch (ClassNotFoundException e) {
                ILogger logger = sentryOptions.getLogger();
                SentryLevel sentryLevel = SentryLevel.INFO;
                logger.log(sentryLevel, "androidx.lifecycle is not available, AppLifecycleIntegration won't be installed", e);
                sentryOptions = sentryLevel;
            } catch (IllegalStateException e2) {
                ILogger logger2 = sentryOptions.getLogger();
                SentryLevel sentryLevel2 = SentryLevel.ERROR;
                logger2.log(sentryLevel2, "AppLifecycleIntegration could not be installed", e2);
                sentryOptions = sentryLevel2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: addObserver, reason: merged with bridge method [inline-methods] */
    public void m5651lambda$register$0$iosentryandroidcoreAppLifecycleIntegration(IHub iHub) {
        if (this.options == null) {
            return;
        }
        this.watcher = new LifecycleWatcher(iHub, this.options.getSessionTrackingIntervalMillis(), this.options.isEnableAutoSessionTracking(), this.options.isEnableAppLifecycleBreadcrumbs());
        try {
            ProcessLifecycleOwner.get().getLifecycle().addObserver(this.watcher);
            this.options.getLogger().log(SentryLevel.DEBUG, "AppLifecycleIntegration installed.", new Object[0]);
            IntegrationUtils.addIntegrationToSdkVersion(getClass());
        } catch (Throwable th) {
            this.watcher = null;
            this.options.getLogger().log(SentryLevel.ERROR, "AppLifecycleIntegration failed to get Lifecycle and could not be installed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeObserver, reason: merged with bridge method [inline-methods] */
    public void m5650lambda$close$1$iosentryandroidcoreAppLifecycleIntegration() {
        LifecycleWatcher lifecycleWatcher = this.watcher;
        if (lifecycleWatcher != null) {
            ProcessLifecycleOwner.get().getLifecycle().removeObserver(lifecycleWatcher);
            SentryAndroidOptions sentryAndroidOptions = this.options;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "AppLifecycleIntegration removed.", new Object[0]);
            }
        }
        this.watcher = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.watcher == null) {
            return;
        }
        if (AndroidMainThreadChecker.getInstance().isMainThread()) {
            m5650lambda$close$1$iosentryandroidcoreAppLifecycleIntegration();
        } else {
            this.handler.post(new Runnable() { // from class: io.sentry.android.core.AppLifecycleIntegration$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AppLifecycleIntegration.this.m5650lambda$close$1$iosentryandroidcoreAppLifecycleIntegration();
                }
            });
        }
    }
}
