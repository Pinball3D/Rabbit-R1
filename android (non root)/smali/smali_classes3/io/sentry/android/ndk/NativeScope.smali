.class final Lio/sentry/android/ndk/NativeScope;
.super Ljava/lang/Object;
.source "NativeScope.java"

# interfaces
.implements Lio/sentry/android/ndk/INativeScope;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeAddBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeRemoveExtra(Ljava/lang/String;)V
.end method

.method public static native nativeRemoveTag(Ljava/lang/String;)V
.end method

.method public static native nativeRemoveUser()V
.end method

.method public static native nativeSetExtra(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native nativeSetUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static/range {p1 .. p6}, Lio/sentry/android/ndk/NativeScope;->nativeAddBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lio/sentry/android/ndk/NativeScope;->nativeRemoveExtra(Ljava/lang/String;)V

    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lio/sentry/android/ndk/NativeScope;->nativeRemoveTag(Ljava/lang/String;)V

    return-void
.end method

.method public removeUser()V
    .locals 0

    .line 31
    invoke-static {}, Lio/sentry/android/ndk/NativeScope;->nativeRemoveUser()V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-static {p1, p2}, Lio/sentry/android/ndk/NativeScope;->nativeSetExtra(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {p1, p2}, Lio/sentry/android/ndk/NativeScope;->nativeSetTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-static {p1, p2, p3, p4}, Lio/sentry/android/ndk/NativeScope;->nativeSetUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
