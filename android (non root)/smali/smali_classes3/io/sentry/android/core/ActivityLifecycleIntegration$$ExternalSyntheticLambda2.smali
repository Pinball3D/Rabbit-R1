.class public final synthetic Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic f$1:Lio/sentry/ISpan;

.field public final synthetic f$2:Lio/sentry/ISpan;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;Lio/sentry/ISpan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$1:Lio/sentry/ISpan;

    iput-object p3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$2:Lio/sentry/ISpan;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$1:Lio/sentry/ISpan;

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda2;->f$2:Lio/sentry/ISpan;

    invoke-virtual {v0, v1, p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->lambda$onActivityResumed$9$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;Lio/sentry/ISpan;)V

    return-void
.end method
