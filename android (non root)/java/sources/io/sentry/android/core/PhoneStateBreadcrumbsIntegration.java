package io.sentry.android.core;

import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import androidx.autofill.HintConstants;
import io.sentry.Breadcrumb;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.internal.util.Permissions;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class PhoneStateBreadcrumbsIntegration implements Integration, Closeable {
    private final Context context;
    PhoneStateChangeListener listener;
    private SentryAndroidOptions options;
    private TelephonyManager telephonyManager;
    private boolean isClosed = false;
    private final Object startLock = new Object();

    public PhoneStateBreadcrumbsIntegration(Context context) {
        this.context = (Context) Objects.requireNonNull(context, "Context is required");
    }

    @Override // io.sentry.Integration
    public void register(final IHub iHub, final SentryOptions sentryOptions) {
        Objects.requireNonNull(iHub, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.options = sentryAndroidOptions;
        sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "enableSystemEventBreadcrumbs enabled: %s", Boolean.valueOf(this.options.isEnableSystemEventBreadcrumbs()));
        if (this.options.isEnableSystemEventBreadcrumbs() && Permissions.hasPermission(this.context, "android.permission.READ_PHONE_STATE")) {
            try {
                sentryOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.PhoneStateBreadcrumbsIntegration$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        PhoneStateBreadcrumbsIntegration.this.m5654x144a89d8(iHub, sentryOptions);
                    }
                });
            } catch (Throwable th) {
                sentryOptions.getLogger().log(SentryLevel.DEBUG, "Failed to start PhoneStateBreadcrumbsIntegration on executor thread.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$register$0$io-sentry-android-core-PhoneStateBreadcrumbsIntegration, reason: not valid java name */
    public /* synthetic */ void m5654x144a89d8(IHub iHub, SentryOptions sentryOptions) {
        synchronized (this.startLock) {
            if (!this.isClosed) {
                startTelephonyListener(iHub, sentryOptions);
            }
        }
    }

    private void startTelephonyListener(IHub iHub, SentryOptions sentryOptions) {
        TelephonyManager telephonyManager = (TelephonyManager) this.context.getSystemService(HintConstants.AUTOFILL_HINT_PHONE);
        this.telephonyManager = telephonyManager;
        if (telephonyManager != null) {
            try {
                PhoneStateChangeListener phoneStateChangeListener = new PhoneStateChangeListener(iHub);
                this.listener = phoneStateChangeListener;
                this.telephonyManager.listen(phoneStateChangeListener, 32);
                sentryOptions.getLogger().log(SentryLevel.DEBUG, "PhoneStateBreadcrumbsIntegration installed.", new Object[0]);
                IntegrationUtils.addIntegrationToSdkVersion(getClass());
                return;
            } catch (Throwable th) {
                sentryOptions.getLogger().log(SentryLevel.INFO, th, "TelephonyManager is not available or ready to use.", new Object[0]);
                return;
            }
        }
        sentryOptions.getLogger().log(SentryLevel.INFO, "TelephonyManager is not available", new Object[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        PhoneStateChangeListener phoneStateChangeListener;
        synchronized (this.startLock) {
            this.isClosed = true;
        }
        TelephonyManager telephonyManager = this.telephonyManager;
        if (telephonyManager == null || (phoneStateChangeListener = this.listener) == null) {
            return;
        }
        telephonyManager.listen(phoneStateChangeListener, 0);
        this.listener = null;
        SentryAndroidOptions sentryAndroidOptions = this.options;
        if (sentryAndroidOptions != null) {
            sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "PhoneStateBreadcrumbsIntegration removed.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class PhoneStateChangeListener extends PhoneStateListener {
        private final IHub hub;

        PhoneStateChangeListener(IHub iHub) {
            this.hub = iHub;
        }

        @Override // android.telephony.PhoneStateListener
        public void onCallStateChanged(int i, String str) {
            if (i == 1) {
                Breadcrumb breadcrumb = new Breadcrumb();
                breadcrumb.setType("system");
                breadcrumb.setCategory("device.event");
                breadcrumb.setData("action", "CALL_STATE_RINGING");
                breadcrumb.setMessage("Device ringing");
                breadcrumb.setLevel(SentryLevel.INFO);
                this.hub.addBreadcrumb(breadcrumb);
            }
        }
    }
}
