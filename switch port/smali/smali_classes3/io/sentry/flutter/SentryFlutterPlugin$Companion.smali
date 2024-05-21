.class public final Lio/sentry/flutter/SentryFlutterPlugin$Companion;
.super Ljava/lang/Object;
.source "SentryFlutterPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/flutter/SentryFlutterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryFlutterPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryFlutterPlugin.kt\nio/sentry/flutter/SentryFlutterPlugin$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,395:1\n1851#2,2:396\n1851#2,2:398\n*E\n*S KotlinDebug\n*F\n+ 1 SentryFlutterPlugin.kt\nio/sentry/flutter/SentryFlutterPlugin$Companion\n*L\n384#1,2:396\n387#1,2:398\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002J\"\u0010\r\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutterPlugin$Companion;",
        "",
        "()V",
        "androidSdk",
        "",
        "flutterSdk",
        "nativeSdk",
        "addPackages",
        "",
        "event",
        "Lio/sentry/SentryEvent;",
        "sdk",
        "Lio/sentry/protocol/SdkVersion;",
        "setEventEnvironmentTag",
        "origin",
        "environment",
        "setEventOriginTag",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$addPackages(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;Lio/sentry/protocol/SdkVersion;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->addPackages(Lio/sentry/SentryEvent;Lio/sentry/protocol/SdkVersion;)V

    return-void
.end method

.method public static final synthetic access$setEventOriginTag(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setEventOriginTag(Lio/sentry/SentryEvent;)V

    return-void
.end method

.method private final addPackages(Lio/sentry/SentryEvent;Lio/sentry/protocol/SdkVersion;)V
    .locals 2

    .line 382
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 383
    invoke-virtual {p0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sentry.dart.flutter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 384
    invoke-virtual {p2}, Lio/sentry/protocol/SdkVersion;->getPackageSet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    .line 396
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryPackage;

    .line 385
    invoke-virtual {v0}, Lio/sentry/protocol/SentryPackage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/sentry/protocol/SentryPackage;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lio/sentry/protocol/SdkVersion;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 387
    invoke-virtual {p2}, Lio/sentry/protocol/SdkVersion;->getIntegrationSet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    .line 398
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 388
    invoke-virtual {p0, p2}, Lio/sentry/protocol/SdkVersion;->addIntegration(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final setEventEnvironmentTag(Lio/sentry/SentryEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "event.origin"

    .line 377
    invoke-virtual {p1, p0, p2}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "event.environment"

    .line 378
    invoke-virtual {p1, p0, p3}, Lio/sentry/SentryEvent;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic setEventEnvironmentTag$default(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string p2, "android"

    .line 372
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setEventEnvironmentTag(Lio/sentry/SentryEvent;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setEventOriginTag(Lio/sentry/SentryEvent;)V
    .locals 6

    .line 362
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getSdk()Lio/sentry/protocol/SdkVersion;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 363
    invoke-virtual {p0}, Lio/sentry/protocol/SdkVersion;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4054a580

    if-eq v0, v1, :cond_4

    const v1, 0xcd086b5

    if-eq v0, v1, :cond_2

    const v1, 0x522a1e5c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "sentry.dart.flutter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    sget-object p0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    const-string v0, "flutter"

    const-string v1, "dart"

    invoke-direct {p0, p1, v0, v1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setEventEnvironmentTag(Lio/sentry/SentryEvent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "sentry.native.android.flutter"

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 366
    :cond_3
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    const/4 v2, 0x0

    const-string v3, "native"

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setEventEnvironmentTag$default(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "sentry.java.android.flutter"

    .line 363
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    return-void

    .line 365
    :cond_5
    sget-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    const/4 v2, 0x0

    const-string v3, "java"

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->setEventEnvironmentTag$default(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method
