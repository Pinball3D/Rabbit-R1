.class public final Lio/sentry/android/ndk/SentryNdk;
.super Ljava/lang/Object;
.source "SentryNdk.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "log"

    .line 18
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sentry"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "sentry-android"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 0

    .line 46
    invoke-static {}, Lio/sentry/android/ndk/SentryNdk;->shutdown()V

    return-void
.end method

.method public static init(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 33
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/ndk/SentryNdkUtil;->addPackage(Lio/sentry/protocol/SdkVersion;)V

    .line 34
    invoke-static {p0}, Lio/sentry/android/ndk/SentryNdk;->initSentryNative(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 37
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopeSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lio/sentry/android/ndk/NdkScopeObserver;

    invoke-direct {v0, p0}, Lio/sentry/android/ndk/NdkScopeObserver;-><init>(Lio/sentry/SentryOptions;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->addScopeObserver(Lio/sentry/IScopeObserver;)V

    .line 41
    :cond_0
    new-instance v0, Lio/sentry/android/ndk/DebugImagesLoader;

    new-instance v1, Lio/sentry/android/ndk/NativeModuleListLoader;

    invoke-direct {v1}, Lio/sentry/android/ndk/NativeModuleListLoader;-><init>()V

    invoke-direct {v0, p0, v1}, Lio/sentry/android/ndk/DebugImagesLoader;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/ndk/NativeModuleListLoader;)V

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setDebugImagesLoader(Lio/sentry/android/core/IDebugImagesLoader;)V

    return-void
.end method

.method private static native initSentryNative(Lio/sentry/android/core/SentryAndroidOptions;)V
.end method

.method private static native shutdown()V
.end method
