package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.TypeCheckHint;
import io.sentry.protocol.SentryThread;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class ActivityBreadcrumbsIntegration implements Integration, Closeable, Application.ActivityLifecycleCallbacks {
    private final Application application;
    private boolean enabled;
    private IHub hub;

    public ActivityBreadcrumbsIntegration(Application application) {
        this.application = (Application) Objects.requireNonNull(application, "Application is required");
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
        this.enabled = sentryAndroidOptions.isEnableActivityLifecycleBreadcrumbs();
        sentryOptions.getLogger().log(SentryLevel.DEBUG, "ActivityBreadcrumbsIntegration enabled: %s", Boolean.valueOf(this.enabled));
        if (this.enabled) {
            this.application.registerActivityLifecycleCallbacks(this);
            sentryOptions.getLogger().log(SentryLevel.DEBUG, "ActivityBreadcrumbIntegration installed.", new Object[0]);
            IntegrationUtils.addIntegrationToSdkVersion(getClass());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.enabled) {
            this.application.unregisterActivityLifecycleCallbacks(this);
            IHub iHub = this.hub;
            if (iHub != null) {
                iHub.getOptions().getLogger().log(SentryLevel.DEBUG, "ActivityBreadcrumbsIntegration removed.", new Object[0]);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityCreated(Activity activity, Bundle bundle) {
        addBreadcrumb(activity, "created");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStarted(Activity activity) {
        addBreadcrumb(activity, Session.JsonKeys.STARTED);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityResumed(Activity activity) {
        addBreadcrumb(activity, "resumed");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityPaused(Activity activity) {
        addBreadcrumb(activity, "paused");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityStopped(Activity activity) {
        addBreadcrumb(activity, "stopped");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        addBreadcrumb(activity, "saveInstanceState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public synchronized void onActivityDestroyed(Activity activity) {
        addBreadcrumb(activity, "destroyed");
    }

    private void addBreadcrumb(Activity activity, String str) {
        if (this.hub == null) {
            return;
        }
        Breadcrumb breadcrumb = new Breadcrumb();
        breadcrumb.setType("navigation");
        breadcrumb.setData(SentryThread.JsonKeys.STATE, str);
        breadcrumb.setData("screen", getActivityName(activity));
        breadcrumb.setCategory("ui.lifecycle");
        breadcrumb.setLevel(SentryLevel.INFO);
        Hint hint = new Hint();
        hint.set(TypeCheckHint.ANDROID_ACTIVITY, activity);
        this.hub.addBreadcrumb(breadcrumb, hint);
    }

    private String getActivityName(Activity activity) {
        return activity.getClass().getSimpleName();
    }
}
