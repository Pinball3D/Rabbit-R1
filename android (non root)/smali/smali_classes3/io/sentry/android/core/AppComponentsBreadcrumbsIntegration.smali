.class public final Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;
.super Ljava/lang/Object;
.source "AppComponentsBreadcrumbsIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private final context:Landroid/content/Context;

.field private hub:Lio/sentry/IHub;

.field private options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Context is required"

    .line 32
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    return-void
.end method

.method private createLowMemoryBreadcrumb(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Lio/sentry/Breadcrumb;

    invoke-direct {v0}, Lio/sentry/Breadcrumb;-><init>()V

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x28

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    const-string v1, "level"

    .line 138
    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string p1, "system"

    .line 141
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string p1, "device.event"

    .line 142
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    const-string p1, "Low memory"

    .line 143
    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setMessage(Ljava/lang/String;)V

    const-string p1, "action"

    const-string v1, "LOW_MEMORY"

    .line 144
    invoke-virtual {v0, p1, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p1}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    iget-object p0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    .line 146
    invoke-interface {p0, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 69
    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "It was not possible to unregisterComponentCallbacks"

    new-array v5, v0, [Ljava/lang/Object;

    .line 75
    invoke-interface {v2, v3, v1, v4, v5}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object p0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p0, :cond_1

    .line 80
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "AppComponentsBreadcrumbsIntegration removed."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lio/sentry/android/core/internal/util/DeviceOrientations;->getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lio/sentry/protocol/Device$DeviceOrientation;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "undefined"

    .line 98
    :goto_0
    new-instance v1, Lio/sentry/Breadcrumb;

    invoke-direct {v1}, Lio/sentry/Breadcrumb;-><init>()V

    const-string v2, "navigation"

    .line 99
    invoke-virtual {v1, v2}, Lio/sentry/Breadcrumb;->setType(Ljava/lang/String;)V

    const-string v2, "device.orientation"

    .line 100
    invoke-virtual {v1, v2}, Lio/sentry/Breadcrumb;->setCategory(Ljava/lang/String;)V

    const-string v2, "position"

    .line 101
    invoke-virtual {v1, v2, v0}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v1, v0}, Lio/sentry/Breadcrumb;->setLevel(Lio/sentry/SentryLevel;)V

    .line 104
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    const-string v2, "android:configuration"

    .line 105
    invoke-virtual {v0, v2, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    .line 107
    invoke-interface {p0, v1, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    :cond_1
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->createLowMemoryBreadcrumb(Ljava/lang/Integer;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->createLowMemoryBreadcrumb(Ljava/lang/Integer;)V

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 4

    const-string v0, "Hub is required"

    .line 37
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IHub;

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->hub:Lio/sentry/IHub;

    .line 40
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 39
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 44
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    iget-object v1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 48
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppComponentsBreadcrumbsIntegration enabled: %s"

    .line 45
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 50
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 55
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v2, "AppComponentsBreadcrumbsIntegration installed."

    new-array v3, p1, [Ljava/lang/Object;

    .line 56
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 59
    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 60
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v1, "ComponentCallbacks2 is not available."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-interface {p0, p2, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
