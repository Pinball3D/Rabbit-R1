.class public final Lio/sentry/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logNotInstanceOf(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lio/sentry/ILogger;",
            ")V"
        }
    .end annotation

    .line 16
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Hint"

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "%s is not %s"

    .line 16
    invoke-interface {p2, v0, p0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
