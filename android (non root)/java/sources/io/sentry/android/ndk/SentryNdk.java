package io.sentry.android.ndk;

import io.sentry.android.core.SentryAndroidOptions;

/* loaded from: classes3.dex */
public final class SentryNdk {
    private static native void initSentryNative(SentryAndroidOptions sentryAndroidOptions);

    private static native void shutdown();

    private SentryNdk() {
    }

    static {
        System.loadLibrary("log");
        System.loadLibrary("sentry");
        System.loadLibrary("sentry-android");
    }

    public static void init(SentryAndroidOptions sentryAndroidOptions) {
        SentryNdkUtil.addPackage(sentryAndroidOptions.getSdkVersion());
        initSentryNative(sentryAndroidOptions);
        if (sentryAndroidOptions.isEnableScopeSync()) {
            sentryAndroidOptions.addScopeObserver(new NdkScopeObserver(sentryAndroidOptions));
        }
        sentryAndroidOptions.setDebugImagesLoader(new DebugImagesLoader(sentryAndroidOptions, new NativeModuleListLoader()));
    }

    public static void close() {
        shutdown();
    }
}
