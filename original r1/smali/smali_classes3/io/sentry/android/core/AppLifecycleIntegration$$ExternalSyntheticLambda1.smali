.class public final synthetic Lio/sentry/android/core/AppLifecycleIntegration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AppLifecycleIntegration;

.field public final synthetic f$1:Lio/sentry/IHub;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/IHub;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AppLifecycleIntegration$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/AppLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/AppLifecycleIntegration$$ExternalSyntheticLambda1;->f$1:Lio/sentry/IHub;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/AppLifecycleIntegration$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/AppLifecycleIntegration;

    iget-object p0, p0, Lio/sentry/android/core/AppLifecycleIntegration$$ExternalSyntheticLambda1;->f$1:Lio/sentry/IHub;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/AppLifecycleIntegration;->lambda$register$0$io-sentry-android-core-AppLifecycleIntegration(Lio/sentry/IHub;)V

    return-void
.end method
