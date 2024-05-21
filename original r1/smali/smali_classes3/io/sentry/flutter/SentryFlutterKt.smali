.class public final Lio/sentry/flutter/SentryFlutterKt;
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
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a:\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00010\u0008H\u0002\u00a8\u0006\t"
    }
    d2 = {
        "getIfNotNull",
        "",
        "T",
        "",
        "",
        "",
        "key",
        "callback",
        "Lkotlin/Function1;",
        "sentry_flutter_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x3
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterKt;->getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    if-eqz p0, :cond_1

    .line 127
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
