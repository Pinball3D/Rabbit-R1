.class final Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;
.super Ljava/lang/Object;
.source "SentryFlutterPlugin.kt"

# interfaces
.implements Lio/sentry/Sentry$OptionsConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutterPlugin;->initNativeSdk(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/sentry/SentryOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lio/sentry/Sentry$OptionsConfiguration;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000b\u0010\u0002\u001a\u00070\u0003\u00a2\u0006\u0002\u0008\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "options",
        "Lio/sentry/android/core/SentryAndroidOptions;",
        "Lorg/jetbrains/annotations/NotNull;",
        "configure"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x3
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/flutter/SentryFlutterPlugin;


# direct methods
.method constructor <init>(Lio/sentry/flutter/SentryFlutterPlugin;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/flutter/SentryFlutterPlugin;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->$args:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic configure(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 126
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->configure(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method

.method public final configure(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 4

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    .line 127
    invoke-static {v0}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getSentryFlutter$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/flutter/SentryFlutter;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sentryFlutter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->$args:Ljava/util/Map;

    invoke-virtual {v0, p1, v3}, Lio/sentry/flutter/SentryFlutter;->updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    .line 129
    invoke-static {v0}, Lio/sentry/flutter/SentryFlutterPlugin;->access$getSentryFlutter$p(Lio/sentry/flutter/SentryFlutterPlugin;)Lio/sentry/flutter/SentryFlutter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lio/sentry/flutter/SentryFlutter;->getAutoPerformanceTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin$initNativeSdk$1;->this$0:Lio/sentry/flutter/SentryFlutterPlugin;

    .line 130
    new-instance v0, Lio/sentry/android/core/ActivityFramesTracker;

    new-instance v1, Lio/sentry/android/core/LoadClass;

    invoke-direct {v1}, Lio/sentry/android/core/LoadClass;-><init>()V

    invoke-direct {v0, v1, p1}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/android/core/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V

    invoke-static {p0, v0}, Lio/sentry/flutter/SentryFlutterPlugin;->access$setFramesTracker$p(Lio/sentry/flutter/SentryFlutterPlugin;Lio/sentry/android/core/ActivityFramesTracker;)V

    .line 133
    :cond_2
    new-instance p0, Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;-><init>(Lio/sentry/protocol/SdkVersion;)V

    check-cast p0, Lio/sentry/SentryOptions$BeforeSendCallback;

    invoke-virtual {p1, p0}, Lio/sentry/android/core/SentryAndroidOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    return-void
.end method
