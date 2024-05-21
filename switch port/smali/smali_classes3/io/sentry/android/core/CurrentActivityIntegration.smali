.class public final Lio/sentry/android/core/CurrentActivityIntegration;
.super Ljava/lang/Object;
.source "CurrentActivityIntegration.java"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final application:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Application is required"

    .line 24
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lio/sentry/android/core/CurrentActivityIntegration;->application:Landroid/app/Application;

    return-void
.end method

.method private cleanCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 72
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-ne p0, p1, :cond_0

    .line 73
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/CurrentActivityHolder;->clearActivity()V

    :cond_0
    return-void
.end method

.method private setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 78
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/sentry/android/core/CurrentActivityHolder;->setActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/CurrentActivityIntegration;->application:Landroid/app/Application;

    .line 67
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/android/core/CurrentActivityHolder;->clearActivity()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lio/sentry/android/core/CurrentActivityIntegration;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lio/sentry/android/core/CurrentActivityIntegration;->cleanCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lio/sentry/android/core/CurrentActivityIntegration;->cleanCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lio/sentry/android/core/CurrentActivityIntegration;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lio/sentry/android/core/CurrentActivityIntegration;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lio/sentry/android/core/CurrentActivityIntegration;->cleanCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public register(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 0

    iget-object p1, p0, Lio/sentry/android/core/CurrentActivityIntegration;->application:Landroid/app/Application;

    .line 29
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
