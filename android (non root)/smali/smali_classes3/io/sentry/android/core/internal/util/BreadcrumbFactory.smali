.class public Lio/sentry/android/core/internal/util/BreadcrumbFactory;
.super Ljava/lang/Object;
.source "BreadcrumbFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forSession(Ljava/lang/String;)Lio/sentry/Breadcrumb;
    .locals 2

    .line 12
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v1, "session"

    .line 13
    invoke-virtual {v0, v1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v1, "state"

    .line 14
    invoke-virtual {v0, v1, p0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "app.lifecycle"

    .line 15
    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 16
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    return-object v0
.end method
