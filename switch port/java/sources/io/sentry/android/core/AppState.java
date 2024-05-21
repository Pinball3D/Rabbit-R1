package io.sentry.android.core;

/* loaded from: classes3.dex */
public final class AppState {
    private static AppState instance = new AppState();
    private Boolean inBackground = null;

    public static AppState getInstance() {
        return instance;
    }

    public Boolean isInBackground() {
        return this.inBackground;
    }

    private AppState() {
    }

    void resetInstance() {
        instance = new AppState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setInBackground(boolean z) {
        this.inBackground = Boolean.valueOf(z);
    }
}
