package io.sentry.android.core.performance;

import android.view.Window;
import io.sentry.android.core.internal.gestures.WindowCallbackAdapter;

/* loaded from: classes3.dex */
public class WindowContentChangedCallback extends WindowCallbackAdapter {
    private final Runnable callback;

    public WindowContentChangedCallback(Window.Callback callback, Runnable runnable) {
        super(callback);
        this.callback = runnable;
    }

    @Override // io.sentry.android.core.internal.gestures.WindowCallbackAdapter, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
        this.callback.run();
    }
}
