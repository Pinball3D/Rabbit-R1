.class final Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;
.super Ljava/lang/Object;
.source "SentryFlutterPlugin.kt"

# interfaces
.implements Lio/sentry/SentryOptions$BeforeSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/flutter/SentryFlutterPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BeforeSendCallbackImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;",
        "Lio/sentry/SentryOptions$BeforeSendCallback;",
        "sdkVersion",
        "Lio/sentry/protocol/SdkVersion;",
        "(Lio/sentry/protocol/SdkVersion;)V",
        "execute",
        "Lio/sentry/SentryEvent;",
        "event",
        "hint",
        "Lio/sentry/Hint;",
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
.field private final sdkVersion:Lio/sentry/protocol/SdkVersion;


# direct methods
.method public constructor <init>(Lio/sentry/protocol/SdkVersion;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    return-void
.end method


# virtual methods
.method public execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object p2, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    invoke-static {p2, p1}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$setEventOriginTag(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;)V

    .line 351
    sget-object p2, Lio/sentry/flutter/SentryFlutterPlugin;->Companion:Lio/sentry/flutter/SentryFlutterPlugin$Companion;

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;->sdkVersion:Lio/sentry/protocol/SdkVersion;

    invoke-static {p2, p1, p0}, Lio/sentry/flutter/SentryFlutterPlugin$Companion;->access$addPackages(Lio/sentry/flutter/SentryFlutterPlugin$Companion;Lio/sentry/SentryEvent;Lio/sentry/protocol/SdkVersion;)V

    return-object p1
.end method
