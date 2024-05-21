.class public final Lio/sentry/flutter/SentryFlutter;
.super Ljava/lang/Object;
.source "SentryFlutter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\"\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutter;",
        "",
        "androidSdk",
        "",
        "nativeSdk",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "autoPerformanceTracingEnabled",
        "",
        "getAutoPerformanceTracingEnabled",
        "()Z",
        "setAutoPerformanceTracingEnabled",
        "(Z)V",
        "updateOptions",
        "",
        "options",
        "Lio/sentry/android/core/SentryAndroidOptions;",
        "data",
        "",
        "sentry_flutter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x3
    }
    xi = 0x30
.end annotation


# instance fields
.field private final androidSdk:Ljava/lang/String;

.field private autoPerformanceTracingEnabled:Z

.field private final nativeSdk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "androidSdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeSdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter;->androidSdk:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutter;->nativeSdk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAutoPerformanceTracingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/flutter/SentryFlutter;->autoPerformanceTracingEnabled:Z

    return p0
.end method

.method public final setAutoPerformanceTracingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/flutter/SentryFlutter;->autoPerformanceTracingEnabled:Z

    return-void
.end method

.method public final updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/core/SentryAndroidOptions;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$1;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$1;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "dsn"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 20
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$2;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$2;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "debug"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 23
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$3;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$3;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "environment"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 26
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$4;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$4;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "release"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 29
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$5;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$5;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "dist"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 32
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$6;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$6;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "enableAutoSessionTracking"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 35
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$7;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$7;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "autoSessionTrackingIntervalMillis"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 38
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$8;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$8;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "anrTimeoutIntervalMillis"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 41
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$9;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$9;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "attachThreads"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 44
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$10;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$10;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "attachStacktrace"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 47
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$11;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$11;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "enableAutoNativeBreadcrumbs"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 54
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$12;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$12;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "maxBreadcrumbs"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 57
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$13;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$13;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "maxCacheItems"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 60
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$14;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$14;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "diagnosticLevel"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 66
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$15;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$15;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "anrEnabled"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 69
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$16;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$16;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "sendDefaultPii"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 72
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$17;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$17;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "enableNdkScopeSync"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 75
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$18;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$18;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "proguardUuid"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    const-string v0, "enableNativeCrashHandling"

    .line 79
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 83
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 89
    :cond_1
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$19;

    invoke-direct {v0, p0}, Lio/sentry/flutter/SentryFlutter$updateOptions$19;-><init>(Lio/sentry/flutter/SentryFlutter;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "enableAutoPerformanceTracing"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 95
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$20;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$20;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "sendClientReports"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 99
    new-instance v0, Lio/sentry/flutter/SentryFlutter$updateOptions$21;

    invoke-direct {v0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$21;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string v1, "maxAttachmentSize"

    invoke-static {p2, v1, v0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 103
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lio/sentry/protocol/SdkVersion;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter;->androidSdk:Ljava/lang/String;

    const-string v2, "7.8.0"

    invoke-direct {v0, v1, v2}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter;->androidSdk:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SdkVersion;->setName(Ljava/lang/String;)V

    .line 110
    :goto_1
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutter;->androidSdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/7.8.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setSentryClientName(Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutter;->nativeSdk:Ljava/lang/String;

    .line 112
    invoke-virtual {p1, p0}, Lio/sentry/android/core/SentryAndroidOptions;->setNativeSdkName(Ljava/lang/String;)V

    .line 114
    new-instance p0, Lio/sentry/flutter/SentryFlutter$updateOptions$22;

    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$22;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    const-string v0, "connectionTimeoutMillis"

    invoke-static {p2, v0, p0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 117
    new-instance p0, Lio/sentry/flutter/SentryFlutter$updateOptions$23;

    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$23;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    check-cast p0, Lkotlin/jvm/functions/Function1;

    const-string p1, "readTimeoutMillis"

    invoke-static {p2, p1, p0}, Lio/sentry/flutter/SentryFlutterKt;->access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
