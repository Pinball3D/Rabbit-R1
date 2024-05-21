.class final Lio/sentry/flutter/SentryFlutter$updateOptions$14;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryFlutter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutter;->updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
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
.field final synthetic $options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$14;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$14;->invoke(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$14;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 61
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "ROOT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$14;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 63
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    :cond_0
    return-void
.end method
