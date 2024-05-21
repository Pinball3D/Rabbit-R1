.class final Lio/sentry/android/ndk/NativeModuleListLoader;
.super Ljava/lang/Object;
.source "NativeModuleListLoader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeClearModuleList()V
.end method

.method public static native nativeLoadModuleList()[Lio/sentry/protocol/DebugImage;
.end method


# virtual methods
.method public clearModuleList()V
    .locals 0

    .line 13
    invoke-static {}, Lio/sentry/android/ndk/NativeModuleListLoader;->nativeClearModuleList()V

    return-void
.end method

.method public loadModuleList()[Lio/sentry/protocol/DebugImage;
    .locals 0

    .line 9
    invoke-static {}, Lio/sentry/android/ndk/NativeModuleListLoader;->nativeLoadModuleList()[Lio/sentry/protocol/DebugImage;

    move-result-object p0

    return-object p0
.end method
