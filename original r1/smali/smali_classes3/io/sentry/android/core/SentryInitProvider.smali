.class public final Lio/sentry/android/core/SentryInitProvider;
.super Lio/sentry/android/core/EmptySecureContentProvider;
.source "SentryInitProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    const-class v0, Lio/sentry/android/core/SentryInitProvider;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-super {p0, p1, p2}, Lio/sentry/android/core/EmptySecureContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An applicationId is required to fulfill the manifest placeholder."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 4

    .line 18
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    invoke-direct {v0}, Lio/sentry/android/core/AndroidLogger;-><init>()V

    .line 19
    invoke-virtual {p0}, Lio/sentry/android/core/SentryInitProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    const-string v1, "App. Context from ContentProvider is null"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v3}, Lio/sentry/android/core/AndroidLogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 24
    :cond_0
    invoke-static {p0, v0}, Lio/sentry/android/core/ManifestMetadataReader;->isAutoInit(Landroid/content/Context;Lio/sentry/ILogger;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-static {p0, v0}, Lio/sentry/android/core/SentryAndroid;->init(Landroid/content/Context;Lio/sentry/ILogger;)V

    .line 26
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string v0, "AutoInit"

    invoke-virtual {p0, v0}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public shutdown()V
    .locals 0

    .line 33
    invoke-static {}, Lio/sentry/Sentry;->close()V

    return-void
.end method
