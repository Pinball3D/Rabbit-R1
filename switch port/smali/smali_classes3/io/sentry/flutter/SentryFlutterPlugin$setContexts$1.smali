.class final Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;
.super Ljava/lang/Object;
.source "SentryFlutterPlugin.kt"

# interfaces
.implements Lio/sentry/ScopeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutterPlugin;->setContexts(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "scope",
        "Lio/sentry/IScope;",
        "Lorg/jetbrains/annotations/NotNull;",
        "run"
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
.field final synthetic $key:Ljava/lang/String;

.field final synthetic $result:Lio/flutter/plugin/common/MethodChannel$Result;

.field final synthetic $value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;->$key:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;->$value:Ljava/lang/Object;

    iput-object p3, p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Lio/sentry/IScope;)V
    .locals 2

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;->$key:Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;->$value:Ljava/lang/Object;

    .line 207
    invoke-interface {p1, v0, v1}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutterPlugin$setContexts$1;->$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const-string p1, ""

    .line 209
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
