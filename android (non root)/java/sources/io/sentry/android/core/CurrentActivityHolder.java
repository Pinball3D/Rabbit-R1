package io.sentry.android.core;

import android.app.Activity;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class CurrentActivityHolder {
    private static final CurrentActivityHolder instance = new CurrentActivityHolder();
    private WeakReference<Activity> currentActivity;

    public static CurrentActivityHolder getInstance() {
        return instance;
    }

    public void clearActivity() {
        this.currentActivity = null;
    }

    private CurrentActivityHolder() {
    }

    public Activity getActivity() {
        WeakReference<Activity> weakReference = this.currentActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void setActivity(Activity activity) {
        WeakReference<Activity> weakReference = this.currentActivity;
        if (weakReference == null || weakReference.get() != activity) {
            this.currentActivity = new WeakReference<>(activity);
        }
    }
}
