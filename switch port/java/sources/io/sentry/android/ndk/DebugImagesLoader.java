package io.sentry.android.ndk;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.IDebugImagesLoader;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.protocol.DebugImage;
import io.sentry.util.Objects;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class DebugImagesLoader implements IDebugImagesLoader {
    private static List<DebugImage> debugImages;
    private static final Object debugImagesLock = new Object();
    private final NativeModuleListLoader moduleListLoader;
    private final SentryOptions options;

    List<DebugImage> getCachedDebugImages() {
        return debugImages;
    }

    public DebugImagesLoader(SentryAndroidOptions sentryAndroidOptions, NativeModuleListLoader nativeModuleListLoader) {
        this.options = (SentryOptions) Objects.requireNonNull(sentryAndroidOptions, "The SentryAndroidOptions is required.");
        this.moduleListLoader = (NativeModuleListLoader) Objects.requireNonNull(nativeModuleListLoader, "The NativeModuleListLoader is required.");
    }

    @Override // io.sentry.android.core.IDebugImagesLoader
    public List<DebugImage> loadDebugImages() {
        synchronized (debugImagesLock) {
            if (debugImages == null) {
                try {
                    DebugImage[] loadModuleList = this.moduleListLoader.loadModuleList();
                    if (loadModuleList != null) {
                        debugImages = Arrays.asList(loadModuleList);
                        this.options.getLogger().log(SentryLevel.DEBUG, "Debug images loaded: %d", Integer.valueOf(debugImages.size()));
                    }
                } catch (Throwable th) {
                    this.options.getLogger().log(SentryLevel.ERROR, th, "Failed to load debug images.", new Object[0]);
                }
            }
        }
        return debugImages;
    }

    @Override // io.sentry.android.core.IDebugImagesLoader
    public void clearDebugImages() {
        synchronized (debugImagesLock) {
            try {
                this.moduleListLoader.clearModuleList();
                this.options.getLogger().log(SentryLevel.INFO, "Debug images cleared.", new Object[0]);
            } finally {
                debugImages = null;
            }
            debugImages = null;
        }
    }
}
