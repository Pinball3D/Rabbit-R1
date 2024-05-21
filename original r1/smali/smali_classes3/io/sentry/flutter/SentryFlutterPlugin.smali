.class public final Lio/sentry/flutter/SentryFlutterPlugin;
.super Ljava/lang/Object;
.source "SentryFlutterPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;,
        Lio/sentry/flutter/SentryFlutterPlugin$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryFlutterPlugin.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryFlutterPlugin.kt\nio/sentry/flutter/SentryFlutterPlugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,395:1\n1851#2,2:396\n*E\n*S KotlinDebug\n*F\n+ 1 SentryFlutterPlugin.kt\nio/sentry/flutter/SentryFlutterPlugin\n*L\n320#1,2:396\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u0000 =2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002<=B\u0005\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0010\u001a\u00020\u00112\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u001e\u001a\u00020\u00112\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u00112\u0006\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\u0011H\u0016J\u0008\u0010*\u001a\u00020\u0011H\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010$\u001a\u00020(H\u0016J\u0018\u0010,\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010-\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%H\u0016J\u001a\u0010.\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u00100\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u00101\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u00102\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0008\u00103\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u00104\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0008\u00103\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u00105\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u00142\u0008\u00103\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J(\u00106\u001a\u00020\u00112\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0002R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutterPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "()V",
        "activity",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "channel",
        "Lio/flutter/plugin/common/MethodChannel;",
        "context",
        "Landroid/content/Context;",
        "framesTracker",
        "Lio/sentry/android/core/ActivityFramesTracker;",
        "sentryFlutter",
        "Lio/sentry/flutter/SentryFlutter;",
        "addBreadcrumb",
        "",
        "breadcrumb",
        "",
        "",
        "",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "beginNativeFrames",
        "captureEnvelope",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "clearBreadcrumbs",
        "closeNativeSdk",
        "endNativeFrames",
        "id",
        "fetchNativeAppStart",
        "initNativeSdk",
        "loadImageList",
        "onAttachedToActivity",
        "binding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToEngine",
        "flutterPluginBinding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onMethodCall",
        "onReattachedToActivityForConfigChanges",
        "removeContexts",
        "key",
        "removeExtra",
        "removeTag",
        "setContexts",
        "value",
        "setExtra",
        "setTag",
        "setUser",
        "user",
        "writeEnvelope",
        "",
        "envelope",
        "",
        "BeforeSendCallbackImpl",
        "Companion",
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


# static fields
.field public static final Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

.field private static final androidSdk:Ljava/lang/String; = "sentry.java.android.flutter"

.field private static final flutterSdk:Ljava/lang/String; = "sentry.dart.flutter"

.field private static final nativeSdk:Ljava/lang/String; = "sentry.native.android.flutter"


# instance fields
.field private activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private channel:Lio/flutter/plugin/common/MethodChannel;

.field private context:Landroid/content/Context;

.field private framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

.field private sentryFlutter:Lio/sentry/flutter/SentryFlutter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSentryFlutter$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/flutter/SentryFlutter;
    .locals 0

    .line 36
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    return-object p0
.end method

.method public static final synthetic access$setFramesTracker$p(Lio/sentry/flutter/SentryFlutterPlugin;Lio/sentry/android/core/ActivityFramesTracker;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-void
.end method

.method private final addBreadcrumb(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 238
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    const-string v0, "getInstance().options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-static {p1, p0}, Lio/sentry/Breadcrumb;->fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/Breadcrumb;

    move-result-object p0

    .line 240
    invoke-static {p0}, Lio/sentry/Sentry;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    :cond_0
    const-string p0, ""

    .line 242
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final beginNativeFrames(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "sentryFlutter"

    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    if-eqz p0, :cond_2

    .line 167
    invoke-virtual {p0, v0}, Lio/sentry/android/core/ActivityFramesTracker;->addActivity(Landroid/app/Activity;)V

    .line 169
    :cond_2
    invoke-interface {p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final captureEnvelope(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3

    .line 292
    invoke-static {}, Lio/sentry/Sentry;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "1"

    const-string p1, "The Sentry Android SDK is disabled"

    .line 293
    invoke-interface {p2, p0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 298
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 299
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_4

    .line 301
    array-length v0, p1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 302
    invoke-direct {p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin;->writeEnvelope([B)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "2"

    const-string p1, "SentryOptions or outboxPath are null or empty"

    .line 303
    invoke-interface {p2, p0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string p0, ""

    .line 305
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string p0, "3"

    const-string p1, "Envelope is null or empty"

    .line 310
    invoke-interface {p2, p0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final clearBreadcrumbs(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    .line 246
    invoke-static {}, Lio/sentry/Sentry;->clearBreadcrumbs()V

    const-string p0, ""

    .line 248
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final closeNativeSdk(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 339
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/HubAdapter;->close()V

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lio/sentry/android/core/ActivityFramesTracker;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    const-string p0, ""

    .line 343
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final endNativeFrames(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    if-nez v2, :cond_1

    const-string v2, "sentryFlutter"

    .line 174
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 182
    :cond_2
    new-instance v2, Lio/sentry/protocol/SentryId;

    invoke-direct {v2, p1}, Lio/sentry/protocol/SentryId;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    if-eqz p1, :cond_3

    .line 183
    invoke-virtual {p1, v0, v2}, Lio/sentry/android/core/ActivityFramesTracker;->setMetrics(Landroid/app/Activity;Lio/sentry/protocol/SentryId;)V

    :cond_3
    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    if-eqz p0, :cond_4

    .line 184
    invoke-virtual {p0, v2}, Lio/sentry/android/core/ActivityFramesTracker;->takeMetrics(Lio/sentry/protocol/SentryId;)Ljava/util/Map;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    const/4 p1, 0x0

    if-eqz p0, :cond_5

    const-string v0, "frames_total"

    .line 185
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/MeasurementValue;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lio/sentry/protocol/MeasurementValue;->getValue()Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_2

    :cond_5
    move v0, p1

    :goto_2
    if-eqz p0, :cond_6

    const-string v2, "frames_slow"

    .line 186
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/protocol/MeasurementValue;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lio/sentry/protocol/MeasurementValue;->getValue()Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, p1

    :goto_3
    if-eqz p0, :cond_7

    const-string v3, "frames_frozen"

    .line 187
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/MeasurementValue;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lio/sentry/protocol/MeasurementValue;->getValue()Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_4

    :cond_7
    move p0, p1

    :goto_4
    if-nez v0, :cond_8

    if-nez v2, :cond_8

    if-nez p0, :cond_8

    .line 190
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const-string v3, "totalFrames"

    .line 193
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "slowFrames"

    .line 194
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "frozenFrames"

    .line 195
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    .line 192
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 197
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_5
    return-void

    :cond_9
    :goto_6
    if-nez p1, :cond_a

    const-string p0, "Sentry"

    const-string p1, "Parameter id cannot be null when calling endNativeFrames."

    .line 176
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_a
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final fetchNativeAppStart(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 7

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "sentryFlutter"

    .line 139
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 140
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartTimeSpan()Lio/sentry/android/core/performance/TimeSpan;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object p0

    .line 145
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->getInstance()Lio/sentry/android/core/performance/AppStartMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/core/performance/AppStartMetrics;->getAppStartType()Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    move-result-object v1

    sget-object v2, Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;->COLD:Lio/sentry/android/core/performance/AppStartMetrics$AppStartType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-nez p0, :cond_3

    const-string p0, "Sentry"

    const-string v1, "App start won\'t be sent due to missing appStartTime"

    .line 148
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Lio/sentry/DateUtils;->nanosToMillis(D)D

    move-result-wide v5

    const/4 p0, 0x2

    new-array p0, p0, [Lkotlin/Pair;

    const-string v0, "appStartTime"

    .line 153
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p0, v4

    const-string v0, "isColdStart"

    .line 154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, p0, v3

    .line 152
    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 156
    invoke-interface {p1, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final initNativeSdk(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "1"

    const-string p1, "Context is null"

    .line 116
    invoke-interface {p2, p0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 121
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "4"

    const-string p1, "Arguments is null or empty"

    .line 122
    invoke-interface {p2, p0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    if-nez v0, :cond_3

    const-string v0, "context"

    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    new-instance v0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;

    invoke-direct {v0, p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;-><init>(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;)V

    check-cast v0, Lio/sentry/Sentry$OptionsConfiguration;

    invoke-static {v1, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/Sentry$OptionsConfiguration;)V

    const-string p0, ""

    .line 135
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final loadImageList(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    .line 314
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type io.sentry.android.core.SentryAndroidOptions"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 317
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getDebugImagesLoader()Lio/sentry/android/core/IDebugImagesLoader;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/android/core/IDebugImagesLoader;->loadDebugImages()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 320
    check-cast p0, Ljava/lang/Iterable;

    .line 396
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/protocol/DebugImage;

    .line 321
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v2, Ljava/util/Map;

    const-string v3, "image_addr"

    .line 323
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getImageAddr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "image_size"

    .line 324
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getImageSize()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code_file"

    .line 325
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getCodeFile()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "type"

    .line 326
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "debug_id"

    .line 327
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getDebugId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code_id"

    .line 328
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getCodeId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "debug_file"

    .line 329
    invoke-virtual {v1}, Lio/sentry/protocol/DebugImage;->getDebugFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_0
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final removeContexts(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, ""

    .line 215
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_0
    new-instance p0, Lio/sentry/flutter/SentryFlutterPlugin$removeContexts$1;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin$removeContexts$1;-><init>(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    check-cast p0, Lio/sentry/ScopeCallback;

    invoke-static {p0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method private final removeExtra(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    const-string p0, ""

    if-nez p1, :cond_0

    .line 263
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 266
    :cond_0
    invoke-static {p1}, Lio/sentry/Sentry;->removeExtra(Ljava/lang/String;)V

    .line 268
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final removeTag(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    const-string p0, ""

    if-nez p1, :cond_0

    .line 283
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 286
    :cond_0
    invoke-static {p1}, Lio/sentry/Sentry;->removeTag(Ljava/lang/String;)V

    .line 288
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final setContexts(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;

    invoke-direct {p0, p1, p2, p3}, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;-><init>(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    check-cast p0, Lio/sentry/ScopeCallback;

    invoke-static {p0}, Lio/sentry/Sentry;->configureScope(Lio/sentry/ScopeCallback;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, ""

    .line 203
    invoke-interface {p3, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final setExtra(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    const-string p0, ""

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p3, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 253
    :cond_1
    :goto_0
    invoke-interface {p3, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final setTag(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    const-string p0, ""

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {p1, p2}, Lio/sentry/Sentry;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-interface {p3, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    .line 273
    :cond_1
    :goto_0
    invoke-interface {p3, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final setUser(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 227
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    const-string v0, "getInstance().options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {p1, p0}, Lio/sentry/protocol/User;->fromMap(Ljava/util/Map;Lio/sentry/SentryOptions;)Lio/sentry/protocol/User;

    move-result-object p0

    .line 229
    invoke-static {p0}, Lio/sentry/Sentry;->setUser(Lio/sentry/protocol/User;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 231
    invoke-static {p0}, Lio/sentry/Sentry;->setUser(Lio/sentry/protocol/User;)V

    :goto_0
    const-string p0, ""

    .line 233
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private final writeEnvelope([B)Z
    .locals 2

    .line 103
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/HubAdapter;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    const-string v0, "getInstance().options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v0, p1}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "flutterPluginBinding.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v1, "sentry_flutter"

    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 47
    move-object p1, p0

    check-cast p1, Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 49
    new-instance p1, Lio/sentry/flutter/SentryFlutter;

    const-string v0, "sentry.java.android.flutter"

    const-string v1, "sentry.native.android.flutter"

    invoke-direct {p1, v0, v1}, Lio/sentry/flutter/SentryFlutter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin;->sentryFlutter:Lio/sentry/flutter/SentryFlutter;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->activity:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->framesTracker:Lio/sentry/android/core/ActivityFramesTracker;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-nez p0, :cond_1

    const-string p0, "channel"

    .line 82
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_1
    invoke-virtual {p0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "value"

    const-string v3, "key"

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "removeContexts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeContexts(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "setUser"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "user"

    .line 66
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setUser(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "clearBreadcrumbs"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->clearBreadcrumbs(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "setContexts"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 64
    :cond_3
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setContexts(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "setExtra"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 69
    :cond_4
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setExtra(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "removeTag"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 72
    :cond_5
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeTag(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "addBreadcrumb"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const-string v0, "breadcrumb"

    .line 67
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->addBreadcrumb(Ljava/util/Map;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "endNativeFrames"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const-string v0, "id"

    .line 63
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->endNativeFrames(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "initNativeSdk"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 57
    :cond_8
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->initNativeSdk(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_9
    const-string p1, "loadImageList"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    .line 59
    :cond_9
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->loadImageList(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "captureEnvelope"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    .line 58
    :cond_a
    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->captureEnvelope(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_b
    const-string v1, "removeExtra"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 70
    :cond_b
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->removeExtra(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_c
    const-string p1, "fetchNativeAppStart"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    .line 61
    :cond_c
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->fetchNativeAppStart(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_d
    const-string p1, "closeNativeSdk"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    .line 60
    :cond_d
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->closeNativeSdk(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_e
    const-string v1, "setTag"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    .line 71
    :cond_e
    invoke-virtual {p1, v3}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->setTag(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    :sswitch_f
    const-string p1, "beginNativeFrames"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    .line 62
    :cond_f
    invoke-direct {p0, p2}, Lio/sentry/flutter/SentryFlutterPlugin;->beginNativeFrames(Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_1

    .line 73
    :cond_10
    :goto_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5637d51a -> :sswitch_f
        -0x35fd6828 -> :sswitch_e
        -0x32de1e75 -> :sswitch_d
        -0x15de46ae -> :sswitch_c
        -0x12eba214 -> :sswitch_b
        0x8ab9536 -> :sswitch_a
        0xfbc2653 -> :sswitch_9
        0x2080d573 -> :sswitch_8
        0x2eb48018 -> :sswitch_7
        0x4328ef84 -> :sswitch_6
        0x4c6f5076 -> :sswitch_5
        0x52f354ce -> :sswitch_4
        0x54c21f26 -> :sswitch_3
        0x6d93c043 -> :sswitch_2
        0x76511b4d -> :sswitch_1
        0x7f261948 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0

    const-string p0, "binding"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
