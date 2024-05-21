.class final Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemEventsBreadcrumbsIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SystemEventsBroadcastReceiver"
.end annotation


# instance fields
.field private final hub:Lio/sentry/IHub;

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method constructor <init>(Lio/sentry/IHub;Lio/sentry/ILogger;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 217
    new-instance p1, Lio/sentry/Breadcrumb;

    invoke-direct {p1}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v0, "system"

    .line 218
    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v0, "device.event"

    .line 219
    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Lio/sentry/util/StringUtils;->getStringAfterDot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "action"

    .line 223
    invoke-virtual {p1, v2, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 227
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_3

    .line 228
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 229
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 232
    :try_start_0
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 234
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->logger:Lio/sentry/ILogger;

    .line 237
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v8, "%s key of the %s action threw an error."

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v7, v5, v8, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "extras"

    .line 245
    invoke-virtual {p1, v0, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_3
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {p1, v0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 249
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    const-string v1, "android:intent"

    .line 250
    invoke-virtual {v0, v1, p2}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$SystemEventsBroadcastReceiver;->hub:Lio/sentry/IHub;

    .line 252
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method
