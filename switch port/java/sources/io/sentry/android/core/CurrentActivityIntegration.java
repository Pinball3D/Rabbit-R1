package io.sentry.android.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SentryOptions;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class CurrentActivityIntegration implements Integration, Closeable, Application.ActivityLifecycleCallbacks {
    private final Application application;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public CurrentActivityIntegration(Application application) {
        this.application = (Application) Objects.requireNonNull(application, "Application is required");
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        this.application.registerActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        setCurrentActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        setCurrentActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        setCurrentActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        cleanCurrentActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        cleanCurrentActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        cleanCurrentActivity(activity);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.application.unregisterActivityLifecycleCallbacks(this);
        CurrentActivityHolder.getInstance().clearActivity();
    }

    private void cleanCurrentActivity(Activity activity) {
        if (CurrentActivityHolder.getInstance().getActivity() == activity) {
            CurrentActivityHolder.getInstance().clearActivity();
        }
    }

    private void setCurrentActivity(Activity activity) {
        CurrentActivityHolder.getInstance().setActivity(activity);
    }
}
