package io.sentry.android.core;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.TypeCheckHint;
import io.sentry.android.core.internal.util.DeviceOrientations;
import io.sentry.protocol.Device;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class AppComponentsBreadcrumbsIntegration implements Integration, Closeable, ComponentCallbacks2 {
    private final Context context;
    private IHub hub;
    private SentryAndroidOptions options;

    public AppComponentsBreadcrumbsIntegration(Context context) {
        this.context = (Context) Objects.requireNonNull(context, "Context is required");
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.options = sentryAndroidOptions;
        sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, "AppComponentsBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.options.isEnableAppComponentBreadcrumbs()));
        if (this.options.isEnableAppComponentBreadcrumbs()) {
            try {
                this.context.registerComponentCallbacks(this);
                sentryOptions.getLogger().log(SentryLevel.DEBUG, "AppComponentsBreadcrumbsIntegration installed.", new Object[0]);
                IntegrationUtils.addIntegrationToSdkVersion(getClass());
            } catch (Throwable th) {
                this.options.setEnableAppComponentBreadcrumbs(false);
                sentryOptions.getLogger().log(SentryLevel.INFO, th, "ComponentCallbacks2 is not available.", new Object[0]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.context.unregisterComponentCallbacks(this);
        } catch (Throwable th) {
            SentryAndroidOptions sentryAndroidOptions = this.options;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().log(SentryLevel.DEBUG, th, "It was not possible to unregisterComponentCallbacks", new Object[0]);
            }
        }
        SentryAndroidOptions sentryAndroidOptions2 = this.options;
        if (sentryAndroidOptions2 != null) {
            sentryAndroidOptions2.getLogger().log(SentryLevel.DEBUG, "AppComponentsBreadcrumbsIntegration removed.", new Object[0]);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        if (this.hub != null) {
            Device.DeviceOrientation orientation = DeviceOrientations.getOrientation(this.context.getResources().getConfiguration().orientation);
            String lowerCase = orientation != null ? orientation.name().toLowerCase(Locale.ROOT) : "undefined";
            Breadcrumb breadcrumb = new Breadcrumb();
            breadcrumb.setType("navigation");
            breadcrumb.setCategory("device.orientation");
            breadcrumb.setData("position", lowerCase);
            breadcrumb.setLevel(SentryLevel.INFO);
            Hint hint = new Hint();
            hint.set(TypeCheckHint.ANDROID_CONFIGURATION, configuration);
            this.hub.addBreadcrumb(breadcrumb, hint);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        createLowMemoryBreadcrumb(null);
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        createLowMemoryBreadcrumb(Integer.valueOf(i));
    }

    private void createLowMemoryBreadcrumb(Integer num) {
        if (this.hub != null) {
            Breadcrumb breadcrumb = new Breadcrumb();
            if (num != null) {
                if (num.intValue() < 40) {
                    return;
                } else {
                    breadcrumb.setData("level", num);
                }
            }
            breadcrumb.setType("system");
            breadcrumb.setCategory("device.event");
            breadcrumb.setMessage("Low memory");
            breadcrumb.setData("action", "LOW_MEMORY");
            breadcrumb.setLevel(SentryLevel.WARNING);
            this.hub.addBreadcrumb(breadcrumb);
        }
    }
}
