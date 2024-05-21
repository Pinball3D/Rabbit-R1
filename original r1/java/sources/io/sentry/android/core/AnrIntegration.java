package io.sentry.android.core;

import android.content.Context;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.ANRWatchDog;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.TransactionEnd;
import io.sentry.protocol.Mechanism;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class AnrIntegration implements Integration, Closeable {
    private static ANRWatchDog anrWatchDog;
    private static final Object watchDogLock = new Object();
    private final Context context;
    private SentryOptions options;
    private boolean isClosed = false;
    private final Object startLock = new Object();

    ANRWatchDog getANRWatchDog() {
        return anrWatchDog;
    }

    public AnrIntegration(Context context) {
        this.context = context;
    }

    @Override // io.sentry.Integration
    public final void register(IHub iHub, SentryOptions sentryOptions) {
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "SentryOptions is required");
        register(iHub, (SentryAndroidOptions) sentryOptions);
    }

    private void register(final IHub iHub, final SentryAndroidOptions sentryAndroidOptions) {
        sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "AnrIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions.isAnrEnabled()));
        if (sentryAndroidOptions.isAnrEnabled()) {
            IntegrationUtils.addIntegrationToSdkVersion(getClass());
            try {
                sentryAndroidOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.AnrIntegration$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnrIntegration.this.m5648lambda$register$0$iosentryandroidcoreAnrIntegration(iHub, sentryAndroidOptions);
                    }
                });
            } catch (Throwable th) {
                sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "Failed to start AnrIntegration on executor thread.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$register$0$io-sentry-android-core-AnrIntegration, reason: not valid java name */
    public /* synthetic */ void m5648lambda$register$0$iosentryandroidcoreAnrIntegration(IHub iHub, SentryAndroidOptions sentryAndroidOptions) {
        synchronized (this.startLock) {
            if (!this.isClosed) {
                startAnrWatchdog(iHub, sentryAndroidOptions);
            }
        }
    }

    private void startAnrWatchdog(final IHub iHub, final SentryAndroidOptions sentryAndroidOptions) {
        synchronized (watchDogLock) {
            if (anrWatchDog == null) {
                sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "ANR timeout in milliseconds: %d", Long.valueOf(sentryAndroidOptions.getAnrTimeoutIntervalMillis()));
                ANRWatchDog aNRWatchDog = new ANRWatchDog(sentryAndroidOptions.getAnrTimeoutIntervalMillis(), sentryAndroidOptions.isAnrReportInDebug(), new ANRWatchDog.ANRListener() { // from class: io.sentry.android.core.AnrIntegration$$ExternalSyntheticLambda0
                    @Override // io.sentry.android.core.ANRWatchDog.ANRListener
                    public final void onAppNotResponding(ApplicationNotResponding applicationNotResponding) {
                        AnrIntegration.this.m5649lambda$startAnrWatchdog$1$iosentryandroidcoreAnrIntegration(iHub, sentryAndroidOptions, applicationNotResponding);
                    }
                }, sentryAndroidOptions.getLogger(), this.context);
                anrWatchDog = aNRWatchDog;
                aNRWatchDog.start();
                sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "AnrIntegration installed.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: reportANR, reason: merged with bridge method [inline-methods] */
    public void m5649lambda$startAnrWatchdog$1$iosentryandroidcoreAnrIntegration(IHub iHub, SentryAndroidOptions sentryAndroidOptions, ApplicationNotResponding applicationNotResponding) {
        sentryAndroidOptions.getLogger().log(SentryLevel.INFO, "ANR triggered with message: %s", applicationNotResponding.getMessage());
        boolean equals = Boolean.TRUE.equals(AppState.getInstance().isInBackground());
        SentryEvent sentryEvent = new SentryEvent(buildAnrThrowable(equals, sentryAndroidOptions, applicationNotResponding));
        sentryEvent.setLevel(SentryLevel.ERROR);
        iHub.captureEvent(sentryEvent, HintUtils.createWithTypeCheckHint(new AnrHint(equals)));
    }

    private Throwable buildAnrThrowable(boolean z, SentryAndroidOptions sentryAndroidOptions, ApplicationNotResponding applicationNotResponding) {
        String str = "ANR for at least " + sentryAndroidOptions.getAnrTimeoutIntervalMillis() + " ms.";
        if (z) {
            str = "Background " + str;
        }
        ApplicationNotResponding applicationNotResponding2 = new ApplicationNotResponding(str, applicationNotResponding.getThread());
        Mechanism mechanism = new Mechanism();
        mechanism.setType("ANR");
        return new ExceptionMechanismException(mechanism, applicationNotResponding2, applicationNotResponding2.getThread(), true);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.startLock) {
            this.isClosed = true;
        }
        synchronized (watchDogLock) {
            ANRWatchDog aNRWatchDog = anrWatchDog;
            if (aNRWatchDog != null) {
                aNRWatchDog.interrupt();
                anrWatchDog = null;
                SentryOptions sentryOptions = this.options;
                if (sentryOptions != null) {
                    sentryOptions.getLogger().log(SentryLevel.DEBUG, "AnrIntegration removed.", new Object[0]);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class AnrHint implements AbnormalExit, TransactionEnd {
        private final boolean isBackgroundAnr;

        @Override // io.sentry.hints.AbnormalExit
        public boolean ignoreCurrentThread() {
            return true;
        }

        @Override // io.sentry.hints.AbnormalExit
        public String mechanism() {
            return this.isBackgroundAnr ? "anr_background" : "anr_foreground";
        }

        @Override // io.sentry.hints.AbnormalExit
        public Long timestamp() {
            return null;
        }

        AnrHint(boolean z) {
            this.isBackgroundAnr = z;
        }
    }
}
