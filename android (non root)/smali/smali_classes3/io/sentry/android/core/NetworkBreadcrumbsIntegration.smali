.class public final Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "NetworkBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;,
        Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbConnectionDetail;
    }
.end annotation


# instance fields
.field private final buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

.field private final context:Landroid/content/Context;

.field private final logger:Lio/sentry/ILogger;

.field networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/ILogger;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required"

    .line 45
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    const-string p1, "BuildInfoProvider is required"

    .line 47
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/BuildInfoProvider;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    const-string p1, "ILogger is required"

    .line 48
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 94
    invoke-static {v1, v2, v3, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->unregisterNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    .line 96
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "NetworkBreadcrumbsIntegration remove."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 6

    const-string v0, "Hub is required"

    .line 54
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    instance-of v0, p2, Lio/sentry/android/core/SentryAndroidOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "SentryAndroidOptions is required"

    .line 56
    invoke-static {v0, v2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    .line 60
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 63
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "NetworkBreadcrumbsIntegration enabled: %s"

    .line 60
    invoke-interface {v2, v3, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 68
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result v0

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    .line 70
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "NetworkBreadcrumbsIntegration requires Android 5+"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_1
    new-instance v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 75
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p2

    invoke-direct {v0, p1, v2, p2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;-><init>(Lio/sentry/IHub;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/SentryDateProvider;)V

    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->context:Landroid/content/Context;

    iget-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->buildInfoProvider:Lio/sentry/android/core/BuildInfoProvider;

    .line 77
    invoke-static {p1, p2, v2, v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->registerNetworkCallback(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->networkCallback:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$NetworkBreadcrumbsNetworkCallback;

    iget-object p0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    .line 83
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "NetworkBreadcrumbsIntegration not installed."

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->logger:Lio/sentry/ILogger;

    .line 86
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "NetworkBreadcrumbsIntegration installed."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    :cond_3
    return-void
.end method
