package io.flutter.embedding.android;

import android.app.Activity;
import androidx.core.util.Consumer;
import androidx.window.java.layout.WindowInfoTrackerCallbackAdapter;
import androidx.window.layout.WindowLayoutInfo;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class WindowInfoRepositoryCallbackAdapterWrapper {
    final WindowInfoTrackerCallbackAdapter adapter;

    public WindowInfoRepositoryCallbackAdapterWrapper(WindowInfoTrackerCallbackAdapter windowInfoTrackerCallbackAdapter) {
        this.adapter = windowInfoTrackerCallbackAdapter;
    }

    public void addWindowLayoutInfoListener(Activity activity, Executor executor, Consumer<WindowLayoutInfo> consumer) {
        this.adapter.addWindowLayoutInfoListener(activity, executor, consumer);
    }

    public void removeWindowLayoutInfoListener(Consumer<WindowLayoutInfo> consumer) {
        this.adapter.removeWindowLayoutInfoListener(consumer);
    }
}
